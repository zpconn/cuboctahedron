#!/usr/bin/env python3
"""Plan AP.16Z signature-based shared-candidate shards.

This diagnostic planner is deliberately narrower than AP.16Y.  AP.16Y budgets
the heavy candidate-facts layer by positive candidate fact count.  The current
bounded emitter, however, selects whole positive-survivor signatures.  AP.16Z
turns the AP.16I representative signature catalog into a concrete shard
manifest for that emitter.

The output is not proof evidence.  It is a schedule for bounded Lean shard
emission and a check that signature-based shards stay within the AP.16Y memory
budget.
"""

from __future__ import annotations

import argparse
import json
import math
from pathlib import Path
from typing import Any


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16z_signature_shard_manifest.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")

# AP.16X four-signature calibration: 41 positive-mask facts, 7848 lines,
# 43.16s wall, 6,268,116 KiB RSS.
DEFAULT_LINES_PER_FACT = 7848 / 41
DEFAULT_SECONDS_PER_FACT = 43.16 / 41
DEFAULT_BASE_RSS_KIB = 3_320_000
DEFAULT_RSS_PER_FACT_KIB = (6_268_116 - DEFAULT_BASE_RSS_KIB) / 41


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def write_md(path: Path, report: dict[str, Any]) -> None:
    lines = [
        "# AP.16Z Signature Shard Manifest",
        "",
        "This report is diagnostic only. It schedules whole positive-survivor",
        "signature shards for the current AP.16 shared-candidate emitter.",
        "It is not proof evidence.",
        "",
        "## Counts",
        "",
    ]
    for key, value in report["counts"].items():
        lines.append(f"- {key}: {value}")
    lines.extend(["", "## Calibration", ""])
    for key, value in report["calibration"].items():
        lines.append(f"- {key}: {value}")
    lines.extend(["", "## Manifest", ""])
    manifest = report["manifest"]
    lines.extend([
        f"- budget_good_masks_per_shard: {manifest['budget_good_masks_per_shard']}",
        f"- shards: {manifest['shards']}",
        f"- largest_shard_good_masks: {manifest['largest_shard_good_masks']}",
        f"- estimated_source_lines: {manifest['estimated_source_lines']}",
        f"- estimated_serial_wall_hours: {manifest['estimated_serial_wall_hours']:.3f}",
        f"- estimated_peak_rss_per_shard_kib: {manifest['estimated_peak_rss_per_shard_kib']}",
        f"- safe_parallel_jobs_45gib: {manifest['safe_parallel_jobs_45gib']}",
        f"- estimated_wall_hours_at_safe_parallelism: {manifest['estimated_wall_hours_at_safe_parallelism']:.3f}",
        "",
        "## First Shards",
        "",
    ])
    for shard in report["shards"][:20]:
        lines.append(
            "- shard {index:03d}: signatures [{start_signature}, {end_signature}), "
            "good_masks={good_mask_facts}, represented_cases={represented_good_direction_cases}".format(
                **shard
            )
        )
    lines.extend(["", "## Decision", "", report["decision"], ""])
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def build_shards(signatures: list[dict[str, Any]], budget: int) -> list[dict[str, Any]]:
    shards: list[dict[str, Any]] = []
    start = 0
    current_good = 0
    current_cases = 0
    current_ranks = 0
    for index, signature in enumerate(signatures):
        good_count = len(signature.get("good_masks", []))
        case_count = int(signature.get("case_count", good_count))
        rank_count = int(signature.get("rank_count", len(signature.get("ranks", []))))
        if index > start and current_good + good_count > budget:
            shards.append({
                "index": len(shards),
                "start_signature": start,
                "end_signature": index,
                "signature_count": index - start,
                "good_mask_facts": current_good,
                "represented_good_direction_cases": current_cases,
                "represented_ranks": current_ranks,
            })
            start = index
            current_good = 0
            current_cases = 0
            current_ranks = 0
        current_good += good_count
        current_cases += case_count
        current_ranks += rank_count
    if start < len(signatures):
        shards.append({
            "index": len(shards),
            "start_signature": start,
            "end_signature": len(signatures),
            "signature_count": len(signatures) - start,
            "good_mask_facts": current_good,
            "represented_good_direction_cases": current_cases,
            "represented_ranks": current_ranks,
        })
    return shards


