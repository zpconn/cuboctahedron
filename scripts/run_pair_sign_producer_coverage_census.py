#!/usr/bin/env python3
"""Run a resumable Phase 6Z.6K.8AJ pair-sign producer-coverage census.

This runner is diagnostic only; it is not trusted as proof and it emits no
Lean.  It extends the Phase 8AI scaling profile with:

* top-level parallelism with no nested process pools;
* atomic per-window checkpoints outside the generated source tree by default;
* resume and aggregate-only modes;
* compact aggregate JSON/Markdown reports.
"""

from __future__ import annotations

import argparse
from concurrent.futures import FIRST_COMPLETED, ProcessPoolExecutor, wait
from concurrent.futures.process import BrokenProcessPool
from collections import Counter
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

from generate_source_index_state_nonenum_smoke import collect_families  # noqa: E402
from profile_pair_sign_descriptor_membership_state import (  # noqa: E402
    CaseItem,
    validate_source_languages,
)
from profile_pair_sign_producer_coverage_scaling import (  # noqa: E402
    count_groups,
    family_keys,
    summarize_top,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    key,
    member_count,
    row_payload,
    source_payload,
)


NUM_PAIR_WORDS = 97_297_200
DEFAULT_CHECKPOINT_DIR = Path("/tmp/cuboctahedron_pair_sign_producer_census")
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8aj_pair_sign_producer_coverage_census.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def write_json_atomic(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f"{path.name}.tmp")
    tmp.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    tmp.replace(path)


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def checkpoint_path(checkpoint_dir: Path, start: int, end: int) -> Path:
    return checkpoint_dir / f"window_{start:09d}_{end:09d}.json"


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


def compact_family_sample(family: Any) -> dict[str, Any]:
    return {
        "key": family.key,
        "case_count": family.count,
        "template_id": family.template_id,
        "source_indices": list(family.source_indices),
        "source_skeletons": list(family.source_skeletons),
        "row_property_key": family.row_property_key,
    }


def case_items_for_window(window: tuple[int, int], families: list[Any]) -> list[CaseItem]:
    start, end = window
    return [
        CaseItem(window=(start, end), family=family, member=member)
        for family in families
        for member in family.members
    ]


def scan_window_worker(args: tuple[int, int, int, str]) -> dict[str, Any]:
    start, end, sample_limit, phase = args
    t0 = time.monotonic()
    families, counts = collect_families(
        rank_start=start,
        limit=end - start,
        source_key_surface="pair_sign",
    )
    keys = family_keys(families)
    failures, failure_samples = validate_source_languages(
        case_items_for_window((start, end), families),
        sample_limit=sample_limit,
    )
    source_groups = count_groups(families, source_payload)
    row_groups = count_groups(families, row_payload)
    return {
        "schema_version": 1,
        "mode": "pair-sign-producer-coverage-census-window",
        "phase": phase,
        "trusted_as_proof": False,
        "window": {
            "start": start,
            "end": end,
            "width": end - start,
        },
        "elapsed_seconds": time.monotonic() - t0,
        "max_rss_kib": resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
        "counts": counts,
        "good_direction_cases": member_count(families),
        "descriptor_family_count": len(keys["descriptor"]),
        "source_group_count": len(keys["source"]),
        "row_group_count": len(keys["row"]),
        "source_row_edge_count": len(keys["source_row_edge"]),
        "source_row_producer_obligations": len(keys["source"]) + len(keys["row"]),
        "source_language_validation_failures": dict(failures),
        "source_language_validation_failure_count": sum(failures.values()),
        "source_language_failure_samples": failure_samples,
        "descriptor_keys": sorted(keys["descriptor"]),
        "source_keys": sorted(keys["source"]),
        "row_keys": sorted(keys["row"]),
        "source_row_edges": sorted(keys["source_row_edge"]),
        "top_descriptor_families": [
            compact_family_sample(family)
            for family in sorted(
                families,
                key=lambda item: (-item.count, item.template_id, item.key),
            )[:sample_limit]
        ],
        "top_source_groups": source_groups[:sample_limit],
        "top_row_groups": row_groups[:sample_limit],
    }


def checkpoint_compatible(payload: dict[str, Any]) -> bool:
    return payload.get("mode") == "pair-sign-producer-coverage-census-window"


