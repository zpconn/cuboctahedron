#!/usr/bin/env python3
"""Profile source/row fact production for Phase 6Z.6K.8Q.

This diagnostic is not trusted as proof and emits no Lean. It asks whether the
accepted descriptor-key facts can be decomposed into reusable source-fact and
row-fact theorem obligations without reverting to one concrete branch per
GoodDirection survivor.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter
from collections import defaultdict
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path
import sys
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    Family,
    collect_families,
    write_json,
    write_text,
)
from profile_symbolic_row_extraction_families import digest_payload  # noqa: E402


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8q_source_index_state_fact_production_profile.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def member_count(families: list[Family]) -> int:
    return sum(family.count for family in families)


def descriptor_payload(family: Family) -> dict[str, Any]:
    return {
        "template": family.template_id,
        "sourceIndices": list(family.source_indices),
        "sourceSkeletons": list(family.source_skeletons),
        "rowProperty": family.row_property_key,
    }


def source_payload(family: Family) -> dict[str, Any]:
    return {
        "sourceIndices": list(family.source_indices),
        "sourceSkeletons": list(family.source_skeletons),
    }


def row_payload(family: Family) -> dict[str, Any]:
    return {
        "template": family.template_id,
        "rowProperty": family.row_property_key,
    }


def key(payload: dict[str, Any]) -> str:
    return digest_payload(payload)


def summarize_group(grouped: dict[str, list[Family]], *, limit: int) -> list[dict[str, Any]]:
    rows = []
    for group_key, families in grouped.items():
        rows.append({
            "key": group_key,
            "case_count": member_count(families),
            "descriptor_count": len(families),
            "descriptors": [
                {
                    "cases": family.count,
                    "template_id": family.template_id,
                    "source_indices": list(family.source_indices),
                    "row_property_key": family.row_property_key,
                }
                for family in sorted(
                    families,
                    key=lambda item: (-item.count, item.template_id, item.key),
                )[:4]
            ],
        })
    return sorted(rows, key=lambda item: (-int(item["case_count"]), str(item["key"])))[:limit]


def grouped_by(
    families: list[Family],
    payload,
) -> dict[str, list[Family]]:
    grouped: dict[str, list[Family]] = defaultdict(list)
    for family in families:
        grouped[key(payload(family))].append(family)
    return grouped


def collect_partition(args: tuple[int, int]) -> tuple[list[Family], dict[str, int]]:
    rank_start, limit = args
    return collect_families(rank_start=rank_start, limit=limit)


def windows(rank_start: int, limit: int, jobs: int) -> list[tuple[int, int]]:
    if limit == 0:
        return []
    chunk = (limit + jobs - 1) // jobs
    result = []
    for offset in range(0, limit, chunk):
        start = rank_start + offset
        end = min(rank_start + limit, start + chunk)
        result.append((start, end - start))
    return result


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
            current.members.extend(family.members)
    return (
        sorted(merged.values(), key=lambda item: (-item.count, item.template_id, item.key)),
        dict(counts),
    )


def collect_families_maybe_parallel(
    *,
    rank_start: int,
    limit: int,
    jobs: int,
) -> tuple[list[Family], dict[str, int]]:
    if jobs <= 1 or limit <= 1:
        return collect_families(rank_start=rank_start, limit=limit)
    parts: list[tuple[list[Family], dict[str, int]]] = []
    with ProcessPoolExecutor(max_workers=jobs) as pool:
        futures = [
            pool.submit(collect_partition, window)
            for window in windows(rank_start, limit, jobs)
        ]
        for future in as_completed(futures):
            parts.append(future.result())
    return merge_families(parts)


def profile_from_families(
    *,
    rank_start: int,
    limit: int,
    group_gate: int,
    jobs: int,
    families: list[Family],
    counts: dict[str, int],
) -> dict[str, Any]:
    total_cases = member_count(families)

    descriptor_groups = grouped_by(families, descriptor_payload)
    source_groups = grouped_by(families, source_payload)
    row_groups = grouped_by(families, row_payload)

    ambiguous_source_groups = {
        group_key: grouped
        for group_key, grouped in source_groups.items()
        if len(grouped) != 1
    }
    ambiguous_row_groups = {
        group_key: grouped
        for group_key, grouped in row_groups.items()
        if len(grouped) != 1
    }
    pair_count = len({
        (key(source_payload(family)), key(row_payload(family)))
        for family in families
    })
    status = "accepted-next-lean-smoke"
    notes = [
        "source and row facts can be stated independently",
        "descriptor glue remains necessary because row/source groups are ambiguous alone",
    ]
    total_obligations = len(source_groups) + len(row_groups) + pair_count
    if total_obligations > group_gate:
        status = "needs-smaller-fact-surface"
        notes.append(f"obligation count exceeds gate {group_gate}")

    return {
        "schema_version": 1,
        "mode": "source_index_state_fact_production_profile",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "jobs": jobs,
        "counts": counts,
        "source_index_state_family_count": len(families),
        "good_direction_cases": total_cases,
        "descriptor_key_obligations": len(descriptor_groups),
        "source_fact_obligations": len(source_groups),
        "row_fact_obligations": len(row_groups),
        "source_row_glue_obligations": pair_count,
        "total_split_fact_obligations": total_obligations,
        "explicit_replay_obligations": total_cases,
        "ambiguous_source_groups": len(ambiguous_source_groups),
        "ambiguous_source_cases": sum(member_count(grouped) for grouped in ambiguous_source_groups.values()),
        "ambiguous_row_groups": len(ambiguous_row_groups),
        "ambiguous_row_cases": sum(member_count(grouped) for grouped in ambiguous_row_groups.values()),
        "decision": {
            "status": status,
            "group_gate": group_gate,
            "notes": notes,
        },
        "top_descriptor_groups": summarize_group(descriptor_groups, limit=10),
        "top_source_groups": summarize_group(source_groups, limit=10),
        "top_row_groups": summarize_group(row_groups, limit=10),
        "ambiguous_source_samples": summarize_group(ambiguous_source_groups, limit=8),
        "ambiguous_row_samples": summarize_group(ambiguous_row_groups, limit=8),
    }


def profile(*, rank_start: int, limit: int, group_gate: int, jobs: int = 1) -> dict[str, Any]:
    families, counts = collect_families_maybe_parallel(
        rank_start=rank_start,
        limit=limit,
        jobs=jobs,
    )
    return profile_from_families(
        rank_start=rank_start,
        limit=limit,
        group_gate=group_gate,
        jobs=jobs,
        families=families,
        counts=counts,
    )


def markdown(payload: dict[str, Any]) -> str:
    decision = payload["decision"]
    lines = [
        "# Phase 6Z.6K.8Q Source-Index/State Fact Production Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean. It measures",
        "whether descriptor-key facts can be split into reusable source-fact and",
        "row-fact theorem obligations.",
        "",
        f"- Status: `{decision['status']}`",
        f"- Rank window: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Source-index/state families: `{payload['source_index_state_family_count']}`",
        f"- GoodDirection cases: `{payload['good_direction_cases']}`",
        "",
        "## Obligation Counts",
        "",
        "| Surface | Obligations |",
        "| --- | ---: |",
        f"| explicit member replay | {payload['explicit_replay_obligations']} |",
        f"| descriptor key | {payload['descriptor_key_obligations']} |",
        f"| source facts | {payload['source_fact_obligations']} |",
        f"| row facts | {payload['row_fact_obligations']} |",
        f"| source/row glue pairs | {payload['source_row_glue_obligations']} |",
        f"| total split-fact obligations | {payload['total_split_fact_obligations']} |",
        "",
        "## Ambiguity",
        "",
        "| Surface | Ambiguous groups | Ambiguous cases |",
        "| --- | ---: | ---: |",
        f"| source facts alone | {payload['ambiguous_source_groups']} | {payload['ambiguous_source_cases']} |",
        f"| row facts alone | {payload['ambiguous_row_groups']} | {payload['ambiguous_row_cases']} |",
        "",
        "## Notes",
        "",
    ]
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.extend([
        "",
        "## Top Row Groups",
        "",
        "| Cases | Descriptor count | First descriptor |",
        "| ---: | ---: | --- |",
    ])
    for group in payload["top_row_groups"]:
        first = group["descriptors"][0]
        lines.append(
            f"| {group['case_count']} | {group['descriptor_count']} | "
            f"`{first['template_id']} {first['source_indices']}` |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--group-gate", type=int, default=200)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.rank_start < 0:
        raise ValueError("--rank-start must be nonnegative")
    if args.limit < 0:
        raise ValueError("--limit must be nonnegative")
    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    families, counts = collect_families_maybe_parallel(
        rank_start=args.rank_start,
        limit=args.limit,
        jobs=args.jobs,
    )
    payload = profile_from_families(
        rank_start=args.rank_start,
        limit=args.limit,
        group_gate=args.group_gate,
        jobs=args.jobs,
        families=families,
        counts=counts,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "rank_start": payload["rank_start"],
        "rank_end": payload["rank_end"],
        "source_index_state_family_count": payload["source_index_state_family_count"],
        "good_direction_cases": payload["good_direction_cases"],
        "source_fact_obligations": payload["source_fact_obligations"],
        "row_fact_obligations": payload["row_fact_obligations"],
        "source_row_glue_obligations": payload["source_row_glue_obligations"],
        "total_split_fact_obligations": payload["total_split_fact_obligations"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
