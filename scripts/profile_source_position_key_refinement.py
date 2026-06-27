#!/usr/bin/env python3
"""Profile Phase 6Z.6K.8AD source-position key refinements.

Phase 8AC found that the source-index/state key is too coarse globally: it can
group different concrete interior faces at the same impact and source index.
This diagnostic compares increasingly precise source-position keys while
keeping row-template data separate.

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
from profile_row_property_membership_signatures import (  # noqa: E402
    source_kind_impact_skeleton,
    source_pair_sign_skeleton,
    source_pair_skeleton,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    key,
    member_count,
    row_payload,
)
from profile_source_index_state_language import (  # noqa: E402
    source_language,
    validate_member_source,
)
from profile_symbolic_row_extraction_families import digest_payload  # noqa: E402


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ad_source_position_key_refinement.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_RANGES = (
    "0:5000,100000:102500,1000000:1002500,"
    "10000000:10002500,30000000:30002500,60000000:60002500,90000000:90002500"
)

SURFACES = ["kind_impact", "pair", "pair_sign", "full_source"]


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


def normalize_source(source: dict[str, Any], surface: str) -> dict[str, Any]:
    if surface == "kind_impact":
        return source_kind_impact_skeleton(source)
    if surface == "pair":
        return source_pair_skeleton(source)
    if surface == "pair_sign":
        return source_pair_sign_skeleton(source)
    if surface == "full_source":
        return dict(source)
    raise ValueError(f"unknown source surface {surface!r}")


def actual_sources(family: Family, member: Any) -> tuple[dict[str, Any], dict[str, Any]]:
    case = member.symbolic.case
    return case.first_source, case.second_source


def source_payload_for_member(family: Family, member: Any, surface: str) -> dict[str, Any]:
    first_source, second_source = actual_sources(family, member)
    return {
        "sourceIndices": list(family.source_indices),
        "sources": [
            normalize_source(first_source, surface),
            normalize_source(second_source, surface),
        ],
    }


def descriptor_payload_for_member(family: Family, member: Any, surface: str) -> dict[str, Any]:
    payload = source_payload_for_member(family, member, surface)
    return {
        "template": family.template_id,
        "sourceIndices": payload["sourceIndices"],
        "sources": payload["sources"],
        "rowProperty": family.row_property_key,
    }


def source_occurrence_payload_for_member(
    family: Family,
    member: Any,
    surface: str,
    ordinal: int,
) -> dict[str, Any]:
    source = actual_sources(family, member)[ordinal]
    return {
        "ordinal": ordinal,
        "sourceIndex": int(family.source_indices[ordinal]),
        "source": normalize_source(source, surface),
    }


def source_occurrence_signature(
    family: Family,
    member: Any,
    surface: str,
    ordinal: int,
) -> str:
    return digest_payload(source_occurrence_payload_for_member(
        family,
        member,
        surface,
        ordinal,
    ))


def summarize_group_counts(groups: dict[str, list[tuple[Family, Any]]], *, limit: int) -> list[dict[str, Any]]:
    rows = []
    for group_key, items in groups.items():
        rows.append({
            "key": group_key,
            "case_count": len(items),
            "sample": [
                {
                    "rank": item[1].symbolic.case.rank,
                    "mask": item[1].symbolic.case.mask,
                    "template_id": item[0].template_id,
                    "source_indices": list(item[0].source_indices),
                    "row_property_key": item[0].row_property_key,
                }
                for item in items[:4]
            ],
        })
    return sorted(rows, key=lambda item: (-int(item["case_count"]), str(item["key"])))[:limit]


def profile_surface(
    families: list[Family],
    *,
    surface: str,
    sample_limit: int,
) -> dict[str, Any]:
    descriptor_groups: dict[str, list[tuple[Family, Any]]] = defaultdict(list)
    source_groups: dict[str, list[tuple[Family, Any]]] = defaultdict(list)
    row_groups: dict[str, list[tuple[Family, Any]]] = defaultdict(list)
    source_occurrence_groups: dict[str, list[tuple[Family, Any, int]]] = defaultdict(list)

    for family in families:
        row_key = key(row_payload(family))
        for member in family.members:
            descriptor_groups[key(descriptor_payload_for_member(family, member, surface))].append((family, member))
            source_groups[key(source_payload_for_member(family, member, surface))].append((family, member))
            row_groups[row_key].append((family, member))
            for ordinal in [0, 1]:
                source_occurrence_groups[
                    source_occurrence_signature(family, member, surface, ordinal)
                ].append((family, member, ordinal))

    validation_failures: Counter[str] = Counter()
    failure_samples: list[dict[str, Any]] = []
    language_obligations: set[str] = set()
    language_signatures: set[str] = set()

    for occurrence_key, items in source_occurrence_groups.items():
        first_family, first_member, first_ordinal = items[0]
        first_index = int(first_family.source_indices[first_ordinal])
        first_source = actual_sources(first_family, first_member)[first_ordinal]
        language = source_language(first_index, first_source)
        language_obligations.add(str(language["obligation"]))
        language_signatures.add(digest_payload({
            "index": first_index,
            "source": first_source,
            "language": language,
        }))
        for family, member, ordinal in items:
            source = actual_sources(family, member)[ordinal]
            if source != first_source:
                validation_failures["source-varies-within-occurrence-group"] += 1
                if len(failure_samples) < sample_limit:
                    failure_samples.append({
                        "failure": "source-varies-within-occurrence-group",
                        "occurrence_key": occurrence_key,
                        "surface": surface,
                        "expected_source": first_source,
                        "actual_source": source,
                        "rank": member.symbolic.case.rank,
                        "mask": member.symbolic.case.mask,
                        "source_index": int(family.source_indices[ordinal]),
                        "ordinal": ordinal,
                    })
                continue
            failure = validate_member_source(member, int(family.source_indices[ordinal]), source, language)
            if failure is not None:
                validation_failures[failure] += 1
                if len(failure_samples) < sample_limit:
                    failure_samples.append({
                        "failure": failure,
                        "occurrence_key": occurrence_key,
                        "surface": surface,
                        "source": source,
                        "language": language,
                        "rank": member.symbolic.case.rank,
                        "mask": member.symbolic.case.mask,
                        "source_index": int(family.source_indices[ordinal]),
                        "ordinal": ordinal,
                    })

    source_row_pairs = {
        (source_key, row_key)
        for source_key, source_items in source_groups.items()
        for family, _member in source_items[:1]
        for row_key in [key(row_payload(family))]
    }

    status = "accepted-key-candidate"
    notes = ["surface grouped concrete members without source-language validation failures"]
    if validation_failures:
        status = "rejected-validation-failures"
        notes = ["surface is too coarse for source-position applicability"]

    return {
        "surface": surface,
        "decision": {
            "status": status,
            "notes": notes,
        },
        "descriptor_signature_count": len(descriptor_groups),
        "source_position_signature_count": len(source_groups),
        "row_template_signature_count": len(row_groups),
        "source_occurrence_signature_count": len(source_occurrence_groups),
        "source_row_pair_signature_count": len(source_row_pairs),
        "source_language_obligation_count": len(language_obligations),
        "source_language_signature_count": len(language_signatures),
        "validation_failure_count": sum(validation_failures.values()),
        "validation_failures": dict(sorted(validation_failures.items())),
        "failure_samples": failure_samples,
        "top_descriptor_signatures": summarize_group_counts(descriptor_groups, limit=sample_limit),
        "top_source_position_signatures": summarize_group_counts(source_groups, limit=sample_limit),
        "top_row_template_signatures": summarize_group_counts(row_groups, limit=sample_limit),
    }


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
    )
    surfaces = [
        profile_surface(families, surface=surface, sample_limit=sample_limit)
        for surface in SURFACES
    ]
    return {
        "range": [start, end],
        "jobs": jobs,
        "counts": counts,
        "source_index_state_family_count": len(families),
        "represented_good_direction_cases": member_count(families),
        "surfaces": surfaces,
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
    aggregate: dict[str, dict[str, int]] = {}
    for surface in SURFACES:
        aggregate[surface] = {
            "max_descriptor_signature_count": max(
                int(surface_payload["descriptor_signature_count"])
                for window in windows
                for surface_payload in window["surfaces"]
                if surface_payload["surface"] == surface
            ),
            "max_source_position_signature_count": max(
                int(surface_payload["source_position_signature_count"])
                for window in windows
                for surface_payload in window["surfaces"]
                if surface_payload["surface"] == surface
            ),
            "max_source_occurrence_signature_count": max(
                int(surface_payload["source_occurrence_signature_count"])
                for window in windows
                for surface_payload in window["surfaces"]
                if surface_payload["surface"] == surface
            ),
            "total_validation_failure_count": sum(
                int(surface_payload["validation_failure_count"])
                for window in windows
                for surface_payload in window["surfaces"]
                if surface_payload["surface"] == surface
            ),
        }

    accepted = [
        surface
        for surface, summary in aggregate.items()
        if int(summary["total_validation_failure_count"]) == 0
    ]
    if accepted:
        preferred = min(
            accepted,
            key=lambda surface: (
                aggregate[surface]["max_descriptor_signature_count"],
                SURFACES.index(surface),
            ),
        )
        status = "accepted-refined-source-key-candidate"
        notes = [
            f"preferred zero-failure key surface is {preferred}",
            "profile emits no Lean and is not trusted as proof",
        ]
    else:
        preferred = None
        status = "needs-new-source-invariant"
        notes = ["all tested source key surfaces had validation failures"]

    return {
        "schema_version": 1,
        "mode": "source_position_key_refinement_profile",
        "phase": "6Z.6K.8AD",
        "trusted_as_proof": False,
        "jobs": jobs,
        "ranges": [list(item) for item in ranges],
        "windows": windows,
        "aggregate": aggregate,
        "decision": {
            "status": status,
            "preferred_surface": preferred,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    decision = payload["decision"]
    lines = [
        "# Phase 6Z.6K.8AD Source-Position Key Refinement Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean. It compares",
        "source-position key surfaces after Phase 8AC found a concrete face",
        "variation inside the older kind/impact source key.",
        "",
        f"- Status: `{decision['status']}`",
        f"- Preferred surface: `{decision['preferred_surface']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Ranges: `{payload['ranges']}`",
        "",
        "## Aggregate",
        "",
        "| Surface | Max descriptor signatures | Max source-position signatures | Max source occurrences | Validation failures |",
        "| --- | ---: | ---: | ---: | ---: |",
    ]
    for surface in SURFACES:
        summary = payload["aggregate"][surface]
        lines.append(
            f"| `{surface}` | {summary['max_descriptor_signature_count']} | "
            f"{summary['max_source_position_signature_count']} | "
            f"{summary['max_source_occurrence_signature_count']} | "
            f"{summary['total_validation_failure_count']} |"
        )
    lines.extend([
        "",
        "## Windows",
        "",
        "| Range | Surface | GoodDirection cases | Descriptor | Source-position | Source occurrences | Failures |",
        "| --- | --- | ---: | ---: | ---: | ---: | ---: |",
    ])
    for window in payload["windows"]:
        for surface_payload in window["surfaces"]:
            lines.append(
                f"| `{window['range']}` | `{surface_payload['surface']}` | "
                f"{window['represented_good_direction_cases']} | "
                f"{surface_payload['descriptor_signature_count']} | "
                f"{surface_payload['source_position_signature_count']} | "
                f"{surface_payload['source_occurrence_signature_count']} | "
                f"{surface_payload['validation_failure_count']} |"
            )
    lines.extend([
        "",
        "## Failure Samples",
        "",
    ])
    any_sample = False
    for window in payload["windows"]:
        for surface_payload in window["surfaces"]:
            for sample in surface_payload["failure_samples"][:3]:
                any_sample = True
                lines.append(
                    f"- `{window['range']}` `{surface_payload['surface']}` "
                    f"`{sample['failure']}` rank `{sample['rank']}` mask `{sample['mask']}`"
                )
    if not any_sample:
        lines.append("- none")
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
        "preferred_surface": payload["decision"]["preferred_surface"],
        "jobs": payload["jobs"],
        "ranges": payload["ranges"],
        "aggregate": payload["aggregate"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
