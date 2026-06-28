#!/usr/bin/env python3
"""Run a checkpointed AP.16 positive-survivor census.

This diagnostic runner adapts the AP.16I positive-survivor membership profiler
to a resumable, windowed workflow.  It is not proof evidence and emits no Lean.

The important operational point is that per-window checkpoints live outside the
generated source tree by default.  The tracked aggregate report stores compact
counts and key summaries only.
"""

from __future__ import annotations

import argparse
from collections import Counter
from concurrent.futures import FIRST_COMPLETED, ProcessPoolExecutor, wait
import json
from pathlib import Path
import resource
import statistics
import sys
import time
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from profile_ap16i_positive_survivor_membership import profile as ap16i_profile  # noqa: E402


NUM_PAIR_WORDS = 97_297_200
DEFAULT_CHECKPOINT_DIR = Path("/tmp/cuboctahedron_ap16_positive_survivor_census")
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16aa_positive_survivor_census.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def write_json_atomic(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f"{path.name}.tmp")
    tmp.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    tmp.replace(path)


def checkpoint_path(checkpoint_dir: Path, start: int, end: int) -> Path:
    return checkpoint_dir / f"window_{start:09d}_{end:09d}.json"


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def make_windows(
    *,
    rank_start: int,
    limit: int,
    window_size: int,
    stride: int,
    max_windows: int | None,
) -> list[tuple[int, int]]:
    end = min(NUM_PAIR_WORDS, rank_start + limit)
    windows: list[tuple[int, int]] = []
    start = rank_start
    while start < end:
        window = (start, min(start + window_size, end))
        if window[0] < window[1]:
            windows.append(window)
        if max_windows is not None and len(windows) >= max_windows:
            break
        start += stride
    return windows


def scan_window_worker(args: tuple[int, int, int, int, int, str]) -> dict[str, Any]:
    start, end, sample_limit, candidate_gate, signature_gate, phase = args
    t0 = time.monotonic()
    payload = ap16i_profile(
        ranges=[(start, end)],
        jobs=1,
        sample_limit=sample_limit,
        candidate_gate=candidate_gate,
        signature_gate=signature_gate,
    )
    payload["mode"] = "ap16_positive_survivor_census_window"
    payload["phase"] = phase
    payload["window"] = {
        "start": start,
        "end": end,
        "width": end - start,
    }
    payload["elapsed_seconds"] = time.monotonic() - t0
    payload["max_rss_kib"] = resource.getrusage(resource.RUSAGE_SELF).ru_maxrss
    return payload


def checkpoint_compatible(payload: dict[str, Any]) -> bool:
    return payload.get("mode") == "ap16_positive_survivor_census_window"


def collect_payloads(
    *,
    windows: list[tuple[int, int]],
    checkpoint_dir: Path,
    workers: int,
    resume: bool,
    aggregate_only: bool,
    sample_limit: int,
    candidate_gate: int,
    signature_gate: int,
    phase: str,
) -> list[dict[str, Any]]:
    payloads_by_window: dict[tuple[int, int], dict[str, Any]] = {}
    todo: list[tuple[int, int]] = []
    for window in windows:
        path = checkpoint_path(checkpoint_dir, *window)
        if path.exists() and (resume or aggregate_only):
            payload = read_json(path)
            if not checkpoint_compatible(payload):
                raise ValueError(f"incompatible checkpoint: {path}")
            payloads_by_window[window] = payload
        elif aggregate_only:
            raise FileNotFoundError(f"missing checkpoint for {window}: {path}")
        else:
            todo.append(window)

    if todo:
        with ProcessPoolExecutor(max_workers=workers) as pool:
            remaining = list(todo)
            active: dict[Any, tuple[int, int]] = {}

            def submit_next() -> None:
                if not remaining:
                    return
                window = remaining.pop(0)
                future = pool.submit(
                    scan_window_worker,
                    (*window, sample_limit, candidate_gate, signature_gate, phase),
                )
                active[future] = window

            for _ in range(min(workers, len(remaining))):
                submit_next()
            while active:
                done, _pending = wait(active, return_when=FIRST_COMPLETED)
                for future in done:
                    window = active.pop(future)
                    payload = future.result()
                    write_json_atomic(checkpoint_path(checkpoint_dir, *window), payload)
                    payloads_by_window[window] = payload
                    print(
                        "completed "
                        f"[{window[0]:,},{window[1]:,}) "
                        f"good={payload['total_good_direction_cases']:,} "
                        f"candidates={payload['positive_candidate_group_count']:,} "
                        f"signatures={payload['positive_survivor_signature_count']:,} "
                        f"rss={payload['max_rss_kib']:,} KiB",
                        file=sys.stderr,
                    )
                    submit_next()

    return [payloads_by_window[window] for window in windows if window in payloads_by_window]


