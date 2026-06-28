#!/usr/bin/env python3
"""Run a lightweight AP.16 density map.

This diagnostic is not proof evidence and emits no Lean.  It samples rank
windows and records only identity-linear word counts and GoodDirection mask
counts.  It deliberately avoids source/Farkas family construction so we can
schedule any future positive-survivor catalog work by observed density.
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

import generate_exact_certificates as exact  # noqa: E402


NUM_PAIR_WORDS = 97_297_200
DEFAULT_CHECKPOINT_DIR = Path("/tmp/cuboctahedron_ap16_density_map")
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16ag_density_map.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def write_json_atomic(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f"{path.name}.tmp")
    tmp.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    tmp.replace(path)


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def checkpoint_path(checkpoint_dir: Path, start: int, end: int) -> Path:
    return checkpoint_dir / f"density_{start:09d}_{end:09d}.json"


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


def scan_window(args: tuple[int, int, str]) -> dict[str, Any]:
    start, end, phase = args
    t0 = time.monotonic()
    counts: Counter[str] = Counter({
        "pair_words_scanned": 0,
        "nonidentity_words": 0,
        "identity_words": 0,
        "translation_sign_assignments": 0,
        "not_good_direction_masks": 0,
        "good_direction_masks": 0,
        "ranks_with_good_direction": 0,
    })
    masks_per_rank: Counter[str] = Counter()
    for rank in range(start, end):
        counts["pair_words_scanned"] += 1
        word = exact.pair_word_at_rank(rank)
        if exact.total_linear(word) != exact.mat_id():
            counts["nonidentity_words"] += 1
            continue
        counts["identity_words"] += 1
        good_for_rank = 0
        for mask in range(64):
            counts["translation_sign_assignments"] += 1
            if exact.translation_needs_farkas(word, mask) is None:
                counts["not_good_direction_masks"] += 1
            else:
                counts["good_direction_masks"] += 1
                good_for_rank += 1
        if good_for_rank:
            counts["ranks_with_good_direction"] += 1
            masks_per_rank[str(good_for_rank)] += 1
    elapsed = time.monotonic() - t0
    return {
        "schema_version": 1,
        "mode": "ap16_density_window",
        "phase": phase,
        "trusted_as_proof": False,
        "window": {"start": start, "end": end, "width": end - start},
        "elapsed_seconds": elapsed,
        "max_rss_kib": resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
        "counts": dict(counts),
        "masks_per_rank_histogram": dict(masks_per_rank),
    }


def checkpoint_compatible(payload: dict[str, Any]) -> bool:
    return payload.get("mode") == "ap16_density_window"


def collect_payloads(
    *,
    windows: list[tuple[int, int]],
    checkpoint_dir: Path,
    workers: int,
    resume: bool,
    aggregate_only: bool,
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
                future = pool.submit(scan_window, (*window, phase))
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
                    counts = payload["counts"]
                    print(
                        "completed "
                        f"[{window[0]:,},{window[1]:,}) "
                        f"identity={counts['identity_words']:,} "
                        f"good={counts['good_direction_masks']:,} "
                        f"seconds={payload['elapsed_seconds']:.2f} "
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


def aggregate(
    *,
    payloads: list[dict[str, Any]],
    windows: list[tuple[int, int]],
    checkpoint_dir: Path,
    args: argparse.Namespace,
    elapsed_seconds: float,
) -> dict[str, Any]:
    counts: Counter[str] = Counter()
    mask_hist: Counter[str] = Counter()
    elapsed_windows: list[float] = []
    max_rss = 0
    rows: list[dict[str, Any]] = []
    for payload in payloads:
        counts.update(payload["counts"])
        mask_hist.update(payload.get("masks_per_rank_histogram", {}))
        elapsed_windows.append(float(payload["elapsed_seconds"]))
        max_rss = max(max_rss, int(payload["max_rss_kib"]))
        window = payload["window"]
        row = {
            "range": [window["start"], window["end"]],
            "elapsed_seconds": payload["elapsed_seconds"],
            "max_rss_kib": payload["max_rss_kib"],
            **payload["counts"],
        }
        rows.append(row)
    rows.sort(key=lambda item: item["range"][0])
    dense_rows = sorted(rows, key=lambda item: (-item["good_direction_masks"], item["range"][0]))
    return {
        "schema_version": 1,
        "mode": "ap16_density_map",
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
        "rank_count_completed": sum(end - start for start, end in windows[:len(payloads)]),
        "elapsed_seconds": elapsed_seconds,
        "window_elapsed_seconds": {
            "mean": statistics.mean(elapsed_windows) if elapsed_windows else 0.0,
            "p50": percentile(elapsed_windows, 0.5),
            "p95": percentile(elapsed_windows, 0.95),
            "max": max(elapsed_windows, default=0.0),
        },
        "max_window_rss_kib": max_rss,
        "counts": dict(counts),
        "masks_per_rank_histogram": dict(mask_hist),
        "windows": rows,
        "densest_windows": dense_rows[:10],
        "decision": {
            "status": "density-map-complete",
            "notes": [
                "diagnostic only: density map is not Lean proof",
                "counts identity-linear words and GoodDirection masks only",
                "does not compute source/Farkas candidate families",
            ],
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    elapsed = payload["window_elapsed_seconds"]
    counts = payload["counts"]
    lines = [
        f"# Phase {payload['phase']} AP.16 Density Map",
        "",
        "This diagnostic is not trusted as proof and emits no Lean.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Workers: `{payload['workers']}`",
        f"- Checkpoint dir: `{payload['checkpoint_dir']}`",
        f"- Windows completed/requested: `{payload['window_count_completed']}` / `{payload['window_count_requested']}`",
        f"- Completed sampled ranks: `{payload['rank_count_completed']}`",
        f"- Identity words: `{counts.get('identity_words', 0)}`",
        f"- GoodDirection masks: `{counts.get('good_direction_masks', 0)}`",
        f"- Ranks with GoodDirection: `{counts.get('ranks_with_good_direction', 0)}`",
        f"- Max window RSS: `{payload['max_window_rss_kib']}` KiB",
        f"- Window time mean/p50/p95/max: `{elapsed['mean']:.2f}` / `{elapsed['p50']:.2f}` / `{elapsed['p95']:.2f}` / `{elapsed['max']:.2f}` seconds",
        "",
        "## Windows",
        "",
        "| Range | Identity | GoodDirection | Ranks w/Good | Seconds | RSS KiB |",
        "| --- | ---: | ---: | ---: | ---: | ---: |",
    ]
    for row in payload["windows"]:
        lines.append(
            f"| `{row['range']}` | {row['identity_words']} | "
            f"{row['good_direction_masks']} | {row['ranks_with_good_direction']} | "
            f"{float(row['elapsed_seconds']):.2f} | {row['max_rss_kib']} |"
        )
    lines.extend([
        "",
        "## Densest Windows",
        "",
        "| Range | Identity | GoodDirection | Seconds |",
        "| --- | ---: | ---: | ---: |",
    ])
    for row in payload["densest_windows"]:
        lines.append(
            f"| `{row['range']}` | {row['identity_words']} | "
            f"{row['good_direction_masks']} | {float(row['elapsed_seconds']):.2f} |"
        )
    lines.extend(["", "## Mask Histogram", ""])
    for masks, count in sorted(payload["masks_per_rank_histogram"].items(), key=lambda item: int(item[0])):
        lines.append(f"- `{masks}` GoodDirection masks/rank: `{count}` ranks")
    lines.extend(["", "## Decision Notes", ""])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--phase", default="6Z.6K.8AP.16AG")
    parser.add_argument("--limit", type=int, default=90_001_000)
    parser.add_argument("--window-size", type=int, default=1_000)
    parser.add_argument("--stride", type=int, default=22_500_000)
    parser.add_argument("--max-windows", type=int, default=5)
    parser.add_argument("--workers", type=int, default=2)
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
        phase=args.phase,
    )
    payload = aggregate(
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
        "identity_words": payload["counts"].get("identity_words", 0),
        "good_direction_masks": payload["counts"].get("good_direction_masks", 0),
        "max_window_rss_kib": payload["max_window_rss_kib"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
