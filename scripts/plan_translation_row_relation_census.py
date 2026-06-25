#!/usr/bin/env python3
"""Plan an adaptive translation row-relation census from checkpoints.

This is a diagnostic/planning tool only.  It does not run a census and is not
trusted as proof.  It reads window checkpoints emitted by
`run_translation_row_relation_census.py`, estimates whether a full global
diagnostic sweep is practical, and writes compact JSON/Markdown reports.
"""

from __future__ import annotations

import argparse
import json
import math
from pathlib import Path
import statistics
import sys
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402


DEFAULT_OUTPUT = Path("scripts/generated/translation_row_relation_census_plan.json")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json_atomic(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f"{path.name}.tmp")
    tmp.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    tmp.replace(path)


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


def merged_intervals(windows: list[tuple[int, int]]) -> list[tuple[int, int]]:
    merged: list[tuple[int, int]] = []
    for start, end in sorted(windows):
        if start >= end:
            continue
        if not merged or start > merged[-1][1]:
            merged.append((start, end))
        else:
            old_start, old_end = merged[-1]
            merged[-1] = (old_start, max(old_end, end))
    return merged


def interval_mass(intervals: list[tuple[int, int]]) -> int:
    return sum(end - start for start, end in intervals)


def contiguous_coverage_from(
    intervals: list[tuple[int, int]], rank_start: int
) -> int:
    cursor = rank_start
    for start, end in intervals:
        if end <= cursor:
            continue
        if start > cursor:
            break
        cursor = max(cursor, end)
    return cursor


def load_checkpoints(
    checkpoint_dirs: list[Path],
    *,
    require_diamond: bool | None,
) -> list[dict[str, Any]]:
    by_window: dict[tuple[int, int], dict[str, Any]] = {}
    for checkpoint_dir in checkpoint_dirs:
        for path in sorted(checkpoint_dir.glob("window_*.json")):
            payload = read_json(path)
            if payload.get("mode") != "translation-row-relation-template-census-window":
                continue
            if require_diamond is not None and bool(payload.get("diamond_enabled")) != require_diamond:
                continue
            window = payload.get("window", {})
            start = int(window["start"])
            end = int(window["end"])
            key = (start, end)
            existing = by_window.get(key)
            if existing is None:
                payload["_checkpoint_path"] = str(path)
                by_window[key] = payload
            else:
                # Prefer the newer/lower-elapsed payload for exact duplicate windows.
                if float(payload.get("elapsed_seconds", 0.0)) < float(
                    existing.get("elapsed_seconds", float("inf"))
                ):
                    payload["_checkpoint_path"] = str(path)
                    by_window[key] = payload
    return [by_window[key] for key in sorted(by_window)]


def window_summary(payload: dict[str, Any]) -> dict[str, Any]:
    window = payload["window"]
    counts = payload["result"]["counts"]
    width = int(window["end"]) - int(window["start"])
    elapsed = float(payload.get("elapsed_seconds", 0.0))
    good = int(counts.get("good_direction_survivors", 0))
    covered = int(counts.get("covered_cases", 0))
    uncovered = int(counts.get("uncovered_cases", 0))
    return {
        "start": int(window["start"]),
        "end": int(window["end"]),
        "width": width,
        "elapsed_seconds": elapsed,
        "max_rss_kib": int(payload.get("max_rss_kib", 0)),
        "good_direction_survivors": good,
        "covered_cases": covered,
        "uncovered_cases": uncovered,
        "diamond_covered_cases": int(counts.get("diamond_covered_cases", 0)),
        "seconds_per_rank": elapsed / width if width > 0 else 0.0,
        "seconds_per_good_survivor": elapsed / good if good > 0 else None,
        "checkpoint": payload.get("_checkpoint_path", ""),
    }


def recommend_window_size(
    *,
    width: int,
    elapsed_seconds: float,
    target_window_seconds: float,
    min_window_size: int,
    max_window_size: int,
    window_granularity: int,
) -> int:
    if width <= 0 or elapsed_seconds <= 0:
        raw = max_window_size
    else:
        raw = width * target_window_seconds / elapsed_seconds
    clamped = max(min_window_size, min(max_window_size, int(raw)))
    rounded = max(window_granularity, round(clamped / window_granularity) * window_granularity)
    return max(min_window_size, min(max_window_size, rounded))


