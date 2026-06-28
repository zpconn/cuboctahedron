#!/usr/bin/env python3
"""Plan AP.16Y positive-candidate fact shards.

This diagnostic planner uses the AP.16I positive candidate catalog and the
AP.16W/AP.16X measured Lean smoke constants to estimate production shard sizes
for the heavy candidate-facts layer.

It emits no proof evidence.  Its job is to choose bounded shard budgets before
we generate more Lean.
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
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16y_candidate_shard_plan.json")
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
        "# AP.16Y Candidate Shard Plan",
        "",
        "This report is diagnostic only. It estimates shard sizes for the AP.16",
        "shared candidate-facts layer using AP.16W/AP.16X smoke measurements.",
        "It is not proof evidence.",
        "",
        "## Calibration",
        "",
    ]
    cal = report["calibration"]
    for key, value in cal.items():
        lines.append(f"- {key}: {value}")
    lines.extend(["", "## Plans", ""])
    for plan in report["plans"]:
        lines.extend([
            f"### budget {plan['budget']} facts/shard",
            "",
            f"- shards: {plan['shards']}",
            f"- largest shard facts: {plan['largest_shard_facts']}",
            f"- estimated source lines: {plan['estimated_source_lines']}",
            f"- estimated serial wall seconds: {plan['estimated_serial_wall_seconds']:.1f}",
            f"- estimated serial wall hours: {plan['estimated_serial_wall_hours']:.3f}",
            f"- estimated peak RSS per shard KiB: {plan['estimated_peak_rss_per_shard_kib']}",
            f"- safe parallel jobs at 45 GiB: {plan['safe_parallel_jobs_45gib']}",
            f"- estimated wall hours at safe parallelism: {plan['estimated_wall_hours_at_safe_parallelism']:.3f}",
            "",
        ])
    lines.extend(["## Decision", "", report["decision"], ""])
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def greedy_shards(cases: list[dict[str, Any]], budget: int) -> list[list[dict[str, Any]]]:
    shards: list[list[dict[str, Any]]] = []
    current: list[dict[str, Any]] = []
    current_count = 0
    for item in sorted(cases, key=lambda row: (-int(row["case_count"]), str(row["key"]))):
        remaining = int(item["case_count"])
        part_index = 0
        while remaining > 0:
            room = budget - current_count
            if room == 0:
                shards.append(current)
                current = []
                current_count = 0
                room = budget
            take = min(room, remaining)
            current.append({
                "key": item["key"],
                "template_ids": item.get("template_ids", []),
                "source_positions": item.get("source_positions", []),
                "case_count": take,
                "original_case_count": int(item["case_count"]),
                "part_index": part_index,
            })
            current_count += take
            remaining -= take
            part_index += 1
            if current_count == budget:
                shards.append(current)
                current = []
                current_count = 0
    if current:
        shards.append(current)
    return shards


def plan_for_budget(candidates: list[dict[str, Any]], budget: int, args: argparse.Namespace) -> dict[str, Any]:
    shards = greedy_shards(candidates, budget)
    total_facts = sum(int(candidate["case_count"]) for candidate in candidates)
    largest = max(sum(int(item["case_count"]) for item in shard) for shard in shards) if shards else 0
    source_lines = math.ceil(total_facts * args.lines_per_fact)
    serial_seconds = total_facts * args.seconds_per_fact
    peak_rss = math.ceil(args.base_rss_kib + largest * args.rss_per_fact_kib)
    memory_limit_kib = 45 * 1024 * 1024
    safe_jobs = max(1, min(args.max_jobs, memory_limit_kib // max(1, peak_rss)))
    return {
        "budget": budget,
        "shards": len(shards),
        "total_facts": total_facts,
        "largest_shard_facts": largest,
        "estimated_source_lines": source_lines,
        "estimated_serial_wall_seconds": serial_seconds,
        "estimated_serial_wall_hours": serial_seconds / 3600,
        "estimated_peak_rss_per_shard_kib": peak_rss,
        "safe_parallel_jobs_45gib": safe_jobs,
        "estimated_wall_hours_at_safe_parallelism": (serial_seconds / safe_jobs) / 3600,
        "top_shards": [
            {
                "fact_count": sum(int(item["case_count"]) for item in shard),
                "candidate_parts": len(shard),
                "sample_keys": [str(item["key"])[:12] for item in shard[:5]],
            }
            for shard in shards[:10]
        ],
    }


def profile(args: argparse.Namespace) -> dict[str, Any]:
    data = json.loads(args.profile.read_text(encoding="utf-8"))
    candidates = data.get("positive_candidate_catalog", [])
    plans = [plan_for_budget(candidates, budget, args) for budget in args.budgets]
    best = min(plans, key=lambda plan: (plan["estimated_wall_hours_at_safe_parallelism"], plan["budget"]))
    decision = (
        f"Use budget {best['budget']} as the next bounded emission target unless "
        "a focused Lean shard exceeds the RSS/wall projection.  The AP.16X "
        "calibration suggests the candidate-facts layer is buildable if shards "
        "are capped by positive-mask fact count and compiled with memory-safe "
        "parallelism; routing chunks should stay separate and thin."
    )
    return {
        "phase": "6Z.6K.8AP.16Y",
        "trusted_as_proof": False,
        "input_profile": str(args.profile),
        "counts": {
            "positive_candidate_groups": len(candidates),
            "total_positive_facts": sum(int(candidate["case_count"]) for candidate in candidates),
        },
        "calibration": {
            "lines_per_fact": round(args.lines_per_fact, 3),
            "seconds_per_fact": round(args.seconds_per_fact, 3),
            "base_rss_kib": int(args.base_rss_kib),
            "rss_per_fact_kib": round(args.rss_per_fact_kib, 3),
            "max_jobs": args.max_jobs,
        },
        "plans": plans,
        "decision": decision,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--budgets", type=int, nargs="+", default=[20, 40, 60, 80])
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
        "plans": [
            {
                "budget": plan["budget"],
                "shards": plan["shards"],
                "serial_hours": round(plan["estimated_serial_wall_hours"], 3),
                "safe_jobs": plan["safe_parallel_jobs_45gib"],
                "parallel_hours": round(plan["estimated_wall_hours_at_safe_parallelism"], 3),
                "peak_rss_gib": round(plan["estimated_peak_rss_per_shard_kib"] / 1024 / 1024, 3),
            }
            for plan in report["plans"]
        ],
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
