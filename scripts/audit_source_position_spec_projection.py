#!/usr/bin/env python3
"""Audit AP.13 source-position spec projection for producer memberships.

This diagnostic is not trusted as proof and emits no Lean.  It checks whether
the source groups found by the pair-sign producer profiler can be represented
by the generic `SourcePairPositionSpec` surface added in AP.9/AP.12.

The key failure modes this catches are:

* a source group whose concrete source varies between members;
* an invalid source-list index/slot for a static or dynamic source;
* an interior source whose sampled impact face is outside the excluded-face set
  required by the generated source-position predicate.

If this audit passes, the next Lean emitter can target
`SourcePairPositionSpec.Predicate` rather than regenerating raw
`SourceIndexStateSourcePredicate` lookup proofs.
"""

from __future__ import annotations

import argparse
import json
import re
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
from profile_pair_sign_producer_coverage_scaling import (  # noqa: E402
    merge_families,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    key,
    member_count,
    source_payload,
)
from profile_source_index_state_language import (  # noqa: E402
    source_language,
    validate_member_source,
)


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8ap13_source_position_spec_projection.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_RANGES = (
    "0:10000,"
    "100000:105000,250000:255000,1000000:1005000,5000000:5005000,"
    "10000000:10005000,20000000:20005000,30000000:30005000,"
    "45000000:45005000,60000000:60005000,75000000:75005000,"
    "90000000:90005000"
)
DEFAULT_SOURCE_LEAN = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PairSignProducerCoverageScalingSplit50k/Source.lean"
)


def parse_ranges(raw: str) -> list[tuple[int, int]]:
    result: list[tuple[int, int]] = []
    for part in raw.split(","):
        item = part.strip()
        if not item:
            continue
        if ":" not in item:
            raise ValueError(f"range {item!r} must have form start:end")
        start_raw, end_raw = item.split(":", 1)
        start = int(start_raw)
        end = int(end_raw)
        if start < 0 or end < start:
            raise ValueError(f"invalid range {item!r}")
        result.append((start, end))
    if not result:
        raise ValueError("at least one range is required")
    return result


def parse_source_expr(raw: str) -> dict[str, Any]:
    text = raw.strip()
    match = re.fullmatch(r"TranslationConstraintSource\.xpStart\s+⟨(\d+), by decide⟩", text)
    if match:
        return {"kind": "xpStart", "index": int(match.group(1))}
    match = re.fullmatch(r"TranslationConstraintSource\.ordering\s+⟨(\d+), by decide⟩", text)
    if match:
        return {"kind": "ordering", "step": int(match.group(1))}
    match = re.fullmatch(
        r"TranslationConstraintSource\.interior\s+⟨(\d+), by decide⟩\s+Face\.(\w+)",
        text,
    )
    if match:
        return {
            "kind": "interior",
            "impact": int(match.group(1)),
            "face": match.group(2),
        }
    raise ValueError(f"unsupported TranslationConstraintSource expression: {raw!r}")


def parse_source_lean(path: Path) -> list[dict[str, Any]]:
    text = path.read_text(encoding="utf-8")
    pattern = re.compile(
        r"/-- Source producer `(?P<digest>[^`]+)`\.\n"
        r"Observed bounded GoodDirection cases: (?P<count>\d+)\. -/\n"
        r"def (?P<name>source_\d+)_support : TwoSourceFarkasSupport where\n"
        r"\s+first := (?P<first>[^\n]+)\n"
        r"\s+second := (?P<second>[^\n]+)\n"
        r"def (?P=name)_producer : SourceIndexStateSourceProducer where\n"
        r"\s+Applies := fun key r mask =>\n"
        r"\s+key\.firstIndex = (?P<first_index>\d+) /\\\n"
        r"\s+key\.secondIndex = (?P<second_index>\d+) /\\",
        re.MULTILINE,
    )
    rows: list[dict[str, Any]] = []
    for match in pattern.finditer(text):
        first_index = int(match.group("first_index"))
        second_index = int(match.group("second_index"))
        first_source = parse_source_expr(match.group("first"))
        second_source = parse_source_expr(match.group("second"))
        first_language = source_language(first_index, first_source)
        second_language = source_language(second_index, second_source)
        first_spec = lean_source_spec(first_source, first_language)
        second_spec = lean_source_spec(second_source, second_language)
        valid = bool(first_spec["valid"]) and bool(second_spec["valid"])
        failures: list[str] = []
        if not first_spec["valid"]:
            failures.append("invalid-first-source-position")
        if not second_spec["valid"]:
            failures.append("invalid-second-source-position")
        rows.append({
            "name": match.group("name"),
            "digest": match.group("digest"),
            "caseCount": int(match.group("count")),
            "valid": valid,
            "sourceIndices": [first_index, second_index],
            "sourceSpecs": [first_spec, second_spec],
            "sourceSpecSignature": f"{first_spec['signature']}|{second_spec['signature']}",
            "failures": failures,
        })
    if not rows:
        raise ValueError(f"no source producers parsed from {path}")
    return rows