def build_plan(
    *,
    checkpoint_dirs: list[Path],
    rank_start: int,
    limit: int,
    workers: int,
    target_window_seconds: float,
    min_window_size: int,
    max_window_size: int,
    window_granularity: int,
    max_projected_wall_seconds: float,
    sufficient_rank_mass: int,
    require_diamond: bool | None,
) -> dict[str, Any]:
    payloads = load_checkpoints(checkpoint_dirs, require_diamond=require_diamond)
    summaries = [window_summary(payload) for payload in payloads]
    intervals = merged_intervals([(s["start"], s["end"]) for s in summaries])
    mass = interval_mass(intervals)
    full_width = limit
    end = rank_start + limit
    contiguous_to = contiguous_coverage_from(intervals, rank_start)

    elapsed_values = [s["elapsed_seconds"] for s in summaries]
    rss_values = [int(s["max_rss_kib"]) for s in summaries]
    seconds_per_rank = [s["seconds_per_rank"] for s in summaries if s["seconds_per_rank"] > 0]
    total_elapsed = sum(elapsed_values)
    total_good = sum(int(s["good_direction_survivors"]) for s in summaries)
    total_covered = sum(int(s["covered_cases"]) for s in summaries)
    total_uncovered = sum(int(s["uncovered_cases"]) for s in summaries)

    observed_seconds_per_rank = total_elapsed / mass if mass > 0 else 0.0
    projected_cpu_seconds = observed_seconds_per_rank * full_width if mass > 0 else float("inf")
    projected_wall_seconds = projected_cpu_seconds / max(1, workers)
    p95_seconds_per_rank = percentile(seconds_per_rank, 0.95)
    p95_projected_wall_seconds = (
        p95_seconds_per_rank * full_width / max(1, workers)
        if seconds_per_rank
        else float("inf")
    )

    recommendations = []
    for summary in summaries:
        recommendations.append(
            {
                "start": summary["start"],
                "end": summary["end"],
                "observed_width": summary["width"],
                "elapsed_seconds": summary["elapsed_seconds"],
                "good_direction_survivors": summary["good_direction_survivors"],
                "recommended_window_size": recommend_window_size(
                    width=summary["width"],
                    elapsed_seconds=summary["elapsed_seconds"],
                    target_window_seconds=target_window_seconds,
                    min_window_size=min_window_size,
                    max_window_size=max_window_size,
                    window_granularity=window_granularity,
                ),
            }
        )

    dense_examples = sorted(
        recommendations,
        key=lambda item: (-item["elapsed_seconds"], -item["good_direction_survivors"]),
    )[:10]
    sparse_examples = sorted(
        recommendations,
        key=lambda item: (item["good_direction_survivors"], item["elapsed_seconds"]),
    )[:10]

    notes: list[str] = []
    if total_uncovered > 0:
        status = "need_more_samples"
        notes.append("At least one checkpoint has uncovered cases; add templates before planning a global sweep.")
    elif mass < sufficient_rank_mass:
        status = "need_more_samples"
        notes.append(
            f"Checkpointed rank mass {mass:,} is below sufficient threshold {sufficient_rank_mass:,}."
        )
    elif projected_wall_seconds <= max_projected_wall_seconds:
        status = "run_adaptive_census"
        notes.append("Mean observed throughput fits the configured wall-time budget.")
    else:
        status = "skip_to_semantic_family_profiling"
        notes.append(
            "Observed dense-window cost projects beyond the configured wall-time budget; "
            "prefer semantic family/state-space profiling over a full fixed-rank census."
        )

    if p95_projected_wall_seconds > max_projected_wall_seconds:
        notes.append(
            "The p95 observed throughput projection also exceeds the wall-time budget."
        )
    if contiguous_to < end:
        notes.append(
            f"Contiguous checkpoint coverage stops at rank {contiguous_to:,}; "
            "later sampled windows are non-contiguous calibration evidence."
        )

    return {
        "schema_version": 1,
        "mode": "translation-row-relation-adaptive-census-plan",
        "trusted_as_proof": False,
        "checkpoint_dirs": [str(path) for path in checkpoint_dirs],
        "diamond_filter": require_diamond,
        "rank_window": {
            "start": rank_start,
            "end": end,
            "width": full_width,
        },
        "planner_config": {
            "workers": workers,
            "target_window_seconds": target_window_seconds,
            "min_window_size": min_window_size,
            "max_window_size": max_window_size,
            "window_granularity": window_granularity,
            "max_projected_wall_seconds": max_projected_wall_seconds,
            "sufficient_rank_mass": sufficient_rank_mass,
        },
        "checkpoint_summary": {
            "checkpoint_count": len(summaries),
            "raw_window_rank_mass": sum(s["width"] for s in summaries),
            "checkpointed_rank_mass": mass,
            "checkpointed_fraction": mass / full_width if full_width > 0 else 0.0,
            "contiguous_coverage_start": rank_start,
            "contiguous_coverage_end": contiguous_to,
            "contiguous_coverage_width": max(0, contiguous_to - rank_start),
            "merged_interval_count": len(intervals),
            "merged_intervals_preview": [
                {"start": start, "end": interval_end, "width": interval_end - start}
                for start, interval_end in intervals[:20]
            ],
        },
        "observed_counts": {
            "good_direction_survivors": total_good,
            "covered_cases": total_covered,
            "uncovered_cases": total_uncovered,
        },
        "observed_timing": {
            "total_window_elapsed_seconds": total_elapsed,
            "mean_window_elapsed_seconds": statistics.fmean(elapsed_values) if elapsed_values else 0.0,
            "median_window_elapsed_seconds": statistics.median(elapsed_values) if elapsed_values else 0.0,
            "p95_window_elapsed_seconds": percentile(elapsed_values, 0.95),
            "max_window_elapsed_seconds": max(elapsed_values, default=0.0),
            "mean_seconds_per_rank": observed_seconds_per_rank,
            "p95_seconds_per_rank": p95_seconds_per_rank,
            "max_window_rss_kib": max(rss_values, default=0),
        },
        "projection": {
            "projected_cpu_seconds_mean": projected_cpu_seconds,
            "projected_wall_seconds_mean": projected_wall_seconds,
            "projected_wall_hours_mean": projected_wall_seconds / 3600,
            "projected_wall_seconds_p95": p95_projected_wall_seconds,
            "projected_wall_hours_p95": p95_projected_wall_seconds / 3600,
        },
        "adaptive_window_recommendations": {
            "dense_examples": dense_examples,
            "sparse_examples": sparse_examples,
        },
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown_report(payload: dict[str, Any]) -> str:
    summary = payload["checkpoint_summary"]
    timing = payload["observed_timing"]
    projection = payload["projection"]
    counts = payload["observed_counts"]
    decision = payload["decision"]
    lines = [
        "# Phase 6Z.6D.4 Adaptive Row-Template Census Plan",
        "",
        "This report is diagnostic only; Lean must check any emitted family theorem.",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| Checkpoint files | {summary['checkpoint_count']:,} |",
        f"| Checkpointed rank mass | {summary['checkpointed_rank_mass']:,} |",
        f"| Checkpointed fraction | {summary['checkpointed_fraction']:.4%} |",
        f"| Contiguous coverage end | {summary['contiguous_coverage_end']:,} |",
        f"| GoodDirection survivors observed | {counts['good_direction_survivors']:,} |",
        f"| Covered cases observed | {counts['covered_cases']:,} |",
        f"| Uncovered cases observed | {counts['uncovered_cases']:,} |",
        f"| Median window seconds | {timing['median_window_elapsed_seconds']:.2f} |",
        f"| P95 window seconds | {timing['p95_window_elapsed_seconds']:.2f} |",
        f"| Max window seconds | {timing['max_window_elapsed_seconds']:.2f} |",
        f"| Max window RSS KiB | {timing['max_window_rss_kib']:,} |",
        f"| Mean projected wall hours | {projection['projected_wall_hours_mean']:.2f} |",
        f"| P95 projected wall hours | {projection['projected_wall_hours_p95']:.2f} |",
        "",
        f"Decision: **{decision['status']}**",
        "",
    ]
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.extend(["", "## Dense Window Recommendations", ""])
    for item in payload["adaptive_window_recommendations"]["dense_examples"]:
        lines.append(
            f"- `[{item['start']:,},{item['end']:,})`: "
            f"{item['elapsed_seconds']:.2f}s, "
            f"good={item['good_direction_survivors']:,}, "
            f"recommended window={item['recommended_window_size']:,}"
        )
    lines.extend(["", "## Sparse Window Recommendations", ""])
    for item in payload["adaptive_window_recommendations"]["sparse_examples"]:
        lines.append(
            f"- `[{item['start']:,},{item['end']:,})`: "
            f"{item['elapsed_seconds']:.2f}s, "
            f"good={item['good_direction_survivors']:,}, "
            f"recommended window={item['recommended_window_size']:,}"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--checkpoint-dir",
        type=Path,
        action="append",
        required=True,
        help="Directory containing window_*.json checkpoints. May be repeated.",
    )
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=exact.EXPECTED_PAIR_WORDS)
    parser.add_argument("--workers", type=int, default=12)
    parser.add_argument("--target-window-seconds", type=float, default=300.0)
    parser.add_argument("--min-window-size", type=int, default=5_000)
    parser.add_argument("--max-window-size", type=int, default=100_000)
    parser.add_argument("--window-granularity", type=int, default=5_000)
    parser.add_argument("--max-projected-wall-seconds", type=float, default=6 * 3600.0)
    parser.add_argument("--sufficient-rank-mass", type=int, default=1_000_000)
    parser.add_argument(
        "--diamond-mode",
        choices=["any", "enabled", "disabled"],
        default="enabled",
    )
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--markdown-output", type=Path, default=None)
    args = parser.parse_args()

    if args.rank_start < 0:
        parser.error("--rank-start must be nonnegative")
    if args.limit <= 0:
        parser.error("--limit must be positive")
    if args.rank_start + args.limit > exact.EXPECTED_PAIR_WORDS:
        parser.error("rank window exceeds EXPECTED_PAIR_WORDS")
    if args.workers <= 0:
        parser.error("--workers must be positive")
    if args.target_window_seconds <= 0:
        parser.error("--target-window-seconds must be positive")
    if args.min_window_size <= 0 or args.max_window_size <= 0:
        parser.error("window sizes must be positive")
    if args.min_window_size > args.max_window_size:
        parser.error("--min-window-size must be <= --max-window-size")
    if args.window_granularity <= 0:
        parser.error("--window-granularity must be positive")
    if args.max_projected_wall_seconds <= 0:
        parser.error("--max-projected-wall-seconds must be positive")
    if args.sufficient_rank_mass <= 0:
        parser.error("--sufficient-rank-mass must be positive")

    require_diamond = {
        "any": None,
        "enabled": True,
        "disabled": False,
    }[args.diamond_mode]
    payload = build_plan(
        checkpoint_dirs=args.checkpoint_dir,
        rank_start=args.rank_start,
        limit=args.limit,
        workers=args.workers,
        target_window_seconds=args.target_window_seconds,
        min_window_size=args.min_window_size,
        max_window_size=args.max_window_size,
        window_granularity=args.window_granularity,
        max_projected_wall_seconds=args.max_projected_wall_seconds,
        sufficient_rank_mass=args.sufficient_rank_mass,
        require_diamond=require_diamond,
    )
    write_json_atomic(args.output, payload)
    markdown_output = args.markdown_output or args.output.with_suffix(".md")
    markdown_output.parent.mkdir(parents=True, exist_ok=True)
    markdown_output.write_text(markdown_report(payload), encoding="utf-8")
    print(f"wrote {args.output}")
    print(f"wrote {markdown_output}")
    print(
        "adaptive row-template census plan: "
        f"{payload['checkpoint_summary']['checkpoint_count']:,} checkpoints, "
        f"{payload['checkpoint_summary']['checkpointed_rank_mass']:,} ranks; "
        f"decision: {payload['decision']['status']}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
