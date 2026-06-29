#!/usr/bin/env python3
"""Profile DU.9Q compact-Walsh cover reuse across sampled ranks.

DU.9P proves a bounded `[0,4)` GoodDirection membership bridge by emitting
rank-local compact-Walsh covers.  This diagnostic asks whether that surface can
scale: for sampled windows, collect each rank's GoodDirection masks, rerun the
exact AP16BJ subcube-cover search for a bounded number of ranks, and group the
selected cover patterns.

The output is planning telemetry only; it is not proof evidence.
"""

from __future__ import annotations

import argparse
import json
import multiprocessing as mp
import statistics
import sys
import time
from collections import defaultdict
from dataclasses import asdict
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    classified_cases_and_bad_masks_for_signature,
)
from generate_source_index_state_nonenum_smoke import collect_families  # noqa: E402
from profile_ap16bi_denominator_sign_forms import eval_walsh  # noqa: E402
from profile_ap16bj_walsh_subcube_cover import (  # noqa: E402
    KilledSubcube,
    all_labels,
    compute_walsh_forms,
    fixed_bits,
    label_masks,
)


DEFAULT_WINDOWS = "0:1000,100000:1000,6000000:1000"
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du9q_compact_cover_reuse_profile.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def parse_windows(text: str) -> list[tuple[int, int]]:
    windows: list[tuple[int, int]] = []
    for item in text.split(","):
        item = item.strip()
        if not item:
            continue
        if ":" not in item:
            raise ValueError(f"window {item!r} must have form start:limit")
        start_s, limit_s = item.split(":", 1)
        start = int(start_s)
        limit = int(limit_s)
        if start < 0 or limit <= 0:
            raise ValueError(f"invalid window {item!r}")
        windows.append((start, limit))
    if not windows:
        raise ValueError("no windows requested")
    return windows


def rank_good_masks_for_windows(windows: list[tuple[int, int]]) -> tuple[dict[int, list[int]], dict[str, Any]]:
    rank_masks: dict[int, set[int]] = defaultdict(set)
    window_reports = []
    for start, limit in windows:
        families, counts = collect_families(rank_start=start, limit=limit)
        for family in families:
            for member in family.members:
                case = member.symbolic.case
                rank_masks[int(case.rank)].add(int(case.mask))
        window_reports.append({
            "rank_start": start,
            "rank_end": start + limit,
            "limit": limit,
            "counts": counts,
            "family_count": len(families),
        })
    return (
        {rank: sorted(masks) for rank, masks in sorted(rank_masks.items())},
        {
            "windows": window_reports,
            "rank_count": len(rank_masks),
            "good_direction_case_count": sum(len(masks) for masks in rank_masks.values()),
        },
    )


def profile_rank(args: tuple[int, list[int]]) -> dict[str, Any]:
    rank, good_masks = args
    _cases, bad_masks, _stats = classified_cases_and_bad_masks_for_signature(rank, good_masks)
    good_set = set(good_masks)
    bad_set = set(range(64)) - good_set
    forms, failures = compute_walsh_forms(rank, good_masks, bad_masks)
    candidates: list[KilledSubcube] = []
    for label in all_labels():
        masks = label_masks(label)
        if not masks:
            continue
        if good_set.intersection(masks):
            continue
        best_impact: int | None = None
        best_max = None
        for impact, coeffs in enumerate(forms, start=1):
            max_value = max(eval_walsh(coeffs, cube_mask) for cube_mask in masks)
            if max_value <= 0 and (best_max is None or max_value < best_max):
                best_impact = impact
                best_max = max_value
        if best_impact is not None and best_max is not None:
            candidates.append(KilledSubcube(
                label=label,
                masks=masks,
                impact=best_impact,
                max_value=str(best_max),
                fixed_bits=fixed_bits(label),
            ))

    uncovered = set(bad_set)
    selected: list[KilledSubcube] = []
    while uncovered:
        best = None
        best_cover: set[int] = set()
        for candidate in candidates:
            cover = uncovered.intersection(candidate.masks)
            if not cover:
                continue
            if best is None:
                best = candidate
                best_cover = cover
                continue
            best_fixed = 6 - best.label.count("*")
            cand_fixed = 6 - candidate.label.count("*")
            if (
                len(cover), -cand_fixed, -len(candidate.masks)
            ) > (
                len(best_cover), -best_fixed, -len(best.masks)
            ):
                best = candidate
                best_cover = cover
        if best is None:
            break
        selected.append(best)
        uncovered -= best_cover

    structural_pattern = tuple((item.label, item.impact) for item in selected)
    impact_pattern = tuple(sorted({item.impact for item in selected}))
    return {
        "rank": rank,
        "good_masks": good_masks,
        "good_mask_count": len(good_masks),
        "bad_mask_count": len(bad_set),
        "walsh_validated": not failures,
        "walsh_validation_failures": failures[:5],
        "candidate_count": len(candidates),
        "selected_count": len(selected),
        "uncovered_count": len(uncovered),
        "uncovered_masks": sorted(uncovered),
        "selected": [asdict(item) for item in selected],
        "structural_pattern": structural_pattern,
        "impact_pattern": impact_pattern,
    }


