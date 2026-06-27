#!/usr/bin/env python3
"""Profile Phase 6Z.6K.8AB source-position applicability scaling.

This diagnostic is not trusted as proof and emits no Lean.  It reuses the
exact external source-index/state classifier to ask whether the 8AA theorem
surface stays semantic over larger rank windows:

* source-position predicate signatures;
* row-template predicate signatures;
* descriptor/applicability glue signatures;
* underlying source-language obligations.

The goal is to detect rank/mask replay before generating any new Lean.
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
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    descriptor_payload,
    key,
    member_count,
    row_payload,
    source_payload,
)
from profile_source_index_state_language import (  # noqa: E402
    source_language,
    validate_member_source,
)


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ab_source_position_applicability_scaling.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_RANGES = "0:1000,0:2500,10000:11000,90000:91000"


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


def grouped_by_payload(
    families: list[Family],
    payload,
) -> dict[str, list[Family]]:
    groups: dict[str, list[Family]] = defaultdict(list)
    for family in families:
        groups[key(payload(family))].append(family)
    return dict(groups)


def family_cases(families: list[Family]) -> int:
    return sum(family.count for family in families)


def source_occurrence_rows(source_groups: dict[str, list[Family]]) -> list[dict[str, Any]]:
    rows: list[dict[str, Any]] = []
    for source_group_key, group_families in source_groups.items():
        first = group_families[0]
        first_index, second_index = tuple(int(i) for i in first.source_indices)
        first_source = first.members[0].symbolic.case.first_source
        second_source = first.members[0].symbolic.case.second_source
        for ordinal, (index, source) in enumerate(
            [(first_index, first_source), (second_index, second_source)]
        ):
            language = source_language(index, source)
            failures: Counter[str] = Counter()
            occurrence_cases = 0
            for family in group_families:
                for member in family.members:
                    occurrence_cases += 1
                    actual_source = (
                        member.symbolic.case.first_source
                        if ordinal == 0
                        else member.symbolic.case.second_source
                    )
                    if actual_source != source:
                        failures["source-varies-within-group"] += 1
                        continue
                    failure = validate_member_source(member, index, source, language)
                    if failure is not None:
                        failures[failure] += 1
            rows.append({
                "source_group_key": source_group_key,
                "ordinal": ordinal,
                "index": index,
                "source": source,
                "language": language,
                "language_obligation": str(language["obligation"]),
                "language_signature": key({
                    "index": index,
                    "source": source,
                    "language": language,
                }),
                "family_count": len(group_families),
                "case_count": occurrence_cases,
                "validation_failures": dict(sorted(failures.items())),
            })
    return rows


def summarize_groups(
    groups: dict[str, list[Family]],
    *,
    limit: int,
) -> list[dict[str, Any]]:
    rows = []
    for group_key, families in groups.items():
        rows.append({
            "key": group_key,
            "case_count": family_cases(families),
            "family_count": len(families),
            "sample_descriptors": [
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


def summarize_source_obligations(
    rows: list[dict[str, Any]],
    *,
    limit: int,
) -> list[dict[str, Any]]:
    grouped: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for row in rows:
        grouped[str(row["language_obligation"])].append(row)
    result = []
    for obligation, items in grouped.items():
        first_language = items[0]["language"]
        result.append({
            "obligation": obligation,
            "kind": first_language["kind"],
            "dynamic": bool(first_language["dynamic"]),
            "valid": all(bool(item["language"]["valid"]) for item in items),
            "occurrence_count": len(items),
            "family_count": sum(int(item["family_count"]) for item in items),
            "case_count": sum(int(item["case_count"]) for item in items),
            "validation_failure_count": sum(
                sum(int(count) for count in item["validation_failures"].values())
                for item in items
            ),
        })
    return sorted(result, key=lambda item: (-int(item["case_count"]), str(item["obligation"])))[:limit]


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
    source_groups = grouped_by_payload(families, source_payload)
    row_groups = grouped_by_payload(families, row_payload)
    descriptor_groups = grouped_by_payload(families, descriptor_payload)
    source_occurrences = source_occurrence_rows(source_groups)
    source_language_keys = {
        str(row["language_obligation"])
        for row in source_occurrences
    }
    source_language_signatures = {
        str(row["language_signature"])
        for row in source_occurrences
    }
    source_row_pairs = {
        (key(source_payload(family)), key(row_payload(family)))
        for family in families
    }
    validation_failure_count = sum(
        sum(int(count) for count in row["validation_failures"].values())
        for row in source_occurrences
    )
    dynamic_obligations = {
        str(row["language_obligation"])
        for row in source_occurrences
        if row["language"]["dynamic"]
    }
    static_obligations = source_language_keys - dynamic_obligations
    status = "accepted-profile"
    notes = [
        "profile emits no Lean and is not trusted as proof",
        "source-position and row-template signatures remain semantic if their counts grow sublinearly",
    ]
    if validation_failure_count:
        status = "rejected-validation-failures"
        notes.append("source-language validation found mismatches")

    return {
        "range": [start, end],
        "jobs": jobs,
        "counts": counts,
        "source_index_state_family_count": len(families),
        "represented_good_direction_cases": member_count(families),
        "descriptor_signature_count": len(descriptor_groups),
        "source_position_signature_count": len(source_groups),
        "row_template_signature_count": len(row_groups),
        "source_row_pair_signature_count": len(source_row_pairs),
        "source_occurrence_count": len(source_occurrences),
        "source_language_obligation_count": len(source_language_keys),
        "source_language_signature_count": len(source_language_signatures),
        "static_source_language_obligation_count": len(static_obligations),
        "dynamic_source_language_obligation_count": len(dynamic_obligations),
        "validation_failure_count": validation_failure_count,
        "decision": {
            "status": status,
            "notes": notes,
        },
        "signature_keys": {
            "descriptor": sorted(descriptor_groups),
            "source_position": sorted(source_groups),
            "row_template": sorted(row_groups),
            "source_row_pair": [f"{left}:{right}" for left, right in sorted(source_row_pairs)],
            "source_language_obligation": sorted(source_language_keys),
            "source_language_signature": sorted(source_language_signatures),
        },
        "top_source_position_signatures": summarize_groups(source_groups, limit=sample_limit),
        "top_row_template_signatures": summarize_groups(row_groups, limit=sample_limit),
        "top_source_language_obligations": summarize_source_obligations(
            source_occurrences,
            limit=sample_limit,
        ),
    }


def union_counts(windows: list[dict[str, Any]]) -> dict[str, Any]:
    key_names = [
        "descriptor",
        "source_position",
        "row_template",
        "source_row_pair",
        "source_language_obligation",
        "source_language_signature",
    ]
    unions = {name: set() for name in key_names}
    for window in windows:
        for name in key_names:
            unions[name].update(str(item) for item in window["signature_keys"][name])
    return {
        f"union_{name}_count": len(items)
        for name, items in unions.items()
    } | {
        "union_keys": {
            name: sorted(items)
            for name, items in unions.items()
        }
    }


def profile(
    *,
    ranges: list[tuple[int, int]],
    jobs: int,
    sample_limit: int,
    phase: str,
) -> dict[str, Any]:
    window_payloads = [
        profile_window(start=start, end=end, jobs=jobs, sample_limit=sample_limit)
        for start, end in ranges
    ]
    validation_failure_count = sum(
        int(window["validation_failure_count"])
        for window in window_payloads
    )
    union = union_counts(window_payloads)
    source_position_counts = [
        int(window["source_position_signature_count"])
        for window in window_payloads
    ]
    row_template_counts = [
        int(window["row_template_signature_count"])
        for window in window_payloads
    ]
    descriptor_counts = [
        int(window["descriptor_signature_count"])
        for window in window_payloads
    ]
    status = "accepted-next-broader-profile"
    notes = [
        "profile was external and emitted no Lean",
        "bounded parallelism was used through the existing collector",
    ]
    if validation_failure_count:
        status = "rejected-validation-failures"
        notes.append("at least one source-language validation mismatch occurred")
    elif max(descriptor_counts, default=0) > 2000:
        status = "needs-new-invariant"
        notes.append("descriptor signatures exceed the 2000-leaf gate in a sampled window")
    elif max(source_position_counts, default=0) > 1000:
        status = "needs-source-position-compression"
        notes.append("source-position signatures exceed the diagnostic gate")
    elif max(row_template_counts, default=0) > 500:
        status = "needs-row-template-compression"
        notes.append("row-template signatures exceed the diagnostic gate")

    return {
        "schema_version": 1,
        "mode": "source_position_applicability_scaling_profile",
        "phase": phase,
        "trusted_as_proof": False,
        "jobs": jobs,
        "ranges": [list(item) for item in ranges],
        "windows": [
            {
                key_name: value
                for key_name, value in window.items()
                if key_name != "signature_keys"
            }
            for window in window_payloads
        ],
        "union_signature_counts": {
            key_name: value
            for key_name, value in union.items()
            if key_name != "union_keys"
        },
        "union_keys": union["union_keys"],
        "total_represented_good_direction_cases": sum(
            int(window["represented_good_direction_cases"])
            for window in window_payloads
        ),
        "validation_failure_count": validation_failure_count,
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    decision = payload["decision"]
    union = payload["union_signature_counts"]
    lines = [
        f"# Phase {payload['phase']} Source-Position Applicability Scaling Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean. It profiles",
        "whether the Phase 8AA source-position and row-template predicate surfaces",
        "stay bounded over larger/disjoint rank windows.",
        "",
        f"- Status: `{decision['status']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Ranges: `{payload['ranges']}`",
        f"- Total represented GoodDirection cases: `{payload['total_represented_good_direction_cases']}`",
        f"- Validation failures: `{payload['validation_failure_count']}`",
        "",
        "## Union Signature Counts",
        "",
        "| Signature surface | Union count |",
        "| --- | ---: |",
        f"| descriptor/applicability | {union['union_descriptor_count']} |",
        f"| source-position | {union['union_source_position_count']} |",
        f"| row-template | {union['union_row_template_count']} |",
        f"| source/row pair | {union['union_source_row_pair_count']} |",
        f"| source-language obligation | {union['union_source_language_obligation_count']} |",
        f"| source-language signature | {union['union_source_language_signature_count']} |",
        "",
        "## Windows",
        "",
        "| Range | GoodDirection cases | Descriptor | Source-position | Row-template | Source/row pairs | Source-language obligations | Failures |",
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for window in payload["windows"]:
        lines.append(
            f"| `{window['range']}` | {window['represented_good_direction_cases']} | "
            f"{window['descriptor_signature_count']} | "
            f"{window['source_position_signature_count']} | "
            f"{window['row_template_signature_count']} | "
            f"{window['source_row_pair_signature_count']} | "
            f"{window['source_language_obligation_count']} | "
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
    parser.add_argument("--phase", default="6Z.6K.8AB")
    parser.add_argument("--sample-limit", type=int, default=10)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    if args.sample_limit <= 0:
        raise ValueError("--sample-limit must be positive")
    ranges = parse_ranges(args.ranges)
    payload = profile(
        ranges=ranges,
        jobs=args.jobs,
        sample_limit=args.sample_limit,
        phase=args.phase,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "jobs": payload["jobs"],
        "phase": payload["phase"],
        "ranges": payload["ranges"],
        "total_represented_good_direction_cases": payload["total_represented_good_direction_cases"],
        "union_signature_counts": payload["union_signature_counts"],
        "validation_failure_count": payload["validation_failure_count"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