def percentile(values: list[float], q: float) -> float:
    if not values:
        return 0.0
    if len(values) == 1:
        return values[0]
    ordered = sorted(values)
    index = (len(ordered) - 1) * q
    lo = int(index)
    hi = min(lo + 1, len(ordered) - 1)
    frac = index - lo
    return ordered[lo] * (1 - frac) + ordered[hi] * frac


def aggregate_payload(
    *,
    payloads: list[dict[str, Any]],
    windows: list[tuple[int, int]],
    checkpoint_dir: Path,
    args: argparse.Namespace,
    elapsed_seconds: float,
) -> dict[str, Any]:
    counts: Counter[str] = Counter()
    candidate_keys: set[str] = set()
    signature_keys: set[str] = set()
    elapsed_windows: list[float] = []
    max_rss = 0
    window_rows: list[dict[str, Any]] = []

    for payload in payloads:
        counts.update(payload.get("counts", {}))
        candidate_keys.update(
            str(item["key"]) for item in payload.get("positive_candidate_catalog", [])
        )
        signature_keys.update(
            str(item["key"]) for item in payload.get("positive_survivor_signature_catalog", [])
        )
        elapsed_windows.append(float(payload.get("elapsed_seconds", 0.0)))
        max_rss = max(max_rss, int(payload.get("max_rss_kib", 0)))
        window = payload["window"]
        window_rows.append({
            "range": [window["start"], window["end"]],
            "good_direction_cases": payload["total_good_direction_cases"],
            "positive_candidate_groups": payload["positive_candidate_group_count"],
            "positive_survivor_signatures": payload["positive_survivor_signature_count"],
            "ranks_with_good_direction": payload["ranks_with_good_direction"],
            "elapsed_seconds": payload["elapsed_seconds"],
            "max_rss_kib": payload["max_rss_kib"],
        })

    return {
        "schema_version": 1,
        "mode": "ap16_positive_survivor_census",
        "phase": args.phase,
        "trusted_as_proof": False,
        "rank_start": args.rank_start,
        "limit": args.limit,
        "window_size": args.window_size,
        "stride": args.stride,
        "workers": args.workers,
        "checkpoint_dir": str(checkpoint_dir),
        "window_count_requested": len(windows),
        "window_count_completed": len(payloads),
        "rank_count_completed": sum(
            end - start for start, end in windows[:len(payloads)]
        ),
        "elapsed_seconds": elapsed_seconds,
        "window_elapsed_seconds": {
            "mean": statistics.mean(elapsed_windows) if elapsed_windows else 0.0,
            "p50": percentile(elapsed_windows, 0.5),
            "p95": percentile(elapsed_windows, 0.95),
            "max": max(elapsed_windows, default=0.0),
        },
        "max_window_rss_kib": max_rss,
        "counts": dict(counts),
        "good_direction_cases": sum(
            int(payload["total_good_direction_cases"]) for payload in payloads
        ),
        "unique_positive_candidate_groups": len(candidate_keys),
        "unique_positive_survivor_signatures": len(signature_keys),
        "windows": window_rows,
        "decision": {
            "status": "checkpointed-census-smoke-complete",
            "notes": [
                "diagnostic only: checkpointed census is not Lean proof",
                "per-window checkpoints contain detailed AP.16I-style catalogs outside the repo",
                "tracked aggregate keeps only compact counts and key summaries",
            ],
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    elapsed = payload["window_elapsed_seconds"]
    lines = [
        f"# Phase {payload['phase']} AP.16 Positive-Survivor Census",
        "",
        "This diagnostic is not trusted as proof and emits no Lean.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Workers: `{payload['workers']}`",
        f"- Checkpoint dir: `{payload['checkpoint_dir']}`",
        f"- Windows completed/requested: `{payload['window_count_completed']}` / `{payload['window_count_requested']}`",
        f"- Completed sampled ranks: `{payload['rank_count_completed']}`",
        f"- GoodDirection cases: `{payload['good_direction_cases']}`",
        f"- Unique positive candidate groups: `{payload['unique_positive_candidate_groups']}`",
        f"- Unique positive survivor signatures: `{payload['unique_positive_survivor_signatures']}`",
        f"- Max window RSS: `{payload['max_window_rss_kib']}` KiB",
        f"- Window time mean/p50/p95/max: `{elapsed['mean']:.2f}` / `{elapsed['p50']:.2f}` / `{elapsed['p95']:.2f}` / `{elapsed['max']:.2f}` seconds",
        "",
        "## Windows",
        "",
        "| Range | GoodDirection | Candidate groups | Signatures | Ranks | Seconds | RSS KiB |",
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for row in payload["windows"]:
        lines.append(
            f"| `{row['range']}` | {row['good_direction_cases']} | "
            f"{row['positive_candidate_groups']} | "
            f"{row['positive_survivor_signatures']} | "
            f"{row['ranks_with_good_direction']} | "
            f"{float(row['elapsed_seconds']):.2f} | {row['max_rss_kib']} |"
        )
    lines.extend(["", "## Decision Notes", ""])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--phase", default="6Z.6K.8AP.16AA")
    parser.add_argument("--limit", type=int, default=5_000)
    parser.add_argument("--window-size", type=int, default=2_500)
    parser.add_argument("--stride", type=int, default=2_500)
    parser.add_argument("--max-windows", type=int, default=1)
    parser.add_argument("--workers", type=int, default=1)
    parser.add_argument("--sample-limit", type=int, default=8)
    parser.add_argument("--candidate-gate", type=int, default=2000)
    parser.add_argument("--signature-gate", type=int, default=2000)
    parser.add_argument("--checkpoint-dir", type=Path, default=DEFAULT_CHECKPOINT_DIR)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--resume", action="store_true", default=True)
    parser.add_argument("--no-resume", dest="resume", action="store_false")
    parser.add_argument("--aggregate-only", action="store_true")
    args = parser.parse_args()

    if args.window_size <= 0 or args.stride <= 0:
        raise ValueError("window size and stride must be positive")
    if args.workers <= 0:
        raise ValueError("--workers must be positive")
    if args.max_windows is not None and args.max_windows <= 0:
        raise ValueError("--max-windows must be positive")

    windows = make_windows(
        rank_start=args.rank_start,
        limit=args.limit,
        window_size=args.window_size,
        stride=args.stride,
        max_windows=args.max_windows,
    )
    t0 = time.monotonic()
    payloads = collect_payloads(
        windows=windows,
        checkpoint_dir=args.checkpoint_dir,
        workers=args.workers,
        resume=args.resume,
        aggregate_only=args.aggregate_only,
        sample_limit=args.sample_limit,
        candidate_gate=args.candidate_gate,
        signature_gate=args.signature_gate,
        phase=args.phase,
    )
    payload = aggregate_payload(
        payloads=payloads,
        windows=windows,
        checkpoint_dir=args.checkpoint_dir,
        args=args,
        elapsed_seconds=time.monotonic() - t0,
    )
    write_json_atomic(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(json.dumps({
        "status": payload["decision"]["status"],
        "windows_completed": payload["window_count_completed"],
        "rank_count_completed": payload["rank_count_completed"],
        "good_direction_cases": payload["good_direction_cases"],
        "unique_positive_candidate_groups": payload["unique_positive_candidate_groups"],
        "unique_positive_survivor_signatures": payload["unique_positive_survivor_signatures"],
        "max_window_rss_kib": payload["max_window_rss_kib"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
