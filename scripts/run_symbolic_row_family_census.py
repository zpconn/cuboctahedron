#!/usr/bin/env python3
"""Run a resumable symbolic row-family census for translation survivors.

This runner is diagnostic only; it is not trusted as proof and it does not emit
Lean evidence.  It wraps the symbolic row-extraction classifier
from `profile_symbolic_row_extraction_families.py` with:

* top-level parallelism;
* atomic per-window checkpoints;
* resume and aggregate-only modes;
* representative-window calibration; and
* compact JSON/Markdown aggregate reports.
"""

from __future__ import annotations

import argparse
from concurrent.futures import FIRST_COMPLETED, ProcessPoolExecutor, wait
from concurrent.futures.process import BrokenProcessPool
import json
import math
import os
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
import profile_symbolic_row_extraction_families as symbolic  # noqa: E402


DEFAULT_CHECKPOINT_DIR = Path("/tmp/cuboctahedron_symbolic_family_census")
DEFAULT_OUTPUT = Path("scripts/generated/phase6z6k3_symbolic_family_census.json")
DEFAULT_REPORT = Path(
    "scripts/generated/translation_row_relation_families_profile_representative.json"
)


def write_json_atomic(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f"{path.name}.tmp")
    tmp.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    tmp.replace(path)


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def checkpoint_path(checkpoint_dir: Path, start: int, end: int) -> Path:
    return checkpoint_dir / f"window_{start:09d}_{end:09d}.json"


def parse_start_list(raw: str) -> list[int]:
    starts: list[int] = []
    for item in raw.split(","):
        item = item.strip()
        if item:
            starts.append(int(item))
    return starts


def contiguous_windows(rank_start: int, limit: int, chunk_size: int) -> list[tuple[int, int]]:
    end = rank_start + limit
    return [
        (start, min(start + chunk_size, end))
        for start in range(rank_start, end, chunk_size)
    ]


def representative_windows(report: dict[str, Any], chunk_size: int) -> list[tuple[int, int]]:
    windows: list[tuple[int, int]] = []
    seen: set[tuple[int, int]] = set()
    for item in report.get("selected_windows", []):
        start = int(item["start"])
        end = int(item["end"])
        for sub_start in range(start, end, chunk_size):
            window = (sub_start, min(sub_start + chunk_size, end))
            if window[0] < window[1] and window not in seen:
                windows.append(window)
                seen.add(window)
    if not windows:
        raise RuntimeError("representative report has no selected windows")
    return windows


def calibration_windows(
    *,
    rank_start: int,
    limit: int,
    calibration_width: int,
    calibration_starts: list[int],
    chunk_size: int,
) -> list[tuple[int, int]]:
    end = rank_start + limit
    windows: list[tuple[int, int]] = []
    seen: set[tuple[int, int]] = set()
    for start in calibration_starts:
        if start < rank_start or start >= end:
            continue
        calibration_end = min(start + calibration_width, end)
        for sub_start in range(start, calibration_end, chunk_size):
            window = (sub_start, min(sub_start + chunk_size, calibration_end))
            if window[0] < window[1] and window not in seen:
                windows.append(window)
                seen.add(window)
    return windows


def scan_window_worker(args: tuple[int, int]) -> dict[str, Any]:
    start, end = args
    elapsed_start = time.monotonic()
    result = symbolic.scan_window((start, end))
    return {
        "schema_version": 1,
        "mode": "symbolic-row-family-census-window",
        "trusted_as_proof": False,
        "window": {
            "start": start,
            "end": end,
            "width": end - start,
        },
        "elapsed_seconds": time.monotonic() - elapsed_start,
        "max_rss_kib": resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
        "result": result,
    }


def checkpoint_compatible(payload: dict[str, Any]) -> bool:
    return payload.get("mode") == "symbolic-row-family-census-window"


