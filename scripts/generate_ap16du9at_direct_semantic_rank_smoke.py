#!/usr/bin/env python3
"""Emit a diagnostic direct-local-key semantic row-membership smoke for one rank.

This is the DU.9AT escape hatch for production-like ranks whose source-index
families are not present in the bounded 125-key selector catalog.  Instead of
round-tripping through `ClassifierKey`, the generated leaf defines local
`SourceIndexStateKey` records, proves public source/row facts for each emitted
GoodDirection survivor, and erases them through
`SemanticRowMembershipLanguageOnRange`.

The compact-Walsh cover for the rank is still Lean-checked elsewhere; this
leaf imports the existing rank batch theorem

  GoodDirectionAtRank -> generatedGoodMaskMember

and proves that each generated good mask selects one local semantic row case.

The guarded DU.9AT build hit the 8 GiB focused-build cap on rank 6000745, so
this script is retained only as diagnostic tooling.  Its default output is kept
outside `Cuboctahedron/` to avoid making ordinary Lake builds pick up the heavy
generated module accidentally.
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

from generate_ap16du9k_selector_catalog_slice import applies_lines  # noqa: E402
from generate_source_index_state_bounded_coverage import RankMask, collect_window  # noqa: E402
from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    TEMPLATE_TO_SOURCE_INDEX,
    write_json,
    write_text,
)
from generate_symbolic_row_family_smoke import lean_case_name  # noqa: E402
from generate_translation_two_source_evidence import support_lines, validate_module_namespace  # noqa: E402


DEFAULT_RANK = 6000745
DEFAULT_OUT = Path(
    "scripts/generated/diagnostics/phase6z6k8ap16du9at/"
    "RowPropertySemanticRank6000745Smoke.lean"
)
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du9at_rank6000745_direct_semantic.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "RowPropertySemanticRank6000745Smoke"
)
TEMPLATE_NONAXIS = {
    "eqEqPosVarFirst",
    "eqEqPosVarSecond",
    "eqEqNegVarFirst",
    "eqEqNegVarSecond",
    "oppOneMinusVarFirst",
    "oppOneMinusVarSecond",
    "oppMinusOneVarFirst",
    "oppMinusOneVarSecond",
}


def family_name(index: int) -> str:
    return f"fam_{index:03d}"


def ctor_name(index: int) -> str:
    return f"m{index:02d}"


def local_key_lines(index: int, family: Any) -> list[str]:
    name = family_name(index)
    template_ctor = TEMPLATE_TO_SOURCE_INDEX[family.template_id]
    first = family.members[0].symbolic
    return [
        f"/-- Local semantic family `{family.key}`.",
        f"Observed rank-local GoodDirection cases: {family.count}. -/",
        *support_lines(name, first.case.first_source, first.case.second_source),
        f"private def {name}_desc : SourceIndexStateFamilyDescriptor where",
        f"  firstIndex := {family.source_indices[0]}",
        f"  secondIndex := {family.source_indices[1]}",
        f"  support := {name}_support",
        f"  template := SourceIndexTemplate.{template_ctor}",
        "",
        f"private def {name}_key : SourceIndexStateKey where",
        f"  firstIndex := {family.source_indices[0]}",
        f"  secondIndex := {family.source_indices[1]}",
        f"  support := {name}_support",
        f"  template := SourceIndexTemplate.{template_ctor}",
        "",
    ]


def local_source_row_lines(case_name: str, family_index: int) -> list[str]:
    fam = family_name(family_index)
    return [
        f"private theorem {case_name}_sourceFacts :",
        f"    SourceIndexStateSourceFacts {fam}_key",
        f"      {case_name}_rank.val {case_name}_mask := by",
        "  exact",
        "    { firstSource := fun hlt => by",
        f"        have hs := {case_name}_sourceMatches hlt",
        f"        simpa [{fam}_key, {fam}_desc, {fam}_support] using hs.1",
        "      secondSource := fun hlt => by",
        f"        have hs := {case_name}_sourceMatches hlt",
        f"        simpa [{fam}_key, {fam}_desc, {fam}_support] using hs.2.1",
        "      sourceChecks := fun hlt => by",
        f"        have hs := {case_name}_sourceMatches hlt",
        f"        simpa [{fam}_key, {fam}_desc, {fam}_support] using hs.2.2",
        "    }",
        "",
        f"private theorem {case_name}_rowFacts :",
        f"    SourceIndexStateRowFacts {fam}_key",
        f"      {case_name}_rank.val {case_name}_mask := by",
        "  exact SourceIndexStateRowFacts.of_rows (by",
        f"    simpa [{fam}_key, SourceIndexTemplate.Rows, {fam}_support,",
        f"      {case_name}_support] using {case_name}_rows)",
        "",
        f"private theorem {case_name}_semanticFacts :",
        "    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,",
        f"      SemanticFactsLanguage key firstRole secondRole {case_name}_rank.val",
        f"        {case_name}_mask := by",
        "  rcases semanticFacts_of_source_row_nonaxis",
        f"      {case_name}_sourceFacts {case_name}_rowFacts",
        "      (by decide) (by decide) (by decide) with",
        "    ⟨firstRole, secondRole, hsemantic⟩",
        f"  exact ⟨{fam}_key, firstRole, secondRole, hsemantic⟩",
        "",
    ]


def positive_case_lines(cases: list[RankMask]) -> list[str]:
    lines = [
        "/-- Positive GoodDirection survivor masks represented in this rank leaf. -/",
        "inductive PositiveCase : SignMask -> Prop",
    ]
    for index, key in enumerate(cases):
        lines.append(
            f"  | {ctor_name(index)} : PositiveCase "
            f"(⟨{key.mask}, by decide⟩ : SignMask)"
        )
    lines.extend([
        "",
        "private theorem signMask_eq_of_val_eq",
        "    {mask : SignMask} {n : Nat} (hn : n < 64)",
        "    (h : mask.val = n) :",
        "    mask = (⟨n, hn⟩ : SignMask) :=",
        "  Fin.ext h",
        "",
        "theorem positiveCase_of_generatedGoodMaskMember",
        "    {mask : SignMask}",
        "    (hmem : RankGoodMaskMember mask) :",
        "    PositiveCase mask := by",
        "  rcases hmem with " + " | ".join(["h"] * len(cases)),
    ])
    for index, key in enumerate(cases):
        bullet = "·" if index == 0 else "  ·"
        lines.extend([
            f"{bullet} have hmask : mask = (⟨{key.mask}, by decide⟩ : SignMask) :=",
            "      signMask_eq_of_val_eq (by decide) h",
            f"    simpa [hmask] using PositiveCase.{ctor_name(index)}",
        ])
    lines.extend([
        "",
        "theorem positiveCase_of_GoodDirection",
        "    {mask : SignMask} (hlt : rank < numPairWords)",
        "    (hgood : GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask) :",
        "    PositiveCase mask :=",
        "  positiveCase_of_generatedGoodMaskMember",
        "    (CompactBatch.rank6000745_goodMaskMember_of_GoodDirection hlt hgood)",
        "",
    ])
    return lines


def semantic_positive_lines(cases: list[RankMask], data: Any) -> list[str]:
    lines = [
        "private theorem semanticFacts_of_positiveCase",
        "    {mask : SignMask} (hcase : PositiveCase mask) :",
        "    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,",
        "      SemanticFactsLanguage key firstRole secondRole rank mask := by",
        "  cases hcase with",
    ]
    for index, key in enumerate(cases):
        family_index, member = data.covered[key]
        case_name = lean_case_name(member.symbolic.index)
        lines.extend([
            f"  | {ctor_name(index)} =>",
            f"      simpa [rank, {case_name}_rank, {case_name}_mask] using",
            f"        {case_name}_semanticFacts",
        ])
    return lines + [""]


def semantic_language_lines(rank: int) -> list[str]:
    return [
        "def semanticLanguage :",
        f"    SemanticRowMembershipLanguageOnRange {rank} ({rank} + 1) where",
        "  Language := SemanticFactsLanguage",
        "  sourceFacts := by",
        "    intro key firstRole secondRole rank mask h",
        "    exact h.1",
        "  compatible := by",
        "    intro key firstRole secondRole rank mask h",
        "    exact h.2.1",
        "  rowSemantic := by",
        "    intro key firstRole secondRole rank mask h",
        "    exact h.2.2",
        "  complete := by",
        "    intro r mask hlt hlo hhi _hM hgood",
        f"    have hrank : r = {rank} := by omega",
        "    subst r",
        "    exact semanticFacts_of_positiveCase",
        "      (positiveCase_of_GoodDirection hlt hgood)",
        "",
        "theorem allGoodCoverage :",
        f"    AllTranslationGoodCoverageOnRange {rank} ({rank} + 1) :=",
        "  semanticLanguage.to_allGoodCoverage",
        "",
    ]


def module_lines(namespace: str, rank: int, data: Any, cases: list[RankMask]) -> list[str]:
    template_counts: dict[str, int] = {}
    for family in data.families:
        template = TEMPLATE_TO_SOURCE_INDEX[family.template_id]
        if template not in TEMPLATE_NONAXIS:
            raise SystemExit(f"rank {rank} has unsupported template for this smoke: {template}")
        template_counts[template] = template_counts.get(template, 0) + 1

    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge",
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke",
        "",
        "/-!",
        "Generated direct-local-key semantic row-membership rank smoke.",
        "",
        "This module avoids the bounded global selector/classifier catalog.  It",
        "defines local `SourceIndexStateKey`s, proves public source/row facts,",
        "uses the existing compact-Walsh GoodDirection cover for this rank, and",
        "erases the resulting semantic language to all-Good coverage.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticLanguage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "",
        "namespace CompactBatch := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke",
        "namespace CompactCover := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000745Smoke",
        "",
        f"abbrev rank : Nat := {rank}",
        "",
        "abbrev RankGoodMaskMember (mask : SignMask) : Prop :=",
        "  CompactCover.generatedGoodMaskMember mask",
        "",
    ]
    for family_index, family in enumerate(data.families):
        lines.extend(local_key_lines(family_index, family))
    for key in cases:
        family_index, member = data.covered[key]
        lines.extend(applies_lines(family_index, member))
        lines.extend(local_source_row_lines(lean_case_name(member.symbolic.index), family_index))
    lines.extend(positive_case_lines(cases))
    lines.extend(semantic_positive_lines(cases, data))
    lines.extend(semantic_language_lines(rank))
    lines.extend([
        "theorem directSemanticRankSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return lines


def markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Phase {payload['phase']} Direct Semantic Rank Smoke",
        "",
        "This report is not proof evidence.  The Lean module listed below is the",
        "proof-producing artifact.",
        "",
        f"- Rank: `{payload['rank']}`",
        f"- GoodDirection survivors: `{payload['good_direction_survivors']}`",
        f"- Local families: `{payload['local_family_count']}`",
        f"- Lean module: `{payload['lean_module']}`",
        f"- Namespace: `{payload['namespace']}`",
        "",
        "## Template Counts",
        "",
        "| Template | Count |",
        "| --- | ---: |",
    ]
    for template, count in payload["template_counts"].items():
        lines.append(f"| `{template}` | {count} |")
    lines.extend([
        "",
        "Decision: this smoke deliberately bypasses the bounded global",
        "`ClassifierKey` catalog by using local `SourceIndexStateKey` records.",
        "That is the production-shaped route for ranks whose source-index families",
        "are absent from the `[0,5000)` classifier catalog.",
        "",
    ])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--phase", default="6Z.6K.8AP.16DU.9AT")
    args = parser.parse_args()

    namespace = validate_module_namespace(args.namespace)
    data = collect_window(rank_start=args.rank, limit=1)
    cases = sorted(data.covered, key=lambda item: item.mask)
    if not cases:
        raise SystemExit(f"rank {args.rank} has no GoodDirection survivors")
    template_counts: dict[str, int] = {}
    for family in data.families:
        template = TEMPLATE_TO_SOURCE_INDEX[family.template_id]
        template_counts[template] = template_counts.get(template, 0) + 1

    args.out.parent.mkdir(parents=True, exist_ok=True)
    write_text(args.out, "\n".join(module_lines(namespace, args.rank, data, cases)))
    payload = {
        "schema_version": 1,
        "phase": args.phase,
        "trusted_as_proof": False,
        "rank": args.rank,
        "good_direction_survivors": len(cases),
        "local_family_count": len(data.families),
        "template_counts": dict(sorted(template_counts.items())),
        "lean_module": str(args.out),
        "namespace": namespace,
        "decision": {
            "status": "direct-local-key-semantic-rank-smoke-emitted",
            "notes": [
                "local SourceIndexStateKey records avoid the bounded global classifier catalog",
                "the generated Lean module is proof-producing",
                "Python counts only guide emission and are not proof evidence",
            ],
        },
    }
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    print(json.dumps({
        "status": payload["decision"]["status"],
        "rank": args.rank,
        "good_direction_survivors": len(cases),
        "local_family_count": len(data.families),
        "lean_module": str(args.out),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