def profile(args: argparse.Namespace) -> dict[str, Any]:
    data = json.loads(args.profile.read_text(encoding="utf-8"))
    signatures = data.get("positive_survivor_signature_catalog", [])
    shards = build_shards(signatures, args.budget)
    total_good_masks = sum(len(sig.get("good_masks", [])) for sig in signatures)
    total_represented_cases = sum(int(sig.get("case_count", 0)) for sig in signatures)
    largest = max((int(shard["good_mask_facts"]) for shard in shards), default=0)
    source_lines = math.ceil(total_good_masks * args.lines_per_fact)
    serial_seconds = total_good_masks * args.seconds_per_fact
    peak_rss = math.ceil(args.base_rss_kib + largest * args.rss_per_fact_kib)
    memory_limit_kib = 45 * 1024 * 1024
    safe_jobs = max(1, min(args.max_jobs, memory_limit_kib // max(1, peak_rss)))
    decision = (
        f"Use the signature manifest with budget {args.budget} for the next "
        "bounded group-emitter smoke.  This manifest budgets representative "
        "signature GoodDirection masks, not global production proof coverage; "
        "the same manifest logic must later run on the production survivor "
        "catalog before any final generated API is emitted."
    )
    return {
        "phase": "6Z.6K.8AP.16Z",
        "trusted_as_proof": False,
        "input_profile": str(args.profile),
        "counts": {
            "positive_survivor_signatures": len(signatures),
            "representative_good_mask_facts": total_good_masks,
            "represented_good_direction_cases": total_represented_cases,
            "profile_total_good_direction_cases": data.get("total_good_direction_cases"),
        },
        "calibration": {
            "lines_per_fact": round(args.lines_per_fact, 3),
            "seconds_per_fact": round(args.seconds_per_fact, 3),
            "base_rss_kib": int(args.base_rss_kib),
            "rss_per_fact_kib": round(args.rss_per_fact_kib, 3),
            "max_jobs": args.max_jobs,
        },
        "manifest": {
            "budget_good_masks_per_shard": args.budget,
            "shards": len(shards),
            "largest_shard_good_masks": largest,
            "estimated_source_lines": source_lines,
            "estimated_serial_wall_seconds": serial_seconds,
            "estimated_serial_wall_hours": serial_seconds / 3600,
            "estimated_peak_rss_per_shard_kib": peak_rss,
            "safe_parallel_jobs_45gib": safe_jobs,
            "estimated_wall_hours_at_safe_parallelism": (serial_seconds / safe_jobs) / 3600,
        },
        "shards": shards,
        "decision": decision,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--budget", type=int, default=20)
    parser.add_argument("--lines-per-fact", type=float, default=DEFAULT_LINES_PER_FACT)
    parser.add_argument("--seconds-per-fact", type=float, default=DEFAULT_SECONDS_PER_FACT)
    parser.add_argument("--base-rss-kib", type=float, default=DEFAULT_BASE_RSS_KIB)
    parser.add_argument("--rss-per-fact-kib", type=float, default=DEFAULT_RSS_PER_FACT_KIB)
    parser.add_argument("--max-jobs", type=int, default=4)
    args = parser.parse_args()

    report = profile(args)
    write_json(args.json, report)
    write_md(args.md, report)
    print(json.dumps({
        "counts": report["counts"],
        "manifest": {
            "budget": report["manifest"]["budget_good_masks_per_shard"],
            "shards": report["manifest"]["shards"],
            "serial_hours": round(report["manifest"]["estimated_serial_wall_hours"], 3),
            "safe_jobs": report["manifest"]["safe_parallel_jobs_45gib"],
            "parallel_hours": round(
                report["manifest"]["estimated_wall_hours_at_safe_parallelism"], 3
            ),
            "peak_rss_gib": round(
                report["manifest"]["estimated_peak_rss_per_shard_kib"] / 1024 / 1024,
                3,
            ),
        },
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()