def lean_source_spec(source: dict[str, Any], language: dict[str, Any]) -> dict[str, Any]:
    kind = str(source["kind"])
    if kind == "xpStart":
        return {
            "constructor": "xpStart",
            "index": int(source["index"]),
            "valid": bool(language["valid"]),
            "signature": f"xpStart:{int(source['index'])}",
        }
    if kind == "ordering":
        return {
            "constructor": "ordering",
            "step": int(source["step"]),
            "valid": bool(language["valid"]),
            "signature": f"ordering:{int(source['step'])}",
        }
    if kind == "interior":
        return {
            "constructor": "interior",
            "impact": int(source["impact"]),
            "face": str(source["face"]),
            "slot": int(language["slot"]),
            "excludedFaceSet": list(language["excludedFaceSet"]),
            "valid": bool(language["valid"]),
            "signature": (
                f"interior:{int(source['impact'])}:{source['face']}:"
                f"slot{int(language['slot'])}"
            ),
        }
    raise ValueError(f"unsupported source kind {kind!r}")


def group_sources(families: list[Family]) -> dict[str, list[Family]]:
    groups: dict[str, list[Family]] = defaultdict(list)
    for family in families:
        groups[key(source_payload(family))].append(family)
    return dict(groups)


def member_source(member: Any, ordinal: int) -> dict[str, Any]:
    return (
        member.symbolic.case.first_source
        if ordinal == 0
        else member.symbolic.case.second_source
    )


def audit_source_group(group_key: str, families: list[Family]) -> dict[str, Any]:
    first = families[0]
    first_index, second_index = tuple(int(i) for i in first.source_indices)
    first_member = first.members[0]
    sources = [
        first_member.symbolic.case.first_source,
        first_member.symbolic.case.second_source,
    ]
    indices = [first_index, second_index]
    languages = [
        source_language(indices[0], sources[0]),
        source_language(indices[1], sources[1]),
    ]
    specs = [
        lean_source_spec(sources[0], languages[0]),
        lean_source_spec(sources[1], languages[1]),
    ]

    failures: Counter[str] = Counter()
    failure_samples: list[dict[str, Any]] = []
    case_count = 0
    for family in families:
        for member in family.members:
            case_count += 1
            for ordinal in (0, 1):
                actual_source = member_source(member, ordinal)
                if actual_source != sources[ordinal]:
                    failures[f"source-varies:{ordinal}"] += 1
                    if len(failure_samples) < 8:
                        failure_samples.append({
                            "failure": f"source-varies:{ordinal}",
                            "expected": sources[ordinal],
                            "actual": actual_source,
                        })
                    continue
                failure = validate_member_source(
                    member, indices[ordinal], sources[ordinal], languages[ordinal]
                )
                if failure is not None:
                    failures[f"{ordinal}:{failure}"] += 1
                    if len(failure_samples) < 8:
                        failure_samples.append({
                            "failure": f"{ordinal}:{failure}",
                            "source": sources[ordinal],
                            "language": languages[ordinal],
                        })

    valid = not failures and all(bool(spec["valid"]) for spec in specs)
    return {
        "key": group_key,
        "valid": valid,
        "sourceIndices": indices,
        "sourceSpecs": specs,
        "sourceSpecSignature": f"{specs[0]['signature']}|{specs[1]['signature']}",
        "familyCount": len(families),
        "caseCount": case_count,
        "failures": dict(sorted(failures.items())),
        "failureSamples": failure_samples,
    }


def collect_range(start: int, end: int, jobs: int) -> tuple[list[Family], dict[str, int]]:
    return collect_families_maybe_parallel(
        rank_start=start,
        limit=end - start,
        jobs=jobs,
        source_key_surface="pair_sign",
    )


