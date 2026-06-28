#!/usr/bin/env python3
"""Emit a factored AP.16U all-positive-mask smoke.

AP.16T proved all eight positive masks of one singleton survivor signature by
repeating the rank/word/rank-unrank block in every mask case.  AP.16U keeps the
same accepted theorem-valued source/row fact surface, but factors the shared
rank word and unrank proof into one private block.

This is still diagnostic only.  It checks whether signature-level generated
modules can avoid obvious repeated rank facts before scaling to many
signatures.  Python is not trusted as proof; the generated Lean module is the
evidence under test.
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

import generate_exact_certificates as exact  # noqa: E402
from generate_ap16s_precomputed_fact_smoke import (  # noqa: E402
    candidate_group_for_mask,
    select_signature_containing_rank_mask,
)
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    DEFAULT_MASK,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    ROWS_PREDICATE,
    candidate_groups_for_signature,
    classified_cases_for_signature,
    emit_all_facts_theorem,
    emit_candidate_defs,
    emit_candidate_of_mask,
)
from generate_ap16i_positive_membership_smoke import lean_template  # noqa: E402
from generate_ap16l_signature_membership_smoke import (  # noqa: E402
    mask_member_expr,
)
from generate_translation_row_relation_classifier import (  # noqa: E402
    COMMON_B_SIMP,
    LINE_SIMPS,
    ClassifiedCase,
    case_shape_lines,
    format_simp_list,
    lean_case_name,
)
from generate_translation_two_source_evidence import (  # noqa: E402
    lean_seq_definition,
    lean_strict_lin2,
    support_lines,
)


DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "PositiveSurvivorFactoredSignatureSmoke.lean"
)


def emit_shared_rank_lines(rank: int, word: list[str]) -> list[str]:
    return [
        f"private def generatedRank : Fin numPairWords := ⟨{rank}, by decide⟩",
        f"private def generatedWord : PairWord := {exact.lean_pair_word_inline(word)}",
        "",
        "private theorem generatedRankWord :",
        "    rankPairWord? generatedWord = some generatedRank := by",
        "  decide",
        "",
        "private theorem generatedUnrank :",
        "    unrankPairWord generatedRank = generatedWord := by",
        "  exact (rankPairWord?_eq_some_iff_unrank generatedWord generatedRank).1",
        "    generatedRankWord |>.symm",
        "",
    ]


def emit_factored_case_header(cc: ClassifiedCase) -> list[str]:
    case = cc.case
    name = lean_case_name(cc.index)
    return [
        f"private abbrev {name}_rank : Fin numPairWords := generatedRank",
        f"private def {name}_mask : SignMask := {exact.lean_sign_mask(case.mask)}",
        *support_lines(name, case.first_source, case.second_source),
        *lean_seq_definition(name, case.seq),
        f"private def {name}_b : Vec3 Rat := {exact.lean_vec(case.b)}",
        f"private def {name}_firstLine : StrictLin2 := {lean_strict_lin2(case.first_line)}",
        f"private def {name}_secondLine : StrictLin2 := {lean_strict_lin2(case.second_line)}",
        "",
        f"private theorem {name}_seqChoice :",
        f"    translationChoiceSeq generatedWord {name}_mask = {name}_seq := by",
        "  funext i",
        "  fin_cases i <;> rfl",
        "",
        f"private theorem {name}_seqAtRank :",
        f"    translationSeqAtRankMask {name}_rank {name}_mask = {name}_seq := by",
        "  unfold translationSeqAtRankMask",
        "  change translationChoiceSeq (unrankPairWord generatedRank)",
        f"      {name}_mask = {name}_seq",
        "  rw [generatedUnrank]",
        f"  exact {name}_seqChoice",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_bAtRank :",
        f"    translationBAtRankMask {name}_rank {name}_mask = {name}_b := by",
        f"  rw [translationBAtRankMask, {name}_seqAtRank]",
        "  apply Vec3.ext <;>",
        f"    norm_num [{name}_b, {name}_seq,",
        *format_simp_list(COMMON_B_SIMP),
        "    ]",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_firstLine_eq :",
        f"    {name}_support.firstLine {name}_seq {name}_b = {name}_firstLine := by",
        f"  norm_num [{name}_firstLine, {name}_support, {name}_seq, {name}_b,",
        *format_simp_list(LINE_SIMPS),
        "    ]",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_secondLine_eq :",
        f"    {name}_support.secondLine {name}_seq {name}_b = {name}_secondLine := by",
        f"  norm_num [{name}_secondLine, {name}_support, {name}_seq, {name}_b,",
        *format_simp_list(LINE_SIMPS),
        "    ]",
        "",
    ]


def emit_case_fact_lines(
    *,
    cc: ClassifiedCase,
    group: dict[str, Any],
    ctor: str,
) -> list[str]:
    case = cc.case
    name = lean_case_name(cc.index)
    template_id = group["template_ids"][0]
    if template_id != cc.template_id:
        raise SystemExit(
            f"mask {case.mask}: candidate template {template_id} does not match "
            f"classified template {cc.template_id}"
        )
    rows_predicate = ROWS_PREDICATE[template_id]
    return [
        f"/-- AP.16U positive mask `{case.mask}`. -/",
        *emit_factored_case_header(cc),
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
        f"  have hfirst : (generatedSpec .{ctor}).first.Holds",
        f"      (translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask) := by",
        f"    simp [generatedSpec, SourcePositionSpec.Holds, hseq, {name}_seq, impactFace]",
        "    decide",
        f"  have hsecond : (generatedSpec .{ctor}).second.Holds",
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
        f"    generatedCandidateOfNat, {name}_rank, generatedRank, {name}_mask] using",
        f"      And.intro {name}_sourcePredicate {name}_rowProducerApplies",
        "",
    ]


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
    word = cases[int(signature["good_masks"][0])].case.word
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
        "Generated AP.16U factored positive-survivor signature smoke.",
        "",
        "This module repeats AP.16T's singleton-signature proof shape while sharing",
        "the common rank, pair-word, and unrank facts across all positive masks.",
        "It still leaves GoodDirection-to-positive-mask soundness as an explicit",
        "premise and emits no bad-direction evidence.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorFactoredSignatureSmoke",
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
        *emit_shared_rank_lines(anchor, word),
        "private def generatedGoodMaskMember (mask : SignMask) : Prop :=",
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
        "AP.16U singleton-signature coverage theorem.",
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
        "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorFactoredSignatureSmoke",
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
            "AP.16U currently targets the anchor rank of the singleton signature; "
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
