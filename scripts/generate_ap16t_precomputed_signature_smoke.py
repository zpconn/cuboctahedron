#!/usr/bin/env python3
"""Emit an AP.16T all-positive-mask precomputed fact smoke.

AP.16S proved that one positive mask in the singleton survivor signature can
produce theorem-valued source/row facts by rewriting through precomputed
sequence/vector/line equalities.  AP.16T scales that exact proof shape to every
positive mask of the same signature.

The generated module still leaves the cheap mask-soundness theorem explicit:
`goodDirectionAtRankBool = true -> generatedGoodMaskMember mask`.  It does not
emit bad-direction witnesses for the 56 masks that fail GoodDirection.
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

from generate_ap16i_positive_membership_smoke import lean_template  # noqa: E402
from generate_ap16l_signature_membership_smoke import (  # noqa: E402
    candidate_groups_for_signature,
    mask_member_expr,
    select_signature_for_group,
)
from generate_ap16s_precomputed_fact_smoke import (  # noqa: E402
    candidate_group_for_mask,
    select_signature_containing_rank_mask,
)
from generate_translation_row_family_smoke import (  # noqa: E402
    case_header_lines_for_family,
)
from generate_translation_row_relation_classifier import (  # noqa: E402
    ClassifiedCase,
    case_shape_lines,
    collect_classified_cases,
    lean_case_name,
)


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PositiveSurvivorPrecomputedSignatureSmoke.lean"
)
DEFAULT_RANK = 100_805
DEFAULT_MASK = 4

ROWS_PREDICATE = {
    "axis_a_only": "AxisAOnlyRows",
    "axis_b_only": "AxisBOnlyRows",
    "eq_eq_neg_var_first": "EqEqNegVarFirstRows",
    "eq_eq_neg_var_second": "EqEqNegVarSecondRows",
    "eq_eq_pos_var_first": "EqEqPosVarFirstRows",
    "eq_eq_pos_var_second": "EqEqPosVarSecondRows",
    "exact_two_source_valid": "ExactTwoSourceValidRows",
    "opp_1m_var_first": "OppOneMinusVarFirstRows",
    "opp_1m_var_second": "OppOneMinusVarSecondRows",
    "opp_m1_var_first": "OppMinusOneVarFirstRows",
    "opp_m1_var_second": "OppMinusOneVarSecondRows",
}


def candidate_ctor(index: int) -> str:
    return f"c{index:03d}"


def case_name_for_mask(index: int) -> str:
    return lean_case_name(index)


def classified_cases_for_signature(rank: int, good_masks: list[int]) -> dict[int, ClassifiedCase]:
    classified, _by_rank, stats = collect_classified_cases(rank, 1)
    by_mask = {cc.case.mask: cc for cc in classified}
    missing = [mask for mask in good_masks if mask not in by_mask]
    if missing:
        raise SystemExit(
            f"rank {rank} missing classified GoodDirection masks {missing}; stats={stats}"
        )
    return {
        mask: ClassifiedCase(index, by_mask[mask].case, by_mask[mask].template_id)
        for index, mask in enumerate(good_masks)
    }


def emit_candidate_defs(groups: list[dict[str, Any]]) -> tuple[str, dict[str, str]]:
    ctors = "\n  | ".join(candidate_ctor(i) for i in range(len(groups)))
    key_to_ctor = {group["key"]: candidate_ctor(i) for i, group in enumerate(groups)}
    spec_cases = []
    key_cases = []
    row_cases = []
    for i, group in enumerate(groups):
        ctor = candidate_ctor(i)
        template_id = group["template_ids"][0]
        template_ctor = lean_template(template_id)
        first, second = group["source_positions"]
        spec_cases.append(
            f"""  | .{ctor} => {{
      first := {first["lean"]}
      second := {second["lean"]} }}"""
        )
        key_cases.append(
            f"""  | .{ctor} => {{
      firstIndex := (generatedSpec .{ctor}).first.index
      secondIndex := (generatedSpec .{ctor}).second.index
      support := (generatedSpec .{ctor}).support
      template := SourceIndexTemplate.{template_ctor} }}"""
        )
        row_cases.append(
            f"""  | .{ctor} => {{
      Applies := fun key rank mask =>
        key = generatedKey .{ctor} /\\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }}"""
        )
    text = f"""private inductive GeneratedCandidate
  | {ctors}
deriving DecidableEq, Repr

private def generatedSpec : GeneratedCandidate -> SourcePairPositionSpec
{chr(10).join(spec_cases)}

private def generatedKey : GeneratedCandidate -> SourceIndexStateKey
{chr(10).join(key_cases)}