def collect_payloads(
    *,
    windows: list[tuple[int, int]],
    checkpoint_dir: Path,
    workers: int,
    resume: bool,
    aggregate_only: bool,
    sample_limit: int,
    max_pool_restarts: int,
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
        pool_restarts = 0
        remaining = list(todo)
        active: dict[Any, tuple[int, int]] = {}
        pool = ProcessPoolExecutor(max_workers=workers)

        def submit_next() -> None:
            if not remaining:
                return
            window = remaining.pop(0)
            active[pool.submit(scan_window_worker, (*window, sample_limit, phase))] = window

        try:
            for _ in range(min(workers, len(remaining))):
                submit_next()

            while active:
                done, _pending = wait(active, return_when=FIRST_COMPLETED)
                for future in done:
                    window = active.pop(future)
                    try:
                        payload = future.result()
                    except BrokenProcessPool:
                        if pool_restarts >= max_pool_restarts:
                            raise
                        pool_restarts += 1
                        remaining.insert(0, window)
                        remaining = list(active.values()) + remaining
                        for active_future in active:
                            active_future.cancel()
                        active.clear()
                        pool.shutdown(wait=False, cancel_futures=True)
                        print(
                            "worker pool broke; restarting "
                            f"({pool_restarts}/{max_pool_restarts}) with "
                            f"{len(remaining):,} pending windows",
                            file=sys.stderr,
                        )
                        pool = ProcessPoolExecutor(max_workers=workers)
                        for _ in range(min(workers, len(remaining))):
                            submit_next()
                        break

                    write_json_atomic(checkpoint_path(checkpoint_dir, *window), payload)
                    payloads_by_window[window] = payload
                    print(
                        "completed "
                        f"[{window[0]:,},{window[1]:,}) "
                        f"good={payload['good_direction_cases']:,} "
                        f"desc={payload['descriptor_family_count']:,} "
                        f"source={payload['source_group_count']:,} "
                        f"row={payload['row_group_count']:,} "
                        f"producer={payload['source_row_producer_obligations']:,} "
                        f"rss={payload['max_rss_kib']:,} KiB",
                        file=sys.stderr,
                    )
                    submit_next()
        finally:
            pool.shutdown(wait=True, cancel_futures=True)

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
    workers: int,
    rank_start: int,
    limit: int,
    window_size: int,
    stride: int,
    producer_gate: int,
    descriptor_gate: int,
    elapsed_seconds: float,
    phase: str,
) -> dict[str, Any]:
    descriptor_keys: set[str] = set()
    source_keys: set[str] = set()
    row_keys: set[str] = set()
    source_row_edges: set[str] = set()
    counts: Counter[str] = Counter()
    validation_failures: Counter[str] = Counter()
    elapsed_windows: list[float] = []
    window_rows: list[dict[str, Any]] = []
    total_good = 0
    max_rss = 0

    for payload in payloads:
        descriptor_keys.update(payload["descriptor_keys"])
        source_keys.update(payload["source_keys"])
        row_keys.update(payload["row_keys"])
        source_row_edges.update(payload["source_row_edges"])
        counts.update(payload["counts"])
        validation_failures.update(payload["source_language_validation_failures"])
        elapsed_windows.append(float(payload["elapsed_seconds"]))
        max_rss = max(max_rss, int(payload["max_rss_kib"]))
        total_good += int(payload["good_direction_cases"])
        window = payload["window"]
        window_rows.append({
            "range": [window["start"], window["end"]],
            "good_direction_cases": payload["good_direction_cases"],
            "descriptor_family_count": payload["descriptor_family_count"],
            "source_group_count": payload["source_group_count"],
            "row_group_count": payload["row_group_count"],
            "source_row_producer_obligations": payload["source_row_producer_obligations"],
            "elapsed_seconds": payload["elapsed_seconds"],
            "max_rss_kib": payload["max_rss_kib"],
        })

    producer_obligations = len(source_keys) + len(row_keys)
    status = "needs-larger-census-or-stronger-invariant"
    notes = [
        "diagnostic only: checkpointed census is not Lean proof",
        "producer source+row obligations exceeded the gate or descriptor keys grew too far",
    ]
    if validation_failures:
        status = "rejected-source-language-validation"
        notes = ["source-language validation failed in one or more checkpoint windows"]
    elif producer_obligations <= producer_gate and len(descriptor_keys) <= descriptor_gate:
        status = "accepted-resumable-census-candidate"
        notes = [
            "resumable checkpointed census stayed below producer and descriptor gates",
            "next step can extend the census or emit a bounded scaling Lean smoke",
        ]

    return {
        "schema_version": 1,
        "mode": "pair_sign_producer_coverage_census",
        "phase": phase,
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "limit": limit,
        "window_size": window_size,
        "stride": stride,
        "workers": workers,
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
        "good_direction_cases": total_good,
        "descriptor_family_count": len(descriptor_keys),
        "source_group_count": len(source_keys),
        "row_group_count": len(row_keys),
        "source_row_edge_count": len(source_row_edges),
        "source_row_producer_obligations": producer_obligations,
        "producer_gate": producer_gate,
        "descriptor_gate": descriptor_gate,
        "source_language_validation_failures": dict(validation_failures),
        "source_language_validation_failure_count": sum(validation_failures.values()),
        "windows": window_rows,
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    elapsed = payload["window_elapsed_seconds"]
    lines = [
        f"# Phase {payload['phase']} Pair-Sign Producer-Coverage Census",
        "",
        "This diagnostic is not trusted as proof and emits no Lean. It is a",
        "resumable checkpointed census for the accepted pair-sign producer",
        "coverage route.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Workers: `{payload['workers']}`",
        f"- Checkpoint dir: `{payload['checkpoint_dir']}`",
        f"- Windows completed/requested: `{payload['window_count_completed']}` / `{payload['window_count_requested']}`",
        f"- Completed sampled ranks: `{payload['rank_count_completed']}`",
        f"- GoodDirection cases: `{payload['good_direction_cases']}`",
        f"- Descriptor families: `{payload['descriptor_family_count']}`",
        f"- Source groups: `{payload['source_group_count']}`",
        f"- Row groups: `{payload['row_group_count']}`",
        f"- Source-row edges: `{payload['source_row_edge_count']}`",
        f"- Source+row producer obligations: `{payload['source_row_producer_obligations']}`",
        f"- Source-language validation failures: `{payload['source_language_validation_failure_count']}`",
        f"- Max window RSS: `{payload['max_window_rss_kib']}` KiB",
        f"- Window time mean/p50/p95/max: `{elapsed['mean']:.2f}` / `{elapsed['p50']:.2f}` / `{elapsed['p95']:.2f}` / `{elapsed['max']:.2f}` seconds",
        "",
        "## Windows",
        "",
        "| Range | GoodDirection | Descriptor | Source | Row | Producer | Seconds | RSS KiB |",
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for row in payload["windows"]:
        lines.append(
            f"| `{row['range']}` | {row['good_direction_cases']} | "
            f"{row['descriptor_family_count']} | {row['source_group_count']} | "
            f"{row['row_group_count']} | {row['source_row_producer_obligations']} | "
            f"{float(row['elapsed_seconds']):.2f} | {row['max_rss_kib']} |"
        )
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--phase", default="6Z.6K.8AJ")
    parser.add_argument("--limit", type=int, default=NUM_PAIR_WORDS)
    parser.add_argument("--window-size", type=int, default=2500)
    parser.add_argument("--stride", type=int, default=10_000_000)
    parser.add_argument("--max-windows", type=int, default=12)
    parser.add_argument("--workers", type=int, default=4)
    parser.add_argument("--sample-limit", type=int, default=8)
    parser.add_argument("--producer-gate", type=int, default=2000)
    parser.add_argument("--descriptor-gate", type=int, default=5000)
    parser.add_argument("--checkpoint-dir", type=Path, default=DEFAULT_CHECKPOINT_DIR)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--resume", action="store_true", default=True)
    parser.add_argument("--no-resume", dest="resume", action="store_false")
    parser.add_argument("--aggregate-only", action="store_true")
    parser.add_argument("--max-pool-restarts", type=int, default=1)
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
        max_pool_restarts=args.max_pool_restarts,
        phase=args.phase,
    )
    payload = aggregate_payload(
        payloads=payloads,
        windows=windows,
        checkpoint_dir=args.checkpoint_dir,
        workers=args.workers,
        rank_start=args.rank_start,
        limit=args.limit,
        window_size=args.window_size,
        stride=args.stride,
        producer_gate=args.producer_gate,
        descriptor_gate=args.descriptor_gate,
        elapsed_seconds=time.monotonic() - t0,
        phase=args.phase,
    )
    write_json_atomic(args.json, payload)
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(json.dumps({
        "status": payload["decision"]["status"],
        "windows_completed": payload["window_count_completed"],
        "rank_count_completed": payload["rank_count_completed"],
        "good_direction_cases": payload["good_direction_cases"],
        "descriptor_family_count": payload["descriptor_family_count"],
        "source_group_count": payload["source_group_count"],
        "row_group_count": payload["row_group_count"],
        "source_row_producer_obligations": payload["source_row_producer_obligations"],
        "source_language_validation_failure_count": payload["source_language_validation_failure_count"],
        "max_window_rss_kib": payload["max_window_rss_kib"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
