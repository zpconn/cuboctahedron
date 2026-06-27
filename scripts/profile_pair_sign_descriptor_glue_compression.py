#!/usr/bin/env python3
"""Profile Phase 6Z.6K.8AF pair-sign descriptor/glue compression.

Phase 8AE proved that the refined `pair_sign` source-position key is
Lean-checkable on the window that broke the older kind/impact key.  This
diagnostic asks the next scaling question: does the descriptor/glue layer
remain a large edge set, or does it merge across representative windows?

The output is not trusted as proof and emits no Lean.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict, deque
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
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    key,
    member_count,
    row_payload,
    source_payload,
)
from profile_source_position_applicability_scaling import (  # noqa: E402
    source_occurrence_rows,
)
from profile_symbolic_row_extraction_families import digest_payload  # noqa: E402


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8af_pair_sign_descriptor_glue_profile.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_RANGES = (
    "0:5000,100000:102500,1000000:1002500,"
    "10000000:10002500,30000000:30002500,60000000:60002500,90000000:90002500"
)


def parse_ranges(raw: str) -> list[tuple[int, int]]:
    ranges: list[tuple[int, int]] = []
    for chunk in raw.split(","):
        item = chunk.strip()
        if not item:
            continue
        if ":" not in item:
            raise ValueError(f"range {item!r} must have form start:end")
        start_raw, end_raw = item.split(":", 1)
        start = int(start_raw)
        end = int(end_raw)
        if start < 0 or end < start:
            raise ValueError(f"invalid range {item!r}")
        ranges.append((start, end))
    if not ranges:
        raise ValueError("at least one range is required")
    return ranges


def grouped_by(
    families: list[Family],
    payload,
) -> dict[str, list[Family]]:
    groups: dict[str, list[Family]] = defaultdict(list)
    for family in families:
        groups[key(payload(family))].append(family)
    return dict(groups)


def family_cases(families: list[Family]) -> int:
    return sum(family.count for family in families)


def source_shape_payload(family: Family) -> dict[str, Any]:
    return {
        "sourceSkeletons": list(family.source_skeletons),
    }


def source_index_payload(family: Family) -> dict[str, Any]:
    return {
        "sourceIndices": list(family.source_indices),
    }


def descriptor_without_indices_payload(family: Family) -> dict[str, Any]:
    return {
        "template": family.template_id,
        "sourceSkeletons": list(family.source_skeletons),
        "rowProperty": family.row_property_key,
    }


def descriptor_without_sources_payload(family: Family) -> dict[str, Any]:
    return {
        "template": family.template_id,
        "sourceIndices": list(family.source_indices),
        "rowProperty": family.row_property_key,
    }


def edge_key(family: Family) -> str:
    return f"{key(source_payload(family))}:{key(row_payload(family))}"


def graph_components(edges: set[tuple[str, str]]) -> dict[str, int]:
    adjacency: dict[str, set[str]] = defaultdict(set)
    for source, row in edges:
        source_node = f"S:{source}"
        row_node = f"R:{row}"
        adjacency[source_node].add(row_node)
        adjacency[row_node].add(source_node)

    seen: set[str] = set()
    component_sizes: list[int] = []
    component_edges: list[int] = []
    for start in sorted(adjacency):
        if start in seen:
            continue
        nodes = set()
        queue = deque([start])
        seen.add(start)
        while queue:
            node = queue.popleft()
            nodes.add(node)
            for nxt in adjacency[node]:
                if nxt not in seen:
                    seen.add(nxt)
                    queue.append(nxt)
        edge_count = sum(1 for source, row in edges if f"S:{source}" in nodes and f"R:{row}" in nodes)
        component_sizes.append(len(nodes))
        component_edges.append(edge_count)

    return {
        "component_count": len(component_sizes),
        "largest_component_nodes": max(component_sizes, default=0),
        "largest_component_edges": max(component_edges, default=0),
    }


def summarize_groups(
    groups: dict[str, list[Family]],
    *,
    limit: int,
) -> list[dict[str, Any]]:
    rows = []
    for group_key, group_families in groups.items():
        rows.append({
            "key": group_key,
            "case_count": family_cases(group_families),
            "family_count": len(group_families),
            "sample": [
                {
                    "cases": family.count,
                    "template_id": family.template_id,
                    "source_indices": list(family.source_indices),
                    "source_skeletons": list(family.source_skeletons),
                    "row_property_key": family.row_property_key,
                }
                for family in sorted(
                    group_families,
                    key=lambda item: (-item.count, item.template_id, item.key),
                )[:3]
            ],
        })
    return sorted(rows, key=lambda item: (-int(item["case_count"]), str(item["key"])))[:limit]


def profile_window(
    *,
    start: int,
    end: int,
    jobs: int,
    sample_limit: int,
) -> dict[str, Any]:
    families, counts = collect_families_maybe_parallel(
        rank_start=start,
        limit=end - start,
        jobs=jobs,
        source_key_surface="pair_sign",
    )
    descriptor_groups = {family.key: [family] for family in families}
    source_groups = grouped_by(families, source_payload)
    row_groups = grouped_by(families, row_payload)
    source_shape_groups = grouped_by(families, source_shape_payload)
    source_index_groups = grouped_by(families, source_index_payload)
    no_index_groups = grouped_by(families, descriptor_without_indices_payload)
    no_source_groups = grouped_by(families, descriptor_without_sources_payload)
    source_row_edges = {
        (key(source_payload(family)), key(row_payload(family)))
        for family in families
    }
    source_occurrences = source_occurrence_rows(source_groups)
    validation_failure_count = sum(
        sum(int(count) for count in row["validation_failures"].values())
        for row in source_occurrences
    )
    graph = graph_components(source_row_edges)
    source_degrees: Counter[str] = Counter()
    row_degrees: Counter[str] = Counter()
    for source, row in source_row_edges:
        source_degrees[source] += 1
        row_degrees[row] += 1

    status = "accepted-profile"
    notes = [
        "pair-sign descriptor/glue profile emitted no Lean",
        "source-row edges equal current descriptor/glue obligations",
    ]
    if validation_failure_count:
        status = "rejected-validation-failures"
        notes.append("pair-sign source occurrence validation failed")

    return {
        "range": [start, end],
        "jobs": jobs,
        "counts": counts,
        "represented_good_direction_cases": member_count(families),
        "descriptor_family_count": len(descriptor_groups),
        "source_group_count": len(source_groups),
        "row_group_count": len(row_groups),
        "source_shape_count": len(source_shape_groups),
        "source_index_pair_count": len(source_index_groups),
        "descriptor_without_indices_count": len(no_index_groups),
        "descriptor_without_sources_count": len(no_source_groups),
        "source_row_edge_count": len(source_row_edges),
        "validation_failure_count": validation_failure_count,
        "source_row_graph": graph,
        "max_source_degree": max(source_degrees.values(), default=0),
        "max_row_degree": max(row_degrees.values(), default=0),
        "top_descriptor_groups": summarize_groups(descriptor_groups, limit=sample_limit),
        "top_source_groups": summarize_groups(source_groups, limit=sample_limit),
        "top_row_groups": summarize_groups(row_groups, limit=sample_limit),
        "top_descriptor_without_indices": summarize_groups(no_index_groups, limit=sample_limit),
        "top_descriptor_without_sources": summarize_groups(no_source_groups, limit=sample_limit),
        "signature_keys": {
            "descriptor": sorted(descriptor_groups),
            "source": sorted(source_groups),
            "row": sorted(row_groups),
            "source_shape": sorted(source_shape_groups),
            "source_index": sorted(source_index_groups),
            "descriptor_without_indices": sorted(no_index_groups),
            "descriptor_without_sources": sorted(no_source_groups),
            "source_row_edge": [f"{source}:{row}" for source, row in sorted(source_row_edges)],
        },
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def union_payload(windows: list[dict[str, Any]]) -> dict[str, Any]:
    names = [
        "descriptor",
        "source",
        "row",
        "source_shape",
        "source_index",
        "descriptor_without_indices",
        "descriptor_without_sources",
        "source_row_edge",
    ]
    unions = {name: set() for name in names}
    for window in windows:
        for name in names:
            unions[name].update(str(item) for item in window["signature_keys"][name])
    return {
        f"union_{name}_count": len(values)
        for name, values in unions.items()
    } | {
        "union_keys": {
            name: sorted(values)
            for name, values in unions.items()
        }
    }


def profile(
    *,
    ranges: list[tuple[int, int]],
    jobs: int,
    sample_limit: int,
) -> dict[str, Any]:
    windows = [
        profile_window(start=start, end=end, jobs=jobs, sample_limit=sample_limit)
        for start, end in ranges
    ]
    union = union_payload(windows)
    validation_failure_count = sum(
        int(window["validation_failure_count"])
        for window in windows
    )
    descriptor_sum = sum(int(window["descriptor_family_count"]) for window in windows)
    descriptor_union = int(union["union_descriptor_count"])
    edge_sum = sum(int(window["source_row_edge_count"]) for window in windows)
    edge_union = int(union["union_source_row_edge_count"])
    reuse_ratio = (descriptor_sum / descriptor_union) if descriptor_union else 1.0

    status = "accepted-generic-glue-candidate"
    notes = [
        "pair-sign validation remained clean",
        "generic source-row composition can remove per-descriptor composition theorems, but coverage still needs descriptor membership unless a state-language classifier replaces it",
    ]
    if validation_failure_count:
        status = "rejected-validation-failures"
        notes = ["pair-sign source validation failed"]
    elif descriptor_union > 2000:
        status = "needs-stronger-membership-compression"
        notes.append("union descriptor edge count exceeds the 2000-leaf gate")
    elif reuse_ratio < 1.25 and descriptor_union > 250:
        status = "needs-state-language-glue"
        notes.append("descriptor edges show little cross-window reuse")

    return {
        "schema_version": 1,
        "mode": "pair_sign_descriptor_glue_compression_profile",
        "phase": "6Z.6K.8AF",
        "trusted_as_proof": False,
        "jobs": jobs,
        "ranges": [list(item) for item in ranges],
        "windows": [
            {
                key_name: value
                for key_name, value in window.items()
                if key_name != "signature_keys"
            }
            for window in windows
        ],
        "union_signature_counts": {
            key_name: value
            for key_name, value in union.items()
            if key_name != "union_keys"
        },
        "union_keys": union["union_keys"],
        "total_represented_good_direction_cases": sum(
            int(window["represented_good_direction_cases"])
            for window in windows
        ),
        "descriptor_sum_across_windows": descriptor_sum,
        "descriptor_union_count": descriptor_union,
        "descriptor_reuse_ratio": reuse_ratio,
        "source_row_edge_sum_across_windows": edge_sum,
        "source_row_edge_union_count": edge_union,
        "validation_failure_count": validation_failure_count,
        "projected_obligation_surfaces": {
            "current_descriptor_glue_edges": descriptor_union,
            "fact_producers_only": int(union["union_source_count"]) + int(union["union_row_count"]),
            "source_row_edges_plus_fact_producers": (
                int(union["union_source_row_edge_count"]) +
                int(union["union_source_count"]) +
                int(union["union_row_count"])
            ),
            "generic_glue_plus_descriptor_membership": descriptor_union,
        },
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    decision = payload["decision"]
    union = payload["union_signature_counts"]
    projected = payload["projected_obligation_surfaces"]
    lines = [
        "# Phase 6Z.6K.8AF Pair-Sign Descriptor/Glue Compression Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean. It profiles",
        "whether the refined pair-sign descriptor/glue layer merges across",
        "representative windows or still behaves like a growing edge set.",
        "",
        f"- Status: `{decision['status']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Ranges: `{payload['ranges']}`",
        f"- Total represented GoodDirection cases: `{payload['total_represented_good_direction_cases']}`",
        f"- Validation failures: `{payload['validation_failure_count']}`",
        f"- Descriptor reuse ratio: `{payload['descriptor_reuse_ratio']:.3f}`",
        "",
        "## Union Signature Counts",
        "",
        "| Signature surface | Union count |",
        "| --- | ---: |",
        f"| descriptor / current glue edge | {union['union_descriptor_count']} |",
        f"| source-position producer | {union['union_source_count']} |",
        f"| row-template producer | {union['union_row_count']} |",
        f"| source skeleton without indices | {union['union_source_shape_count']} |",
        f"| source index pair only | {union['union_source_index_count']} |",
        f"| descriptor without source indices | {union['union_descriptor_without_indices_count']} |",
        f"| descriptor without source skeletons | {union['union_descriptor_without_sources_count']} |",
        f"| source/row edge | {union['union_source_row_edge_count']} |",
        "",
        "## Projected Obligation Surfaces",
        "",
        "| Surface | Obligations |",
        "| --- | ---: |",
        f"| current descriptor/glue edges | {projected['current_descriptor_glue_edges']} |",
        f"| fact producers only | {projected['fact_producers_only']} |",
        f"| source/row edges plus fact producers | {projected['source_row_edges_plus_fact_producers']} |",
        f"| generic glue plus descriptor membership | {projected['generic_glue_plus_descriptor_membership']} |",
        "",
        "## Windows",
        "",
        "| Range | GoodDirection cases | Descriptor | Source | Row | Source/row edges | No-index descriptor | Validation failures |",
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for window in payload["windows"]:
        lines.append(
            f"| `{window['range']}` | {window['represented_good_direction_cases']} | "
            f"{window['descriptor_family_count']} | {window['source_group_count']} | "
            f"{window['row_group_count']} | {window['source_row_edge_count']} | "
            f"{window['descriptor_without_indices_count']} | "
            f"{window['validation_failure_count']} |"
        )
    lines.extend([
        "",
        "## Notes",
        "",
    ])
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ranges", default=DEFAULT_RANGES)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--sample-limit", type=int, default=8)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    if args.sample_limit <= 0:
        raise ValueError("--sample-limit must be positive")
    payload = profile(
        ranges=parse_ranges(args.ranges),
        jobs=args.jobs,
        sample_limit=args.sample_limit,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "jobs": payload["jobs"],
        "ranges": payload["ranges"],
        "total_represented_good_direction_cases": payload["total_represented_good_direction_cases"],
        "union_signature_counts": payload["union_signature_counts"],
        "projected_obligation_surfaces": payload["projected_obligation_surfaces"],
        "descriptor_reuse_ratio": payload["descriptor_reuse_ratio"],
        "validation_failure_count": payload["validation_failure_count"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