private def generatedRowProducer : GeneratedCandidate -> SourceIndexStateRowProducer
{chr(10).join(row_cases)}
"""
    return text, key_to_ctor


def emit_candidate_of_mask(signature: dict[str, Any], key_to_ctor: dict[str, str]) -> str:
    cases = []
    for mask in signature["good_masks"]:
        keys = signature["mask_candidates"].get(str(mask), [])
        if not keys:
            raise SystemExit(f"signature has no candidate for mask {mask}")
        cases.append(f"  | {mask} => .{key_to_ctor[keys[0]]}")
    default_ctor = key_to_ctor[signature["mask_candidates"][str(signature["good_masks"][0])][0]]
    return f"""private def generatedCandidateOfNat : Nat -> GeneratedCandidate
{chr(10).join(cases)}
  | _ => .{default_ctor}

private def generatedCandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  generatedCandidateOfNat mask.val
"""


def emit_case_fact_lines(
    *,
    cc: ClassifiedCase,
    group: dict[str, Any],
    ctor: str,
) -> list[str]:
    case = cc.case
    name = case_name_for_mask(cc.index)
    template_id = group["template_ids"][0]
    if template_id != cc.template_id:
        raise SystemExit(
            f"mask {case.mask}: candidate template {template_id} does not match "
            f"classified template {cc.template_id}"
        )
    rows_predicate = ROWS_PREDICATE[template_id]
    return [
        f"/-- AP.16T positive mask `{case.mask}`. -/",
        *case_header_lines_for_family(cc, f"generated_{ctor}"),
        *case_shape_lines(cc),
        f"private theorem {name}_sourcePredicate :",
        f"    (generatedSpec .{ctor}).Predicate {name}_rank.val {name}_mask := by",
        "  intro hlt",
        f"  have hrank : (⟨{name}_rank.val, hlt⟩ : Fin numPairWords) = {name}_rank := by",
        "    ext",
        "    rfl",
        "  have hseq :",
        f"      translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask =",
        f"        {name}_seq := by",
        f"    simpa [hrank] using {name}_seqAtRank",
        f"  have hshape := {name}_shape hlt",
        "  have hfirst : (generatedSpec ." + ctor + ").first.Holds",
        f"      (translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask) := by",
        f"    simp [generatedSpec, SourcePositionSpec.Holds, hseq, {name}_seq, impactFace]",
        "    decide",
        "  have hsecond : (generatedSpec ." + ctor + ").second.Holds",
        f"      (translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask) := by",
        "    simp [generatedSpec, SourcePositionSpec.Holds]",
        "  have hsourceChecks :",
        f"      SourceChecks (generatedSpec .{ctor}).support {name}_rank.val hlt {name}_mask := by",
        f"    change SourceChecks {name}_support {name}_rank.val hlt {name}_mask",
        "    exact hshape.1",
        "  exact ⟨hfirst, hsecond, hsourceChecks⟩",
        "",
        f"private theorem {name}_rowsForKey :",
        f"    (generatedKey .{ctor}).template.Rows (generatedKey .{ctor}).support",
        f"      {name}_rank.val {name}_mask := by",
        f"  change {rows_predicate} (generatedKey .{ctor}).support {name}_rank.val {name}_mask",
        f"  rw [show (generatedKey .{ctor}).support = {name}_support by rfl]",
        "  intro hlt",
        f"  exact ({name}_shape hlt).2",
        "",
        f"private theorem {name}_rowProducerApplies :",
        f"    (generatedRowProducer .{ctor}).Applies (generatedKey .{ctor})",
        f"      {name}_rank.val {name}_mask := by",
        f"  exact ⟨rfl, {name}_rowsForKey⟩",
        "",
        f"private theorem {name}_signatureFacts :",
        f"    generatedSignatureFacts {name}_mask := by",
        f"  simpa [generatedSignatureFacts, generatedCandidateOfMask,",
        f"    generatedCandidateOfNat, {name}_rank, {name}_mask] using",
        f"      And.intro {name}_sourcePredicate {name}_rowProducerApplies",
        "",
    ]


def emit_all_facts_theorem(good_masks: list[int]) -> list[str]:
    def handle_case(index: int, indent: str) -> list[str]:
        case_name = case_name_for_mask(index)
        return [
            f"{indent}have hmask : mask = {case_name}_mask := by",
            f"{indent}  ext",
            f"{indent}  simpa [{case_name}_mask] using h",
            f"{indent}rw [hmask]",
            f"{indent}exact {case_name}_signatureFacts",
        ]

    def split_cases(index: int, indent: str) -> list[str]:
        if index == len(good_masks) - 1:
            return handle_case(index, indent)
        return [
            f"{indent}rcases h with h | h",
            f"{indent}·",
            *handle_case(index, indent + "  "),
            f"{indent}·",
            *split_cases(index + 1, indent + "  "),
        ]

    lines = [
        "theorem generatedAllPositiveMaskFacts",
        "    {mask : SignMask}",
        "    (h : generatedGoodMaskMember mask) :",
        "    generatedSignatureFacts mask := by",
    ]
    lines.extend(split_cases(0, "  "))
    lines.append("")
    return lines


def emit_module(
    *,
    profile: dict[str, Any],
    signature: dict[str, Any],
    groups: list[dict[str, Any]],
    cases: dict[int, ClassifiedCase],
    output: Path,
) -> None:
    anchor = int(signature["ranks"][0])
    hi = anchor + 1
    good_masks = [int(mask) for mask in signature["good_masks"]]
    candidate_defs, key_to_ctor = emit_candidate_defs(groups)
    candidate_of_mask = emit_candidate_of_mask(signature, key_to_ctor)
    mask_to_group = {
        int(mask): candidate_group_for_mask(profile, signature, int(mask))
        for mask in good_masks
    }
    mask_to_ctor = {
        int(mask): key_to_ctor[signature["mask_candidates"][str(mask)][0]]
        for mask in good_masks
    }
    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "",
        "/-!",
        "Generated AP.16T precomputed positive-survivor signature smoke.",
        "",
        "This diagnostic module extends AP.16S from one positive mask to every",
        "positive mask in the singleton survivor signature.  It still leaves",
        "the Boolean GoodDirection-to-positive-mask theorem as the only explicit",
        "premise and emits no facts for masks that fail GoodDirection.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorPrecomputedSignatureSmoke",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "",
        candidate_defs,
        candidate_of_mask,
        f"private def generatedGoodMaskMember (mask : SignMask) : Prop :=",
        f"  {mask_member_expr(good_masks)}",
        "",
        "private def generatedSignatureFacts (mask : SignMask) : Prop :=",
        f"  (generatedSpec (generatedCandidateOfMask mask)).Predicate {anchor} mask /\\",
        "    (generatedRowProducer (generatedCandidateOfMask mask)).Applies",
        f"      (generatedKey (generatedCandidateOfMask mask)) {anchor} mask",
        "",
    ]
    for mask in good_masks:
        lines.extend(
            emit_case_fact_lines(
                cc=cases[mask],
                group=mask_to_group[mask],
                ctor=mask_to_ctor[mask],
            )
        )
    lines.extend(emit_all_facts_theorem(good_masks))
    lines.extend([
        "private def generatedSignatureClassifier",
        "    (hmask :",
        f"      forall {{mask : SignMask}} (hlt : {anchor} < numPairWords),",
        f"        goodDirectionAtRankBool ⟨{anchor}, hlt⟩ mask = true ->",
        "          generatedGoodMaskMember mask) :",
        f"    PositiveSurvivorBoolSignatureClassifierOnRange {anchor} {hi} :=",
        "  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit",
        f"    {anchor} GeneratedCandidate generatedCandidateOfMask",
        "    generatedGoodMaskMember generatedSignatureFacts",
        "    generatedSpec generatedRowProducer generatedKey",
        "    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)",
        "    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)",
        "    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)",
        "    hmask (by intro mask h; exact generatedAllPositiveMaskFacts h)",
        "    (by intro mask h; exact h.1)",
        "    (by intro mask h; exact h.2)",
        "",
        "/--",
        "AP.16T singleton-signature coverage theorem.",
        "",
        f"Positive-survivor signature: `{signature['key']}`",
        f"Anchor rank: `{anchor}`",
        f"Positive masks: `{', '.join(str(mask) for mask in good_masks)}`",
        f"Candidate groups: `{len(groups)}`",
        "-/",
        "theorem generatedSingletonSignatureAllGoodCoverage",
        "    (hmask :",
        f"      forall {{mask : SignMask}} (hlt : {anchor} < numPairWords),",
        f"        goodDirectionAtRankBool ⟨{anchor}, hlt⟩ mask = true ->",
        "          generatedGoodMaskMember mask) :",
        f"    AllTranslationGoodCoverageOnRange {anchor} {hi} :=",
        "  (generatedSignatureClassifier hmask).to_allGoodCoverage",
        "",
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorPrecomputedSignatureSmoke",
        "",
    ])
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(profile, args.rank, args.mask)
    if int(signature["ranks"][0]) != args.rank:
        raise SystemExit(
            "AP.16T currently targets the anchor rank of the singleton signature; "
            f"got rank {args.rank}, anchor {signature['ranks'][0]}"
        )
    groups = candidate_groups_for_signature(profile, signature)
    good_masks = [int(mask) for mask in signature["good_masks"]]
    cases = classified_cases_for_signature(args.rank, good_masks)
    emit_module(
        profile=profile,
        signature=signature,
        groups=groups,
        cases=cases,
        output=args.output,
    )
    print(
        f"wrote {args.output} for rank {args.rank}, "
        f"{len(good_masks)} positive masks, {len(groups)} candidate groups"
    )


if __name__ == "__main__":
    main()
