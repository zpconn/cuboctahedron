#!/usr/bin/env python3
"""Profile the source-index/state language needed after Phase 6Z.6K.8U.

The 8U bounded Lean attempt showed that proving producer membership by
`fin_cases r <;> fin_cases mask` is not viable, even for `[0,25)`.
This diagnostic asks a smaller semantic question:

*Can the source-index portion of `SourceIndexStateSourcePredicate` be reduced to
static source-position facts plus a small set of interior impact-face position
obligations?*

It emits no Lean and is not trusted as proof.  Its output is meant to guide the
next hand-written/generator theorem surface for Phase 6Z.6K.8V.
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

from generate_source_index_state_nonenum_smoke import write_json, write_text  # noqa: E402
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    key,
    source_payload,
)


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8v_source_index_state_language_profile.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")

FACE_ORDER = [
    "xp",
    "xm",
    "yp",
    "ym",
    "zp",
    "zm",
    "tmmm",
    "tmmp",
    "tmpm",
    "tmpp",
    "tpmm",
    "tpmp",
    "tppm",
    "tppp",
]
FACE_INDEX = {face: index for index, face in enumerate(FACE_ORDER)}


def impact_face(seq: list[str], impact: int) -> str:
    if impact < 14:
        return seq[impact]
    return seq[0]


def interior_slot_for(face_pos: int, excluded_pos: int) -> int:
    if face_pos == excluded_pos:
        raise ValueError("face and excluded face coincide")
    return face_pos if face_pos < excluded_pos else face_pos - 1


def source_language(index: int, source: dict[str, Any]) -> dict[str, Any]:
    kind = source["kind"]
    if kind == "xpStart":
        expected = int(source["index"])
        return {
            "kind": "xpStart",
            "index": index,
            "expectedIndex": expected,
            "valid": index == expected,
            "dynamic": False,
            "obligation": f"xpStart:{expected}",
        }
    if kind == "ordering":
        step = int(source["step"])
        expected = 4 + step
        return {
            "kind": "ordering",
            "index": index,
            "step": step,
            "expectedIndex": expected,
            "valid": index == expected,
            "dynamic": False,
            "obligation": f"ordering:{step}",
        }
    if kind == "interior":
        impact = int(source["impact"])
        face = str(source["face"])
        face_pos = FACE_INDEX[face]
        block_start = 18 + 13 * (impact - 1)
        slot = index - block_start
        excluded_positions = [
            excluded_pos
            for excluded_pos in range(len(FACE_ORDER))
            if excluded_pos != face_pos
            and interior_slot_for(face_pos, excluded_pos) == slot
        ]
        excluded_faces = [FACE_ORDER[pos] for pos in excluded_positions]
        valid = 0 <= slot < 13 and bool(excluded_faces)
        return {
            "kind": "interior",
            "index": index,
            "impact": impact,
            "face": face,
            "faceIndex": face_pos,
            "blockStart": block_start,
            "slot": slot,
            "excludedFaceSet": excluded_faces,
            "excludedFaceSetSize": len(excluded_faces),
            "valid": valid,
            "dynamic": True,
            "obligation": (
                f"interior:{impact}:{face}:slot{slot}:"
                f"excluded={','.join(excluded_faces)}"
            ),
        }
    raise ValueError(f"unsupported source kind {kind!r}")


def validate_member_source(
    member: Any,
    index: int,
    source: dict[str, Any],
    language: dict[str, Any],
) -> str | None:
    kind = source["kind"]
    if not language["valid"]:
        return "invalid-language"
    if kind == "xpStart":
        return None if index == int(source["index"]) else "xpStart-index-mismatch"
    if kind == "ordering":
        return None if index == 4 + int(source["step"]) else "ordering-index-mismatch"
    if kind == "interior":
        actual = impact_face(member.symbolic.case.seq, int(source["impact"]))
        if actual in language["excludedFaceSet"]:
            return None
        return f"interior-excluded-face-mismatch:{actual}"
    return f"unsupported-kind:{kind}"


def source_occurrences(families: list[Any]) -> list[dict[str, Any]]:
    grouped: dict[str, list[Any]] = defaultdict(list)
    for family in families:
        grouped[key(source_payload(family))].append(family)

    occurrences: list[dict[str, Any]] = []
    for source_group_key, group_families in grouped.items():
        family = group_families[0]
        first_index, second_index = tuple(int(i) for i in family.source_indices)
        first_source = family.members[0].symbolic.case.first_source
        second_source = family.members[0].symbolic.case.second_source
        for ordinal, (index, source) in enumerate(
            [(first_index, first_source), (second_index, second_source)]
        ):
            language = source_language(index, source)
            failures: Counter[str] = Counter()
            member_count = 0
            for group_family in group_families:
                for member in group_family.members:
                    member_count += 1
                    member_source = (
                        member.symbolic.case.first_source
                        if ordinal == 0
                        else member.symbolic.case.second_source
                    )
                    if member_source != source:
                        failures["source-varies-within-group"] += 1
                        continue
                    failure = validate_member_source(member, index, source, language)
                    if failure is not None:
                        failures[failure] += 1
            occurrences.append(
                {
                    "sourceGroupKey": source_group_key,
                    "ordinal": ordinal,
                    "sourceIndex": index,
                    "source": source,
                    "language": language,
                    "familyCount": len(group_families),
                    "caseCount": member_count,
                    "validationFailures": dict(failures),
                }
            )
    return sorted(
        occurrences,
        key=lambda item: (
            str(item["language"]["kind"]),
            str(item["language"]["obligation"]),
            int(item["ordinal"]),
        ),
    )


def profile(*, rank_start: int, limit: int, jobs: int, sample_limit: int) -> dict[str, Any]:
    families, counts = collect_families_maybe_parallel(
        rank_start=rank_start,
        limit=limit,
        jobs=jobs,
    )
    occurrences = source_occurrences(families)
    obligations: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for occurrence in occurrences:
        obligations[str(occurrence["language"]["obligation"])].append(occurrence)

    obligation_rows = []
    for obligation, items in obligations.items():
        case_count = sum(int(item["caseCount"]) for item in items)
        family_count = sum(int(item["familyCount"]) for item in items)
        first = items[0]["language"]
        obligation_rows.append(
            {
                "obligation": obligation,
                "kind": first["kind"],
                "dynamic": first["dynamic"],
                "valid": all(bool(item["language"]["valid"]) for item in items),
                "occurrenceCount": len(items),
                "familyCount": family_count,
                "caseCount": case_count,
                "sample": items[:sample_limit],
            }
        )
    obligation_rows.sort(key=lambda item: (-int(item["caseCount"]), str(item["obligation"])))

    failure_count = sum(
        sum(int(count) for count in occurrence["validationFailures"].values())
        for occurrence in occurrences
    )
    dynamic_rows = [row for row in obligation_rows if row["dynamic"]]
    static_rows = [row for row in obligation_rows if not row["dynamic"]]
    max_excluded_set = max(
        (
            int(item["language"].get("excludedFaceSetSize", 0))
            for item in occurrences
            if item["language"]["dynamic"]
        ),
        default=0,
    )

    status = "accepted-next-lean-smoke"
    notes = [
        "source lookup splits into static xpStart/ordering facts and interior face-position facts",
        "no sampled source group needs rank/mask finite replay at this abstraction level",
    ]
    if failure_count:
        status = "rejected-validation-failures"
        notes.append("derived source-language obligations failed sample validation")
    elif len(obligation_rows) > 120:
        status = "needs-more-compression"
        notes.append("source-language obligation count exceeds the diagnostic gate")

    return {
        "schema_version": 1,
        "mode": "source_index_state_language_profile",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "jobs": jobs,
        "counts": counts,
        "source_index_state_family_count": len(families),
        "source_group_count": len({key(source_payload(family)) for family in families}),
        "source_occurrence_count": len(occurrences),
        "source_language_obligation_count": len(obligation_rows),
        "static_obligation_count": len(static_rows),
        "dynamic_obligation_count": len(dynamic_rows),
        "max_interior_excluded_face_set_size": max_excluded_set,
        "validation_failure_count": failure_count,
        "decision": {
            "status": status,
            "notes": notes,
        },
        "top_obligations": obligation_rows[:sample_limit],
    }


def markdown(payload: dict[str, Any]) -> str:
    decision = payload["decision"]
    lines = [
        "# Phase 6Z.6K.8V Source-Index/State Language Profile",
        "",
        "This diagnostic is not trusted as proof and emits no Lean. It profiles",
        "the semantic source-position obligations needed to replace bounded",
        "rank/mask replay in the producer-membership bridge.",
        "",
        f"- Status: `{decision['status']}`",
        f"- Rank window: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Jobs: `{payload['jobs']}`",
        f"- Source-index/state families: `{payload['source_index_state_family_count']}`",
        f"- Source groups: `{payload['source_group_count']}`",
        f"- Source occurrences: `{payload['source_occurrence_count']}`",
        f"- Source-language obligations: `{payload['source_language_obligation_count']}`",
        f"- Static obligations: `{payload['static_obligation_count']}`",
        f"- Dynamic interior obligations: `{payload['dynamic_obligation_count']}`",
        f"- Max interior excluded-face set size: `{payload['max_interior_excluded_face_set_size']}`",
        f"- Validation failures: `{payload['validation_failure_count']}`",
        "",
        "## Top Obligations",
        "",
        "| Cases | Occurrences | Kind | Dynamic | Obligation |",
        "| ---: | ---: | --- | --- | --- |",
    ]
    for row in payload["top_obligations"][:20]:
        lines.append(
            f"| {row['caseCount']} | {row['occurrenceCount']} | `{row['kind']}` | "
            f"`{row['dynamic']}` | `{row['obligation']}` |"
        )
    lines.append("")
    lines.append("## Notes")
    lines.append("")
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--sample-limit", type=int, default=12)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.limit < 0:
        raise ValueError("--limit must be nonnegative")
    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")
    if args.sample_limit <= 0:
        raise ValueError("--sample-limit must be positive")

    payload = profile(
        rank_start=args.rank_start,
        limit=args.limit,
        jobs=args.jobs,
        sample_limit=args.sample_limit,
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "rank_start": payload["rank_start"],
        "rank_end": payload["rank_end"],
        "jobs": payload["jobs"],
        "source_index_state_family_count": payload["source_index_state_family_count"],
        "source_group_count": payload["source_group_count"],
        "source_occurrence_count": payload["source_occurrence_count"],
        "source_language_obligation_count": payload["source_language_obligation_count"],
        "static_obligation_count": payload["static_obligation_count"],
        "dynamic_obligation_count": payload["dynamic_obligation_count"],
        "max_interior_excluded_face_set_size": payload["max_interior_excluded_face_set_size"],
        "validation_failure_count": payload["validation_failure_count"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