def profile(
    *,
    ranges: list[tuple[int, int]],
    jobs: int,
    sample_limit: int,
    source_group_gate: int,
) -> dict[str, Any]:
    parts: list[tuple[list[Family], dict[str, int]]] = []
    windows: list[dict[str, Any]] = []
    cumulative_groups: set[str] = set()
    for start, end in ranges:
        families, counts = collect_range(start, end, jobs)
        parts.append((families, counts))
        groups = group_sources(families)
        cumulative_groups.update(groups)
        windows.append({
            "range": [start, end],
            "rankCount": end - start,
            "counts": counts,
            "goodDirectionCases": member_count(families),
            "sourceGroupCount": len(groups),
            "cumulativeSourceGroupCount": len(cumulative_groups),
        })

    families, counts = merge_families(parts)
    source_groups = group_sources(families)
    group_rows = [
        audit_source_group(group_key, group_families)
        for group_key, group_families in source_groups.items()
    ]
    group_rows.sort(key=lambda row: (-int(row["caseCount"]), str(row["key"])))

    invalid_rows = [row for row in group_rows if not bool(row["valid"])]
    spec_signatures = {str(row["sourceSpecSignature"]) for row in group_rows}
    spec_occurrences: Counter[str] = Counter()
    for row in group_rows:
        for spec in row["sourceSpecs"]:
            spec_occurrences[str(spec["signature"])] += int(row["caseCount"])

    status = "accepted-source-position-spec-projection"
    notes = [
        "diagnostic only: sampled coverage is not Lean proof",
        "all sampled source groups project to SourcePairPositionSpec",
        "next step can emit a nonempty AP language pilot from these specs",
    ]
    if invalid_rows:
        status = "rejected-invalid-source-position-specs"
        notes = [
            "some source groups cannot be represented by the generic source-position spec",
            "inspect invalidSourceGroups before emitting AP language Lean",
        ]
    elif len(group_rows) > source_group_gate:
        status = "needs-smaller-source-spec-surface"
        notes = [
            f"source group count exceeds gate {source_group_gate}",
            "projection is valid, but the family coordinate is still too large",
        ]

    return {
        "schemaVersion": 1,
        "phase": "6Z.6K.8AP.13",
        "mode": "source_position_spec_projection_audit",
        "trustedAsProof": False,
        "jobs": jobs,
        "ranges": [list(item) for item in ranges],
        "rankCount": sum(end - start for start, end in ranges),
        "counts": counts,
        "windows": windows,
        "goodDirectionCases": member_count(families),
        "sourceGroupCount": len(group_rows),
        "sourceSpecPairSignatureCount": len(spec_signatures),
        "individualSourceSpecSignatureCount": len(spec_occurrences),
        "sourceGroupGate": source_group_gate,
        "invalidSourceGroupCount": len(invalid_rows),
        "invalidSourceGroups": invalid_rows[:sample_limit],
        "topSourceGroups": group_rows[:sample_limit],
        "topIndividualSourceSpecs": [
            {"signature": signature, "caseCount": count}
            for signature, count in spec_occurrences.most_common(sample_limit)
        ],
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def profile_lean_source(
    *,
    source_lean: Path,
    sample_limit: int,
    source_group_gate: int,
) -> dict[str, Any]:
    rows = parse_source_lean(source_lean)
    invalid_rows = [row for row in rows if not bool(row["valid"])]
    spec_pairs = {str(row["sourceSpecSignature"]) for row in rows}
    spec_occurrences: Counter[str] = Counter()
    for row in rows:
        for spec in row["sourceSpecs"]:
            spec_occurrences[str(spec["signature"])] += int(row["caseCount"])

    status = "accepted-lean-source-position-spec-projection"
    notes = [
        "diagnostic only: parsed Lean source producers are not coverage proof",
        "all emitted source producers have valid SourcePairPositionSpec projections",
        "next step can emit an AP language pilot from source-position specs",
    ]
    if invalid_rows:
        status = "rejected-invalid-lean-source-position-specs"
        notes = [
            "some emitted source producers do not project to valid SourcePairPositionSpec entries",
            "fix source-position parsing or source producer generation before AP language emission",
        ]
    elif len(rows) > source_group_gate:
        status = "needs-smaller-lean-source-spec-surface"
        notes = [
            f"source producer count exceeds gate {source_group_gate}",
            "projection is valid, but the source surface is too large",
        ]

    return {
        "schemaVersion": 1,
        "phase": "6Z.6K.8AP.13",
        "mode": "lean_source_position_spec_projection_audit",
        "trustedAsProof": False,
        "sourceLean": str(source_lean),
        "sourceProducerCount": len(rows),
        "representedCaseCount": sum(int(row["caseCount"]) for row in rows),
        "sourceSpecPairSignatureCount": len(spec_pairs),
        "individualSourceSpecSignatureCount": len(spec_occurrences),
        "sourceGroupGate": source_group_gate,
        "invalidSourceProducerCount": len(invalid_rows),
        "invalidSourceProducers": invalid_rows[:sample_limit],
        "topSourceProducers": sorted(
            rows, key=lambda row: (-int(row["caseCount"]), str(row["name"]))
        )[:sample_limit],
        "topIndividualSourceSpecs": [
            {"signature": signature, "caseCount": count}
            for signature, count in spec_occurrences.most_common(sample_limit)
        ],
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    decision = payload["decision"]
    if payload["mode"] == "lean_source_position_spec_projection_audit":
        lines = [
            "# Phase 6Z.6K.8AP.13 Source-Position Spec Projection Audit",
            "",
            "This diagnostic is not proof. It parses an already emitted Lean source",
            "producer module and checks whether every source producer has a valid",
            "`SourcePairPositionSpec` projection.",
            "",
            f"- Status: `{decision['status']}`",
            f"- Lean source module: `{payload['sourceLean']}`",
            f"- Source producers: `{payload['sourceProducerCount']}`",
            f"- Represented bounded cases: `{payload['representedCaseCount']}`",
            f"- Source spec pair signatures: `{payload['sourceSpecPairSignatureCount']}`",
            f"- Individual source spec signatures: `{payload['individualSourceSpecSignatureCount']}`",
            f"- Invalid source producers: `{payload['invalidSourceProducerCount']}`",
            "",
            "Decision notes:",
            "",
        ]
        for note in decision["notes"]:
            lines.append(f"- {note}")
        lines.extend(["", "Top source producers:", ""])
        for row in payload["topSourceProducers"][:10]:
            lines.append(
                f"- `{row['name']}`: {row['caseCount']} cases, "
                f"spec `{row['sourceSpecSignature']}`"
            )
        if payload["invalidSourceProducers"]:
            lines.extend(["", "Invalid samples:", ""])
            for row in payload["invalidSourceProducers"]:
                lines.append(f"- `{row['name']}`: `{row['failures']}`")
        lines.append("")
        return "\n".join(lines)

    lines = [
        "# Phase 6Z.6K.8AP.13 Source-Position Spec Projection Audit",
        "",
        "This diagnostic is not proof. It checks whether sampled pair-sign source",
        "producer groups can be expressed using the generic",
        "`SourcePairPositionSpec` surface instead of raw source-list lookup",
        "predicates.",
        "",
        f"- Status: `{decision['status']}`",
        f"- Ranges: `{payload['ranges']}`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Ranks scanned: `{payload['rankCount']}`",
        f"- GoodDirection cases represented: `{payload['goodDirectionCases']}`",
        f"- Source groups: `{payload['sourceGroupCount']}`",
        f"- Source spec pair signatures: `{payload['sourceSpecPairSignatureCount']}`",
        f"- Individual source spec signatures: `{payload['individualSourceSpecSignatureCount']}`",
        f"- Invalid source groups: `{payload['invalidSourceGroupCount']}`",
        "",
        "Decision notes:",
        "",
    ]
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.extend(["", "Top source groups:", ""])
    for row in payload["topSourceGroups"][:10]:
        lines.append(
            f"- `{row['key']}`: {row['caseCount']} cases, "
            f"spec `{row['sourceSpecSignature']}`"
        )
    if payload["invalidSourceGroups"]:
        lines.extend(["", "Invalid samples:", ""])
        for row in payload["invalidSourceGroups"]:
            lines.append(f"- `{row['key']}`: `{row['failures']}`")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ranges", default=DEFAULT_RANGES)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--from-lean-source", type=Path, default=None)
    parser.add_argument("--sample-limit", type=int, default=20)
    parser.add_argument("--source-group-gate", type=int, default=1000)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.from_lean_source is not None:
        payload = profile_lean_source(
            source_lean=args.from_lean_source,
            sample_limit=args.sample_limit,
            source_group_gate=args.source_group_gate,
        )
    else:
        if args.jobs <= 0:
            raise ValueError("--jobs must be positive")
        ranges = parse_ranges(args.ranges)
        payload = profile(
            ranges=ranges,
            jobs=args.jobs,
            sample_limit=args.sample_limit,
            source_group_gate=args.source_group_gate,
        )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "sourceGroups": payload.get("sourceGroupCount", payload.get("sourceProducerCount")),
        "invalidSourceGroups": payload.get(
            "invalidSourceGroupCount", payload.get("invalidSourceProducerCount")
        ),
        "goodDirectionCases": payload.get(
            "goodDirectionCases", payload.get("representedCaseCount")
        ),
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
