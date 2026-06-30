#!/usr/bin/env python3
"""Emit an AP.16T all-positive-mask precomputed fact smoke.

AP.16S proved that one positive mask in the singleton survivor signature can
produce theorem-valued source/row facts by rewriting through precomputed
sequence/vector/line equalities.  AP.16T scales that exact proof shape to every
positive mask of the same signature.

The generated module still leaves mask-soundness explicit.  It exports both
the older Boolean-premised surface,
`goodDirectionAtRankBool = true -> generatedGoodMaskMember mask`, and the
semantic AP.16AY surface,
`GoodDirectionAtRank -> generatedGoodMaskMember mask`.  It does not emit
bad-direction witnesses for the 56 masks that fail GoodDirection.
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
from profile_ap16bd_survivor_bitset_cube_cover import (  # noqa: E402
    bitset_for_masks,
    greedy_cover,
)
from generate_translation_row_family_smoke import (  # noqa: E402
    case_header_lines_for_family,
)
from generate_translation_row_relation_classifier import (  # noqa: E402
    BadDirectionCase,
    ClassifiedCase,
    bad_direction_lines,
    case_shape_lines,
    collect_classified_cases,
    lean_case_name,
    lean_bad_name,
)


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PositiveSurvivorPrecomputedSignatureSmoke.lean"
)
DEFAULT_NAMESPACE_PREFIX = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
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


def bad_cube_ctor(index: int) -> str:
    return f"b{index:03d}"


def classified_cases_and_bad_masks_for_signature(
    rank: int,
    good_masks: list[int],
) -> tuple[dict[int, ClassifiedCase], dict[int, BadDirectionCase], dict[str, Any]]:
    classified, _by_rank, stats = collect_classified_cases(rank, 1)
    by_mask = {cc.case.mask: cc for cc in classified}
    missing = [mask for mask in good_masks if mask not in by_mask]
    if missing:
        raise SystemExit(
            f"rank {rank} missing classified GoodDirection masks {missing}; stats={stats}"
        )
    rank_cases = _by_rank[rank]
    if rank_cases.bad_masks is None:
        raise SystemExit(f"rank {rank} did not produce bad-direction witnesses")
    return ({
        mask: ClassifiedCase(index, by_mask[mask].case, by_mask[mask].template_id)
        for index, mask in enumerate(good_masks)
    }, dict(rank_cases.bad_masks), stats)


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
        f"    simp [generatedSpec, SourcePositionSpec.Holds, hseq, {name}_seq, impactFace] <;> decide",
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


def emit_good_mask_member_of_good_direction(
    *,
    anchor: int,
    good_masks: list[int],
    bad_masks: dict[int, BadDirectionCase],
) -> list[str]:
    good_set = set(good_masks)
    missing_bad = [mask for mask in range(64) if mask not in good_set and mask not in bad_masks]
    if missing_bad:
        raise SystemExit(f"missing bad-direction witnesses for masks {missing_bad}")
    lines = [
        "/--",
        "AP.16BA closed singleton membership theorem.",
        "",
        "For this singleton survivor signature, every semantic GoodDirection mask",
        "is one of the eight positive masks.  Positive branches reduce by the",
        "`generatedGoodMaskMember` definition; every other mask contradicts",
        "GoodDirection via a generated nonpositive denominator witness.",
        "-/",
        "theorem generatedGoodMaskMember_of_GoodDirection",
        f"    {{mask : SignMask}} (hlt : {anchor} < numPairWords)",
        f"    (hgood : GoodDirectionAtRank (⟨{anchor}, hlt⟩ : Fin numPairWords) mask) :",
        "    generatedGoodMaskMember mask := by",
        "  fin_cases mask",
    ]
    for mask in range(64):
        if mask in good_set:
            lines.extend([
                "  · simp [generatedGoodMaskMember]",
            ])
        else:
            name = lean_bad_name(anchor, mask)
            lines.extend([
                f"  · exact False.elim (({name}_notGood hlt) hgood)",
            ])
    lines.append("")
    return lines


def emit_bad_cube_cover(
    *,
    anchor: int,
    good_masks: list[int],
    bad_masks: dict[int, BadDirectionCase],
) -> list[str]:
    good_set = set(good_masks)
    cover = greedy_cover(bitset_for_masks(good_masks))
    cube_masks: list[tuple[str, str, list[int]]] = []
    for index, cube in enumerate(cover):
        members = cube[2] & ~bitset_for_masks(good_masks)
        masks = [mask for mask in range(64) if members & (1 << mask)]
        if not masks:
            raise SystemExit(f"cube {cube[4]} covers no bad masks")
        if any(mask in good_set for mask in masks):
            raise SystemExit(f"cube {cube[4]} contains a good mask")
        if any(mask not in bad_masks for mask in masks):
            raise SystemExit(f"cube {cube[4]} contains mask without bad witness")
        cube_masks.append((bad_cube_ctor(index), cube[4], masks))

    covered = sorted({mask for _ctor, _label, masks in cube_masks for mask in masks})
    expected = sorted(mask for mask in range(64) if mask not in good_set)
    if covered != expected:
        raise SystemExit(f"cube cover mismatch: {covered} != {expected}")

    ctors = "\n  | ".join(ctor for ctor, _label, _masks in cube_masks)
    lines = [
        "private inductive GeneratedBadCube",
        f"  | {ctors}",
        "deriving DecidableEq, Repr",
        "",
        "private def generatedBadCubeMember : GeneratedBadCube -> SignMask -> Prop",
    ]
    for ctor, label, masks in cube_masks:
        lines.extend([
            f"  | .{ctor}, mask =>",
            f"      {mask_member_expr(masks)} -- cube {label}",
        ])
    lines.append("")

    def prove_not_good(mask: int, indent: str, hyp: str = "h") -> list[str]:
        bad_name = lean_bad_name(anchor, mask)
        return [
            f"{indent}have hmask : mask = {bad_name}_mask := by",
            f"{indent}  ext",
            f"{indent}  simpa [{bad_name}_mask] using {hyp}",
            f"{indent}rw [hmask]",
            f"{indent}exact {bad_name}_notGood hlt",
        ]

    def split_member_cases(masks: list[int], indent: str, hyp: str = "hmember") -> list[str]:
        if len(masks) == 1:
            return prove_not_good(masks[0], indent, hyp)
        tail_hyp = f"{hyp}_tail"
        return [
            f"{indent}rcases {hyp} with h | {tail_hyp}",
            f"{indent}·",
            *prove_not_good(masks[0], indent + "  "),
            f"{indent}·",
            *split_member_cases(masks[1:], indent + "  ", tail_hyp),
        ]

    lines.extend([
        "private theorem generatedBadCube_notGood",
        "    {cube : GeneratedBadCube} {mask : SignMask}",
        f"    (hlt : {anchor} < numPairWords)",
        "    (hmember : generatedBadCubeMember cube mask) :",
        f"    ¬ GoodDirectionAtRank (⟨{anchor}, hlt⟩ : Fin numPairWords) mask := by",
        "  cases cube",
    ])
    for ctor, _label, masks in cube_masks:
        lines.extend([
            f"  · simp [generatedBadCubeMember] at hmember",
            *split_member_cases(masks, "    "),
        ])
    lines.append("")

    lines.extend([
        "private theorem generatedBadCube_complete",
        "    {mask : SignMask}",
        "    (hnot : ¬ generatedGoodMaskMember mask) :",
        "    exists cube : GeneratedBadCube, generatedBadCubeMember cube mask := by",
        "  fin_cases mask",
    ])
    mask_to_cube = {
        mask: ctor
        for ctor, _label, masks in cube_masks
        for mask in masks
    }
    for mask in range(64):
        if mask in good_set:
            lines.extend([
                "  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))",
            ])
        else:
            ctor = mask_to_cube[mask]
            lines.extend([
                f"  · exact ⟨.{ctor}, by simp [generatedBadCubeMember]⟩",
            ])
    lines.append("")

    lines.extend([
        "private def generatedBadMaskCover :",
        f"    BadMaskCover {anchor} generatedGoodMaskMember where",
        "  BadFamily := GeneratedBadCube",
        "  Member := generatedBadCubeMember",
        "  notGood := by",
        "    intro family mask hlt hmember",
        "    exact generatedBadCube_notGood hlt hmember",
        "  complete := by",
        "    intro mask hnot",
        "    exact generatedBadCube_complete hnot",
        "",
        "/-- AP.16BF membership theorem via the bad-mask cover interface. -/",
        "theorem generatedGoodMaskMember_of_GoodDirection_viaCover",
        f"    {{mask : SignMask}} (hlt : {anchor} < numPairWords)",
        f"    (hgood : GoodDirectionAtRank (⟨{anchor}, hlt⟩ : Fin numPairWords) mask) :",
        "    generatedGoodMaskMember mask :=",
        "  generatedBadMaskCover.goodMaskMember_of_goodDirection hlt hgood",
        "",
    ])
    return lines


def emit_module(
    *,
    profile: dict[str, Any],
    signature: dict[str, Any],
    groups: list[dict[str, Any]],
    cases: dict[int, ClassifiedCase],
    bad_masks: dict[int, BadDirectionCase],
    output: Path,
    module_namespace: str,
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
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.BadMaskCover",
        "",
        "/-!",
        "Generated AP.16T precomputed positive-survivor signature smoke.",
        "",
        "This diagnostic module extends AP.16S from one positive mask to every",
        "positive mask in the singleton survivor signature.  It leaves the",
        "GoodDirection-to-positive-mask theorem explicit and emits no facts for",
        "masks that fail GoodDirection.",
        "-/",
        "",
        f"namespace {module_namespace}",
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
        "set_option linter.unnecessarySeqFocus false",
        "set_option linter.unreachableTactic false",
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
    for mask in range(64):
        bad = bad_masks.get(mask)
        if bad is not None:
            lines.extend(bad_direction_lines(bad))
    lines.extend(emit_all_facts_theorem(good_masks))
    lines.extend(
        emit_good_mask_member_of_good_direction(
            anchor=anchor,
            good_masks=good_masks,
            bad_masks=bad_masks,
        )
    )
    lines.extend(
        emit_bad_cube_cover(
            anchor=anchor,
            good_masks=good_masks,
            bad_masks=bad_masks,
        )
    )
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
        "private def generatedSemanticSignatureClassifier",
        "    (hmask :",
        f"      forall {{mask : SignMask}} (hlt : {anchor} < numPairWords),",
        f"        GoodDirectionAtRank ⟨{anchor}, hlt⟩ mask ->",
        "          generatedGoodMaskMember mask) :",
        f"    PositiveSurvivorSignatureClassifierOnRange {anchor} {hi} :=",
        "  PositiveSurvivorSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit",
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
        "/--",
        "AP.16AZ semantic singleton-signature coverage theorem.",
        "",
        "This is the same precomputed positive-mask fact surface as AP.16T, but",
        "it targets the AP.16AY semantic classifier directly.  The remaining",
        "membership premise can be closed with domain-specific nonpositive",
        "denominator witnesses instead of reducing `goodDirectionAtRankBool`.",
        "-/",
        "theorem generatedSingletonSignatureSemanticAllGoodCoverage",
        "    (hmask :",
        f"      forall {{mask : SignMask}} (hlt : {anchor} < numPairWords),",
        f"        GoodDirectionAtRank ⟨{anchor}, hlt⟩ mask ->",
        "          generatedGoodMaskMember mask) :",
        f"    AllTranslationGoodCoverageOnRange {anchor} {hi} :=",
        "  (generatedSemanticSignatureClassifier hmask).to_allGoodCoverage",
        "",
        "/--",
        "AP.16BA closed semantic singleton-signature coverage theorem.",
        "",
        "This closes AP.16AZ's remaining semantic membership premise for the",
        f"singleton signature at rank `{anchor}`.",
        "-/",
        "theorem generatedSingletonSignatureClosedSemanticAllGoodCoverage :",
        f"    AllTranslationGoodCoverageOnRange {anchor} {hi} :=",
        "  generatedSingletonSignatureSemanticAllGoodCoverage",
        "    (by",
        "      intro mask hlt hgood",
        "      exact generatedGoodMaskMember_of_GoodDirection_viaCover hlt hgood)",
        "",
        f"end {module_namespace}",
        "",
    ])
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--namespace", default=None)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--mask", type=int, default=DEFAULT_MASK)
    args = parser.parse_args()

    module_namespace = (
        args.namespace
        if args.namespace is not None
        else f"{DEFAULT_NAMESPACE_PREFIX}.{args.output.stem}"
    )

    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    signature = select_signature_containing_rank_mask(profile, args.rank, args.mask)
    if int(signature["ranks"][0]) != args.rank:
        raise SystemExit(
            "AP.16T currently targets the anchor rank of the singleton signature; "
            f"got rank {args.rank}, anchor {signature['ranks'][0]}"
        )
    groups = candidate_groups_for_signature(profile, signature)
    good_masks = [int(mask) for mask in signature["good_masks"]]
    cases, bad_masks, stats = classified_cases_and_bad_masks_for_signature(
        args.rank, good_masks
    )
    emit_module(
        profile=profile,
        signature=signature,
        groups=groups,
        cases=cases,
        bad_masks=bad_masks,
        output=args.output,
        module_namespace=module_namespace,
    )
    print(
        f"wrote {args.output} for rank {args.rank}, "
        f"{len(good_masks)} positive masks, {len(groups)} candidate groups, "
        f"{len(bad_masks)} bad-direction witnesses"
    )


if __name__ == "__main__":
    main()
