#!/usr/bin/env python3
"""Emit a bounded row-relation classifier for translation GoodDirection cases.

This is a Phase 6Z pilot emitter.  It does not try to serialize a raw
certificate for every bad-direction mask.  Instead it emits:

* private per-survivor row-relation witnesses, proved from exact line facts;
* private per-rank mask dispatch theorems, using GoodDirection only for masks
  that could arise from a feasible translation orbit; and
* one public identity-premised interval theorem for a bounded rank window.

The generated Lean is proof-carrying and self-checking; the Python script is
only a guardrail and is not trusted as proof.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import defaultdict
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from generate_translation_two_source_evidence import (  # noqa: E402
    COMMON_B_SIMP,
    TwoSourceCase,
    find_source_indices,
    format_simp_list,
    lean_seq_definition,
    lean_strict_lin2,
    support_lines,
    validate_module_namespace,
)
from profile_symmetry_compression import (  # noqa: E402
    sorted_source_farkas_terms,
    two_source_multipliers_for_lines,
)
from profile_translation_row_relation_templates import (  # noqa: E402
    matching_templates,
)
from profile_translation_support_shapes import shape_valid  # noqa: E402


DEFAULT_RANK_START = 0
DEFAULT_LIMIT = 1_000
DEFAULT_MODULE_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource."
    "RowRelationClassifier.Window000000000_000001000"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/"
    "RowRelationClassifier/Window000000000_000001000.lean"
)
DEFAULT_SUMMARY = Path(
    "scripts/generated/"
    "translation_row_relation_classifier_000000000_000001000.json"
)


TEMPLATE_TO_LEAN: dict[str, tuple[str, str]] = {
    "eq_eq_pos_var_first": ("EqEqPosVarFirst", "eqEqPosVarFirst_checkedOn"),
    "eq_eq_pos_var_second": ("EqEqPosVarSecond", "eqEqPosVarSecond_checkedOn"),
    "eq_eq_neg_var_first": ("EqEqNegVarFirst", "eqEqNegVarFirst_checkedOn"),
    "eq_eq_neg_var_second": ("EqEqNegVarSecond", "eqEqNegVarSecond_checkedOn"),
    "opp_1m_var_first": ("OppOneMinusVarFirst", "oppOneMinusVarFirst_checkedOn"),
    "opp_1m_var_second": ("OppOneMinusVarSecond", "oppOneMinusVarSecond_checkedOn"),
    "opp_m1_var_first": ("OppMinusOneVarFirst", "oppMinusOneVarFirst_checkedOn"),
    "opp_m1_var_second": ("OppMinusOneVarSecond", "oppMinusOneVarSecond_checkedOn"),
    "axis_a_only": ("AxisAOnly", "axisAOnly_checkedOn"),
}

LINE_SIMPS = [
    "TwoSourceFarkasSupport.firstLine",
    "TwoSourceFarkasSupport.secondLine",
    "translationConstraintSourceLine",
    "xpStartConstraintAt",
    "orderingConstraint",
    "impactInteriorConstraint",
    "nextImpact",
    "impactTimeLin",
    "translationLinePointLin",
    "linDotVec3",
    "Lin2.ltConstraint",
    "Lin2.add",
    "Lin2.scale",
    "Lin2.constOnly",
    "Lin2.y",
    "Lin2.z",
    "impactDenom",
    "impactPlaneNormalQ",
    "impactPlaneOffsetQ",
    "copiedNormalQ",
    "copiedOffsetQ",
    "preImpactCopyAff",
    "pathPrefixAff",
    "pathPrefixAffNat",
    "impactFace",
    "faceReflectionQ",
    "reflM",
    "reflD",
    "normalQ",
    "offsetQ",
    "matSub",
    "matId",
    "affId",
    "affCompose",
    "scalarMat",
    "outer",
    "dot",
    "matMul",
    "matVec",
    "vecAdd",
    "scalarMul",
    "lastImpact",
]

GOOD_DIRECTION_SIMPS = [
    "goodDirectionAtRankBool",
    "internalImpactList",
    "impactDenomAtRank",
    "translationSeqAtRankMask",
    "translationBAtRankMask",
    "translationChoiceSeq",
    "signedPositiveAt",
    "faceOfPairSign",
    "impactDenom",
    "impactPlaneNormalQ",
    "pathPrefixAff",
    "pathPrefixAffNat",
    "impactFace",
    "totalAff",
    "totalOrder",
    "composeFaceList",
    "affCompose",
    "faceReflectionQ",
    "reflM",
    "reflD",
    "normalQ",
    "offsetQ",
    "matSub",
    "matId",
    "affId",
    "scalarMat",
    "outer",
    "dot",
    "matMul",
    "matVec",
    "vecAdd",
    "scalarMul",
]


@dataclass(frozen=True)
class ClassifiedCase:
    index: int
    case: TwoSourceCase
    template_id: str


def lean_case_name(case_index: int) -> str:
    return f"case_{case_index:06d}"


def lean_rank_theorem_name(rank: int) -> str:
    return f"rank_{rank:09d}_identityCoverage"


def collect_classified_cases(
    rank_start: int,
    limit: int,
    *,
    max_cases: int | None = None,
) -> tuple[list[ClassifiedCase], dict[int, dict[int, ClassifiedCase]], dict[str, Any]]:
    classified: list[ClassifiedCase] = []
    by_rank_mask: dict[int, dict[int, ClassifiedCase]] = defaultdict(dict)
    stats: dict[str, Any] = {
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "pair_words_scanned": 0,
        "identity_words": 0,
        "nonidentity_words_skipped": 0,
        "translation_sign_assignments": 0,
        "good_direction_survivors": 0,
        "bad_direction_or_zero_masks": 0,
        "two_source_cases": 0,
        "non_two_source_cases": 0,
        "covered_by_row_template": 0,
        "uncovered_by_row_template": 0,
        "overlap_cases": 0,
        "template_counts": defaultdict(int),
        "truncated_by_max_cases": False,
    }

    for rank in range(rank_start, rank_start + limit):
        word = exact.pair_word_at_rank(rank)
        if exact.lex_rank_pair_word(word) != rank:
            raise AssertionError(f"rank mismatch for word at rank {rank}")
        stats["pair_words_scanned"] += 1

        if exact.total_linear(word) != exact.mat_id():
            stats["nonidentity_words_skipped"] += 1
            continue

        stats["identity_words"] += 1
        for mask in range(64):
            stats["translation_sign_assignments"] += 1
            needs = exact.translation_needs_farkas(word, mask)
            if needs is None:
                stats["bad_direction_or_zero_masks"] += 1
                continue

            stats["good_direction_survivors"] += 1
            b, seq = needs
            source_terms = sorted_source_farkas_terms(
                exact.source_terms_for_translation_farkas(seq, b)
            )
            if len(source_terms) != 2:
                stats["non_two_source_cases"] += 1
                raise AssertionError(
                    f"rank {rank}, mask {mask} is not a two-source case"
                )
            stats["two_source_cases"] += 1

            _indices, source_constraints = find_source_indices(seq, b, source_terms)
            multipliers = two_source_multipliers_for_lines(
                source_constraints[0],
                source_constraints[1],
            )
            if not shape_valid(
                multipliers=multipliers,
                first_line=source_constraints[0],
                second_line=source_constraints[1],
            ):
                raise AssertionError(f"invalid two-source shape at rank {rank}, mask {mask}")

            matches = [
                template_id
                for template_id in matching_templates(
                    source_constraints[0],
                    source_constraints[1],
                    multipliers,
                )
                if template_id in TEMPLATE_TO_LEAN
            ]
            if not matches:
                stats["uncovered_by_row_template"] += 1
                raise AssertionError(
                    f"no Lean row-relation template for rank {rank}, mask {mask}"
                )
            if len(matches) > 1:
                stats["overlap_cases"] += 1
            stats["covered_by_row_template"] += 1
            stats["template_counts"][matches[0]] += 1

            case = TwoSourceCase(
                rank=rank,
                mask=mask,
                word=word,
                seq=seq,
                b=b,
                first_source=source_terms[0]["source"],
                second_source=source_terms[1]["source"],
                first_line=source_constraints[0],
                second_line=source_constraints[1],
                multipliers=multipliers,
            )
            cc = ClassifiedCase(len(classified), case, matches[0])
            classified.append(cc)
            by_rank_mask[rank][mask] = cc
            if max_cases is not None and len(classified) >= max_cases:
                stats["truncated_by_max_cases"] = True
                stats["template_counts"] = dict(sorted(stats["template_counts"].items()))
                return classified, by_rank_mask, stats

    stats["template_counts"] = dict(sorted(stats["template_counts"].items()))
    return classified, by_rank_mask, stats


def case_header_lines(cc: ClassifiedCase) -> list[str]:
    case = cc.case
    name = lean_case_name(cc.index)
    return [
        f"private def {name}_rank : Fin numPairWords := ⟨{case.rank}, by decide⟩",
        f"private def {name}_mask : SignMask := {exact.lean_sign_mask(case.mask)}",
        f"private def {name}_word : PairWord := {exact.lean_pair_word_inline(case.word)}",
        *support_lines(name, case.first_source, case.second_source),
        *lean_seq_definition(name, case.seq),
        f"private def {name}_b : Vec3 Rat := {exact.lean_vec(case.b)}",
        f"private def {name}_firstLine : StrictLin2 := {lean_strict_lin2(case.first_line)}",
        f"private def {name}_secondLine : StrictLin2 := {lean_strict_lin2(case.second_line)}",
        "",
        f"private theorem {name}_rankWord :",
        f"    rankPairWord? {name}_word = some {name}_rank := by",
        "  decide",
        "",
        f"private theorem {name}_unrank :",
        f"    unrankPairWord {name}_rank = {name}_word := by",
        f"  exact (rankPairWord?_eq_some_iff_unrank {name}_word {name}_rank).1",
        f"    {name}_rankWord |>.symm",
        "",
        f"private theorem {name}_seqChoice :",
        f"    translationChoiceSeq {name}_word {name}_mask = {name}_seq := by",
        "  funext i",
        "  fin_cases i <;> rfl",
        "",
        f"private theorem {name}_seqAtRank :",
        f"    translationSeqAtRankMask {name}_rank {name}_mask = {name}_seq := by",
        f"  rw [translationSeqAtRankMask, {name}_unrank]",
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


def case_shape_lines(cc: ClassifiedCase) -> list[str]:
    name = lean_case_name(cc.index)
    lean_predicate, checked_on = TEMPLATE_TO_LEAN[cc.template_id]
    support_pair_ns = (
        "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair"
    )

    def row_fact_lines(which: str, predicate: str, theorem_name: str) -> list[str]:
        line_name = f"{name}_{theorem_name}"
        selector = "FirstLineAt" if which == "first" else "SecondLineAt"
        hline = "hfirst" if which == "first" else "hsecond"
        line_def = f"{name}_firstLine" if which == "first" else f"{name}_secondLine"
        return [
            f"  have {line_name} :",
            f"      {predicate} ({selector} {name}_support {name}_rank.val hlt {name}_mask) := by",
            f"    rw [{selector}, {hline}]",
            f"    norm_num [{line_def}, {predicate}]",
        ]

    def fixed_fact_lines(which: str, a: int, b: int, theorem_name: str) -> list[str]:
        line_name = f"{name}_{theorem_name}"
        selector = "FirstLineAt" if which == "first" else "SecondLineAt"
        hline = "hfirst" if which == "first" else "hsecond"
        line_def = f"{name}_firstLine" if which == "first" else f"{name}_secondLine"
        return [
            f"  have {line_name} :",
            f"      FixedRow ({selector} {name}_support {name}_rank.val hlt {name}_mask)",
            f"        ({a}) ({b}) := by",
            f"    rw [{selector}, {hline}]",
            f"    norm_num [{line_def}, FixedRow]",
        ]

    shape_tail: list[str]
    if cc.template_id == "eq_eq_pos_var_first":
        shape_tail = [
            *row_fact_lines("first", "EqEqPosRow", "rowFirst"),
            *fixed_fact_lines("second", 1, 1, "fixedSecond"),
            f"  exact ⟨{name}_sourceChecks, {name}_rowFirst, {name}_fixedSecond⟩",
        ]
    elif cc.template_id == "eq_eq_pos_var_second":
        shape_tail = [
            *fixed_fact_lines("first", 1, 1, "fixedFirst"),
            *row_fact_lines("second", "EqEqPosRow", "rowSecond"),
            f"  exact ⟨{name}_sourceChecks, {name}_fixedFirst, {name}_rowSecond⟩",
        ]
    elif cc.template_id == "eq_eq_neg_var_first":
        shape_tail = [
            *row_fact_lines("first", "EqEqNegRow", "rowFirst"),
            *fixed_fact_lines("second", -1, -1, "fixedSecond"),
            f"  exact ⟨{name}_sourceChecks, {name}_rowFirst, {name}_fixedSecond⟩",
        ]
    elif cc.template_id == "eq_eq_neg_var_second":
        shape_tail = [
            *fixed_fact_lines("first", -1, -1, "fixedFirst"),
            *row_fact_lines("second", "EqEqNegRow", "rowSecond"),
            f"  exact ⟨{name}_sourceChecks, {name}_fixedFirst, {name}_rowSecond⟩",
        ]
    elif cc.template_id == "opp_1m_var_first":
        shape_tail = [
            *row_fact_lines("first", "OppPosRow", "rowFirst"),
            *fixed_fact_lines("second", 1, -1, "fixedSecond"),
            f"  exact ⟨{name}_sourceChecks, {name}_rowFirst, {name}_fixedSecond⟩",
        ]
    elif cc.template_id == "opp_1m_var_second":
        shape_tail = [
            *fixed_fact_lines("first", 1, -1, "fixedFirst"),
            *row_fact_lines("second", "OppPosRow", "rowSecond"),
            f"  exact ⟨{name}_sourceChecks, {name}_fixedFirst, {name}_rowSecond⟩",
        ]
    elif cc.template_id == "opp_m1_var_first":
        shape_tail = [
            *row_fact_lines("first", "OppNegRow", "rowFirst"),
            *fixed_fact_lines("second", -1, 1, "fixedSecond"),
            f"  exact ⟨{name}_sourceChecks, {name}_rowFirst, {name}_fixedSecond⟩",
        ]
    elif cc.template_id == "opp_m1_var_second":
        shape_tail = [
            *fixed_fact_lines("first", -1, 1, "fixedFirst"),
            *row_fact_lines("second", "OppNegRow", "rowSecond"),
            f"  exact ⟨{name}_sourceChecks, {name}_fixedFirst, {name}_rowSecond⟩",
        ]
    elif cc.template_id == "axis_a_only":
        shape_tail = [
            f"  have {name}_firstBZero :",
            f"      (FirstLineAt {name}_support {name}_rank.val hlt {name}_mask).b = 0 := by",
            f"    rw [FirstLineAt, hfirst]",
            f"    norm_num [{name}_firstLine]",
            f"  have {name}_secondBZero :",
            f"      (SecondLineAt {name}_support {name}_rank.val hlt {name}_mask).b = 0 := by",
            f"    rw [SecondLineAt, hsecond]",
            f"    norm_num [{name}_secondLine]",
            f"  have {name}_aProductNeg :",
            f"      (FirstLineAt {name}_support {name}_rank.val hlt {name}_mask).a *",
            f"          (SecondLineAt {name}_support {name}_rank.val hlt {name}_mask).a < 0 := by",
            f"    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]",
            f"    norm_num [{name}_firstLine, {name}_secondLine]",
            f"  have {name}_weightedCNonpos :",
            f"      (SupportFamilies.SupportPair.multipliersAt {name}_support",
            f"          {name}_rank.val hlt {name}_mask).1 *",
            f"          (FirstLineAt {name}_support {name}_rank.val hlt {name}_mask).c +",
            f"        (SupportFamilies.SupportPair.multipliersAt {name}_support",
            f"          {name}_rank.val hlt {name}_mask).2 *",
            f"          (SecondLineAt {name}_support {name}_rank.val hlt {name}_mask).c <= 0 := by",
            f"    rw [SupportFamilies.SupportPair.multipliersAt, FirstLineAt, SecondLineAt,",
            f"      hfirst, hsecond]",
            f"    norm_num [{name}_firstLine, {name}_secondLine,",
            f"      TwoSourceFarkasSupport.multipliersForLines,",
            f"      TwoSourceFarkasSupport.orientNonnegative]",
            f"  exact ⟨{name}_sourceChecks, {name}_firstBZero, {name}_secondBZero,",
            f"    {name}_aProductNeg, {name}_weightedCNonpos⟩",
        ]
    else:
        raise ValueError(f"unsupported template id {cc.template_id!r}")

    return [
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_shape :",
        f"    {lean_predicate} {name}_support {name}_rank.val {name}_mask := by",
        "  intro hlt",
        f"  have hrank : (⟨{name}_rank.val, hlt⟩ : Fin numPairWords) = {name}_rank := by",
        "    ext",
        "    rfl",
        f"  have hseq :",
        f"      translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask =",
        f"        {name}_seq := by",
        f"    simpa [hrank] using {name}_seqAtRank",
        f"  have hb :",
        f"      translationBAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask =",
        f"        {name}_b := by",
        f"    simpa [hrank] using {name}_bAtRank",
        f"  have hfirst :",
        f"      {support_pair_ns}.firstLineAt {name}_support {name}_rank.val hlt",
        f"          {name}_mask = {name}_firstLine := by",
        f"    simp [{support_pair_ns}.firstLineAt, hseq, hb, {name}_firstLine_eq]",
        f"  have hsecond :",
        f"      {support_pair_ns}.secondLineAt {name}_support {name}_rank.val hlt",
        f"          {name}_mask = {name}_secondLine := by",
        f"    simp [{support_pair_ns}.secondLineAt, hseq, hb, {name}_secondLine_eq]",
        f"  have {name}_sourceChecks :",
        f"      SourceChecks {name}_support {name}_rank.val hlt {name}_mask := by",
        f"    norm_num [SourceChecks, hseq, {name}_support,",
        f"      checkTranslationConstraintSource, {name}_seq, impactFace]",
        *shape_tail,
        "",
        f"private theorem {name}_checkedAtRank :",
        f"    {name}_support.Checked",
        f"      (translationSeqAtRankMask {name}_rank {name}_mask)",
        f"      (translationBAtRankMask {name}_rank {name}_mask) :=",
        f"  {checked_on} {name}_support {name}_rank.val {name}_rank.isLt",
        f"    {name}_mask {name}_shape",
        "",
        f"private theorem {name}_supportWitness",
        f"    (hlt : {name}_rank.val < numPairWords) :",
        f"    exists support : TwoSourceFarkasSupport,",
        f"      support.Checked",
        f"        (translationSeqAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask)",
        f"        (translationBAtRankMask ⟨{name}_rank.val, hlt⟩ {name}_mask) := by",
        f"  have hrank : (⟨{name}_rank.val, hlt⟩ : Fin numPairWords) = {name}_rank := by",
        "    ext",
        "    rfl",
        f"  exact ⟨{name}_support, by simpa [hrank] using {name}_checkedAtRank⟩",
        "",
    ]


def bad_good_direction_branch(rank: int, mask: int) -> list[str]:
    return [
        f"  · have hrank :",
        f"        (⟨{rank}, hlt⟩ : Fin numPairWords) =",
        f"          (⟨{rank}, by decide⟩ : Fin numPairWords) := by",
        "      ext",
        "      rfl",
        f"    exact False.elim",
        f"      ((not_goodDirection_of_bool_false",
        f"        (r := (⟨{rank}, by decide⟩ : Fin numPairWords))",
        f"        (mask := {exact.lean_sign_mask(mask)})",
        f"        (by",
        f"          norm_num [",
        *format_simp_list(GOOD_DIRECTION_SIMPS, indent="            "),
        f"          ]))",
        f"        (by simpa [hrank] using hgood))",
    ]


def survivor_branch(cc: ClassifiedCase) -> list[str]:
    name = lean_case_name(cc.index)
    return [f"  · exact {name}_supportWitness hlt"]


def rank_theorem_lines(
    rank: int,
    rank_cases: dict[int, ClassifiedCase],
    *,
    identity: bool,
) -> list[str]:
    theorem_name = lean_rank_theorem_name(rank)
    lines = [
        f"private theorem {theorem_name}",
        f"    (hlt : {rank} < numPairWords) (mask : SignMask)",
        f"    (_hM : totalLinearOfPairWord",
        f"      (unrankPairWord (⟨{rank}, hlt⟩ : Fin numPairWords)) =",
        f"        (matId : Mat3 Rat))",
        f"    (hgood : GoodDirectionAtRank (⟨{rank}, hlt⟩ : Fin numPairWords) mask) :",
        f"    exists support : TwoSourceFarkasSupport,",
        f"      support.Checked",
        f"        (translationSeqAtRankMask (⟨{rank}, hlt⟩ : Fin numPairWords) mask)",
        f"        (translationBAtRankMask (⟨{rank}, hlt⟩ : Fin numPairWords) mask) := by",
    ]
    if not identity:
        lines.extend([
            "  have hrank :",
            f"      (⟨{rank}, hlt⟩ : Fin numPairWords) =",
            f"        (⟨{rank}, by decide⟩ : Fin numPairWords) := by",
            "    ext",
            "    rfl",
            "  have hNot :",
            f"      totalLinearOfPairWord",
            f"        (unrankPairWord (⟨{rank}, by decide⟩ : Fin numPairWords)) ≠",
            f"          (matId : Mat3 Rat) := by",
            "    decide",
            "  exact False.elim (hNot (by simpa [hrank] using _hM))",
            "",
        ])
        return lines

    lines.append("  fin_cases mask")
    for mask in range(64):
        cc = rank_cases.get(mask)
        if cc is None:
            lines.extend(bad_good_direction_branch(rank, mask))
        else:
            lines.extend(survivor_branch(cc))
    lines.append("")
    return lines


def module_lines(
    *,
    module_namespace: str,
    rank_start: int,
    limit: int,
    classified: list[ClassifiedCase],
    by_rank_mask: dict[int, dict[int, ClassifiedCase]],
) -> list[str]:
    rank_end = rank_start + limit
    identity_ranks = set(by_rank_mask)
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "",
        "/-!",
        "Bounded generated row-relation classifier for translation GoodDirection cases.",
        "",
        "This file is generated by",
        "`scripts/generate_translation_row_relation_classifier.py`.",
        "The Python emitter is not trusted as proof; Lean checks all private",
        "row-relation witnesses and exports only small semantic range theorems.",
        "-/",
        "",
        f"namespace {module_namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]
    for cc in classified:
        lines.extend(case_header_lines(cc))
        lines.extend(case_shape_lines(cc))

    for rank in range(rank_start, rank_end):
        lines.extend(
            rank_theorem_lines(
                rank,
                by_rank_mask.get(rank, {}),
                identity=rank in identity_ranks,
            )
        )

    lines.extend([
        "set_option maxHeartbeats 4000000 in",
        "theorem rowRelationClassifierIdentityCoverage :",
        f"    SupportFamilyCoverageOnIdentityRange {rank_start} {rank_end} := by",
        "  intro r hlt mask hlo hhi hM hgood",
        "  interval_cases r",
    ])
    for rank in range(rank_start, rank_end):
        lines.append(f"  · exact {lean_rank_theorem_name(rank)} hlt mask hM hgood")
    lines.extend([
        "",
        "theorem rowRelationClassifierGoodCoverage :",
        f"    TranslationGoodCoverageOnRange {rank_start} {rank_end} :=",
        "  TranslationGoodCoverageOnRange.of_identitySupportFamily",
        "    rowRelationClassifierIdentityCoverage",
        "",
        f"end {module_namespace}",
        "",
    ])
    return lines


def write_generated(path: Path, lines: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines))


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank-start", type=int, default=DEFAULT_RANK_START)
    parser.add_argument("--limit", type=int, default=DEFAULT_LIMIT)
    parser.add_argument("--max-cases", type=int, default=None)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--summary", type=Path, default=DEFAULT_SUMMARY)
    parser.add_argument("--module-namespace", default=DEFAULT_MODULE_NAMESPACE)
    args = parser.parse_args()

    if args.rank_start < 0:
        raise ValueError("--rank-start must be nonnegative")
    if args.limit < 0:
        raise ValueError("--limit must be nonnegative")
    if args.rank_start + args.limit > exact.EXPECTED_PAIR_WORDS:
        raise ValueError("requested range exceeds pair-word count")
    module_namespace = validate_module_namespace(args.module_namespace)

    classified, by_rank_mask, stats = collect_classified_cases(
        args.rank_start,
        args.limit,
        max_cases=args.max_cases,
    )
    lines = module_lines(
        module_namespace=module_namespace,
        rank_start=args.rank_start,
        limit=args.limit,
        classified=classified,
        by_rank_mask=by_rank_mask,
    )
    if not args.dry_run:
        write_generated(args.out, lines)

    summary = {
        "schema_version": 1,
        "mode": "translation_row_relation_classifier",
        "trusted_as_proof": False,
        "dry_run": args.dry_run,
        "options": {
            "rank_start": args.rank_start,
            "limit": args.limit,
            "max_cases": args.max_cases,
            "out": str(args.out),
            "module_namespace": module_namespace,
        },
        "stats": stats,
        "generated_line_count": len(lines),
        "generated_source_bytes": 0 if args.dry_run else args.out.stat().st_size,
    }
    args.summary.parent.mkdir(parents=True, exist_ok=True)
    args.summary.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
    verb = "would emit" if args.dry_run else "emitted"
    print(
        f"{verb} {len(classified)} row-relation survivor cases "
        f"for ranks [{args.rank_start}, {args.rank_start + args.limit})"
    )
    print(f"summary: {args.summary}")
    if not args.dry_run:
        print(f"generated: {args.out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
