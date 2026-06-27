#!/usr/bin/env python3
"""Profile Phase 6Z.6K.8AG pair-sign descriptor membership state surfaces.

Phase 8AF showed that source facts and row facts can be composed by a generic
Lean theorem, so the remaining translation question is membership: can a
GoodDirection survivor be routed to descriptor/source/row semantic families
without replaying a concrete rank/mask branch?

This diagnostic is not trusted as proof and emits no Lean.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Callable

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
    source_kind_skeleton,
    source_pair_sign_skeleton,
    source_pair_skeleton,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    key,
    member_count,
    row_payload,
    source_payload,
)
from profile_source_index_state_language import (  # noqa: E402
    source_language,
    validate_member_source,
)
from profile_symbolic_row_extraction_families import (  # noqa: E402
    digest_payload,
    primitive_line_key,
    primitive_multiplier_key,
    row_role,
)


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ag_pair_sign_descriptor_membership_state.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_RANGES = (
    "0:5000,100000:102500,1000000:1002500,"
    "10000000:10002500,30000000:30002500,60000000:60002500,90000000:90002500"
)


@dataclass(frozen=True)
class CaseItem:
    window: tuple[int, int]
    family: Family
    member: Any


@dataclass(frozen=True)
class Surface:
    name: str
    description: str
    target: str
    payload: Callable[[CaseItem], dict[str, Any]]
    direct_target: bool = False


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


def actual_sources(item: CaseItem) -> tuple[dict[str, Any], dict[str, Any]]:
    case = item.member.symbolic.case
    return case.first_source, case.second_source


def descriptor_target(item: CaseItem) -> str:
    return item.family.key


def source_target(item: CaseItem) -> str:
    return key(source_payload(item.family))


def row_target(item: CaseItem) -> str:
    return key(row_payload(item.family))


TARGETS: dict[str, Callable[[CaseItem], str]] = {
    "descriptor": descriptor_target,
    "source": source_target,
    "row": row_target,
}


def source_skeletons(item: CaseItem, surface: str) -> list[dict[str, Any]]:
    first, second = actual_sources(item)
    if surface == "kind":
        return [source_kind_skeleton(first), source_kind_skeleton(second)]
    if surface == "kind_impact":
        return [source_kind_impact_skeleton(first), source_kind_impact_skeleton(second)]
    if surface == "pair":
        return [source_pair_skeleton(first), source_pair_skeleton(second)]
    if surface == "pair_sign":
        return [source_pair_sign_skeleton(first), source_pair_sign_skeleton(second)]
    if surface == "full_source":
        return [dict(first), dict(second)]
    raise ValueError(f"unknown source surface {surface!r}")


def source_payload_for_item(item: CaseItem, surface: str, *, include_indices: bool) -> dict[str, Any]:
    payload: dict[str, Any] = {
        "sources": source_skeletons(item, surface),
    }
    if include_indices:
        payload["sourceIndices"] = list(item.family.source_indices)
    return payload


def source_language_payload(item: CaseItem, *, include_indices: bool, full_language: bool) -> dict[str, Any]:
    languages = []
    for index, source in zip(item.family.source_indices, actual_sources(item), strict=True):
        language = source_language(int(index), source)
        languages.append(language if full_language else str(language["obligation"]))
    payload: dict[str, Any] = {"languages": languages}
    if include_indices:
        payload["sourceIndices"] = list(item.family.source_indices)
    return payload


def row_exact_payload(item: CaseItem) -> dict[str, Any]:
    return row_payload(item.family)


def row_template_payload(item: CaseItem) -> dict[str, Any]:
    return {"template": item.family.template_id}


def row_roles_payload(item: CaseItem) -> dict[str, Any]:
    case = item.member.symbolic.case
    return {
        "template": item.family.template_id,
        "firstRole": row_role(case.first_line),
        "secondRole": row_role(case.second_line),
    }


def row_scaled_payload(item: CaseItem) -> dict[str, Any]:
    case = item.member.symbolic.case
    return {
        "template": item.family.template_id,
        "firstLine": primitive_line_key(case.first_line),
        "secondLine": primitive_line_key(case.second_line),
        "multipliers": primitive_multiplier_key(case.multipliers),
    }


def descriptor_exact_payload(item: CaseItem) -> dict[str, Any]:
    return {
        "source": source_target(item),
        "row": row_target(item),
    }


def descriptor_without_indices_payload(item: CaseItem) -> dict[str, Any]:
    return {
        "template": item.family.template_id,
        "sources": list(item.family.source_skeletons),
        "rowProperty": item.family.row_property_key,
    }


def descriptor_without_sources_payload(item: CaseItem) -> dict[str, Any]:
    return {
        "template": item.family.template_id,
        "sourceIndices": list(item.family.source_indices),
        "rowProperty": item.family.row_property_key,
    }


SURFACES: list[Surface] = [
    Surface(
        name="descriptor_exact_source_row",
        description="exact source producer key plus exact row producer key",
        target="descriptor",
        payload=descriptor_exact_payload,
        direct_target=True,
    ),
    Surface(
        name="descriptor_without_indices",
        description="template + pair-sign source skeletons + row property",
        target="descriptor",
        payload=descriptor_without_indices_payload,
    ),
    Surface(
        name="descriptor_without_sources",
        description="template + source indices + row property",
        target="descriptor",
        payload=descriptor_without_sources_payload,
    ),
    Surface(
        name="descriptor_source_language_row_exact",
        description="source language obligations plus exact row producer key",
        target="descriptor",
        payload=lambda item: {
            "source": source_language_payload(item, include_indices=True, full_language=False),
            "row": row_target(item),
        },
    ),
    Surface(
        name="descriptor_pair_sign_row_template",
        description="pair-sign source producer shape plus template constructor",
        target="descriptor",
        payload=lambda item: {
            "source": source_payload_for_item(item, "pair_sign", include_indices=True),
            "row": row_template_payload(item),
        },
    ),
    Surface(
        name="source_exact_pair_sign",
        description="exact pair-sign source-position producer key",
        target="source",
        payload=lambda item: source_payload_for_item(item, "pair_sign", include_indices=True),
        direct_target=True,
    ),
    Surface(
        name="source_language_obligation",
        description="ordered source-language obligations with source indices",
        target="source",
        payload=lambda item: source_language_payload(item, include_indices=True, full_language=False),
    ),
    Surface(
        name="source_language_full",
        description="full ordered source-language records with source indices",
        target="source",
        payload=lambda item: source_language_payload(item, include_indices=True, full_language=True),
    ),
    Surface(
        name="source_pair_sign_no_indices",
        description="ordered pair-sign source skeletons without source indices",
        target="source",
        payload=lambda item: source_payload_for_item(item, "pair_sign", include_indices=False),
    ),
    Surface(
        name="source_kind_impact_with_indices",
        description="ordered kind/impact source skeletons with source indices",
        target="source",
        payload=lambda item: source_payload_for_item(item, "kind_impact", include_indices=True),
    ),
    Surface(
        name="source_indices_only",
        description="source index pair only",
        target="source",
        payload=lambda item: {"sourceIndices": list(item.family.source_indices)},
    ),
    Surface(
        name="row_exact",
        description="exact row-template producer key",
        target="row",
        payload=row_exact_payload,
        direct_target=True,
    ),
    Surface(
        name="row_template",
        description="template constructor only",
        target="row",
        payload=row_template_payload,
    ),
    Surface(
        name="row_template_roles",
        description="template constructor plus row roles",
        target="row",
        payload=row_roles_payload,
    ),
    Surface(
        name="row_scaled_lines",
        description="primitive integer row lines plus multiplier pair",
        target="row",
        payload=row_scaled_payload,
    ),
]


def payload_key(payload: dict[str, Any]) -> str:
    return digest_payload(payload)


def validate_source_languages(items: list[CaseItem], *, sample_limit: int) -> tuple[Counter[str], list[dict[str, Any]]]:
    failures: Counter[str] = Counter()
    samples: list[dict[str, Any]] = []
    for item in items:
        for ordinal, (index, source) in enumerate(
            zip(item.family.source_indices, actual_sources(item), strict=True)
        ):
            language = source_language(int(index), source)
            failure = validate_member_source(item.member, int(index), source, language)
            if failure is not None:
                failures[failure] += 1
                if len(samples) < sample_limit:
                    samples.append({
                        "failure": failure,
                        "rank": item.member.symbolic.case.rank,
                        "mask": item.member.symbolic.case.mask,
                        "sourceIndex": int(index),
                        "ordinal": ordinal,
                        "source": source,
                        "language": language,
                    })
    return failures, samples


def summarize_group(
    grouped: dict[str, list[CaseItem]],
    target_for: Callable[[CaseItem], str],
    *,
    limit: int,
) -> list[dict[str, Any]]:
    rows = []
    for candidate_key, group in grouped.items():
        targets = sorted({target_for(item) for item in group})
        rows.append({
            "key": candidate_key,
            "case_count": len(group),
            "target_count": len(targets),
            "targets": targets[:4],
            "sample": [
                {
                    "rank": item.member.symbolic.case.rank,
                    "mask": item.member.symbolic.case.mask,
                    "template": item.family.template_id,
                    "sourceIndices": list(item.family.source_indices),
                }
                for item in group[:4]
            ],
        })
    return sorted(rows, key=lambda row: (-int(row["case_count"]), str(row["key"])))[:limit]


def evaluate_surface(surface: Surface, items: list[CaseItem], *, sample_limit: int) -> dict[str, Any]:
    target_for = TARGETS[surface.target]
    grouped: dict[str, list[CaseItem]] = defaultdict(list)
    targets: set[str] = set()
    for item in items:
        targets.add(target_for(item))
        grouped[payload_key(surface.payload(item))].append(item)

    ambiguous_groups = {
        candidate_key: group
        for candidate_key, group in grouped.items()
        if len({target_for(item) for item in group}) != 1
    }
    ambiguous_cases = sum(len(group) for group in ambiguous_groups.values())
    status = "accepted-unambiguous" if not ambiguous_groups else "rejected-ambiguous"
    notes = []
    if ambiguous_groups:
        notes.append("candidate key maps to more than one target key")
    elif surface.direct_target:
        notes.append("baseline exact target/producer key")
    else:
        notes.append("candidate key uniquely determines target key on sampled windows")

    return {
        "name": surface.name,
        "description": surface.description,
        "target": surface.target,
        "status": status,
        "direct_target": surface.direct_target,
        "candidate_count": len(grouped),
        "target_count": len(targets),
        "case_count": len(items),
        "largest_candidate_cases": max((len(group) for group in grouped.values()), default=0),
        "ambiguous_group_count": len(ambiguous_groups),
        "ambiguous_cases": ambiguous_cases,
        "notes": notes,
        "top_groups": summarize_group(grouped, target_for, limit=sample_limit),
        "ambiguous_samples": summarize_group(ambiguous_groups, target_for, limit=sample_limit),
    }


def profile_window(*, start: int, end: int, jobs: int) -> tuple[list[CaseItem], dict[str, Any]]:
    families, counts = collect_families_maybe_parallel(
        rank_start=start,
        limit=end - start,
        jobs=jobs,
        source_key_surface="pair_sign",
    )
    items = [
        CaseItem(window=(start, end), family=family, member=member)
        for family in families
        for member in family.members
    ]
    return items, {
        "range": [start, end],
        "jobs": jobs,
        "counts": counts,
        "family_count": len(families),
        "good_direction_cases": member_count(families),
    }


def best_accepted(results: list[dict[str, Any]], *, target: str, allow_direct: bool) -> dict[str, Any] | None:
    candidates = [
        result for result in results
        if result["target"] == target
        and result["status"] == "accepted-unambiguous"
        and (allow_direct or not result["direct_target"])
    ]
    if not candidates:
        return None
    return min(
        candidates,
        key=lambda result: (
            int(result["candidate_count"]),
            bool(result["direct_target"]),
            str(result["name"]),
        ),
    )


def profile(*, ranges: list[tuple[int, int]], jobs: int, sample_limit: int, obligation_gate: int) -> dict[str, Any]:
    all_items: list[CaseItem] = []
    windows = []
    for start, end in ranges:
        items, window = profile_window(start=start, end=end, jobs=jobs)
        all_items.extend(items)
        windows.append(window)

    failures, failure_samples = validate_source_languages(all_items, sample_limit=sample_limit)
    surface_results = [
        evaluate_surface(surface, all_items, sample_limit=sample_limit)
        for surface in SURFACES
    ]

    best_descriptor = best_accepted(surface_results, target="descriptor", allow_direct=False)
    best_source = best_accepted(surface_results, target="source", allow_direct=False)
    best_row = best_accepted(surface_results, target="row", allow_direct=False)
    best_source_direct = best_accepted(surface_results, target="source", allow_direct=True)
    best_row_direct = best_accepted(surface_results, target="row", allow_direct=True)

    projected: dict[str, Any] = {
        "best_descriptor_candidate": best_descriptor["name"] if best_descriptor else None,
        "best_descriptor_obligations": best_descriptor["candidate_count"] if best_descriptor else None,
        "best_independent_source_candidate": best_source["name"] if best_source else None,
        "best_independent_row_candidate": best_row["name"] if best_row else None,
        "best_independent_source_row_obligations": (
            int(best_source["candidate_count"]) + int(best_row["candidate_count"])
            if best_source and best_row else None
        ),
        "best_source_producer_candidate": best_source_direct["name"] if best_source_direct else None,
        "best_row_producer_candidate": best_row_direct["name"] if best_row_direct else None,
        "best_source_row_producer_obligations": (
            int(best_source_direct["candidate_count"]) + int(best_row_direct["candidate_count"])
            if best_source_direct and best_row_direct else None
        ),
    }

    status = "needs-stronger-membership-invariant"
    notes = [
        "no unambiguous non-direct descriptor/source/row combination passed the gate",
    ]
    if failures:
        status = "rejected-source-language-validation"
        notes = ["source-language validation failed on sampled members"]
    elif (
        projected["best_independent_source_row_obligations"] is not None
        and int(projected["best_independent_source_row_obligations"]) <= obligation_gate
    ):
        status = "accepted-independent-state-membership-candidate"
        notes = [
            "non-direct source and row candidate keys classify all sampled GoodDirection cases",
            "next step should emit a bounded Lean smoke for independent source/row membership coverage",
        ]
    elif (
        projected["best_source_row_producer_obligations"] is not None
        and int(projected["best_source_row_producer_obligations"]) <= obligation_gate
    ):
        status = "accepted-producer-membership-candidate"
        notes = [
            "exact source and row producer keys are bounded; this relies on producer predicates rather than raw rank/mask replay",
            "next step should test the producer-coverage root over the same representative windows",
        ]
    elif (
        projected["best_descriptor_obligations"] is not None
        and int(projected["best_descriptor_obligations"]) <= obligation_gate
    ):
        status = "accepted-descriptor-membership-candidate"
        notes = [
            "a non-direct descriptor candidate is unambiguous and within the gate",
            "next step should emit a bounded descriptor-membership Lean smoke",
        ]

    return {
        "schema_version": 1,
        "mode": "pair_sign_descriptor_membership_state_profile",
        "phase": "6Z.6K.8AG",
        "trusted_as_proof": False,
        "jobs": jobs,
        "ranges": [list(item) for item in ranges],
        "obligation_gate": obligation_gate,
        "windows": windows,
        "total_good_direction_cases": len(all_items),
        "source_language_validation_failures": dict(failures),
        "source_language_validation_failure_count": sum(failures.values()),
        "source_language_failure_samples": failure_samples,
        "surface_results": surface_results,
        "projected_obligations": projected,
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    decision = payload["decision"]
    projected = payload["projected_obligations"]
    lines = [
        "# Phase 6Z.6K.8AG Pair-Sign Descriptor Membership State Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean. It profiles",
        "whether pair-sign GoodDirection survivors can be routed to descriptor,",
        "source, and row semantic families without concrete rank/mask replay.",
        "",
        f"- Status: `{decision['status']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Ranges: `{payload['ranges']}`",
        f"- Total GoodDirection cases: `{payload['total_good_direction_cases']}`",
        f"- Source-language validation failures: `{payload['source_language_validation_failure_count']}`",
        f"- Obligation gate: `{payload['obligation_gate']}`",
        "",
        "## Projected Obligation Choices",
        "",
        "| Choice | Candidate | Obligations |",
        "| --- | --- | ---: |",
        f"| best descriptor | `{projected['best_descriptor_candidate']}` | {projected['best_descriptor_obligations']} |",
        (
            f"| best independent source+row | "
            f"`{projected['best_independent_source_candidate']} + "
            f"{projected['best_independent_row_candidate']}` | "
            f"{projected['best_independent_source_row_obligations']} |"
        ),
        (
            f"| best producer source+row | "
            f"`{projected['best_source_producer_candidate']} + "
            f"{projected['best_row_producer_candidate']}` | "
            f"{projected['best_source_row_producer_obligations']} |"
        ),
        "",
        "## Candidate Surfaces",
        "",
        "| Target | Candidate | Status | Direct target | Candidate keys | Target keys | Ambiguous groups | Ambiguous cases | Largest |",
        "| --- | --- | --- | --- | ---: | ---: | ---: | ---: | ---: |",
    ]
    for result in payload["surface_results"]:
        lines.append(
            f"| `{result['target']}` | `{result['name']}` | `{result['status']}` | "
            f"`{result['direct_target']}` | {result['candidate_count']} | "
            f"{result['target_count']} | {result['ambiguous_group_count']} | "
            f"{result['ambiguous_cases']} | {result['largest_candidate_cases']} |"
        )
    lines.extend([
        "",
        "## Windows",
        "",
        "| Range | Families | GoodDirection cases | Identity words | Translation masks |",
        "| --- | ---: | ---: | ---: | ---: |",
    ])
    for window in payload["windows"]:
        counts = window["counts"]
        lines.append(
            f"| `{window['range']}` | {window['family_count']} | "
            f"{window['good_direction_cases']} | {counts.get('identity_words', 0)} | "
            f"{counts.get('translation_sign_assignments', 0)} |"
        )
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in decision["notes"]:
        lines.append(f"- {note}")
    if payload["source_language_failure_samples"]:
        lines.extend([
            "",
            "## Source-Language Failure Samples",
            "",
        ])
        for sample in payload["source_language_failure_samples"]:
            lines.append(
                f"- `{sample['failure']}` rank `{sample['rank']}` mask `{sample['mask']}`"
            )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ranges", default=DEFAULT_RANGES)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--sample-limit", type=int, default=8)
    parser.add_argument("--obligation-gate", type=int, default=2000)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    if args.sample_limit <= 0:
        raise ValueError("--sample-limit must be positive")
    if args.obligation_gate <= 0:
        raise ValueError("--obligation-gate must be positive")

    payload = profile(
        ranges=parse_ranges(args.ranges),
        jobs=args.jobs,
        sample_limit=args.sample_limit,
        obligation_gate=args.obligation_gate,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "jobs": payload["jobs"],
        "ranges": payload["ranges"],
        "total_good_direction_cases": payload["total_good_direction_cases"],
        "source_language_validation_failure_count": payload["source_language_validation_failure_count"],
        "projected_obligations": payload["projected_obligations"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