def collect_payloads(
    *,
    windows: list[tuple[int, int]],
    checkpoint_dir: Path,
    workers: int,
    resume: bool,
    aggregate_only: bool,
    max_pool_restarts: int,
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
            raise FileNotFoundError(f"missing checkpoint for window {window}: {path}")
        else:
            todo.append(window)

    if not todo:
        return [payloads_by_window[window] for window in windows]

    pool_restarts = 0
    remaining = list(todo)
    pool = ProcessPoolExecutor(max_workers=workers)
    active: dict[Any, tuple[int, int]] = {}

    def submit_next() -> None:
        if not remaining:
            return
        window = remaining.pop(0)
        active[pool.submit(scan_window_worker, window)] = window

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
                    remaining = [
                        active_window
                        for active_window in active.values()
                        if active_window not in payloads_by_window
                    ] + remaining
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

                path = checkpoint_path(checkpoint_dir, *window)
                write_json_atomic(path, payload)
                payloads_by_window[window] = payload
                counts = payload["result"]["counts"]
                family_count = len(
                    payload["result"]
                    .get("candidate_counts", {})
                    .get("template_source_row_property", {})
                )
                print(
                    "completed "
                    f"[{window[0]:,},{window[1]:,}) "
                    f"good={counts['good_direction_survivors']:,} "
                    f"covered={counts['covered_cases']:,} "
                    f"uncovered={counts['uncovered_cases']:,} "
                    f"families={family_count:,} "
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
    lo = math.floor(index)
    hi = math.ceil(index)
    if lo == hi:
        return ordered[lo]
    frac = index - lo
    return ordered[lo] * (1 - frac) + ordered[hi] * frac


def top_counter(counter: dict[str, int], limit: int = 24) -> list[dict[str, Any]]:
    return [
        {"family_key": key, "cases": count}
        for key, count in sorted(counter.items(), key=lambda item: (-item[1], item[0]))[:limit]
    ]


def family_count(payload: dict[str, Any], key: str) -> int:
    return int(payload.get("candidate_family_counts", {}).get(key, 0))


def projection(
    *,
    payloads: list[dict[str, Any]],
    merged: dict[str, Any],
    rank_start: int,
    limit: int,
    window_mode: str,
    workers: int,
) -> dict[str, Any]:
    observed_width = sum(int(p["window"]["width"]) for p in payloads)
    elapsed_values = [float(p.get("elapsed_seconds", 0.0)) for p in payloads]
    rss_values = [int(p.get("max_rss_kib", 0)) for p in payloads]
    total_elapsed = sum(elapsed_values)
    seconds_per_rank = total_elapsed / observed_width if observed_width else 0.0
    projected_cpu_seconds = seconds_per_rank * limit if observed_width else float("inf")
    projected_wall_seconds = projected_cpu_seconds / max(1, workers)
    symbolic_count = family_count(merged, "template_source_row_property")
    observed_good = int(merged["counts"].get("good_direction_survivors", 0))
    full_window = (
        window_mode == "contiguous"
        and rank_start == 0
        and limit == exact.EXPECTED_PAIR_WORDS
        and observed_width == exact.EXPECTED_PAIR_WORDS
    )
    scale = (exact.EXPECTED_PAIR_WORDS / observed_width) if observed_width else 0.0
    projected_symbolic_families = symbolic_count if full_window else math.ceil(symbolic_count * scale)
    projected_good_survivors = observed_good if full_window else math.ceil(observed_good * scale)
    return {
        "observed_rank_width": observed_width,
        "observed_elapsed_seconds": total_elapsed,
        "seconds_per_rank": seconds_per_rank,
        "projected_cpu_seconds_for_rank_window": projected_cpu_seconds,
        "projected_wall_seconds_for_rank_window": projected_wall_seconds,
        "projected_symbolic_families_for_full_space_linear_scale": projected_symbolic_families,
        "projected_good_direction_survivors_for_full_space_linear_scale": projected_good_survivors,
        "p50_window_seconds": statistics.median(elapsed_values) if elapsed_values else 0.0,
        "p95_window_seconds": percentile(elapsed_values, 0.95),
        "max_window_rss_kib": max(rss_values, default=0),
    }


def decision(
    *,
    aggregate: dict[str, Any],
    family_gate: int,
    min_observed_rank_mass: int,
    max_projected_wall_seconds: float,
) -> dict[str, Any]:
    counts = aggregate["counts"]
    symbolic_count = family_count(aggregate, "template_source_row_property")
    observed_rank_width = int(aggregate["projection"]["observed_rank_width"])
    projected_families = int(
        aggregate["projection"]["projected_symbolic_families_for_full_space_linear_scale"]
    )
    projected_wall = float(
        aggregate["projection"]["projected_wall_seconds_for_rank_window"]
    )
    notes: list[str] = []

    if counts.get("uncovered_cases", 0) or counts.get("non_two_source_cases", 0):
        return {
            "status": "rejected",
            "notes": [
                "some GoodDirection survivors were not covered by symbolic two-source templates"
            ],
        }
    if observed_rank_width < min_observed_rank_mass:
        notes.append("coverage is clean but observed rank mass is below the configured gate")
        return {"status": "needs-more-sampling", "notes": notes}
    if symbolic_count > family_gate:
        notes.append("observed symbolic family count exceeds the configured gate")
        return {"status": "rejected", "notes": notes}
    if projected_families > family_gate:
        notes.append("linear global projection exceeds the configured family gate")
        return {"status": "needs-more-sampling", "notes": notes}
    if projected_wall > max_projected_wall_seconds:
        notes.append("projected diagnostic wall time exceeds the configured gate")
        return {"status": "needs-more-sampling", "notes": notes}
    notes.append("symbolic family coordinate remains clean and below configured gates")
    return {"status": "accepted-for-emission", "notes": notes}


def aggregate_payload(
    *,
    payloads: list[dict[str, Any]],
    rank_start: int,
    limit: int,
    windows: list[tuple[int, int]],
    window_mode: str,
    workers: int,
    checkpoint_dir: Path,
    elapsed_seconds: float,
    family_gate: int,
    min_observed_rank_mass: int,
    max_projected_wall_seconds: float,
) -> dict[str, Any]:
    parts = [payload["result"] for payload in payloads]
    merged = symbolic.merge_results(parts)
    max_rss = max((int(payload.get("max_rss_kib", 0)) for payload in payloads), default=0)
    aggregate = {
        "schema_version": 1,
        "mode": "symbolic-row-family-census",
        "phase": "6Z.6K.3",
        "trusted_as_proof": False,
        "window_mode": window_mode,
        "rank_window": {
            "start": rank_start,
            "end": rank_start + limit,
            "width": limit,
        },
        "window_count": len(windows),
        "completed_window_count": len(payloads),
        "windows": [
            {
                "start": start,
                "end": end,
                "width": end - start,
                "checkpoint": str(checkpoint_path(checkpoint_dir, start, end)),
            }
            for start, end in windows
        ],
        "parallel": {"workers": workers},
        "checkpoint_dir": str(checkpoint_dir),
        "elapsed_seconds": elapsed_seconds,
        "max_window_rss_kib": max_rss,
        "top_symbolic_families": top_counter(
            merged.get("candidate_counts", {}).get("template_source_row_property", {})
            if "candidate_counts" in merged else {}
        ),
        **merged,
    }
    aggregate["projection"] = projection(
        payloads=payloads,
        merged=merged,
        rank_start=rank_start,
        limit=limit,
        window_mode=window_mode,
        workers=workers,
    )
    aggregate["decision"] = decision(
        aggregate=aggregate,
        family_gate=family_gate,
        min_observed_rank_mass=min_observed_rank_mass,
        max_projected_wall_seconds=max_projected_wall_seconds,
    )
    return aggregate


def markdown_report(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    projection_data = payload["projection"]
    decision_data = payload["decision"]
    lines = [
        "# Symbolic Row-Family Census",
        "",
        "This report is diagnostic only; Lean must check any emitted family theorem.",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| Window mode | `{payload['window_mode']}` |",
        f"| Windows completed | {payload['completed_window_count']:,}/{payload['window_count']:,} |",
        f"| Pair words scanned | {counts.get('pair_words_scanned', 0):,} |",
        f"| Identity-linear words | {counts.get('identity_words', 0):,} |",
        f"| Translation sign assignments | {counts.get('translation_sign_assignments', 0):,} |",
        f"| GoodDirection survivors | {counts.get('good_direction_survivors', 0):,} |",
        f"| Covered cases | {counts.get('covered_cases', 0):,} |",
        f"| Uncovered cases | {counts.get('uncovered_cases', 0):,} |",
        f"| Non-two-source cases | {counts.get('non_two_source_cases', 0):,} |",
        f"| Symbolic families | {family_count(payload, 'template_source_row_property'):,} |",
        f"| Template-source families | {family_count(payload, 'template_source'):,} |",
        f"| Row-property families | {family_count(payload, 'template_row_property'):,} |",
        f"| Exact row-shape families | {family_count(payload, 'exact_row_shape'):,} |",
        f"| Aggregate command elapsed seconds | {payload['elapsed_seconds']:.2f} |",
        f"| Observed window elapsed seconds | {projection_data['observed_elapsed_seconds']:.2f} |",
        f"| Max window RSS KiB | {payload['max_window_rss_kib']:,} |",
        f"| Projected wall seconds for selected rank window | {projection_data['projected_wall_seconds_for_rank_window']:.2f} |",
        f"| Linear full-space symbolic-family projection | {projection_data['projected_symbolic_families_for_full_space_linear_scale']:,} |",
        "",
        f"Decision: **{decision_data['status']}**",
        "",
    ]
    for note in decision_data["notes"]:
        lines.append(f"- {note}")
    lines.extend([
        "",
        "## Candidate Coordinates",
        "",
        "| coordinate | families |",
        "| --- | ---: |",
    ])
    for name, count in sorted(payload["candidate_family_counts"].items()):
        lines.append(f"| `{name}` | {count:,} |")
    lines.extend([
        "",
        "## Top Symbolic Families",
        "",
    ])
    for item in payload["candidate_top_families"].get("template_source_row_property", []):
        lines.append(f"- `{item['family_key']}`: {item['cases']:,}")
    lines.extend([
        "",
        "## High-Variation Template-Source Families",
        "",
        "| source agreement | row property | integer scaled | exact row shape | family |",
        "| ---: | ---: | ---: | ---: | --- |",
    ])
    for row in payload.get("family_variation", [])[:16]:
        lines.append(
            f"| {row['source_agreement_signatures']} "
            f"| {row['row_property_signatures']} "
            f"| {row['integer_scaled_signatures']} "
            f"| {row['exact_row_shape_signatures']} "
            f"| `{row['family_key']}` |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=exact.EXPECTED_PAIR_WORDS)
    parser.add_argument("--chunk-size", type=int, default=5_000)
    parser.add_argument("--workers", type=int, default=min(24, os.cpu_count() or 1))
    parser.add_argument("--checkpoint-dir", type=Path, default=DEFAULT_CHECKPOINT_DIR)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--markdown-output", type=Path, default=None)
    parser.add_argument("--representative-report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument("--resume", action="store_true")
    parser.add_argument("--aggregate-only", action="store_true")
    parser.add_argument("--representative-calibration", action="store_true")
    parser.add_argument("--calibration", action="store_true")
    parser.add_argument("--calibration-width", type=int, default=100_000)
    parser.add_argument(
        "--calibration-starts",
        type=str,
        default="0,10000000,30000000,60000000,90000000",
    )
    parser.add_argument("--family-gate", type=int, default=2_000)
    parser.add_argument("--min-observed-rank-mass", type=int, default=100_000)
    parser.add_argument("--max-projected-wall-seconds", type=float, default=21_600.0)
    parser.add_argument("--max-pool-restarts", type=int, default=32)
    args = parser.parse_args()

    if args.rank_start < 0:
        parser.error("--rank-start must be nonnegative")
    if args.limit <= 0:
        parser.error("--limit must be positive")
    if args.chunk_size <= 0:
        parser.error("--chunk-size must be positive")
    if args.workers <= 0:
        parser.error("--workers must be positive")
    if args.rank_start + args.limit > exact.EXPECTED_PAIR_WORDS:
        parser.error("rank window exceeds EXPECTED_PAIR_WORDS")
    if args.calibration and args.representative_calibration:
        parser.error("--calibration and --representative-calibration are mutually exclusive")

    if args.representative_calibration:
        report = read_json(args.representative_report)
        windows = representative_windows(report, args.chunk_size)
        window_mode = "representative-calibration"
    elif args.calibration:
        windows = calibration_windows(
            rank_start=args.rank_start,
            limit=args.limit,
            calibration_width=args.calibration_width,
            calibration_starts=parse_start_list(args.calibration_starts),
            chunk_size=args.chunk_size,
        )
        window_mode = "calibration"
    else:
        windows = contiguous_windows(args.rank_start, args.limit, args.chunk_size)
        window_mode = "contiguous"
    if not windows:
        parser.error("no windows selected")

    started = time.monotonic()
    payloads = collect_payloads(
        windows=windows,
        checkpoint_dir=args.checkpoint_dir,
        workers=args.workers,
        resume=args.resume,
        aggregate_only=args.aggregate_only,
        max_pool_restarts=args.max_pool_restarts,
    )
    aggregate = aggregate_payload(
        payloads=payloads,
        rank_start=args.rank_start,
        limit=args.limit,
        windows=windows,
        window_mode=window_mode,
        workers=args.workers,
        checkpoint_dir=args.checkpoint_dir,
        elapsed_seconds=time.monotonic() - started,
        family_gate=args.family_gate,
        min_observed_rank_mass=args.min_observed_rank_mass,
        max_projected_wall_seconds=args.max_projected_wall_seconds,
    )
    write_json_atomic(args.output, aggregate)
    markdown_output = args.markdown_output or args.output.with_suffix(".md")
    markdown_output.parent.mkdir(parents=True, exist_ok=True)
    markdown_output.write_text(markdown_report(aggregate), encoding="utf-8")
    print(f"wrote {args.output}")
    print(f"wrote {markdown_output}")
    print(
        "symbolic family census: "
        f"{aggregate['counts']['covered_cases']:,}/"
        f"{aggregate['counts']['good_direction_survivors']:,}; "
        f"families={family_count(aggregate, 'template_source_row_property'):,}; "
        f"decision={aggregate['decision']['status']}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
