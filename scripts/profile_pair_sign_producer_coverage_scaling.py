#!/usr/bin/env python3
"""Profile Phase 6Z.6K.8AI pair-sign producer-coverage scaling.

Phase 8AH showed that reusable source producers and row producers compose
cheaply in Lean over representative windows.  This diagnostic asks the next
scaling question: do the source, row, and descriptor surfaces stay bounded when
we sample broader disjoint rank windows?

The output is not trusted as proof and emits no Lean.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    Family,
    write_json,
    write_text,
)
from profile_pair_sign_descriptor_membership_state import (  # noqa: E402
    CaseItem,
    parse_ranges,
    validate_source_languages,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    key,
    member_count,
    row_payload,
    source_payload,
)


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ai_pair_sign_producer_coverage_scaling.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_RANGES = (
    "0:10000,"
    "100000:105000,250000:255000,1000000:1005000,5000000:5005000,"
    "10000000:10005000,20000000:20005000,30000000:30005000,"
    "45000000:45005000,60000000:60005000,75000000:75005000,"
    "90000000:90005000"
)


def merge_families(parts: list[tuple[list[Family], dict[str, int]]]) -> tuple[list[Family], dict[str, int]]:
    merged: dict[str, Family] = {}
    counts: Counter[str] = Counter()
    for families, part_counts in parts:
        counts.update(part_counts)
        for family in families:
            current = merged.get(family.key)
            if current is None:
                current = Family(
                    key=family.key,
                    template_id=family.template_id,
                    source_indices=family.source_indices,
                    source_skeletons=family.source_skeletons,
                    row_property_key=family.row_property_key,
                )
                merged[family.key] = current
            elif (
                current.template_id != family.template_id
                or current.source_indices != family.source_indices
                or current.source_skeletons != family.source_skeletons
                or current.row_property_key != family.row_property_key
            ):
                raise RuntimeError(f"inconsistent family metadata for {family.key}")
            current.members.extend(family.members)
    return (
        sorted(merged.values(), key=lambda item: (-item.count, item.template_id, item.key)),
        dict(counts),
    )


def collect_window(*, start: int, end: int, jobs: int) -> tuple[list[Family], dict[str, int]]:
    return collect_families_maybe_parallel(
        rank_start=start,
        limit=end - start,
        jobs=jobs,
        source_key_surface="pair_sign",
    )


def family_keys(families: list[Family]) -> dict[str, set[str]]:
    source_keys = {key(source_payload(family)) for family in families}
    row_keys = {key(row_payload(family)) for family in families}
    descriptor_keys = {family.key for family in families}
    source_row_edges = {
        f"{key(source_payload(family))}:{key(row_payload(family))}"
        for family in families
    }
    return {
        "source": source_keys,
        "row": row_keys,
        "descriptor": descriptor_keys,
        "source_row_edge": source_row_edges,
    }


def case_items_for_window(window: tuple[int, int], families: list[Family]) -> list[CaseItem]:
    start, end = window
    return [
        CaseItem(window=(start, end), family=family, member=member)
        for family in families
        for member in family.members
    ]


def summarize_top(families: list[Family], *, limit: int) -> list[dict[str, Any]]:
    return [
        {
            "key": family.key,
            "case_count": family.count,
            "template_id": family.template_id,
            "source_indices": list(family.source_indices),
            "source_skeletons": list(family.source_skeletons),
            "row_property_key": family.row_property_key,
        }
        for family in sorted(
            families,
            key=lambda item: (-item.count, item.template_id, item.key),
        )[:limit]
    ]


def count_groups(families: list[Family], payload) -> list[dict[str, Any]]:
    groups: dict[str, list[Family]] = defaultdict(list)
    for family in families:
        groups[key(payload(family))].append(family)
    rows = []
    for group_key, group_families in groups.items():
        rows.append({
            "key": group_key,
            "descriptor_count": len(group_families),
            "case_count": member_count(group_families),
        })
    return sorted(rows, key=lambda item: (-int(item["case_count"]), str(item["key"])))


def profile(
    *,
    ranges: list[tuple[int, int]],
    jobs: int,
    sample_limit: int,
    producer_gate: int,
    descriptor_gate: int,
) -> dict[str, Any]:
    parts: list[tuple[list[Family], dict[str, int]]] = []
    windows: list[dict[str, Any]] = []
    all_items: list[CaseItem] = []

    cumulative = {
        "source": set(),
        "row": set(),
        "descriptor": set(),
        "source_row_edge": set(),
    }
    cumulative_cases = 0
    cumulative_counts: Counter[str] = Counter()

    for start, end in ranges:
        families, counts = collect_window(start=start, end=end, jobs=jobs)
        parts.append((families, counts))
        cumulative_counts.update(counts)
        keys = family_keys(families)
        for name, values in keys.items():
            cumulative[name].update(values)
        cumulative_cases += member_count(families)
        all_items.extend(case_items_for_window((start, end), families))
        windows.append({
            "range": [start, end],
            "rank_count": end - start,
            "counts": counts,
            "good_direction_cases": member_count(families),
            "descriptor_family_count": len(keys["descriptor"]),
            "source_group_count": len(keys["source"]),
            "row_group_count": len(keys["row"]),
            "source_row_edge_count": len(keys["source_row_edge"]),
            "cumulative_good_direction_cases": cumulative_cases,
            "cumulative_descriptor_family_count": len(cumulative["descriptor"]),
            "cumulative_source_group_count": len(cumulative["source"]),
            "cumulative_row_group_count": len(cumulative["row"]),
            "cumulative_source_row_edge_count": len(cumulative["source_row_edge"]),
            "cumulative_source_row_producer_obligations": (
                len(cumulative["source"]) + len(cumulative["row"])
            ),
        })

    families, merged_counts = merge_families(parts)
    source_groups = count_groups(families, source_payload)
    row_groups = count_groups(families, row_payload)
    descriptor_count = len({family.key for family in families})
    source_count = len(source_groups)
    row_count = len(row_groups)
    source_row_count = len({
        (key(source_payload(family)), key(row_payload(family)))
        for family in families
    })
    producer_obligations = source_count + row_count
    failures, failure_samples = validate_source_languages(
        all_items,
        sample_limit=sample_limit,
    )

    status = "needs-stronger-global-membership-invariant"
    notes = [
        "diagnostic only: sampled coverage is not Lean proof",
        "producer source+row obligations exceeded the acceptance gate or descriptor keys grew too far",
    ]
    if failures:
        status = "rejected-source-language-validation"
        notes = ["source-language validation failed on sampled members"]
    elif producer_obligations <= producer_gate and descriptor_count <= descriptor_gate:
        status = "accepted-scaling-candidate"
        notes = [
            "source+row producer obligations stayed within the scaling gate",
            "descriptor keys stayed within the scaling gate",
            "next step should test a larger/resumable census or emit a bounded scaling Lean smoke",
        ]

    return {
        "schema_version": 1,
        "mode": "pair_sign_producer_coverage_scaling_profile",
        "phase": "6Z.6K.8AI",
        "trusted_as_proof": False,
        "jobs": jobs,
        "ranges": [list(item) for item in ranges],
        "sample_limit": sample_limit,
        "producer_gate": producer_gate,
        "descriptor_gate": descriptor_gate,
        "counts": dict(cumulative_counts),
        "merged_counts": merged_counts,
        "window_count": len(windows),
        "rank_count": sum(end - start for start, end in ranges),
        "windows": windows,
        "good_direction_cases": member_count(families),
        "descriptor_family_count": descriptor_count,
        "source_group_count": source_count,
        "row_group_count": row_count,
        "source_row_edge_count": source_row_count,
        "source_row_producer_obligations": producer_obligations,
        "source_language_validation_failures": dict(failures),
        "source_language_validation_failure_count": sum(failures.values()),
        "source_language_failure_samples": failure_samples,
        "top_descriptor_families": summarize_top(families, limit=sample_limit),
        "top_source_groups": source_groups[:sample_limit],
        "top_row_groups": row_groups[:sample_limit],
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AI Pair-Sign Producer-Coverage Scaling Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean. It measures",
        "whether the Phase 8AH pair-sign producer-coverage surface remains",
        "bounded across broader disjoint rank windows.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Ranges: `{payload['ranges']}`",
        f"- Sampled ranks: `{payload['rank_count']}`",
        f"- GoodDirection cases: `{payload['good_direction_cases']}`",
        f"- Descriptor families: `{payload['descriptor_family_count']}`",
        f"- Source groups: `{payload['source_group_count']}`",
        f"- Row groups: `{payload['row_group_count']}`",
        f"- Source-row edges: `{payload['source_row_edge_count']}`",
        f"- Source+row producer obligations: `{payload['source_row_producer_obligations']}`",
        f"- Source-language validation failures: `{payload['source_language_validation_failure_count']}`",
        f"- Producer gate: `{payload['producer_gate']}`",
        f"- Descriptor gate: `{payload['descriptor_gate']}`",
        "",
        "## Window Growth",
        "",
        (
            "| Range | GoodDirection | Descriptor | Source | Row | Edge | "
            "Cum descriptor | Cum source | Cum row | Cum source+row |"
        ),
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for window in payload["windows"]:
        lines.append(
            f"| `{window['range']}` | {window['good_direction_cases']} | "
            f"{window['descriptor_family_count']} | {window['source_group_count']} | "
            f"{window['row_group_count']} | {window['source_row_edge_count']} | "
            f"{window['cumulative_descriptor_family_count']} | "
            f"{window['cumulative_source_group_count']} | "
            f"{window['cumulative_row_group_count']} | "
            f"{window['cumulative_source_row_producer_obligations']} |"
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
    parser.add_argument("--ranges", default=DEFAULT_RANGES)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--sample-limit", type=int, default=10)
    parser.add_argument("--producer-gate", type=int, default=2000)
    parser.add_argument("--descriptor-gate", type=int, default=5000)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    if args.sample_limit <= 0:
        raise ValueError("--sample-limit must be positive")
    if args.producer_gate <= 0 or args.descriptor_gate <= 0:
        raise ValueError("gates must be positive")

    payload = profile(
        ranges=parse_ranges(args.ranges),
        jobs=args.jobs,
        sample_limit=args.sample_limit,
        producer_gate=args.producer_gate,
        descriptor_gate=args.descriptor_gate,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "jobs": payload["jobs"],
        "rank_count": payload["rank_count"],
        "good_direction_cases": payload["good_direction_cases"],
        "descriptor_family_count": payload["descriptor_family_count"],
        "source_group_count": payload["source_group_count"],
        "row_group_count": payload["row_group_count"],
        "source_row_producer_obligations": payload["source_row_producer_obligations"],
        "source_language_validation_failure_count": payload["source_language_validation_failure_count"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
