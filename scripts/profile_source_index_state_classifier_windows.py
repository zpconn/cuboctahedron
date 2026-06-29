#!/usr/bin/env python3
"""Profile source-index/state classifier families across disjoint windows.

This diagnostic is not trusted as proof and emits no Lean.  It is a scaling
probe for the Phase 6Z.6K.8AP.16DU source-index/state classifier surface:
sample multiple disjoint rank windows, merge classifier family keys, and report
whether family growth still looks compatible with a future semantic generated
coverage backend.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
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
    merge_families,
)


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16du9dz_classifier_multiwindow_profile.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_RANGES = (
    "0:25000,"
    "100000:125000,"
    "1000000:1025000,"
    "10000000:10025000,"
    "30000000:30025000,"
    "60000000:60025000,"
    "90000000:90025000"
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


def family_case_count(families: list[Family]) -> int:
    return sum(family.count for family in families)


def summarize_top(families: list[Family], *, limit: int) -> list[dict[str, Any]]:
    rows = []
    for family in families[:limit]:
        rows.append({
            "key": family.key,
            "case_count": family.count,
            "template_id": family.template_id,
            "source_indices": list(family.source_indices),
            "row_property_key": family.row_property_key,
            "samples": [
                {
                    "rank": member.symbolic.case.rank,
                    "mask": member.symbolic.case.mask,
                }
                for member in family.members[:5]
            ],
        })
    return rows


def profile(
    *,
    ranges: list[tuple[int, int]],
    jobs: int,
    family_gate: int,
    top_limit: int,
    source_key_surface: str,
) -> dict[str, Any]:
    parts: list[tuple[list[Family], dict[str, int]]] = []
    cumulative_family_keys: set[str] = set()
    cumulative_template_ids: set[str] = set()
    cumulative_source_index_pairs: set[tuple[int, ...]] = set()
    cumulative_counts: Counter[str] = Counter()
    windows: list[dict[str, Any]] = []

    for start, end in ranges:
        families, counts = collect_families_maybe_parallel(
            rank_start=start,
            limit=end - start,
            jobs=jobs,
            source_key_surface=source_key_surface,
        )
        parts.append((families, counts))
        cumulative_counts.update(counts)
        family_keys = {family.key for family in families}
        template_ids = {family.template_id for family in families}
        source_index_pairs = {tuple(family.source_indices) for family in families}
        cumulative_family_keys.update(family_keys)
        cumulative_template_ids.update(template_ids)
        cumulative_source_index_pairs.update(source_index_pairs)
        windows.append({
            "range": [start, end],
            "rank_count": end - start,
            "counts": counts,
            "good_direction_cases": family_case_count(families),
            "family_count": len(families),
            "template_count": len(template_ids),
            "source_index_pair_count": len(source_index_pairs),
            "largest_family_cases": families[0].count if families else 0,
            "cumulative_family_count": len(cumulative_family_keys),
            "cumulative_template_count": len(cumulative_template_ids),
            "cumulative_source_index_pair_count": len(cumulative_source_index_pairs),
        })

    families, merged_counts = merge_families(parts)
    uncovered = int(merged_counts.get("uncovered_cases", 0))
    non_two_source = int(merged_counts.get("non_two_source_cases", 0))
    family_count = len(families)
    if uncovered or non_two_source:
        status = "rejected-uncovered"
        notes = [
            "classifier families did not cover every sampled GoodDirection survivor",
            f"uncovered_cases={uncovered}",
            f"non_two_source_cases={non_two_source}",
        ]
    elif family_count > family_gate:
        status = "needs-stronger-global-family-key"
        notes = [
            f"merged family count {family_count} exceeds family_gate={family_gate}",
            "diagnostic remains useful, but this family key is not yet a production route",
        ]
    else:
        status = "accepted-scaling-candidate"
        notes = [
            "merged source-index/state classifier family count stayed within the gate",
            "diagnostic only: this is not proof and emits no Lean",
            "next step should either sample more windows or emit a bounded Lean smoke over merged families",
        ]

    return {
        "schema_version": 1,
        "mode": "source_index_state_classifier_multiwindow_profile",
        "phase": "6Z.6K.8AP.16DU.9DZ",
        "trusted_as_proof": False,
        "source_key_surface": source_key_surface,
        "jobs": jobs,
        "ranges": [list(item) for item in ranges],
        "window_count": len(ranges),
        "rank_count": sum(end - start for start, end in ranges),
        "family_gate": family_gate,
        "counts": dict(cumulative_counts),
        "merged_counts": merged_counts,
        "windows": windows,
        "good_direction_cases": family_case_count(families),
        "family_count": family_count,
        "template_count": len({family.template_id for family in families}),
        "source_index_pair_count": len({tuple(family.source_indices) for family in families}),
        "largest_family_cases": families[0].count if families else 0,
        "top_families": summarize_top(families, limit=top_limit),
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16DU.9DZ Classifier Multi-Window Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean. It aggregates",
        "source-index/state classifier families across disjoint sampled rank",
        "windows using the current GoodDirection-only classifier surface.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Source key surface: `{payload['source_key_surface']}`",
        f"- Jobs per window: `{payload['jobs']}`",
        f"- Window count: `{payload['window_count']}`",
        f"- Sampled ranks: `{payload['rank_count']}`",
        f"- GoodDirection cases: `{payload['good_direction_cases']}`",
        f"- Merged families: `{payload['family_count']}`",
        f"- Template ids: `{payload['template_count']}`",
        f"- Source-index pairs: `{payload['source_index_pair_count']}`",
        f"- Largest family: `{payload['largest_family_cases']}`",
        f"- Family gate: `{payload['family_gate']}`",
        "",
        "## Window Growth",
        "",
        (
            "| Range | Identity | GoodDirection | Not-Good | Family | Template | "
            "Source-index pair | Largest | Cumulative family |"
        ),
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for window in payload["windows"]:
        counts = window["counts"]
        lines.append(
            f"| `{window['range']}` | {counts.get('identity_words', 0)} | "
            f"{window['good_direction_cases']} | "
            f"{counts.get('not_good_direction_masks', 0)} | "
            f"{window['family_count']} | {window['template_count']} | "
            f"{window['source_index_pair_count']} | "
            f"{window['largest_family_cases']} | "
            f"{window['cumulative_family_count']} |"
        )
    lines.extend([
        "",
        "## Top Merged Families",
        "",
        "| Cases | Template | Source indices | Samples |",
        "| ---: | --- | --- | --- |",
    ])
    for family in payload["top_families"]:
        samples = ", ".join(
            f"r{sample['rank']}/m{sample['mask']}"
            for sample in family["samples"]
        )
        lines.append(
            f"| {family['case_count']} | `{family['template_id']}` | "
            f"`{family['source_indices']}` | {samples} |"
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
    parser.add_argument("--family-gate", type=int, default=1000)
    parser.add_argument("--top-limit", type=int, default=20)
    parser.add_argument("--source-key-surface", default="kind_impact")
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    if args.family_gate <= 0:
        raise ValueError("--family-gate must be positive")
    if args.top_limit <= 0:
        raise ValueError("--top-limit must be positive")

    payload = profile(
        ranges=parse_ranges(args.ranges),
        jobs=args.jobs,
        family_gate=args.family_gate,
        top_limit=args.top_limit,
        source_key_surface=args.source_key_surface,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "jobs": payload["jobs"],
        "window_count": payload["window_count"],
        "rank_count": payload["rank_count"],
        "good_direction_cases": payload["good_direction_cases"],
        "family_count": payload["family_count"],
        "template_count": payload["template_count"],
        "source_index_pair_count": payload["source_index_pair_count"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
