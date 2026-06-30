#!/usr/bin/env python3
"""Emit the Phase 6Z.6K.8Q split source/row facts smoke."""

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
    family_summary,
    write_json,
    write_text,
)
from profile_source_index_state_fact_production import (  # noqa: E402
    collect_families_maybe_parallel,
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
    "SourceIndexStateSplitFactsSmoke.lean"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8q_source_index_state_split_facts_smoke.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateSplitFactsSmoke"
)


def key_lines(index: int, family: Any) -> list[str]:
    name = family_name(index)
    template_ctor = TEMPLATE_TO_SOURCE_INDEX[family.template_id]
    first = family.members[0].symbolic
    return [
        f"/-- Split-facts smoke family `{family.key}`.",
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
    lines = ["inductive SplitFactClassifierApplies : Nat -> SignMask -> Prop"]
    for index, _family in enumerate(selected):
        name = family_name(index)
        ctor = ctor_name(index)
        lines.append(
            f"  | {ctor} {{r : Nat}} {{mask : SignMask}} "
            f"(hsource : SourceIndexStateSourceFacts {name}_key r mask) "
            f"(hrows : SourceIndexStateRowFacts {name}_key r mask) : "
            "SplitFactClassifierApplies r mask"
        )
    lines.extend([
        "",
        "def splitFactClassifierFamily : RowPropertyMembershipFamily where",
        "  Applies := SplitFactClassifierApplies",
        "  covered := by",
        "    intro r mask h",
        "    cases h with",
    ])
    for index, _family in enumerate(selected):
        name = family_name(index)
        ctor = ctor_name(index)
        lines.extend([
            f"    | {ctor} hsource hrows =>",
            f"        exact {name}_key.covered_of_source_row hsource hrows",
        ])
    lines.extend([
        "",
        "theorem splitFactClassifierKillsOn : splitFactClassifierFamily.KillsOn :=",
        "  splitFactClassifierFamily.killsOn",
        "",
    ])
    for index, _family in enumerate(selected):
        name = family_name(index)
        ctor = ctor_name(index)
        lines.extend([
            f"theorem {name}_splitFactsImplyKeyFacts",
            "    {r : Nat} {mask : SignMask}",
            f"    (hsource : SourceIndexStateSourceFacts {name}_key r mask)",
            f"    (hrows : SourceIndexStateRowFacts {name}_key r mask) :",
            f"    SourceIndexStateKeyFacts {name}_key r mask :=",
            "  SourceIndexStateKeyFacts.of_source_row hsource hrows",
            "",
            f"theorem {name}_splitFactsImplyClassifier",
            "    {r : Nat} {mask : SignMask}",
            f"    (hsource : SourceIndexStateSourceFacts {name}_key r mask)",
            f"    (hrows : SourceIndexStateRowFacts {name}_key r mask) :",
            "    SplitFactClassifierApplies r mask :=",
            f"  SplitFactClassifierApplies.{ctor} hsource hrows",
            "",
            f"theorem {name}_splitFactsGoodKilled",
            "    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}",
            f"    (hsource : SourceIndexStateSourceFacts {name}_key r mask)",
            f"    (hrows : SourceIndexStateRowFacts {name}_key r mask) :",
            "    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=",
            f"  splitFactClassifierKillsOn r hlt mask ({name}_splitFactsImplyClassifier hsource hrows)",
            "",
        ])
    return lines


def module_lines(namespace: str, selected: list[Any], *, phase: str) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge",
        "",
        "/-!",
        "Generated split source/row facts smoke.",
        "",
        "This module intentionally contains no concrete rank/mask examples and no",
        "bounded replay proof. It proves that separately supplied source facts and",
        "row facts imply key facts and route to classifier branches.",
        f"Phase: {phase}.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "",
        "set_option linter.unusedVariables false",
        "",
    ]
    for index, family in enumerate(selected):
        lines.extend(key_lines(index, family))
    lines.extend(classifier_lines(selected))
    lines.extend([
        "theorem splitFactAllGoodCoverage_of_existsSourceRow",
        "    {lo hi : Nat}",
        "    (hcomplete :",
        "      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "        lo <= rank ->",
        "          rank < hi ->",
        "            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =",
        "                (matId : Mat3 Rat) ->",
        "              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->",
        "                exists key : SourceIndexStateKey,",
        "                  SourceIndexStateSourceFacts key rank mask /\\",
        "                    SourceIndexStateRowFacts key rank mask) :",
        "    AllTranslationGoodCoverageOnRange lo hi :=",
        "  RowPropertyParametricCoverageOnIdentityRange.to_allGoodCoverage",
        "    (RowPropertyParametricCoverageOnIdentityRange.of_exists_source_row hcomplete)",
        "",
        "theorem sourceIndexStateSplitFactsSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Source-Index/State Split-Facts Smoke",
        "",
        "This generated smoke is not global coverage. It packages selected",
        "source-index/state keys and proves that separately supplied source facts",
        "and row facts imply key facts without concrete rank/mask replay.",
        "It also exports a range-erasure theorem from an existential source/row",
        "fact bridge to `AllTranslationGoodCoverageOnRange`.",
        "",
        f"- Selected families: `{payload['selected_family_count']}`",
        f"- Rank window used for selection: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Lean module: `{payload['lean_module']}`",
        "- Exported adapter theorem: `splitFactAllGoodCoverage_of_existsSourceRow`",
        "",
    ]
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
            "status": "split-facts-smoke-emitted",
            "notes": [
                "no concrete rank/mask examples are emitted",
                "source facts and row facts are separate theorem premises",
                "exports an erasure theorem from existential source/row facts to AllTranslationGoodCoverageOnRange",
                "the module is a membership-obligation smoke, not global coverage",
            ],
        },
        "selected_families": [family_summary(family) for family in selected],
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile-json", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--family-count", type=int, default=74)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--phase", default="6Z.6K.8Q")
    parser.add_argument("--jobs", type=int, default=1)
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
