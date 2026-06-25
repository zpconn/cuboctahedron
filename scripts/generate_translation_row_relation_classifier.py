#!/usr/bin/env python3
"""Emit a bounded row-relation classifier for translation GoodDirection cases.

This is a Phase 6Z pilot emitter.  It does not try to serialize a raw
certificate for every bad-direction mask.  Instead it emits:

* private per-survivor row-relation witnesses, proved from exact line facts;
* private per-rank mask dispatch theorems, using GoodDirection only for masks
  that could arise from a feasible translation orbit; and
* one public semantic interval theorem for a bounded rank window.

When `--emit-shards` is enabled, the emitter writes small `Window...` leaves
and a bounded import hierarchy of `Group...` roots plus one `AllWindow...` root.
The hierarchy keeps expensive proof leaves out of broad root imports while still
using only Prop-level interval composition.

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
DEFAULT_MODULE_PREFIX = (
    "Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier"
)
DEFAULT_OUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/"
    "RowRelationClassifier/Window000000000_000001000.lean"
)
DEFAULT_OUT_DIR = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/RowRelationClassifier"
)
DEFAULT_SUMMARY = Path(
    "scripts/generated/"
    "translation_row_relation_classifier_000000000_000001000.json"
)

Vec = tuple[Fraction, Fraction, Fraction]
Mat = tuple[tuple[Fraction, Fraction, Fraction], ...]
StrictLin2 = tuple[Fraction, Fraction, Fraction]

MAT_ENTRIES = [
    ("m00", 0, 0),
    ("m01", 0, 1),
    ("m02", 0, 2),
    ("m10", 1, 0),
    ("m11", 1, 1),
    ("m12", 1, 2),
    ("m20", 2, 0),
    ("m21", 2, 1),
    ("m22", 2, 2),
]

ZERO_VEC: Vec = (Fraction(0), Fraction(0), Fraction(0))


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
    "axis_b_only": ("AxisBOnly", "axisBOnly_checkedOn"),
    "exact_two_source_valid": ("ExactTwoSourceValid", "exactTwoSourceValid_checkedOn"),
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

DENOM_SIMPS = [
    "impactDenom",
    "impactPlaneNormalQ",
    "copiedNormalQ",
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
]


@dataclass(frozen=True)
class ClassifiedCase:
    index: int
    case: TwoSourceCase
    template_id: str


@dataclass(frozen=True)
class NonIdentityRank:
    rank: int
    word: list[str]
    entry: str
    value: Fraction
    expected: Fraction


@dataclass(frozen=True)
class BadDirectionCase:
    rank: int
    mask: int
    word: list[str]
    seq: list[str]
    b: Vec
    impact: int
    denom: Fraction


@dataclass
class RankCases:
    rank: int
    word: list[str]
    identity: bool
    nonidentity: NonIdentityRank | None = None
    survivors: dict[int, ClassifiedCase] | None = None
    bad_masks: dict[int, BadDirectionCase] | None = None


def lean_case_name(case_index: int) -> str:
    return f"case_{case_index:06d}"


def lean_rank_theorem_name(rank: int) -> str:
    return f"rank_{rank:09d}_goodCoverage"


def lean_nonidentity_name(rank: int) -> str:
    return f"rank_{rank:09d}_nonidentity"


def lean_bad_name(rank: int, mask: int) -> str:
    return f"rank_{rank:09d}_mask_{mask:02d}_badDirection"


def range_suffix(start: int, end: int) -> str:
    return f"Window{start:09d}_{end:09d}"


def root_suffix(start: int, end: int) -> str:
    return f"AllWindow{start:09d}_{end:09d}"


def group_suffix(start: int, end: int) -> str:
    return f"Group{start:09d}_{end:09d}"


def namespace_for_range(prefix: str, start: int, end: int) -> str:
    return f"{prefix}.{range_suffix(start, end)}"


def find_nonidentity_witness(rank: int, word: list[str]) -> NonIdentityRank:
    linear = exact.total_linear(word)
    ident = exact.mat_id()
    for entry, row, col in MAT_ENTRIES:
        value = linear[row][col]
        expected = ident[row][col]
        if value != expected:
            return NonIdentityRank(
                rank=rank,
                word=word,
                entry=entry,
                value=value,
                expected=expected,
            )
    raise AssertionError(f"rank {rank} is identity-linear")


def first_bad_direction_case(rank: int, word: list[str], mask: int) -> BadDirectionCase:
    b, seq = exact.translation_vector(word, mask)
    impact = 1
    if b != ZERO_VEC:
        impact = exact.first_bad_translation_impact(seq, b)
    denom = exact.impact_denom(seq, b, impact)
    if denom > 0:
        raise AssertionError(
            f"rank {rank}, mask {mask}, impact {impact} denominator is positive"
        )
    return BadDirectionCase(
        rank=rank,
        mask=mask,
        word=word,
        seq=seq,
        b=b,
        impact=impact,
        denom=denom,
    )


def collect_classified_cases(
    rank_start: int,
    limit: int,
    *,
    max_cases: int | None = None,
) -> tuple[list[ClassifiedCase], dict[int, RankCases], dict[str, Any]]:
    classified: list[ClassifiedCase] = []
    by_rank: dict[int, RankCases] = {}
    stats: dict[str, Any] = {
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "pair_words_scanned": 0,
        "identity_words": 0,
        "nonidentity_words_skipped": 0,
        "translation_sign_assignments": 0,
        "good_direction_survivors": 0,
        "bad_direction_or_zero_masks": 0,
        "bad_direction_witnesses": 0,
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
            by_rank[rank] = RankCases(
                rank=rank,
                word=word,
                identity=False,
                nonidentity=find_nonidentity_witness(rank, word),
            )
            continue

        stats["identity_words"] += 1
        rank_cases = RankCases(
            rank=rank,
            word=word,
            identity=True,
            survivors={},
            bad_masks={},
        )
        by_rank[rank] = rank_cases
        for mask in range(64):
            stats["translation_sign_assignments"] += 1
            needs = exact.translation_needs_farkas(word, mask)
            if needs is None:
                stats["bad_direction_or_zero_masks"] += 1
                assert rank_cases.bad_masks is not None
                rank_cases.bad_masks[mask] = first_bad_direction_case(rank, word, mask)
                stats["bad_direction_witnesses"] += 1
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
            assert rank_cases.survivors is not None
            rank_cases.survivors[mask] = cc
            if max_cases is not None and len(classified) >= max_cases:
                stats["truncated_by_max_cases"] = True
                stats["template_counts"] = dict(sorted(stats["template_counts"].items()))
                return classified, by_rank, stats

    stats["template_counts"] = dict(sorted(stats["template_counts"].items()))
    return classified, by_rank, stats


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
        f"    simp [SourceChecks, hseq, {name}_support,",
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


def nonidentity_lines(witness: NonIdentityRank) -> list[str]:
    name = lean_nonidentity_name(witness.rank)
    lines = [
        f"private def {name}_rank : Fin numPairWords := ⟨{witness.rank}, by decide⟩",
        f"private def {name}_word : PairWord := {exact.lean_pair_word_inline(witness.word)}",
        "",
    ]
    exact.append_pair_word_get_theorems(lines, f"{name}_word", witness.word)
    lines.extend([
        f"private theorem {name}_rankWord :",
        f"    rankPairWord? {name}_word = some {name}_rank := by",
        "  decide",
        "",
        f"private theorem {name}_unrank :",
        f"    unrankPairWord {name}_rank = {name}_word := by",
        f"  exact (rankPairWord?_eq_some_iff_unrank {name}_word {name}_rank).1",
        f"    {name}_rankWord |>.symm",
        "",
        "set_option maxHeartbeats 1200000 in",
        f"private theorem {name}_totalLinear :",
        f"    totalLinearOfPairWord {name}_word =",
        f"      {exact.lean_mat3(exact.total_linear(witness.word))} := by",
        "  rw [totalLinearOfPairWord_eq_pairLinearProductRight]",
        f"  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,",
        f"    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]",
        "  norm_num",
        "",
        f"private theorem {name}_linear_ne :",
        f"    totalLinearOfPairWord {name}_word ≠ (matId : Mat3 Rat) := by",
        f"  rw [{name}_totalLinear]",
        "  intro h",
        f"  have hfield := congrArg Mat3.{witness.entry} h",
        f"  norm_num [matId] at hfield",
        "",
        f"private theorem {name}_linear_ne_atRank",
        f"    (hlt : {witness.rank} < numPairWords) :",
        f"    totalLinearOfPairWord",
        f"      (unrankPairWord (⟨{witness.rank}, hlt⟩ : Fin numPairWords)) ≠",
        f"        (matId : Mat3 Rat) := by",
        f"  have hrank :",
        f"      (⟨{witness.rank}, hlt⟩ : Fin numPairWords) = {name}_rank := by",
        "    ext",
        "    rfl",
        f"  simpa [hrank, {name}_unrank] using {name}_linear_ne",
        "",
    ])
    return lines


def bad_direction_lines(bad: BadDirectionCase) -> list[str]:
    name = lean_bad_name(bad.rank, bad.mask)
    return [
        f"private def {name}_rank : Fin numPairWords := ⟨{bad.rank}, by decide⟩",
        f"private def {name}_mask : SignMask := {exact.lean_sign_mask(bad.mask)}",
        f"private def {name}_word : PairWord := {exact.lean_pair_word_inline(bad.word)}",
        *lean_seq_definition(name, bad.seq),
        f"private def {name}_b : Vec3 Rat := {exact.lean_vec(bad.b)}",
        f"private def {name}_denom : Rat := {exact.lean_rat(bad.denom)}",
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
        f"private theorem {name}_denomAtRank :",
        f"    impactDenomAtRank {name}_rank {name}_mask ⟨{bad.impact}, by decide⟩ =",
        f"      {name}_denom := by",
        f"  rw [impactDenomAtRank, {name}_seqAtRank, {name}_bAtRank]",
        f"  norm_num [{name}_denom, {name}_seq, {name}_b,",
        *format_simp_list(DENOM_SIMPS),
        "    ]",
        "",
        f"private theorem {name}_notGood",
        f"    (hlt : {bad.rank} < numPairWords) :",
        f"    ¬ GoodDirectionAtRank (⟨{bad.rank}, hlt⟩ : Fin numPairWords)",
        f"      {name}_mask := by",
        f"  have hrank :",
        f"      (⟨{bad.rank}, hlt⟩ : Fin numPairWords) = {name}_rank := by",
        "    ext",
        "    rfl",
        f"  apply not_goodDirectionAtRank_of_nonpositive_denom",
        f"      (r := (⟨{bad.rank}, hlt⟩ : Fin numPairWords))",
        f"      (mask := {name}_mask)",
        f"      (i := ⟨{bad.impact}, by decide⟩)",
        "    <;> try decide",
        f"  rw [hrank, {name}_denomAtRank]",
        f"  norm_num [{name}_denom]",
        "",
    ]


def bad_good_direction_branch(bad: BadDirectionCase) -> list[str]:
    name = lean_bad_name(bad.rank, bad.mask)
    return [
        f"  · exact False.elim (({name}_notGood hlt) hgood)",
    ]


def survivor_branch(cc: ClassifiedCase) -> list[str]:
    name = lean_case_name(cc.index)
    return [
        f"  · rcases {name}_supportWitness hlt with ⟨support, hchecked⟩",
        f"    exact goodCaseKilled_of_checked hchecked hgood hM hbad",
    ]


def rank_theorem_lines(
    rank: int,
    rank_cases: RankCases,
) -> list[str]:
    theorem_name = lean_rank_theorem_name(rank)
    lines = [
        f"private theorem {theorem_name}",
        f"    (hlt : {rank} < numPairWords) (mask : SignMask)",
        f"    : TranslationGoodCaseKilled",
        f"      (⟨{rank}, hlt⟩ : Fin numPairWords) mask := by",
    ]
    if not rank_cases.identity:
        if rank_cases.nonidentity is None:
            raise AssertionError(f"rank {rank} missing nonidentity witness")
        name = lean_nonidentity_name(rank)
        lines.extend([
            f"  exact goodCaseKilled_of_nonidentity ({name}_linear_ne_atRank hlt)",
            "",
        ])
        return lines

    if rank_cases.survivors is None or rank_cases.bad_masks is None:
        raise AssertionError(f"identity rank {rank} missing mask cases")
    lines.append("  intro hgood hM hbad")
    lines.append("  fin_cases mask")
    for mask in range(64):
        cc = rank_cases.survivors.get(mask)
        if cc is None:
            bad = rank_cases.bad_masks.get(mask)
            if bad is None:
                raise AssertionError(f"rank {rank}, mask {mask} missing bad witness")
            lines.extend(bad_good_direction_branch(bad))
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
    by_rank: dict[int, RankCases],
) -> list[str]:
    rank_end = rank_start + limit
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
    for rank in range(rank_start, rank_end):
        rank_cases = by_rank[rank]
        if rank_cases.nonidentity is not None:
            lines.extend(nonidentity_lines(rank_cases.nonidentity))
        if rank_cases.bad_masks is not None:
            for mask in range(64):
                bad = rank_cases.bad_masks.get(mask)
                if bad is not None:
                    lines.extend(bad_direction_lines(bad))

    for cc in classified:
        lines.extend(case_header_lines(cc))
        lines.extend(case_shape_lines(cc))

    for rank in range(rank_start, rank_end):
        lines.extend(rank_theorem_lines(rank, by_rank[rank]))

    lines.extend([
        "set_option maxHeartbeats 4000000 in",
        "theorem rowRelationClassifierGoodCoverage :",
        f"    TranslationGoodCoverageOnRange {rank_start} {rank_end} := by",
        "  intro r hlo hhi hlt mask",
        "  interval_cases r",
    ])
    for rank in range(rank_start, rank_end):
        lines.append(f"  · exact {lean_rank_theorem_name(rank)} hlt mask")
    lines.extend([
        "",
        f"end {module_namespace}",
        "",
    ])
    return lines


def indent_block(text: str, indent: str) -> str:
    return ("\n" + indent).join(text.splitlines())


def balanced_concat_expr(theorem_refs: list[str], *, indent: str = "  ") -> str:
    if not theorem_refs:
        raise ValueError("cannot concat an empty theorem list")
    if len(theorem_refs) == 1:
        return theorem_refs[0]
    mid = len(theorem_refs) // 2
    child_indent = indent + "  "
    left = balanced_concat_expr(theorem_refs[:mid], indent=child_indent)
    right = balanced_concat_expr(theorem_refs[mid:], indent=child_indent)
    return (
        "(CoversInterval.concat\n"
        f"{child_indent}{indent_block(left, child_indent)}\n"
        f"{child_indent}{indent_block(right, child_indent)})"
    )


def root_module_lines(
    *,
    module_namespace: str,
    rank_start: int,
    rank_end: int,
    shard_namespaces: list[str],
) -> list[str]:
    theorem_refs = [
        f"_root_.{namespace}.rowRelationClassifierGoodCoverage"
        for namespace in shard_namespaces
    ]
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.FamilyCoverage",
        *[f"import {namespace}" for namespace in shard_namespaces],
        "",
        "/-!",
        "Generated root for bounded row-relation classifier shards.",
        "",
        "This module composes small Prop-level interval theorems.  It contains no",
        "certificate literals and performs no Boolean search.",
        "-/",
        "",
        f"namespace {module_namespace}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "",
        "theorem rowRelationClassifierGoodCoverage :",
        f"    TranslationGoodCoverageOnRange {rank_start} {rank_end} :=",
    ]
    if theorem_refs:
        lines.append(f"  {balanced_concat_expr(theorem_refs)}")
    else:
        lines.extend([
            "  CoversInterval.empty TranslationGoodRankCovered (by decide)",
        ])
    lines.extend([
        "",
        f"end {module_namespace}",
        "",
    ])
    return lines


def merge_stats(stats_values: list[dict[str, Any]], rank_start: int, limit: int) -> dict[str, Any]:
    merged: dict[str, Any] = {
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "template_counts": defaultdict(int),
        "truncated_by_max_cases": any(s.get("truncated_by_max_cases", False) for s in stats_values),
    }
    for stats in stats_values:
        for key, value in stats.items():
            if key in {"rank_start", "rank_end", "template_counts", "truncated_by_max_cases"}:
                continue
            if isinstance(value, int):
                merged[key] = int(merged.get(key, 0)) + value
        for template_id, count in stats.get("template_counts", {}).items():
            merged["template_counts"][template_id] += count
    merged["template_counts"] = dict(sorted(merged["template_counts"].items()))
    return merged


def write_generated(path: Path, lines: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines))


def emit_single_file(
    *,
    rank_start: int,
    limit: int,
    max_cases: int | None,
    module_namespace: str,
    out: Path,
) -> tuple[list[ClassifiedCase], dict[str, Any], int, int]:
    classified, by_rank, stats = collect_classified_cases(
        rank_start,
        limit,
        max_cases=max_cases,
    )
    lines = module_lines(
        module_namespace=module_namespace,
        rank_start=rank_start,
        limit=limit,
        classified=classified,
        by_rank=by_rank,
    )
    write_generated(out, lines)
    return classified, stats, len(lines), out.stat().st_size


def emit_shards(
    *,
    rank_start: int,
    limit: int,
    shard_size: int,
    group_size: int,
    module_prefix: str,
    out_dir: Path,
    root_module_namespace: str,
    root_out: Path,
) -> tuple[int, dict[str, Any], int, int, list[dict[str, Any]], list[dict[str, Any]]]:
    if shard_size <= 0:
        raise ValueError("--shard-size must be positive")
    if group_size <= 0:
        raise ValueError("--group-size must be positive")
    rank_end = rank_start + limit
    shard_namespaces: list[str] = []
    shard_stats: list[dict[str, Any]] = []
    group_namespaces: list[str] = []
    group_stats: list[dict[str, Any]] = []
    generated_line_count = 0
    generated_source_bytes = 0
    total_classified = 0
    for shard_start in range(rank_start, rank_end, shard_size):
        shard_end = min(shard_start + shard_size, rank_end)
        suffix = range_suffix(shard_start, shard_end)
        namespace = f"{module_prefix}.{suffix}"
        out = out_dir / f"{suffix}.lean"
        classified, stats, line_count, source_bytes = emit_single_file(
            rank_start=shard_start,
            limit=shard_end - shard_start,
            max_cases=None,
            module_namespace=namespace,
            out=out,
        )
        shard_namespaces.append(namespace)
        shard_stats.append({
            "namespace": namespace,
            "out": str(out),
            "rank_start": shard_start,
            "rank_end": shard_end,
            "classified_cases": len(classified),
            "line_count": line_count,
            "source_bytes": source_bytes,
            "stats": stats,
        })
        total_classified += len(classified)
        generated_line_count += line_count
        generated_source_bytes += source_bytes

    for group_index, first_shard in enumerate(range(0, len(shard_stats), group_size)):
        group_entries = shard_stats[first_shard:first_shard + group_size]
        if not group_entries:
            continue
        group_start = int(group_entries[0]["rank_start"])
        group_end = int(group_entries[-1]["rank_end"])
        suffix = group_suffix(group_start, group_end)
        namespace = f"{module_prefix}.{suffix}"
        out = out_dir / f"{suffix}.lean"
        group_lines = root_module_lines(
            module_namespace=namespace,
            rank_start=group_start,
            rank_end=group_end,
            shard_namespaces=[str(entry["namespace"]) for entry in group_entries],
        )
        write_generated(out, group_lines)
        group_namespaces.append(namespace)
        group_stats.append({
            "namespace": namespace,
            "out": str(out),
            "rank_start": group_start,
            "rank_end": group_end,
            "first_shard_index": first_shard,
            "last_shard_index": first_shard + len(group_entries) - 1,
            "shard_count": len(group_entries),
            "line_count": len(group_lines),
            "source_bytes": out.stat().st_size,
        })
        generated_line_count += len(group_lines)
        generated_source_bytes += out.stat().st_size

    root_lines = root_module_lines(
        module_namespace=root_module_namespace,
        rank_start=rank_start,
        rank_end=rank_end,
        shard_namespaces=group_namespaces if group_namespaces else shard_namespaces,
    )
    write_generated(root_out, root_lines)
    generated_line_count += len(root_lines)
    generated_source_bytes += root_out.stat().st_size
    stats = merge_stats([entry["stats"] for entry in shard_stats], rank_start, limit)
    return total_classified, stats, generated_line_count, generated_source_bytes, shard_stats, group_stats


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank-start", type=int, default=DEFAULT_RANK_START)
    parser.add_argument("--limit", type=int, default=DEFAULT_LIMIT)
    parser.add_argument("--max-cases", type=int, default=None)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--emit-shards", action="store_true")
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_OUT_DIR)
    parser.add_argument("--shard-size", type=int, default=1)
    parser.add_argument("--group-size", type=int, default=32)
    parser.add_argument("--module-prefix", default=DEFAULT_MODULE_PREFIX)
    parser.add_argument("--root-out", type=Path, default=None)
    parser.add_argument("--root-module-namespace", default=None)
    parser.add_argument("--summary", type=Path, default=DEFAULT_SUMMARY)
    parser.add_argument("--module-namespace", default=DEFAULT_MODULE_NAMESPACE)
    args = parser.parse_args()

    if args.rank_start < 0:
        raise ValueError("--rank-start must be nonnegative")
    if args.limit < 0:
        raise ValueError("--limit must be nonnegative")
    if args.rank_start + args.limit > exact.EXPECTED_PAIR_WORDS:
        raise ValueError("requested range exceeds pair-word count")
    if args.emit_shards and args.max_cases is not None:
        raise ValueError("--max-cases is only supported for single-file emission")

    rank_end = args.rank_start + args.limit
    shard_stats: list[dict[str, Any]] = []
    group_stats: list[dict[str, Any]] = []
    if args.emit_shards:
        module_prefix = validate_module_namespace(args.module_prefix)
        root_module_namespace = validate_module_namespace(
            args.root_module_namespace
            or f"{module_prefix}.{root_suffix(args.rank_start, rank_end)}"
        )
        root_out = args.root_out or (args.out_dir / f"{root_suffix(args.rank_start, rank_end)}.lean")
        if args.dry_run:
            classified, _by_rank, stats = collect_classified_cases(
                args.rank_start,
                args.limit,
                max_cases=None,
            )
            generated_line_count = 0
            generated_source_bytes = 0
            classified_count = len(classified)
        else:
            (
                classified_count,
                stats,
                generated_line_count,
                generated_source_bytes,
                shard_stats,
                group_stats,
            ) = emit_shards(
                rank_start=args.rank_start,
                limit=args.limit,
                shard_size=args.shard_size,
                group_size=args.group_size,
                module_prefix=module_prefix,
                out_dir=args.out_dir,
                root_module_namespace=root_module_namespace,
                root_out=root_out,
            )
        module_namespace = root_module_namespace
        output_path = root_out
    else:
        module_namespace = validate_module_namespace(args.module_namespace)
        if args.dry_run:
            classified, by_rank, stats = collect_classified_cases(
                args.rank_start,
                args.limit,
                max_cases=args.max_cases,
            )
            lines = module_lines(
                module_namespace=module_namespace,
                rank_start=args.rank_start,
                limit=args.limit,
                classified=classified,
                by_rank=by_rank,
            )
            generated_line_count = len(lines)
            generated_source_bytes = 0
            classified_count = len(classified)
        else:
            classified, stats, generated_line_count, generated_source_bytes = emit_single_file(
                rank_start=args.rank_start,
                limit=args.limit,
                max_cases=args.max_cases,
                module_namespace=module_namespace,
                out=args.out,
            )
            classified_count = len(classified)
        output_path = args.out

    summary = {
        "schema_version": 1,
        "mode": "translation_row_relation_classifier",
        "trusted_as_proof": False,
        "dry_run": args.dry_run,
        "emit_shards": args.emit_shards,
        "options": {
            "rank_start": args.rank_start,
            "limit": args.limit,
            "max_cases": args.max_cases,
            "out": str(output_path),
            "out_dir": str(args.out_dir),
            "shard_size": args.shard_size,
            "group_size": args.group_size,
            "module_namespace": module_namespace,
        },
        "stats": stats,
        "shards": shard_stats,
        "groups": group_stats,
        "generated_line_count": generated_line_count,
        "generated_source_bytes": generated_source_bytes,
    }
    args.summary.parent.mkdir(parents=True, exist_ok=True)
    args.summary.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
    verb = "would emit" if args.dry_run else "emitted"
    print(
        f"{verb} {classified_count} row-relation survivor cases "
        f"for ranks [{args.rank_start}, {args.rank_start + args.limit})"
    )
    print(f"summary: {args.summary}")
    if not args.dry_run:
        print(f"generated: {output_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