def summarize(results: list[dict[str, Any]]) -> dict[str, Any]:
    selected_counts = [int(row["selected_count"]) for row in results]
    candidate_counts = [int(row["candidate_count"]) for row in results]
    uncovered = [row for row in results if int(row["uncovered_count"]) != 0]
    structural_patterns = {tuple(tuple(item) for item in row["structural_pattern"]) for row in results}
    impact_patterns = {tuple(row["impact_pattern"]) for row in results}
    good_mask_sets = {tuple(row["good_masks"]) for row in results}
    return {
        "profiled_rank_count": len(results),
        "uncovered_rank_count": len(uncovered),
        "walsh_validation_failure_count": sum(0 if row["walsh_validated"] else 1 for row in results),
        "unique_good_mask_sets": len(good_mask_sets),
        "unique_structural_patterns": len(structural_patterns),
        "unique_impact_patterns": len(impact_patterns),
        "selected_subcubes": {
            "min": min(selected_counts) if selected_counts else 0,
            "max": max(selected_counts) if selected_counts else 0,
            "mean": statistics.fmean(selected_counts) if selected_counts else 0,
            "total": sum(selected_counts),
        },
        "candidate_subcubes": {
            "min": min(candidate_counts) if candidate_counts else 0,
            "max": max(candidate_counts) if candidate_counts else 0,
            "mean": statistics.fmean(candidate_counts) if candidate_counts else 0,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    summary = payload["summary"]
    lines = [
        "# DU.9Q Compact-Cover Reuse Profile",
        "",
        "This report is planning telemetry, not proof evidence.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Windows: `{payload['windows_requested']}`",
        f"- Ranks with GoodDirection masks in windows: `{payload['rank_collection']['rank_count']}`",
        f"- Profiled ranks: `{summary['profiled_rank_count']}`",
        f"- Unique good-mask sets: `{summary['unique_good_mask_sets']}`",
        f"- Unique structural cover patterns: `{summary['unique_structural_patterns']}`",
        f"- Unique impact patterns: `{summary['unique_impact_patterns']}`",
        f"- Selected subcubes mean/max: `{summary['selected_subcubes']['mean']:.2f}` / `{summary['selected_subcubes']['max']}`",
        f"- Uncovered ranks: `{summary['uncovered_rank_count']}`",
        f"- Elapsed seconds: `{payload['elapsed_seconds']:.2f}`",
        "",
        "## Profiled Ranks",
        "",
        "| Rank | Good masks | Bad masks | Candidates | Selected | Uncovered | Impact pattern |",
        "| ---: | ---: | ---: | ---: | ---: | ---: | --- |",
    ]
    for row in payload["results"]:
        lines.append(
            f"| {row['rank']} | {row['good_mask_count']} | {row['bad_mask_count']} | "
            f"{row['candidate_count']} | {row['selected_count']} | "
            f"{row['uncovered_count']} | `{list(row['impact_pattern'])}` |"
        )
    lines.extend(["", "## Decision", ""])
    lines.extend(payload["decision"]["notes"])
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--windows", default=DEFAULT_WINDOWS)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--max-ranks", type=int, default=24)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    windows = parse_windows(args.windows)
    started = time.monotonic()
    rank_masks, collection = rank_good_masks_for_windows(windows)
    selected_items = list(rank_masks.items())[:max(0, args.max_ranks)]
    jobs = max(1, min(args.jobs, len(selected_items) or 1))
    if jobs == 1:
        results = [profile_rank(item) for item in selected_items]
    else:
        with mp.Pool(processes=jobs) as pool:
            results = pool.map(profile_rank, selected_items)
    elapsed = time.monotonic() - started
    summary = summarize(results)
    no_failures = (
        summary["uncovered_rank_count"] == 0 and
        summary["walsh_validation_failure_count"] == 0
    )
    pattern_ratio = (
        summary["unique_structural_patterns"] / summary["profiled_rank_count"]
        if summary["profiled_rank_count"] else 1.0
    )
    if not no_failures:
        status = "rejected-compact-cover-correctness-sample"
    elif pattern_ratio <= 0.5:
        status = "accepted-reusable-compact-cover-sample"
    else:
        status = "rejected-rank-local-compact-cover-sample"
    notes = [
        "This emits no Lean and is not trusted as proof.",
        "A low structural-pattern count supports a reusable compact-cover template route.",
        "A high structural-pattern count means DU.9P rank-local compact covers should remain bounded smoke only.",
    ]
    payload = {
        "phase": "6Z.6K.8AP.16DU.9Q",
        "mode": "compact_cover_reuse_profile",
        "trusted_as_proof": False,
        "windows_requested": windows,
        "jobs": jobs,
        "max_ranks": args.max_ranks,
        "rank_collection": collection,
        "elapsed_seconds": elapsed,
        "summary": summary,
        "structural_pattern_ratio": pattern_ratio,
        "results": results,
        "decision": {"status": status, "notes": notes},
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.md.parent.mkdir(parents=True, exist_ok=True)
    args.md.write_text(markdown(payload), encoding="utf-8")
    print(json.dumps({
        "status": status,
        "rank_count": collection["rank_count"],
        "profiled_rank_count": summary["profiled_rank_count"],
        "unique_structural_patterns": summary["unique_structural_patterns"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
