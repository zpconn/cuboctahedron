#!/usr/bin/env python3
"""Profile AP.16D direct source-position coverage obligations.

AP.16D introduced the small Lean target
`SourcePositionRowProducerGoodCoverageOnRange lo hi`.  AP.16E added generic
constructors for empty ranges, concat roots, and single source-position plus
row-producer candidates.

This diagnostic asks what a real emitter would have to prove on representative
GoodDirection windows if it targets AP.16D directly.  It is not trusted as
proof and emits no Lean.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_pair_sign_producer_coverage_smoke import (  # noqa: E402
    collect_representative_families,
)
from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    Family,
    write_json,
    write_text,
)
from profile_pair_sign_descriptor_membership_state import (  # noqa: E402
    DEFAULT_RANGES,
    actual_sources,
    parse_ranges,
    source_language,
    validate_source_languages,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    key,
    row_payload,
)


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap16g_direct_coverage_obligations.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


@dataclass(frozen=True)
class CaseItem:
    window: tuple[int, int]
    family: Family
    member: Any


def face_ctor(face: str) -> str:
    return f"Face.{face}"


def fin_term(value: int) -> str:
    return f"⟨{value}, by decide⟩"


def source_position_from_language(language: dict[str, Any]) -> dict[str, Any]:
    kind = str(language["kind"])
    if kind == "xpStart":
        index = int(language["expectedIndex"])
        return {
            "kind": "xpStart",
            "index": int(language["index"]),
            "lean": f"SourcePositionSpec.xpStart {fin_term(index)}",
            "dynamic": False,
            "obligation": language["obligation"],
        }
    if kind == "ordering":
        step = int(language["step"])
        return {
            "kind": "ordering",
            "index": int(language["index"]),
            "lean": f"SourcePositionSpec.ordering {fin_term(step)}",
            "dynamic": False,
            "obligation": language["obligation"],
        }
    if kind == "interior":
        impact = int(language["impact"])
        face = str(language["face"])
        slot = int(language["slot"])
        return {
            "kind": "interior",
            "index": int(language["index"]),
            "impact": impact,
            "face": face,
            "slot": slot,
            "excludedFaceSet": list(language["excludedFaceSet"]),
            "excludedFaceSetSize": int(language["excludedFaceSetSize"]),
            "lean": (
                "SourcePositionSpec.interior "
                f"{fin_term(impact)} {face_ctor(face)} {slot}"
            ),
            "dynamic": True,
            "obligation": language["obligation"],
        }
    raise ValueError(f"unsupported source language kind {kind!r}")


def source_language_records(item: CaseItem) -> list[dict[str, Any]]:
    records = []
    for ordinal, (index, source) in enumerate(
        zip(item.family.source_indices, actual_sources(item), strict=True)
    ):
        language = source_language(int(index), source)
        records.append({
            "ordinal": ordinal,
            "sourceIndex": int(index),
            "source": source,
            "language": language,
            "position": source_position_from_language(language),
        })
    return records


def source_language_key(records: list[dict[str, Any]]) -> str:
    return key({
        "languages": [record["language"] for record in records],
        "sourceIndices": [record["sourceIndex"] for record in records],
    })


def source_pair_spec_key(records: list[dict[str, Any]]) -> str:
    return key({
        "positions": [record["position"]["lean"] for record in records],
    })


def row_key(family: Family) -> str:
    return key(row_payload(family))


def items_from_families(
    ranges: list[tuple[int, int]],
    families: list[Family],
) -> list[CaseItem]:
    result = []
    for family in families:
        for member in family.members:
            rank = int(member.symbolic.case.rank)
            window = next(
                (lo, hi) for (lo, hi) in ranges if lo <= rank < hi
            )
            result.append(CaseItem(window=window, family=family, member=member))
    return result


def summarize_groups(grouped: dict[str, list[CaseItem]], *, limit: int) -> list[dict[str, Any]]:
    rows = []
    for group_key, group in grouped.items():
        first = group[0]
        rows.append({
            "key": group_key,
            "case_count": len(group),
            "descriptor_count": len({item.family.key for item in group}),
            "sample": [
                {
                    "rank": item.member.symbolic.case.rank,
                    "mask": item.member.symbolic.case.mask,
                    "template": item.family.template_id,
                    "sourceIndices": list(item.family.source_indices),
                }
                for item in group[:4]
            ],
            "sourcePositions": [
                record["position"]
                for record in source_language_records(first)
            ],
        })
    return sorted(rows, key=lambda row: (-int(row["case_count"]), str(row["key"])))[:limit]


def profile(*, ranges: list[tuple[int, int]], jobs: int, sample_limit: int, obligation_gate: int) -> dict[str, Any]:
    families, counts, windows = collect_representative_families(
        ranges=ranges,
        jobs=jobs,
    )
    items = items_from_families(ranges, families)

    failures, failure_samples = validate_source_languages(items, sample_limit=sample_limit)

    source_language_groups: dict[str, list[CaseItem]] = defaultdict(list)
    source_pair_spec_groups: dict[str, list[CaseItem]] = defaultdict(list)
    row_groups: dict[str, list[CaseItem]] = defaultdict(list)
    direct_candidate_groups: dict[str, list[CaseItem]] = defaultdict(list)
    source_kind_counts: Counter[str] = Counter()
    source_dynamic_counts: Counter[str] = Counter()
    excluded_face_set_sizes: Counter[str] = Counter()

    for item in items:
        records = source_language_records(item)
        sl_key = source_language_key(records)
        sp_key = source_pair_spec_key(records)
        r_key = row_key(item.family)
        source_language_groups[sl_key].append(item)
        source_pair_spec_groups[sp_key].append(item)
        row_groups[r_key].append(item)
        direct_candidate_groups[key({"source": sl_key, "row": r_key})].append(item)
        for record in records:
            position = record["position"]
            source_kind_counts[str(position["kind"])] += 1
            if position["dynamic"]:
                source_dynamic_counts[str(position["obligation"])] += 1
                excluded_face_set_sizes[str(position["excludedFaceSetSize"])] += 1

    source_groups_unambiguous = all(
        len({source_pair_spec_key(source_language_records(item)) for item in group}) == 1
        for group in source_language_groups.values()
    )

    direct_candidates = len(direct_candidate_groups)
    reusable_obligations = len(source_language_groups) + len(row_groups)
    status = "accepted-direct-coverage-obligation-inventory"
    notes = [
        "source_language_full records map unambiguously to source-position specs",
        "row_exact remains the row producer coordinate",
        "the next Lean emitter should generate source-position predicates directly from these records",
    ]
    if failures:
        status = "rejected-source-language-validation"
        notes = ["source-language validation failed on sampled members"]
    elif not source_groups_unambiguous:
        status = "rejected-ambiguous-source-position-specs"
        notes = ["a source_language_full group maps to multiple source-position specs"]
    elif direct_candidates > obligation_gate:
        status = "needs-more-compression"
        notes.append(f"direct candidate count exceeds gate {obligation_gate}")

    return {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16G",
        "trusted_as_proof": False,
        "ranges": [list(item) for item in ranges],
        "jobs": jobs,
        "counts": counts,
        "windows": windows,
        "total_good_direction_cases": len(items),
        "descriptor_family_count": len(families),
        "source_language_group_count": len(source_language_groups),
        "source_pair_spec_group_count": len(source_pair_spec_groups),
        "row_group_count": len(row_groups),
        "direct_candidate_group_count": direct_candidates,
        "reusable_obligation_count": reusable_obligations,
        "source_groups_unambiguous": source_groups_unambiguous,
        "source_kind_counts": dict(source_kind_counts),
        "dynamic_source_obligation_count": len(source_dynamic_counts),
        "excluded_face_set_size_histogram": dict(excluded_face_set_sizes),
        "source_language_validation_failures": dict(failures),
        "source_language_failure_samples": failure_samples,
        "top_source_language_groups": summarize_groups(source_language_groups, limit=sample_limit),
        "top_direct_candidate_groups": summarize_groups(direct_candidate_groups, limit=sample_limit),
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Phase 6Z.6K.8AP.16G Direct Coverage Obligation Profile",
        "",
        "This is diagnostic only. It emits no Lean and is not trusted as proof.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Ranges: `{payload['ranges']}`",
        f"- GoodDirection cases: `{payload['total_good_direction_cases']}`",
        f"- Descriptor families: `{payload['descriptor_family_count']}`",
        f"- Source-language groups: `{payload['source_language_group_count']}`",
        f"- Source-position spec groups: `{payload['source_pair_spec_group_count']}`",
        f"- Row groups: `{payload['row_group_count']}`",
        f"- Direct source+row candidate groups: `{payload['direct_candidate_group_count']}`",
        f"- Reusable source+row obligations: `{payload['reusable_obligation_count']}`",
        f"- Dynamic source obligations: `{payload['dynamic_source_obligation_count']}`",
        "",
        "## Source Kinds",
        "",
    ]
    for kind, count in sorted(payload["source_kind_counts"].items()):
        lines.append(f"- `{kind}`: `{count}`")
    lines.extend([
        "",
        "## Excluded-Face Set Sizes",
        "",
    ])
    for size, count in sorted(payload["excluded_face_set_size_histogram"].items(), key=lambda kv: int(kv[0])):
        lines.append(f"- `{size}`: `{count}`")
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
            f"{window['represented_case_count']} | {counts.get('identity_words', 0)} | "
            f"{counts.get('translation_sign_assignments', 0)} |"
        )
    lines.extend([
        "",
        "## Decision Notes",
        "",
    ])
    for note in payload["decision"]["notes"]:
        lines.append(f"- {note}")
    lines.extend([
        "",
        "## Next Lean Step",
        "",
        "Generate a bounded AP.16D smoke whose shared source modules prove",
        "`SourcePairPositionSpec.Predicate` directly from the `source_language_full`",
        "records summarized here, whose row modules reuse `row_exact`, and whose",
        "descriptor chunks call",
        "`SourcePositionRowProducerGoodCoverageOnRange.of_singleCandidate`.",
        "",
    ])
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
    ranges = parse_ranges(args.ranges)
    payload = profile(
        ranges=ranges,
        jobs=args.jobs,
        sample_limit=args.sample_limit,
        obligation_gate=args.obligation_gate,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "goodDirectionCases": payload["total_good_direction_cases"],
        "directCandidateGroups": payload["direct_candidate_group_count"],
        "sourceLanguageGroups": payload["source_language_group_count"],
        "rowGroups": payload["row_group_count"],
        "reusableObligations": payload["reusable_obligation_count"],
        "sourceValidationFailures": payload["source_language_validation_failures"],
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
