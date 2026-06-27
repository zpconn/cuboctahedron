#!/usr/bin/env python3
"""Emit the Phase 6Z.6K.8Y source-position producer smoke.

This upgrades the older source-fact producer smoke: instead of assuming a
`SourceIndexStateSourcePredicate` containing raw source-list lookup facts, each
producer derives source facts from semantic source-position facts.  Static
sources use the reusable lookup lemmas; dynamic interior sources use an
impact-face excluded-set condition plus `lookup_interior_of_excluded_slot`.

The generated Lean is bounded smoke evidence, not global coverage.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import defaultdict
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_classifier_smoke import read_json  # noqa: E402
from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    family_summary,
    write_json,
    write_text,
)
from generate_translation_two_source_evidence import (  # noqa: E402
    support_lines,
    validate_module_namespace,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
    key,
    source_payload,
)
from profile_source_index_state_language import source_language  # noqa: E402


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8q_source_index_state_fact_production_profile.json"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourcePositionProducerSmoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8y_source_position_producer_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourcePositionProducerSmoke"
)


def lean_face(face: str) -> str:
    return f"Face.{face}"


def lean_face_list(faces: list[str]) -> str:
    return "[" + ", ".join(lean_face(face) for face in faces) + "]"


def source_group_name(index: int) -> str:
    return f"source_{index:03d}"


def grouped_sources(families: list[Any]) -> list[dict[str, Any]]:
    groups: dict[str, list[Any]] = defaultdict(list)
    for family in families:
        groups[key(source_payload(family))].append(family)

    rows = []
    for group_key, group_families in groups.items():
        first = group_families[0]
        first_index, second_index = tuple(int(i) for i in first.source_indices)
        first_case = first.members[0].symbolic.case
        rows.append({
            "key": group_key,
            "source_indices": (first_index, second_index),
            "first_source": first_case.first_source,
            "second_source": first_case.second_source,
            "first_language": source_language(first_index, first_case.first_source),
            "second_language": source_language(second_index, first_case.second_source),
            "family_count": len(group_families),
            "case_count": sum(family.count for family in group_families),
            "families": sorted(
                group_families,
                key=lambda family: (-family.count, family.template_id, family.key),
            ),
        })
    return sorted(rows, key=lambda item: (-int(item["case_count"]), str(item["key"])))


def source_position_def(name: str, ordinal: str, source: dict[str, Any], language: dict[str, Any]) -> list[str]:
    def_name = f"{name}_{ordinal}Position"
    kind = source["kind"]
    if kind in {"xpStart", "ordering"}:
        return [
            f"def {def_name} (r : Nat) (mask : SignMask) : Prop :=",
            "  ∀ _hlt : r < numPairWords, True",
            "",
        ]
    if kind == "interior":
        impact = int(source["impact"])
        excluded = lean_face_list(language["excludedFaceSet"])
        return [
            f"def {def_name} (r : Nat) (mask : SignMask) : Prop :=",
            "  ∀ hlt : r < numPairWords,",
            f"    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨{impact}, by decide⟩ ∈",
            f"      {excluded}",
            "",
        ]
    raise ValueError(f"unsupported source kind {kind!r}")


def source_lookup_lines(
    *,
    name: str,
    ordinal: str,
    source: dict[str, Any],
    language: dict[str, Any],
    index_eq: str,
    support_eq: str,
) -> list[str]:
    kind = source["kind"]
    if kind == "xpStart":
        source_index = int(source["index"])
        return [
            "        have hlookup := lookup_xpStart",
            "          (translationSeqAtRankMask ⟨r, hlt⟩ mask)",
            f"          ⟨{source_index}, by decide⟩",
            f"        simpa [{index_eq}, {support_eq}, {name}_support] using hlookup",
        ]
    if kind == "ordering":
        step = int(source["step"])
        return [
            "        have hlookup := lookup_ordering",
            "          (translationSeqAtRankMask ⟨r, hlt⟩ mask)",
            f"          ⟨{step}, by decide⟩",
            f"        simpa [{index_eq}, {support_eq}, {name}_support] using hlookup",
        ]
    if kind == "interior":
        impact = int(source["impact"])
        face = str(source["face"])
        slot = int(language["slot"])
        position_path = "hpos.1" if ordinal == "first" else "hpos.2.1"
        return [
            "        have hslot :",
            f"            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨{impact}, by decide⟩ ∈",
            f"              interiorExcludedFacesForSlot {lean_face(face)} {slot} := by",
            "          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,",
            f"            allFacesList] using ({position_path} hlt)",
            "        have hlookup := lookup_interior_of_excluded_slot",
            "          (translationSeqAtRankMask ⟨r, hlt⟩ mask)",
            f"          ⟨{impact}, by decide⟩ {lean_face(face)} {slot} (by decide) hslot",
            f"        simpa [{index_eq}, {support_eq}, {name}_support, interiorSourceIndex] using hlookup",
        ]
    raise ValueError(f"unsupported source kind {kind!r}")


def producer_lines(index: int, group: dict[str, Any]) -> list[str]:
    name = source_group_name(index)
    first_index, second_index = group["source_indices"]
    first_source = group["first_source"]
    second_source = group["second_source"]
    return [
        f"/-- Source-position producer for source group `{group['key']}`.",
        f"Observed bounded GoodDirection cases: {group['case_count']}. -/",
        *[
            line.replace("private def", "def", 1)
            for line in support_lines(name, first_source, second_source)
        ],
        *source_position_def(name, "first", first_source, group["first_language"]),
        *source_position_def(name, "second", second_source, group["second_language"]),
        f"def {name}_positionPredicate (r : Nat) (mask : SignMask) : Prop :=",
        f"  {name}_firstPosition r mask /\\",
        f"    {name}_secondPosition r mask /\\",
        f"      ∀ hlt : r < numPairWords, SourceChecks {name}_support r hlt mask",
        "",
        f"def {name}_producer : SourceIndexStateSourceProducer where",
        "  Applies := fun key r mask =>",
        f"    key.firstIndex = {first_index} /\\",
        f"      key.secondIndex = {second_index} /\\",
        f"      key.support = {name}_support /\\",
        f"      {name}_positionPredicate r mask",
        "  sourceFacts := by",
        "    intro key r mask h",
        "    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩",
        "    exact {",
        "      firstSource := fun hlt => by",
        *source_lookup_lines(
            name=name,
            ordinal="first",
            source=first_source,
            language=group["first_language"],
            index_eq="hfirst",
            support_eq="hsupport",
        ),
        "      secondSource := fun hlt => by",
        *source_lookup_lines(
            name=name,
            ordinal="second",
            source=second_source,
            language=group["second_language"],
            index_eq="hsecond",
            support_eq="hsupport",
        ),
        "      sourceChecks := fun hlt => by",
        f"        simpa [hsupport, {name}_support] using hpos.2.2 hlt",
        "    }",
        "",
        f"theorem {name}_sourceFacts",
        "    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}",
        f"    (h : {name}_producer.Applies key r mask) :",
        "    SourceIndexStateSourceFacts key r mask :=",
        f"  {name}_producer.sourceFacts h",
        "",
    ]


def module_lines(namespace: str, groups: list[dict[str, Any]], *, phase: str) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage",
        "",
        "set_option linter.unusedVariables false",
        "",
        "/-!",
        "Generated source-position producer smoke.",
        "",
        "This module intentionally contains no concrete rank/mask examples and no",
        "bounded member replay. Each producer turns semantic source-position",
        "facts plus `SourceChecks` into `SourceIndexStateSourceFacts`.",
        f"Phase: {phase}.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "",
    ]
    for index, group in enumerate(groups):
        lines.extend(producer_lines(index, group))
    lines.extend([
        "theorem sourcePositionProducerSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Source-Position Producer Smoke",
        "",
        "This generated smoke is not global coverage. It proves that every bounded",
        "source group can be represented by a reusable source-position producer,",
        "without concrete rank/mask replay.",
        "",
        f"- Source groups: `{payload['source_group_count']}`",
        f"- Selected descriptor families represented: `{payload['represented_family_count']}`",
        f"- Represented GoodDirection cases: `{payload['represented_case_count']}`",
        f"- Rank window used for selection: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Lean module: `{payload['lean_module']}`",
        "",
    ]
    return "\n".join(lines)


def build_payload(
    *,
    profile: dict[str, Any],
    groups: list[dict[str, Any]],
    out: Path,
    namespace: str,
    phase: str,
    collected_family_count: int,
) -> dict[str, Any]:
    return {
        "schema_version": 1,
        "phase": phase,
        "trusted_as_proof": False,
        "rank_start": int(profile["rank_start"]),
        "rank_end": int(profile["rank_end"]),
        "jobs": int(profile.get("jobs", 1)),
        "collected_family_count": collected_family_count,
        "source_group_count": len(groups),
        "represented_family_count": sum(int(group["family_count"]) for group in groups),
        "represented_case_count": sum(int(group["case_count"]) for group in groups),
        "lean_module": str(out),
        "namespace": namespace,
        "decision": {
            "status": "source-position-producer-smoke-emitted",
            "notes": [
                "no concrete rank/mask examples are emitted",
                "source facts are produced from semantic source-position predicates",
                "row facts remain a separate theorem obligation",
            ],
        },
        "source_groups": [
            {
                "key": group["key"],
                "source_indices": list(group["source_indices"]),
                "family_count": group["family_count"],
                "case_count": group["case_count"],
                "first_language": group["first_language"],
                "second_language": group["second_language"],
                "sample_families": [
                    family_summary(family)
                    for family in group["families"][:4]
                ],
            }
            for group in groups
        ],
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile-json", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--phase", default="6Z.6K.8Y")
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--source-key-surface", default="kind_impact")
    args = parser.parse_args()

    namespace = validate_module_namespace(args.namespace)
    profile = read_json(args.profile_json)
    rank_start = int(profile["rank_start"])
    rank_end = int(profile["rank_end"])
    if rank_end < rank_start:
        raise ValueError("profile rank_end is before rank_start")
    if args.jobs <= 0:
        raise ValueError("--jobs must be positive")

    families, _counts = collect_families_maybe_parallel(
        rank_start=rank_start,
        limit=rank_end - rank_start,
        jobs=args.jobs,
        source_key_surface=args.source_key_surface,
    )
    expected_count = int(profile.get("source_index_state_family_count", len(families)))
    if len(families) != expected_count:
        raise RuntimeError(
            f"collected {len(families)} families, profile expected {expected_count}"
        )
    groups = grouped_sources(families)
    expected_groups = int(profile.get("source_fact_obligations", len(groups)))
    if len(groups) != expected_groups:
        raise RuntimeError(
            f"collected {len(groups)} source groups, expected {expected_groups}"
        )

    args.out.parent.mkdir(parents=True, exist_ok=True)
    write_text(args.out, "\n".join(module_lines(namespace, groups, phase=args.phase)))
    payload = build_payload(
        profile=profile,
        groups=groups,
        out=args.out,
        namespace=namespace,
        phase=args.phase,
        collected_family_count=len(families),
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "phase": payload["phase"],
        "source_group_count": payload["source_group_count"],
        "represented_family_count": payload["represented_family_count"],
        "represented_case_count": payload["represented_case_count"],
        "lean_module": payload["lean_module"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
