#!/usr/bin/env python3
"""Emit the Phase 6Z.6K.8N descriptor-key membership smoke.

The generated Lean module contains no concrete rank/mask member list. It
packages selected source-index/state keys and proves that a key match routes to
the corresponding classifier branch.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_source_index_state_classifier_smoke import (  # noqa: E402
    ctor_name,
    family_name,
    read_json,
    select_families,
)
from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    TEMPLATE_TO_SOURCE_INDEX,
    collect_families,
    family_summary,
    write_json,
    write_text,
)
from generate_translation_two_source_evidence import (  # noqa: E402
    support_lines,
    validate_module_namespace,
)


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8j_source_index_state_classifier_profile_0_1000.json"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateDescriptorKeySmoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8n_source_index_state_descriptor_key_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateDescriptorKeySmoke"
)


def key_lines(index: int, family: Any) -> list[str]:
    name = family_name(index)
    template_ctor = TEMPLATE_TO_SOURCE_INDEX[family.template_id]
    first = family.members[0].symbolic
    return [
        f"/-- Descriptor-key smoke family `{family.key}`.",
        f"Observed bounded GoodDirection cases: {family.count}. -/",
        *support_lines(name, first.case.first_source, first.case.second_source),
        f"private def {name}_key : SourceIndexStateKey where",
        f"  firstIndex := {family.source_indices[0]}",
        f"  secondIndex := {family.source_indices[1]}",
        f"  support := {name}_support",
        f"  template := SourceIndexTemplate.{template_ctor}",
        "",
    ]


def classifier_lines(selected: list[Any]) -> list[str]:
    lines = ["inductive KeyClassifierApplies : Nat -> SignMask -> Prop"]
    for index, _family in enumerate(selected):
        name = family_name(index)
        ctor = ctor_name(index)
        lines.append(
            f"  | {ctor} {{r : Nat}} {{mask : SignMask}} "
            f"(h : {name}_key.Matches r mask) : KeyClassifierApplies r mask"
        )
    lines.extend([
        "",
        "def keyClassifierFamily : RowPropertyMembershipFamily where",
        "  Applies := KeyClassifierApplies",
        "  covered := by",
        "    intro r mask h",
        "    cases h with",
    ])
    for index, _family in enumerate(selected):
        name = family_name(index)
        ctor = ctor_name(index)
        lines.extend([
            f"    | {ctor} h =>",
            f"        exact {name}_key.covered_of_matches h",
        ])
    lines.extend([
        "",
        "theorem keyClassifierKillsOn : keyClassifierFamily.KillsOn :=",
        "  keyClassifierFamily.killsOn",
        "",
    ])
    for index, _family in enumerate(selected):
        name = family_name(index)
        ctor = ctor_name(index)
        lines.extend([
            f"theorem {name}_keyImpliesClassifier",
            "    {r : Nat} {mask : SignMask}",
            f"    (h : {name}_key.Matches r mask) :",
            "    KeyClassifierApplies r mask :=",
            f"  KeyClassifierApplies.{ctor} h",
            "",
            f"theorem {name}_keyGoodKilled",
            "    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}",
            f"    (h : {name}_key.Matches r mask) :",
            "    TranslationGoodCaseKilled \u27e8r, hlt\u27e9 mask :=",
            f"  keyClassifierKillsOn r hlt mask ({name}_keyImpliesClassifier h)",
            "",
        ])
    return lines


def module_lines(namespace: str, selected: list[Any], *, phase: str) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "",
        "/-!",
        "Generated descriptor-key membership smoke.",
        "",
        "This module intentionally contains no concrete rank/mask examples and no",
        "bounded replay proof. It proves that selected descriptor-key matches route",
        f"to classifier branches for Phase {phase}.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "",
        "set_option linter.unusedVariables false",
        "",
    ]
    for index, family in enumerate(selected):
        lines.extend(key_lines(index, family))
    lines.extend(classifier_lines(selected))
    lines.extend([
        "theorem sourceIndexStateDescriptorKeySmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Source-Index/State Descriptor-Key Smoke",
        "",
        "This generated smoke is not global coverage. It packages selected",
        "source-index/state keys and proves that key matches route to classifier",
        "branches without concrete rank/mask replay.",
        "",
        f"- Selected families: `{payload['selected_family_count']}`",
        f"- Rank window used for selection: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Lean module: `{payload['lean_module']}`",
        "",
        "## Selected Keys",
        "",
        "| Cases | Template | Source indices |",
        "| ---: | --- | --- |",
    ]
    for family in payload["selected_families"]:
        lines.append(
            f"| {family['cases']} | `{family['template_id']}` | "
            f"`{family['source_indices']}` |"
        )
    lines.append("")
    return "\n".join(lines)


def build_payload(
    *,
    profile: dict[str, Any],
    selected: list[Any],
    out: Path,
    namespace: str,
    family_count: int,
    phase: str,
    collected_family_count: int,
) -> dict[str, Any]:
    selected_cases = sum(family.count for family in selected)
    return {
        "schema_version": 1,
        "phase": phase,
        "trusted_as_proof": False,
        "rank_start": int(profile["rank_start"]),
        "rank_end": int(profile["rank_end"]),
        "requested_family_count": family_count,
        "collected_family_count": collected_family_count,
        "selected_family_count": len(selected),
        "selected_case_count": selected_cases,
        "lean_module": str(out),
        "namespace": namespace,
        "decision": {
            "status": "descriptor-key-smoke-emitted",
            "notes": [
                "no concrete rank/mask examples are emitted",
                "key predicates wrap semantic descriptor Applies predicates",
                "the module is a membership-routing smoke, not global coverage",
            ],
        },
        "selected_families": [family_summary(family) for family in selected],
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile-json", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--family-count", type=int, default=5)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--phase", default="6Z.6K.8N")
    args = parser.parse_args()

    namespace = validate_module_namespace(args.namespace)
    profile = read_json(args.profile_json)
    rank_start = int(profile["rank_start"])
    rank_end = int(profile["rank_end"])
    if rank_end < rank_start:
        raise ValueError("profile rank_end is before rank_start")
    families, _counts = collect_families(
        rank_start=rank_start,
        limit=rank_end - rank_start,
    )
    expected_count = int(profile.get("source_index_state_family_count", len(families)))
    if len(families) != expected_count:
        raise RuntimeError(
            f"collected {len(families)} families, profile expected {expected_count}"
        )
    selected = select_families(families, args.family_count)

    args.out.parent.mkdir(parents=True, exist_ok=True)
    write_text(args.out, "\n".join(module_lines(namespace, selected, phase=args.phase)))
    payload = build_payload(
        profile=profile,
        selected=selected,
        out=args.out,
        namespace=namespace,
        family_count=args.family_count,
        phase=args.phase,
        collected_family_count=len(families),
    )
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "phase": payload["phase"],
        "collected_family_count": payload["collected_family_count"],
        "selected_family_count": payload["selected_family_count"],
        "selected_case_count": payload["selected_case_count"],
        "lean_module": payload["lean_module"],
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
