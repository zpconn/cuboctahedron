import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group023

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000736_rank : Fin numPairWords := ⟨519, by decide⟩
private def case_000736_mask : SignMask := ⟨24, by decide⟩
private def case_000736_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000736_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000736_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000736_b : Vec3 Rat := { x := (-20/81), y := (-724/81), z := (-1012/81) }
private def case_000736_firstLine : StrictLin2 := { a := -1, b := -1, c := (-863/5) }
private def case_000736_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000736_rankWord :
    rankPairWord? case_000736_word = some case_000736_rank := by
  decide

private theorem case_000736_unrank :
    unrankPairWord case_000736_rank = case_000736_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000736_word case_000736_rank).1
    case_000736_rankWord |>.symm

private theorem case_000736_seqChoice :
    translationChoiceSeq case_000736_word case_000736_mask = case_000736_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000736_seqAtRank :
    translationSeqAtRankMask case_000736_rank case_000736_mask = case_000736_seq := by
  rw [translationSeqAtRankMask, case_000736_unrank]
  exact case_000736_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000736_bAtRank :
    translationBAtRankMask case_000736_rank case_000736_mask = case_000736_b := by
  rw [translationBAtRankMask, case_000736_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000736_b, case_000736_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000736_firstLine_eq :
    case_000736_support.firstLine case_000736_seq case_000736_b = case_000736_firstLine := by
  norm_num [case_000736_firstLine, case_000736_support, case_000736_seq, case_000736_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000736_secondLine_eq :
    case_000736_support.secondLine case_000736_seq case_000736_b = case_000736_secondLine := by
  norm_num [case_000736_secondLine, case_000736_support, case_000736_seq, case_000736_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000736_sourceAgrees :
    SourceAgrees case_000736_support case_000736_rank.val case_000736_mask := by
  intro hlt
  have hrank : (⟨case_000736_rank.val, hlt⟩ : Fin numPairWords) = case_000736_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000736_rank.val, hlt⟩ case_000736_mask =
        case_000736_seq := by
    simpa [hrank] using case_000736_seqAtRank
  simp [SourceChecks, hseq, case_000736_support,
    checkTranslationConstraintSource, case_000736_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000736_rows :
    EqEqPosVarFirstRows case_000736_support case_000736_rank.val case_000736_mask := by
  intro hlt
  have hrank : (⟨case_000736_rank.val, hlt⟩ : Fin numPairWords) = case_000736_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000736_rank.val, hlt⟩ case_000736_mask =
        case_000736_seq := by
    simpa [hrank] using case_000736_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000736_rank.val, hlt⟩ case_000736_mask =
        case_000736_b := by
    simpa [hrank] using case_000736_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000736_support case_000736_rank.val hlt
          case_000736_mask = case_000736_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000736_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000736_support case_000736_rank.val hlt
          case_000736_mask = case_000736_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000736_secondLine_eq]
  have case_000736_rowFirst :
      EqEqPosRow (FirstLineAt case_000736_support case_000736_rank.val hlt case_000736_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000736_firstLine, EqEqPosRow]
  have case_000736_fixedSecond :
      FixedRow (SecondLineAt case_000736_support case_000736_rank.val hlt case_000736_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000736_secondLine, FixedRow]
  exact ⟨case_000736_rowFirst, case_000736_fixedSecond⟩

private theorem case_000736_existsRows :
    ExistsEqEqPosVarFirstRows case_000736_rank.val case_000736_mask :=
  ⟨case_000736_support, case_000736_sourceAgrees, case_000736_rows⟩

private theorem case_000736_covered :
    RowPropertyParametricCovered case_000736_rank.val case_000736_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000736_existsRows

/-- Bounded row-property quotient case `axis_a_only|rowProperty=99f0182e8e5325302f13d261b30a448ebe459a6be20e38295401a040d484dc96`. -/
private def case_000737_rank : Fin numPairWords := ⟨561, by decide⟩
private def case_000737_mask : SignMask := ⟨5, by decide⟩
private def case_000737_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000737_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def case_000737_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000737_b : Vec3 Rat := { x := (-1348/81), y := (868/81), z := (-68/81) }
private def case_000737_firstLine : StrictLin2 := { a := (-337/217), b := 0, c := (-143/217) }
private def case_000737_secondLine : StrictLin2 := { a := (81/868), b := 0, c := (-7857/292516) }

private theorem case_000737_rankWord :
    rankPairWord? case_000737_word = some case_000737_rank := by
  decide

private theorem case_000737_unrank :
    unrankPairWord case_000737_rank = case_000737_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000737_word case_000737_rank).1
    case_000737_rankWord |>.symm

private theorem case_000737_seqChoice :
    translationChoiceSeq case_000737_word case_000737_mask = case_000737_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000737_seqAtRank :
    translationSeqAtRankMask case_000737_rank case_000737_mask = case_000737_seq := by
  rw [translationSeqAtRankMask, case_000737_unrank]
  exact case_000737_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000737_bAtRank :
    translationBAtRankMask case_000737_rank case_000737_mask = case_000737_b := by
  rw [translationBAtRankMask, case_000737_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000737_b, case_000737_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000737_firstLine_eq :
    case_000737_support.firstLine case_000737_seq case_000737_b = case_000737_firstLine := by
  norm_num [case_000737_firstLine, case_000737_support, case_000737_seq, case_000737_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000737_secondLine_eq :
    case_000737_support.secondLine case_000737_seq case_000737_b = case_000737_secondLine := by
  norm_num [case_000737_secondLine, case_000737_support, case_000737_seq, case_000737_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000737_sourceAgrees :
    SourceAgrees case_000737_support case_000737_rank.val case_000737_mask := by
  intro hlt
  have hrank : (⟨case_000737_rank.val, hlt⟩ : Fin numPairWords) = case_000737_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000737_rank.val, hlt⟩ case_000737_mask =
        case_000737_seq := by
    simpa [hrank] using case_000737_seqAtRank
  simp [SourceChecks, hseq, case_000737_support,
    checkTranslationConstraintSource, case_000737_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000737_rows :
    AxisAOnlyRows case_000737_support case_000737_rank.val case_000737_mask := by
  intro hlt
  have hrank : (⟨case_000737_rank.val, hlt⟩ : Fin numPairWords) = case_000737_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000737_rank.val, hlt⟩ case_000737_mask =
        case_000737_seq := by
    simpa [hrank] using case_000737_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000737_rank.val, hlt⟩ case_000737_mask =
        case_000737_b := by
    simpa [hrank] using case_000737_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000737_support case_000737_rank.val hlt
          case_000737_mask = case_000737_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000737_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000737_support case_000737_rank.val hlt
          case_000737_mask = case_000737_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000737_secondLine_eq]
  have case_000737_firstBZero :
      (FirstLineAt case_000737_support case_000737_rank.val hlt case_000737_mask).b = 0 := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000737_firstLine]
  have case_000737_secondBZero :
      (SecondLineAt case_000737_support case_000737_rank.val hlt case_000737_mask).b = 0 := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000737_secondLine]
  have case_000737_aProductNeg :
      (FirstLineAt case_000737_support case_000737_rank.val hlt case_000737_mask).a *
          (SecondLineAt case_000737_support case_000737_rank.val hlt case_000737_mask).a < 0 := by
    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]
    norm_num [case_000737_firstLine, case_000737_secondLine]
  have case_000737_weightedCNonpos :
      (SupportPair.multipliersAt case_000737_support
          case_000737_rank.val hlt case_000737_mask).1 *
          (FirstLineAt case_000737_support case_000737_rank.val hlt case_000737_mask).c +
        (SupportPair.multipliersAt case_000737_support
          case_000737_rank.val hlt case_000737_mask).2 *
          (SecondLineAt case_000737_support case_000737_rank.val hlt case_000737_mask).c <= 0 := by
    rw [
SupportPair.multipliersAt, hseq, hb,
      TwoSourceFarkasSupport.multipliers, case_000737_firstLine_eq,
      case_000737_secondLine_eq, FirstLineAt, SecondLineAt, hfirst, hsecond
    ]
    norm_num [
case_000737_firstLine, case_000737_secondLine,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative
    ]
  exact ⟨case_000737_firstBZero, case_000737_secondBZero,
    case_000737_aProductNeg, case_000737_weightedCNonpos⟩

private theorem case_000737_existsRows :
    ExistsAxisAOnlyRows case_000737_rank.val case_000737_mask :=
  ⟨case_000737_support, case_000737_sourceAgrees, case_000737_rows⟩

private theorem case_000737_covered :
    RowPropertyParametricCovered case_000737_rank.val case_000737_mask :=
  RowPropertyParametricCovered.axisAOnly case_000737_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000738_rank : Fin numPairWords := ⟨561, by decide⟩
private def case_000738_mask : SignMask := ⟨7, by decide⟩
private def case_000738_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000738_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000738_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000738_b : Vec3 Rat := { x := (-1348/81), y := (868/81), z := (580/81) }
private def case_000738_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000738_secondLine : StrictLin2 := { a := (-1011/22834), b := (-1011/22834), c := (-1329/11417) }

private theorem case_000738_rankWord :
    rankPairWord? case_000738_word = some case_000738_rank := by
  decide

private theorem case_000738_unrank :
    unrankPairWord case_000738_rank = case_000738_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000738_word case_000738_rank).1
    case_000738_rankWord |>.symm

private theorem case_000738_seqChoice :
    translationChoiceSeq case_000738_word case_000738_mask = case_000738_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000738_seqAtRank :
    translationSeqAtRankMask case_000738_rank case_000738_mask = case_000738_seq := by
  rw [translationSeqAtRankMask, case_000738_unrank]
  exact case_000738_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000738_bAtRank :
    translationBAtRankMask case_000738_rank case_000738_mask = case_000738_b := by
  rw [translationBAtRankMask, case_000738_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000738_b, case_000738_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000738_firstLine_eq :
    case_000738_support.firstLine case_000738_seq case_000738_b = case_000738_firstLine := by
  norm_num [case_000738_firstLine, case_000738_support, case_000738_seq, case_000738_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000738_secondLine_eq :
    case_000738_support.secondLine case_000738_seq case_000738_b = case_000738_secondLine := by
  norm_num [case_000738_secondLine, case_000738_support, case_000738_seq, case_000738_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000738_sourceAgrees :
    SourceAgrees case_000738_support case_000738_rank.val case_000738_mask := by
  intro hlt
  have hrank : (⟨case_000738_rank.val, hlt⟩ : Fin numPairWords) = case_000738_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000738_rank.val, hlt⟩ case_000738_mask =
        case_000738_seq := by
    simpa [hrank] using case_000738_seqAtRank
  simp [SourceChecks, hseq, case_000738_support,
    checkTranslationConstraintSource, case_000738_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000738_rows :
    EqEqPosVarSecondRows case_000738_support case_000738_rank.val case_000738_mask := by
  intro hlt
  have hrank : (⟨case_000738_rank.val, hlt⟩ : Fin numPairWords) = case_000738_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000738_rank.val, hlt⟩ case_000738_mask =
        case_000738_seq := by
    simpa [hrank] using case_000738_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000738_rank.val, hlt⟩ case_000738_mask =
        case_000738_b := by
    simpa [hrank] using case_000738_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000738_support case_000738_rank.val hlt
          case_000738_mask = case_000738_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000738_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000738_support case_000738_rank.val hlt
          case_000738_mask = case_000738_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000738_secondLine_eq]
  have case_000738_fixedFirst :
      FixedRow (FirstLineAt case_000738_support case_000738_rank.val hlt case_000738_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000738_firstLine, FixedRow]
  have case_000738_rowSecond :
      EqEqPosRow (SecondLineAt case_000738_support case_000738_rank.val hlt case_000738_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000738_secondLine, EqEqPosRow]
  exact ⟨case_000738_fixedFirst, case_000738_rowSecond⟩

private theorem case_000738_existsRows :
    ExistsEqEqPosVarSecondRows case_000738_rank.val case_000738_mask :=
  ⟨case_000738_support, case_000738_sourceAgrees, case_000738_rows⟩

private theorem case_000738_covered :
    RowPropertyParametricCovered case_000738_rank.val case_000738_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000738_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000739_rank : Fin numPairWords := ⟨561, by decide⟩
private def case_000739_mask : SignMask := ⟨8, by decide⟩
private def case_000739_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000739_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000739_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000739_b : Vec3 Rat := { x := (-356/81), y := (-388/81), z := (-964/81) }
private def case_000739_firstLine : StrictLin2 := { a := -1, b := -1, c := (-587/89) }
private def case_000739_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000739_rankWord :
    rankPairWord? case_000739_word = some case_000739_rank := by
  decide

private theorem case_000739_unrank :
    unrankPairWord case_000739_rank = case_000739_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000739_word case_000739_rank).1
    case_000739_rankWord |>.symm

private theorem case_000739_seqChoice :
    translationChoiceSeq case_000739_word case_000739_mask = case_000739_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000739_seqAtRank :
    translationSeqAtRankMask case_000739_rank case_000739_mask = case_000739_seq := by
  rw [translationSeqAtRankMask, case_000739_unrank]
  exact case_000739_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000739_bAtRank :
    translationBAtRankMask case_000739_rank case_000739_mask = case_000739_b := by
  rw [translationBAtRankMask, case_000739_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000739_b, case_000739_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000739_firstLine_eq :
    case_000739_support.firstLine case_000739_seq case_000739_b = case_000739_firstLine := by
  norm_num [case_000739_firstLine, case_000739_support, case_000739_seq, case_000739_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000739_secondLine_eq :
    case_000739_support.secondLine case_000739_seq case_000739_b = case_000739_secondLine := by
  norm_num [case_000739_secondLine, case_000739_support, case_000739_seq, case_000739_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000739_sourceAgrees :
    SourceAgrees case_000739_support case_000739_rank.val case_000739_mask := by
  intro hlt
  have hrank : (⟨case_000739_rank.val, hlt⟩ : Fin numPairWords) = case_000739_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000739_rank.val, hlt⟩ case_000739_mask =
        case_000739_seq := by
    simpa [hrank] using case_000739_seqAtRank
  simp [SourceChecks, hseq, case_000739_support,
    checkTranslationConstraintSource, case_000739_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000739_rows :
    EqEqPosVarFirstRows case_000739_support case_000739_rank.val case_000739_mask := by
  intro hlt
  have hrank : (⟨case_000739_rank.val, hlt⟩ : Fin numPairWords) = case_000739_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000739_rank.val, hlt⟩ case_000739_mask =
        case_000739_seq := by
    simpa [hrank] using case_000739_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000739_rank.val, hlt⟩ case_000739_mask =
        case_000739_b := by
    simpa [hrank] using case_000739_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000739_support case_000739_rank.val hlt
          case_000739_mask = case_000739_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000739_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000739_support case_000739_rank.val hlt
          case_000739_mask = case_000739_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000739_secondLine_eq]
  have case_000739_rowFirst :
      EqEqPosRow (FirstLineAt case_000739_support case_000739_rank.val hlt case_000739_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000739_firstLine, EqEqPosRow]
  have case_000739_fixedSecond :
      FixedRow (SecondLineAt case_000739_support case_000739_rank.val hlt case_000739_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000739_secondLine, FixedRow]
  exact ⟨case_000739_rowFirst, case_000739_fixedSecond⟩

private theorem case_000739_existsRows :
    ExistsEqEqPosVarFirstRows case_000739_rank.val case_000739_mask :=
  ⟨case_000739_support, case_000739_sourceAgrees, case_000739_rows⟩

private theorem case_000739_covered :
    RowPropertyParametricCovered case_000739_rank.val case_000739_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000739_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000740_rank : Fin numPairWords := ⟨561, by decide⟩
private def case_000740_mask : SignMask := ⟨9, by decide⟩
private def case_000740_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000740_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000740_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000740_b : Vec3 Rat := { x := (-356/81), y := (260/81), z := (-964/81) }
private def case_000740_firstLine : StrictLin2 := { a := -1, b := -1, c := (-263/89) }
private def case_000740_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000740_rankWord :
    rankPairWord? case_000740_word = some case_000740_rank := by
  decide

private theorem case_000740_unrank :
    unrankPairWord case_000740_rank = case_000740_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000740_word case_000740_rank).1
    case_000740_rankWord |>.symm

private theorem case_000740_seqChoice :
    translationChoiceSeq case_000740_word case_000740_mask = case_000740_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000740_seqAtRank :
    translationSeqAtRankMask case_000740_rank case_000740_mask = case_000740_seq := by
  rw [translationSeqAtRankMask, case_000740_unrank]
  exact case_000740_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000740_bAtRank :
    translationBAtRankMask case_000740_rank case_000740_mask = case_000740_b := by
  rw [translationBAtRankMask, case_000740_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000740_b, case_000740_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000740_firstLine_eq :
    case_000740_support.firstLine case_000740_seq case_000740_b = case_000740_firstLine := by
  norm_num [case_000740_firstLine, case_000740_support, case_000740_seq, case_000740_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000740_secondLine_eq :
    case_000740_support.secondLine case_000740_seq case_000740_b = case_000740_secondLine := by
  norm_num [case_000740_secondLine, case_000740_support, case_000740_seq, case_000740_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000740_sourceAgrees :
    SourceAgrees case_000740_support case_000740_rank.val case_000740_mask := by
  intro hlt
  have hrank : (⟨case_000740_rank.val, hlt⟩ : Fin numPairWords) = case_000740_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000740_rank.val, hlt⟩ case_000740_mask =
        case_000740_seq := by
    simpa [hrank] using case_000740_seqAtRank
  simp [SourceChecks, hseq, case_000740_support,
    checkTranslationConstraintSource, case_000740_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000740_rows :
    EqEqPosVarFirstRows case_000740_support case_000740_rank.val case_000740_mask := by
  intro hlt
  have hrank : (⟨case_000740_rank.val, hlt⟩ : Fin numPairWords) = case_000740_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000740_rank.val, hlt⟩ case_000740_mask =
        case_000740_seq := by
    simpa [hrank] using case_000740_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000740_rank.val, hlt⟩ case_000740_mask =
        case_000740_b := by
    simpa [hrank] using case_000740_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000740_support case_000740_rank.val hlt
          case_000740_mask = case_000740_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000740_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000740_support case_000740_rank.val hlt
          case_000740_mask = case_000740_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000740_secondLine_eq]
  have case_000740_rowFirst :
      EqEqPosRow (FirstLineAt case_000740_support case_000740_rank.val hlt case_000740_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000740_firstLine, EqEqPosRow]
  have case_000740_fixedSecond :
      FixedRow (SecondLineAt case_000740_support case_000740_rank.val hlt case_000740_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000740_secondLine, FixedRow]
  exact ⟨case_000740_rowFirst, case_000740_fixedSecond⟩

private theorem case_000740_existsRows :
    ExistsEqEqPosVarFirstRows case_000740_rank.val case_000740_mask :=
  ⟨case_000740_support, case_000740_sourceAgrees, case_000740_rows⟩

private theorem case_000740_covered :
    RowPropertyParametricCovered case_000740_rank.val case_000740_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000740_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000741_rank : Fin numPairWords := ⟨561, by decide⟩
private def case_000741_mask : SignMask := ⟨16, by decide⟩
private def case_000741_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000741_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000741_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000741_b : Vec3 Rat := { x := (-580/81), y := (-836/81), z := (-260/81) }
private def case_000741_firstLine : StrictLin2 := { a := -1, b := -1, c := (-403/145) }
private def case_000741_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000741_rankWord :
    rankPairWord? case_000741_word = some case_000741_rank := by
  decide

private theorem case_000741_unrank :
    unrankPairWord case_000741_rank = case_000741_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000741_word case_000741_rank).1
    case_000741_rankWord |>.symm

private theorem case_000741_seqChoice :
    translationChoiceSeq case_000741_word case_000741_mask = case_000741_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000741_seqAtRank :
    translationSeqAtRankMask case_000741_rank case_000741_mask = case_000741_seq := by
  rw [translationSeqAtRankMask, case_000741_unrank]
  exact case_000741_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000741_bAtRank :
    translationBAtRankMask case_000741_rank case_000741_mask = case_000741_b := by
  rw [translationBAtRankMask, case_000741_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000741_b, case_000741_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000741_firstLine_eq :
    case_000741_support.firstLine case_000741_seq case_000741_b = case_000741_firstLine := by
  norm_num [case_000741_firstLine, case_000741_support, case_000741_seq, case_000741_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000741_secondLine_eq :
    case_000741_support.secondLine case_000741_seq case_000741_b = case_000741_secondLine := by
  norm_num [case_000741_secondLine, case_000741_support, case_000741_seq, case_000741_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000741_sourceAgrees :
    SourceAgrees case_000741_support case_000741_rank.val case_000741_mask := by
  intro hlt
  have hrank : (⟨case_000741_rank.val, hlt⟩ : Fin numPairWords) = case_000741_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000741_rank.val, hlt⟩ case_000741_mask =
        case_000741_seq := by
    simpa [hrank] using case_000741_seqAtRank
  simp [SourceChecks, hseq, case_000741_support,
    checkTranslationConstraintSource, case_000741_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000741_rows :
    EqEqPosVarFirstRows case_000741_support case_000741_rank.val case_000741_mask := by
  intro hlt
  have hrank : (⟨case_000741_rank.val, hlt⟩ : Fin numPairWords) = case_000741_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000741_rank.val, hlt⟩ case_000741_mask =
        case_000741_seq := by
    simpa [hrank] using case_000741_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000741_rank.val, hlt⟩ case_000741_mask =
        case_000741_b := by
    simpa [hrank] using case_000741_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000741_support case_000741_rank.val hlt
          case_000741_mask = case_000741_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000741_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000741_support case_000741_rank.val hlt
          case_000741_mask = case_000741_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000741_secondLine_eq]
  have case_000741_rowFirst :
      EqEqPosRow (FirstLineAt case_000741_support case_000741_rank.val hlt case_000741_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000741_firstLine, EqEqPosRow]
  have case_000741_fixedSecond :
      FixedRow (SecondLineAt case_000741_support case_000741_rank.val hlt case_000741_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000741_secondLine, FixedRow]
  exact ⟨case_000741_rowFirst, case_000741_fixedSecond⟩

private theorem case_000741_existsRows :
    ExistsEqEqPosVarFirstRows case_000741_rank.val case_000741_mask :=
  ⟨case_000741_support, case_000741_sourceAgrees, case_000741_rows⟩

private theorem case_000741_covered :
    RowPropertyParametricCovered case_000741_rank.val case_000741_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000741_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000742_rank : Fin numPairWords := ⟨561, by decide⟩
private def case_000742_mask : SignMask := ⟨22, by decide⟩
private def case_000742_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000742_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000742_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000742_b : Vec3 Rat := { x := (-1012/81), y := (-404/81), z := (820/81) }
private def case_000742_firstLine : StrictLin2 := { a := -1, b := 1, c := (-359/253) }
private def case_000742_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000742_rankWord :
    rankPairWord? case_000742_word = some case_000742_rank := by
  decide

private theorem case_000742_unrank :
    unrankPairWord case_000742_rank = case_000742_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000742_word case_000742_rank).1
    case_000742_rankWord |>.symm

private theorem case_000742_seqChoice :
    translationChoiceSeq case_000742_word case_000742_mask = case_000742_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000742_seqAtRank :
    translationSeqAtRankMask case_000742_rank case_000742_mask = case_000742_seq := by
  rw [translationSeqAtRankMask, case_000742_unrank]
  exact case_000742_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000742_bAtRank :
    translationBAtRankMask case_000742_rank case_000742_mask = case_000742_b := by
  rw [translationBAtRankMask, case_000742_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000742_b, case_000742_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000742_firstLine_eq :
    case_000742_support.firstLine case_000742_seq case_000742_b = case_000742_firstLine := by
  norm_num [case_000742_firstLine, case_000742_support, case_000742_seq, case_000742_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000742_secondLine_eq :
    case_000742_support.secondLine case_000742_seq case_000742_b = case_000742_secondLine := by
  norm_num [case_000742_secondLine, case_000742_support, case_000742_seq, case_000742_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000742_sourceAgrees :
    SourceAgrees case_000742_support case_000742_rank.val case_000742_mask := by
  intro hlt
  have hrank : (⟨case_000742_rank.val, hlt⟩ : Fin numPairWords) = case_000742_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000742_rank.val, hlt⟩ case_000742_mask =
        case_000742_seq := by
    simpa [hrank] using case_000742_seqAtRank
  simp [SourceChecks, hseq, case_000742_support,
    checkTranslationConstraintSource, case_000742_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000742_rows :
    OppOneMinusVarFirstRows case_000742_support case_000742_rank.val case_000742_mask := by
  intro hlt
  have hrank : (⟨case_000742_rank.val, hlt⟩ : Fin numPairWords) = case_000742_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000742_rank.val, hlt⟩ case_000742_mask =
        case_000742_seq := by
    simpa [hrank] using case_000742_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000742_rank.val, hlt⟩ case_000742_mask =
        case_000742_b := by
    simpa [hrank] using case_000742_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000742_support case_000742_rank.val hlt
          case_000742_mask = case_000742_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000742_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000742_support case_000742_rank.val hlt
          case_000742_mask = case_000742_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000742_secondLine_eq]
  have case_000742_rowFirst :
      OppPosRow (FirstLineAt case_000742_support case_000742_rank.val hlt case_000742_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000742_firstLine, OppPosRow]
  have case_000742_fixedSecond :
      FixedRow (SecondLineAt case_000742_support case_000742_rank.val hlt case_000742_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000742_secondLine, FixedRow]
  exact ⟨case_000742_rowFirst, case_000742_fixedSecond⟩

private theorem case_000742_existsRows :
    ExistsOppOneMinusVarFirstRows case_000742_rank.val case_000742_mask :=
  ⟨case_000742_support, case_000742_sourceAgrees, case_000742_rows⟩

private theorem case_000742_covered :
    RowPropertyParametricCovered case_000742_rank.val case_000742_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000742_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000743_rank : Fin numPairWords := ⟨561, by decide⟩
private def case_000743_mask : SignMask := ⟨24, by decide⟩
private def case_000743_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000743_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000743_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000743_b : Vec3 Rat := { x := (-20/81), y := (-1012/81), z := (-724/81) }
private def case_000743_firstLine : StrictLin2 := { a := -1, b := -1, c := (-863/5) }
private def case_000743_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000743_rankWord :
    rankPairWord? case_000743_word = some case_000743_rank := by
  decide

private theorem case_000743_unrank :
    unrankPairWord case_000743_rank = case_000743_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000743_word case_000743_rank).1
    case_000743_rankWord |>.symm

private theorem case_000743_seqChoice :
    translationChoiceSeq case_000743_word case_000743_mask = case_000743_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000743_seqAtRank :
    translationSeqAtRankMask case_000743_rank case_000743_mask = case_000743_seq := by
  rw [translationSeqAtRankMask, case_000743_unrank]
  exact case_000743_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000743_bAtRank :
    translationBAtRankMask case_000743_rank case_000743_mask = case_000743_b := by
  rw [translationBAtRankMask, case_000743_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000743_b, case_000743_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000743_firstLine_eq :
    case_000743_support.firstLine case_000743_seq case_000743_b = case_000743_firstLine := by
  norm_num [case_000743_firstLine, case_000743_support, case_000743_seq, case_000743_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000743_secondLine_eq :
    case_000743_support.secondLine case_000743_seq case_000743_b = case_000743_secondLine := by
  norm_num [case_000743_secondLine, case_000743_support, case_000743_seq, case_000743_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000743_sourceAgrees :
    SourceAgrees case_000743_support case_000743_rank.val case_000743_mask := by
  intro hlt
  have hrank : (⟨case_000743_rank.val, hlt⟩ : Fin numPairWords) = case_000743_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000743_rank.val, hlt⟩ case_000743_mask =
        case_000743_seq := by
    simpa [hrank] using case_000743_seqAtRank
  simp [SourceChecks, hseq, case_000743_support,
    checkTranslationConstraintSource, case_000743_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000743_rows :
    EqEqPosVarFirstRows case_000743_support case_000743_rank.val case_000743_mask := by
  intro hlt
  have hrank : (⟨case_000743_rank.val, hlt⟩ : Fin numPairWords) = case_000743_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000743_rank.val, hlt⟩ case_000743_mask =
        case_000743_seq := by
    simpa [hrank] using case_000743_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000743_rank.val, hlt⟩ case_000743_mask =
        case_000743_b := by
    simpa [hrank] using case_000743_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000743_support case_000743_rank.val hlt
          case_000743_mask = case_000743_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000743_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000743_support case_000743_rank.val hlt
          case_000743_mask = case_000743_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000743_secondLine_eq]
  have case_000743_rowFirst :
      EqEqPosRow (FirstLineAt case_000743_support case_000743_rank.val hlt case_000743_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000743_firstLine, EqEqPosRow]
  have case_000743_fixedSecond :
      FixedRow (SecondLineAt case_000743_support case_000743_rank.val hlt case_000743_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000743_secondLine, FixedRow]
  exact ⟨case_000743_rowFirst, case_000743_fixedSecond⟩

private theorem case_000743_existsRows :
    ExistsEqEqPosVarFirstRows case_000743_rank.val case_000743_mask :=
  ⟨case_000743_support, case_000743_sourceAgrees, case_000743_rows⟩

private theorem case_000743_covered :
    RowPropertyParametricCovered case_000743_rank.val case_000743_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000743_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000744_rank : Fin numPairWords := ⟨582, by decide⟩
private def case_000744_mask : SignMask := ⟨0, by decide⟩
private def case_000744_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000744_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000744_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000744_b : Vec3 Rat := { x := (-268/27), y := (-140/27), z := (-140/27) }
private def case_000744_firstLine : StrictLin2 := { a := -1, b := -1, c := (-73/67) }
private def case_000744_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000744_rankWord :
    rankPairWord? case_000744_word = some case_000744_rank := by
  decide

private theorem case_000744_unrank :
    unrankPairWord case_000744_rank = case_000744_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000744_word case_000744_rank).1
    case_000744_rankWord |>.symm

private theorem case_000744_seqChoice :
    translationChoiceSeq case_000744_word case_000744_mask = case_000744_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000744_seqAtRank :
    translationSeqAtRankMask case_000744_rank case_000744_mask = case_000744_seq := by
  rw [translationSeqAtRankMask, case_000744_unrank]
  exact case_000744_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000744_bAtRank :
    translationBAtRankMask case_000744_rank case_000744_mask = case_000744_b := by
  rw [translationBAtRankMask, case_000744_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000744_b, case_000744_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000744_firstLine_eq :
    case_000744_support.firstLine case_000744_seq case_000744_b = case_000744_firstLine := by
  norm_num [case_000744_firstLine, case_000744_support, case_000744_seq, case_000744_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000744_secondLine_eq :
    case_000744_support.secondLine case_000744_seq case_000744_b = case_000744_secondLine := by
  norm_num [case_000744_secondLine, case_000744_support, case_000744_seq, case_000744_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000744_sourceAgrees :
    SourceAgrees case_000744_support case_000744_rank.val case_000744_mask := by
  intro hlt
  have hrank : (⟨case_000744_rank.val, hlt⟩ : Fin numPairWords) = case_000744_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000744_rank.val, hlt⟩ case_000744_mask =
        case_000744_seq := by
    simpa [hrank] using case_000744_seqAtRank
  simp [SourceChecks, hseq, case_000744_support,
    checkTranslationConstraintSource, case_000744_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000744_rows :
    EqEqPosVarFirstRows case_000744_support case_000744_rank.val case_000744_mask := by
  intro hlt
  have hrank : (⟨case_000744_rank.val, hlt⟩ : Fin numPairWords) = case_000744_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000744_rank.val, hlt⟩ case_000744_mask =
        case_000744_seq := by
    simpa [hrank] using case_000744_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000744_rank.val, hlt⟩ case_000744_mask =
        case_000744_b := by
    simpa [hrank] using case_000744_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000744_support case_000744_rank.val hlt
          case_000744_mask = case_000744_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000744_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000744_support case_000744_rank.val hlt
          case_000744_mask = case_000744_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000744_secondLine_eq]
  have case_000744_rowFirst :
      EqEqPosRow (FirstLineAt case_000744_support case_000744_rank.val hlt case_000744_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000744_firstLine, EqEqPosRow]
  have case_000744_fixedSecond :
      FixedRow (SecondLineAt case_000744_support case_000744_rank.val hlt case_000744_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000744_secondLine, FixedRow]
  exact ⟨case_000744_rowFirst, case_000744_fixedSecond⟩

private theorem case_000744_existsRows :
    ExistsEqEqPosVarFirstRows case_000744_rank.val case_000744_mask :=
  ⟨case_000744_support, case_000744_sourceAgrees, case_000744_rows⟩

private theorem case_000744_covered :
    RowPropertyParametricCovered case_000744_rank.val case_000744_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000744_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000745_rank : Fin numPairWords := ⟨582, by decide⟩
private def case_000745_mask : SignMask := ⟨7, by decide⟩
private def case_000745_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000745_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000745_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000745_b : Vec3 Rat := { x := (-412/27), y := (220/27), z := (220/27) }
private def case_000745_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000745_secondLine : StrictLin2 := { a := (-103/2130), b := (-103/2130), c := (-137/1065) }

private theorem case_000745_rankWord :
    rankPairWord? case_000745_word = some case_000745_rank := by
  decide

private theorem case_000745_unrank :
    unrankPairWord case_000745_rank = case_000745_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000745_word case_000745_rank).1
    case_000745_rankWord |>.symm

private theorem case_000745_seqChoice :
    translationChoiceSeq case_000745_word case_000745_mask = case_000745_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000745_seqAtRank :
    translationSeqAtRankMask case_000745_rank case_000745_mask = case_000745_seq := by
  rw [translationSeqAtRankMask, case_000745_unrank]
  exact case_000745_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000745_bAtRank :
    translationBAtRankMask case_000745_rank case_000745_mask = case_000745_b := by
  rw [translationBAtRankMask, case_000745_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000745_b, case_000745_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000745_firstLine_eq :
    case_000745_support.firstLine case_000745_seq case_000745_b = case_000745_firstLine := by
  norm_num [case_000745_firstLine, case_000745_support, case_000745_seq, case_000745_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000745_secondLine_eq :
    case_000745_support.secondLine case_000745_seq case_000745_b = case_000745_secondLine := by
  norm_num [case_000745_secondLine, case_000745_support, case_000745_seq, case_000745_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000745_sourceAgrees :
    SourceAgrees case_000745_support case_000745_rank.val case_000745_mask := by
  intro hlt
  have hrank : (⟨case_000745_rank.val, hlt⟩ : Fin numPairWords) = case_000745_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000745_rank.val, hlt⟩ case_000745_mask =
        case_000745_seq := by
    simpa [hrank] using case_000745_seqAtRank
  simp [SourceChecks, hseq, case_000745_support,
    checkTranslationConstraintSource, case_000745_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000745_rows :
    EqEqPosVarSecondRows case_000745_support case_000745_rank.val case_000745_mask := by
  intro hlt
  have hrank : (⟨case_000745_rank.val, hlt⟩ : Fin numPairWords) = case_000745_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000745_rank.val, hlt⟩ case_000745_mask =
        case_000745_seq := by
    simpa [hrank] using case_000745_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000745_rank.val, hlt⟩ case_000745_mask =
        case_000745_b := by
    simpa [hrank] using case_000745_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000745_support case_000745_rank.val hlt
          case_000745_mask = case_000745_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000745_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000745_support case_000745_rank.val hlt
          case_000745_mask = case_000745_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000745_secondLine_eq]
  have case_000745_fixedFirst :
      FixedRow (FirstLineAt case_000745_support case_000745_rank.val hlt case_000745_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000745_firstLine, FixedRow]
  have case_000745_rowSecond :
      EqEqPosRow (SecondLineAt case_000745_support case_000745_rank.val hlt case_000745_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000745_secondLine, EqEqPosRow]
  exact ⟨case_000745_fixedFirst, case_000745_rowSecond⟩

private theorem case_000745_existsRows :
    ExistsEqEqPosVarSecondRows case_000745_rank.val case_000745_mask :=
  ⟨case_000745_support, case_000745_sourceAgrees, case_000745_rows⟩

private theorem case_000745_covered :
    RowPropertyParametricCovered case_000745_rank.val case_000745_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000745_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000746_rank : Fin numPairWords := ⟨582, by decide⟩
private def case_000746_mask : SignMask := ⟨8, by decide⟩
private def case_000746_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000746_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000746_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000746_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-116/9) }
private def case_000746_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/13) }
private def case_000746_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000746_rankWord :
    rankPairWord? case_000746_word = some case_000746_rank := by
  decide

private theorem case_000746_unrank :
    unrankPairWord case_000746_rank = case_000746_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000746_word case_000746_rank).1
    case_000746_rankWord |>.symm

private theorem case_000746_seqChoice :
    translationChoiceSeq case_000746_word case_000746_mask = case_000746_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000746_seqAtRank :
    translationSeqAtRankMask case_000746_rank case_000746_mask = case_000746_seq := by
  rw [translationSeqAtRankMask, case_000746_unrank]
  exact case_000746_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000746_bAtRank :
    translationBAtRankMask case_000746_rank case_000746_mask = case_000746_b := by
  rw [translationBAtRankMask, case_000746_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000746_b, case_000746_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000746_firstLine_eq :
    case_000746_support.firstLine case_000746_seq case_000746_b = case_000746_firstLine := by
  norm_num [case_000746_firstLine, case_000746_support, case_000746_seq, case_000746_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000746_secondLine_eq :
    case_000746_support.secondLine case_000746_seq case_000746_b = case_000746_secondLine := by
  norm_num [case_000746_secondLine, case_000746_support, case_000746_seq, case_000746_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000746_sourceAgrees :
    SourceAgrees case_000746_support case_000746_rank.val case_000746_mask := by
  intro hlt
  have hrank : (⟨case_000746_rank.val, hlt⟩ : Fin numPairWords) = case_000746_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000746_rank.val, hlt⟩ case_000746_mask =
        case_000746_seq := by
    simpa [hrank] using case_000746_seqAtRank
  simp [SourceChecks, hseq, case_000746_support,
    checkTranslationConstraintSource, case_000746_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000746_rows :
    EqEqPosVarFirstRows case_000746_support case_000746_rank.val case_000746_mask := by
  intro hlt
  have hrank : (⟨case_000746_rank.val, hlt⟩ : Fin numPairWords) = case_000746_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000746_rank.val, hlt⟩ case_000746_mask =
        case_000746_seq := by
    simpa [hrank] using case_000746_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000746_rank.val, hlt⟩ case_000746_mask =
        case_000746_b := by
    simpa [hrank] using case_000746_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000746_support case_000746_rank.val hlt
          case_000746_mask = case_000746_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000746_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000746_support case_000746_rank.val hlt
          case_000746_mask = case_000746_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000746_secondLine_eq]
  have case_000746_rowFirst :
      EqEqPosRow (FirstLineAt case_000746_support case_000746_rank.val hlt case_000746_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000746_firstLine, EqEqPosRow]
  have case_000746_fixedSecond :
      FixedRow (SecondLineAt case_000746_support case_000746_rank.val hlt case_000746_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000746_secondLine, FixedRow]
  exact ⟨case_000746_rowFirst, case_000746_fixedSecond⟩

private theorem case_000746_existsRows :
    ExistsEqEqPosVarFirstRows case_000746_rank.val case_000746_mask :=
  ⟨case_000746_support, case_000746_sourceAgrees, case_000746_rows⟩

private theorem case_000746_covered :
    RowPropertyParametricCovered case_000746_rank.val case_000746_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000746_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000747_rank : Fin numPairWords := ⟨582, by decide⟩
private def case_000747_mask : SignMask := ⟨9, by decide⟩
private def case_000747_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000747_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000747_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000747_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000747_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000747_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000747_rankWord :
    rankPairWord? case_000747_word = some case_000747_rank := by
  decide

private theorem case_000747_unrank :
    unrankPairWord case_000747_rank = case_000747_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000747_word case_000747_rank).1
    case_000747_rankWord |>.symm

private theorem case_000747_seqChoice :
    translationChoiceSeq case_000747_word case_000747_mask = case_000747_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000747_seqAtRank :
    translationSeqAtRankMask case_000747_rank case_000747_mask = case_000747_seq := by
  rw [translationSeqAtRankMask, case_000747_unrank]
  exact case_000747_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000747_bAtRank :
    translationBAtRankMask case_000747_rank case_000747_mask = case_000747_b := by
  rw [translationBAtRankMask, case_000747_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000747_b, case_000747_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000747_firstLine_eq :
    case_000747_support.firstLine case_000747_seq case_000747_b = case_000747_firstLine := by
  norm_num [case_000747_firstLine, case_000747_support, case_000747_seq, case_000747_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000747_secondLine_eq :
    case_000747_support.secondLine case_000747_seq case_000747_b = case_000747_secondLine := by
  norm_num [case_000747_secondLine, case_000747_support, case_000747_seq, case_000747_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000747_sourceAgrees :
    SourceAgrees case_000747_support case_000747_rank.val case_000747_mask := by
  intro hlt
  have hrank : (⟨case_000747_rank.val, hlt⟩ : Fin numPairWords) = case_000747_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000747_rank.val, hlt⟩ case_000747_mask =
        case_000747_seq := by
    simpa [hrank] using case_000747_seqAtRank
  simp [SourceChecks, hseq, case_000747_support,
    checkTranslationConstraintSource, case_000747_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000747_rows :
    EqEqPosVarFirstRows case_000747_support case_000747_rank.val case_000747_mask := by
  intro hlt
  have hrank : (⟨case_000747_rank.val, hlt⟩ : Fin numPairWords) = case_000747_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000747_rank.val, hlt⟩ case_000747_mask =
        case_000747_seq := by
    simpa [hrank] using case_000747_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000747_rank.val, hlt⟩ case_000747_mask =
        case_000747_b := by
    simpa [hrank] using case_000747_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000747_support case_000747_rank.val hlt
          case_000747_mask = case_000747_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000747_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000747_support case_000747_rank.val hlt
          case_000747_mask = case_000747_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000747_secondLine_eq]
  have case_000747_rowFirst :
      EqEqPosRow (FirstLineAt case_000747_support case_000747_rank.val hlt case_000747_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000747_firstLine, EqEqPosRow]
  have case_000747_fixedSecond :
      FixedRow (SecondLineAt case_000747_support case_000747_rank.val hlt case_000747_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000747_secondLine, FixedRow]
  exact ⟨case_000747_rowFirst, case_000747_fixedSecond⟩

private theorem case_000747_existsRows :
    ExistsEqEqPosVarFirstRows case_000747_rank.val case_000747_mask :=
  ⟨case_000747_support, case_000747_sourceAgrees, case_000747_rows⟩

private theorem case_000747_covered :
    RowPropertyParametricCovered case_000747_rank.val case_000747_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000747_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000748_rank : Fin numPairWords := ⟨582, by decide⟩
private def case_000748_mask : SignMask := ⟨13, by decide⟩
private def case_000748_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000748_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000748_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000748_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000748_firstLine : StrictLin2 := { a := 1, b := -1, c := (-59/25) }
private def case_000748_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000748_rankWord :
    rankPairWord? case_000748_word = some case_000748_rank := by
  decide

private theorem case_000748_unrank :
    unrankPairWord case_000748_rank = case_000748_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000748_word case_000748_rank).1
    case_000748_rankWord |>.symm

private theorem case_000748_seqChoice :
    translationChoiceSeq case_000748_word case_000748_mask = case_000748_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000748_seqAtRank :
    translationSeqAtRankMask case_000748_rank case_000748_mask = case_000748_seq := by
  rw [translationSeqAtRankMask, case_000748_unrank]
  exact case_000748_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000748_bAtRank :
    translationBAtRankMask case_000748_rank case_000748_mask = case_000748_b := by
  rw [translationBAtRankMask, case_000748_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000748_b, case_000748_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000748_firstLine_eq :
    case_000748_support.firstLine case_000748_seq case_000748_b = case_000748_firstLine := by
  norm_num [case_000748_firstLine, case_000748_support, case_000748_seq, case_000748_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000748_secondLine_eq :
    case_000748_support.secondLine case_000748_seq case_000748_b = case_000748_secondLine := by
  norm_num [case_000748_secondLine, case_000748_support, case_000748_seq, case_000748_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000748_sourceAgrees :
    SourceAgrees case_000748_support case_000748_rank.val case_000748_mask := by
  intro hlt
  have hrank : (⟨case_000748_rank.val, hlt⟩ : Fin numPairWords) = case_000748_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000748_rank.val, hlt⟩ case_000748_mask =
        case_000748_seq := by
    simpa [hrank] using case_000748_seqAtRank
  simp [SourceChecks, hseq, case_000748_support,
    checkTranslationConstraintSource, case_000748_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000748_rows :
    OppMinusOneVarFirstRows case_000748_support case_000748_rank.val case_000748_mask := by
  intro hlt
  have hrank : (⟨case_000748_rank.val, hlt⟩ : Fin numPairWords) = case_000748_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000748_rank.val, hlt⟩ case_000748_mask =
        case_000748_seq := by
    simpa [hrank] using case_000748_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000748_rank.val, hlt⟩ case_000748_mask =
        case_000748_b := by
    simpa [hrank] using case_000748_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000748_support case_000748_rank.val hlt
          case_000748_mask = case_000748_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000748_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000748_support case_000748_rank.val hlt
          case_000748_mask = case_000748_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000748_secondLine_eq]
  have case_000748_rowFirst :
      OppNegRow (FirstLineAt case_000748_support case_000748_rank.val hlt case_000748_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000748_firstLine, OppNegRow]
  have case_000748_fixedSecond :
      FixedRow (SecondLineAt case_000748_support case_000748_rank.val hlt case_000748_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000748_secondLine, FixedRow]
  exact ⟨case_000748_rowFirst, case_000748_fixedSecond⟩

private theorem case_000748_existsRows :
    ExistsOppMinusOneVarFirstRows case_000748_rank.val case_000748_mask :=
  ⟨case_000748_support, case_000748_sourceAgrees, case_000748_rows⟩

private theorem case_000748_covered :
    RowPropertyParametricCovered case_000748_rank.val case_000748_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000748_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000749_rank : Fin numPairWords := ⟨582, by decide⟩
private def case_000749_mask : SignMask := ⟨16, by decide⟩
private def case_000749_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000749_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000749_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000749_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-20/9) }
private def case_000749_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/13) }
private def case_000749_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000749_rankWord :
    rankPairWord? case_000749_word = some case_000749_rank := by
  decide

private theorem case_000749_unrank :
    unrankPairWord case_000749_rank = case_000749_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000749_word case_000749_rank).1
    case_000749_rankWord |>.symm

private theorem case_000749_seqChoice :
    translationChoiceSeq case_000749_word case_000749_mask = case_000749_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000749_seqAtRank :
    translationSeqAtRankMask case_000749_rank case_000749_mask = case_000749_seq := by
  rw [translationSeqAtRankMask, case_000749_unrank]
  exact case_000749_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000749_bAtRank :
    translationBAtRankMask case_000749_rank case_000749_mask = case_000749_b := by
  rw [translationBAtRankMask, case_000749_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000749_b, case_000749_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000749_firstLine_eq :
    case_000749_support.firstLine case_000749_seq case_000749_b = case_000749_firstLine := by
  norm_num [case_000749_firstLine, case_000749_support, case_000749_seq, case_000749_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000749_secondLine_eq :
    case_000749_support.secondLine case_000749_seq case_000749_b = case_000749_secondLine := by
  norm_num [case_000749_secondLine, case_000749_support, case_000749_seq, case_000749_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000749_sourceAgrees :
    SourceAgrees case_000749_support case_000749_rank.val case_000749_mask := by
  intro hlt
  have hrank : (⟨case_000749_rank.val, hlt⟩ : Fin numPairWords) = case_000749_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000749_rank.val, hlt⟩ case_000749_mask =
        case_000749_seq := by
    simpa [hrank] using case_000749_seqAtRank
  simp [SourceChecks, hseq, case_000749_support,
    checkTranslationConstraintSource, case_000749_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000749_rows :
    EqEqPosVarFirstRows case_000749_support case_000749_rank.val case_000749_mask := by
  intro hlt
  have hrank : (⟨case_000749_rank.val, hlt⟩ : Fin numPairWords) = case_000749_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000749_rank.val, hlt⟩ case_000749_mask =
        case_000749_seq := by
    simpa [hrank] using case_000749_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000749_rank.val, hlt⟩ case_000749_mask =
        case_000749_b := by
    simpa [hrank] using case_000749_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000749_support case_000749_rank.val hlt
          case_000749_mask = case_000749_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000749_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000749_support case_000749_rank.val hlt
          case_000749_mask = case_000749_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000749_secondLine_eq]
  have case_000749_rowFirst :
      EqEqPosRow (FirstLineAt case_000749_support case_000749_rank.val hlt case_000749_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000749_firstLine, EqEqPosRow]
  have case_000749_fixedSecond :
      FixedRow (SecondLineAt case_000749_support case_000749_rank.val hlt case_000749_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000749_secondLine, FixedRow]
  exact ⟨case_000749_rowFirst, case_000749_fixedSecond⟩

private theorem case_000749_existsRows :
    ExistsEqEqPosVarFirstRows case_000749_rank.val case_000749_mask :=
  ⟨case_000749_support, case_000749_sourceAgrees, case_000749_rows⟩

private theorem case_000749_covered :
    RowPropertyParametricCovered case_000749_rank.val case_000749_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000749_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000750_rank : Fin numPairWords := ⟨582, by decide⟩
private def case_000750_mask : SignMask := ⟨18, by decide⟩
private def case_000750_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000750_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000750_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000750_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000750_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000750_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000750_rankWord :
    rankPairWord? case_000750_word = some case_000750_rank := by
  decide

private theorem case_000750_unrank :
    unrankPairWord case_000750_rank = case_000750_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000750_word case_000750_rank).1
    case_000750_rankWord |>.symm

private theorem case_000750_seqChoice :
    translationChoiceSeq case_000750_word case_000750_mask = case_000750_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000750_seqAtRank :
    translationSeqAtRankMask case_000750_rank case_000750_mask = case_000750_seq := by
  rw [translationSeqAtRankMask, case_000750_unrank]
  exact case_000750_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000750_bAtRank :
    translationBAtRankMask case_000750_rank case_000750_mask = case_000750_b := by
  rw [translationBAtRankMask, case_000750_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000750_b, case_000750_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000750_firstLine_eq :
    case_000750_support.firstLine case_000750_seq case_000750_b = case_000750_firstLine := by
  norm_num [case_000750_firstLine, case_000750_support, case_000750_seq, case_000750_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000750_secondLine_eq :
    case_000750_support.secondLine case_000750_seq case_000750_b = case_000750_secondLine := by
  norm_num [case_000750_secondLine, case_000750_support, case_000750_seq, case_000750_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000750_sourceAgrees :
    SourceAgrees case_000750_support case_000750_rank.val case_000750_mask := by
  intro hlt
  have hrank : (⟨case_000750_rank.val, hlt⟩ : Fin numPairWords) = case_000750_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000750_rank.val, hlt⟩ case_000750_mask =
        case_000750_seq := by
    simpa [hrank] using case_000750_seqAtRank
  simp [SourceChecks, hseq, case_000750_support,
    checkTranslationConstraintSource, case_000750_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000750_rows :
    EqEqPosVarFirstRows case_000750_support case_000750_rank.val case_000750_mask := by
  intro hlt
  have hrank : (⟨case_000750_rank.val, hlt⟩ : Fin numPairWords) = case_000750_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000750_rank.val, hlt⟩ case_000750_mask =
        case_000750_seq := by
    simpa [hrank] using case_000750_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000750_rank.val, hlt⟩ case_000750_mask =
        case_000750_b := by
    simpa [hrank] using case_000750_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000750_support case_000750_rank.val hlt
          case_000750_mask = case_000750_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000750_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000750_support case_000750_rank.val hlt
          case_000750_mask = case_000750_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000750_secondLine_eq]
  have case_000750_rowFirst :
      EqEqPosRow (FirstLineAt case_000750_support case_000750_rank.val hlt case_000750_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000750_firstLine, EqEqPosRow]
  have case_000750_fixedSecond :
      FixedRow (SecondLineAt case_000750_support case_000750_rank.val hlt case_000750_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000750_secondLine, FixedRow]
  exact ⟨case_000750_rowFirst, case_000750_fixedSecond⟩

private theorem case_000750_existsRows :
    ExistsEqEqPosVarFirstRows case_000750_rank.val case_000750_mask :=
  ⟨case_000750_support, case_000750_sourceAgrees, case_000750_rows⟩

private theorem case_000750_covered :
    RowPropertyParametricCovered case_000750_rank.val case_000750_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000750_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000751_rank : Fin numPairWords := ⟨582, by decide⟩
private def case_000751_mask : SignMask := ⟨22, by decide⟩
private def case_000751_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000751_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000751_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000751_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000751_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_000751_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000751_rankWord :
    rankPairWord? case_000751_word = some case_000751_rank := by
  decide

private theorem case_000751_unrank :
    unrankPairWord case_000751_rank = case_000751_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000751_word case_000751_rank).1
    case_000751_rankWord |>.symm

private theorem case_000751_seqChoice :
    translationChoiceSeq case_000751_word case_000751_mask = case_000751_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000751_seqAtRank :
    translationSeqAtRankMask case_000751_rank case_000751_mask = case_000751_seq := by
  rw [translationSeqAtRankMask, case_000751_unrank]
  exact case_000751_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000751_bAtRank :
    translationBAtRankMask case_000751_rank case_000751_mask = case_000751_b := by
  rw [translationBAtRankMask, case_000751_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000751_b, case_000751_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000751_firstLine_eq :
    case_000751_support.firstLine case_000751_seq case_000751_b = case_000751_firstLine := by
  norm_num [case_000751_firstLine, case_000751_support, case_000751_seq, case_000751_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000751_secondLine_eq :
    case_000751_support.secondLine case_000751_seq case_000751_b = case_000751_secondLine := by
  norm_num [case_000751_secondLine, case_000751_support, case_000751_seq, case_000751_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000751_sourceAgrees :
    SourceAgrees case_000751_support case_000751_rank.val case_000751_mask := by
  intro hlt
  have hrank : (⟨case_000751_rank.val, hlt⟩ : Fin numPairWords) = case_000751_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000751_rank.val, hlt⟩ case_000751_mask =
        case_000751_seq := by
    simpa [hrank] using case_000751_seqAtRank
  simp [SourceChecks, hseq, case_000751_support,
    checkTranslationConstraintSource, case_000751_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000751_rows :
    OppOneMinusVarFirstRows case_000751_support case_000751_rank.val case_000751_mask := by
  intro hlt
  have hrank : (⟨case_000751_rank.val, hlt⟩ : Fin numPairWords) = case_000751_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000751_rank.val, hlt⟩ case_000751_mask =
        case_000751_seq := by
    simpa [hrank] using case_000751_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000751_rank.val, hlt⟩ case_000751_mask =
        case_000751_b := by
    simpa [hrank] using case_000751_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000751_support case_000751_rank.val hlt
          case_000751_mask = case_000751_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000751_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000751_support case_000751_rank.val hlt
          case_000751_mask = case_000751_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000751_secondLine_eq]
  have case_000751_rowFirst :
      OppPosRow (FirstLineAt case_000751_support case_000751_rank.val hlt case_000751_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000751_firstLine, OppPosRow]
  have case_000751_fixedSecond :
      FixedRow (SecondLineAt case_000751_support case_000751_rank.val hlt case_000751_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000751_secondLine, FixedRow]
  exact ⟨case_000751_rowFirst, case_000751_fixedSecond⟩

private theorem case_000751_existsRows :
    ExistsOppOneMinusVarFirstRows case_000751_rank.val case_000751_mask :=
  ⟨case_000751_support, case_000751_sourceAgrees, case_000751_rows⟩

private theorem case_000751_covered :
    RowPropertyParametricCovered case_000751_rank.val case_000751_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000751_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000752_rank : Fin numPairWords := ⟨582, by decide⟩
private def case_000752_mask : SignMask := ⟨24, by decide⟩
private def case_000752_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000752_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000752_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000752_b : Vec3 Rat := { x := (-44/27), y := (-268/27), z := (-268/27) }
private def case_000752_firstLine : StrictLin2 := { a := -1, b := -1, c := (-257/11) }
private def case_000752_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000752_rankWord :
    rankPairWord? case_000752_word = some case_000752_rank := by
  decide

private theorem case_000752_unrank :
    unrankPairWord case_000752_rank = case_000752_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000752_word case_000752_rank).1
    case_000752_rankWord |>.symm

private theorem case_000752_seqChoice :
    translationChoiceSeq case_000752_word case_000752_mask = case_000752_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000752_seqAtRank :
    translationSeqAtRankMask case_000752_rank case_000752_mask = case_000752_seq := by
  rw [translationSeqAtRankMask, case_000752_unrank]
  exact case_000752_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000752_bAtRank :
    translationBAtRankMask case_000752_rank case_000752_mask = case_000752_b := by
  rw [translationBAtRankMask, case_000752_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000752_b, case_000752_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000752_firstLine_eq :
    case_000752_support.firstLine case_000752_seq case_000752_b = case_000752_firstLine := by
  norm_num [case_000752_firstLine, case_000752_support, case_000752_seq, case_000752_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000752_secondLine_eq :
    case_000752_support.secondLine case_000752_seq case_000752_b = case_000752_secondLine := by
  norm_num [case_000752_secondLine, case_000752_support, case_000752_seq, case_000752_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000752_sourceAgrees :
    SourceAgrees case_000752_support case_000752_rank.val case_000752_mask := by
  intro hlt
  have hrank : (⟨case_000752_rank.val, hlt⟩ : Fin numPairWords) = case_000752_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000752_rank.val, hlt⟩ case_000752_mask =
        case_000752_seq := by
    simpa [hrank] using case_000752_seqAtRank
  simp [SourceChecks, hseq, case_000752_support,
    checkTranslationConstraintSource, case_000752_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000752_rows :
    EqEqPosVarFirstRows case_000752_support case_000752_rank.val case_000752_mask := by
  intro hlt
  have hrank : (⟨case_000752_rank.val, hlt⟩ : Fin numPairWords) = case_000752_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000752_rank.val, hlt⟩ case_000752_mask =
        case_000752_seq := by
    simpa [hrank] using case_000752_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000752_rank.val, hlt⟩ case_000752_mask =
        case_000752_b := by
    simpa [hrank] using case_000752_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000752_support case_000752_rank.val hlt
          case_000752_mask = case_000752_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000752_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000752_support case_000752_rank.val hlt
          case_000752_mask = case_000752_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000752_secondLine_eq]
  have case_000752_rowFirst :
      EqEqPosRow (FirstLineAt case_000752_support case_000752_rank.val hlt case_000752_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000752_firstLine, EqEqPosRow]
  have case_000752_fixedSecond :
      FixedRow (SecondLineAt case_000752_support case_000752_rank.val hlt case_000752_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000752_secondLine, FixedRow]
  exact ⟨case_000752_rowFirst, case_000752_fixedSecond⟩

private theorem case_000752_existsRows :
    ExistsEqEqPosVarFirstRows case_000752_rank.val case_000752_mask :=
  ⟨case_000752_support, case_000752_sourceAgrees, case_000752_rows⟩

private theorem case_000752_covered :
    RowPropertyParametricCovered case_000752_rank.val case_000752_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000752_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000753_rank : Fin numPairWords := ⟨582, by decide⟩
private def case_000753_mask : SignMask := ⟨47, by decide⟩
private def case_000753_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000753_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000753_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000753_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000753_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000753_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_000753_rankWord :
    rankPairWord? case_000753_word = some case_000753_rank := by
  decide

private theorem case_000753_unrank :
    unrankPairWord case_000753_rank = case_000753_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000753_word case_000753_rank).1
    case_000753_rankWord |>.symm

private theorem case_000753_seqChoice :
    translationChoiceSeq case_000753_word case_000753_mask = case_000753_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000753_seqAtRank :
    translationSeqAtRankMask case_000753_rank case_000753_mask = case_000753_seq := by
  rw [translationSeqAtRankMask, case_000753_unrank]
  exact case_000753_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000753_bAtRank :
    translationBAtRankMask case_000753_rank case_000753_mask = case_000753_b := by
  rw [translationBAtRankMask, case_000753_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000753_b, case_000753_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000753_firstLine_eq :
    case_000753_support.firstLine case_000753_seq case_000753_b = case_000753_firstLine := by
  norm_num [case_000753_firstLine, case_000753_support, case_000753_seq, case_000753_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000753_secondLine_eq :
    case_000753_support.secondLine case_000753_seq case_000753_b = case_000753_secondLine := by
  norm_num [case_000753_secondLine, case_000753_support, case_000753_seq, case_000753_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000753_sourceAgrees :
    SourceAgrees case_000753_support case_000753_rank.val case_000753_mask := by
  intro hlt
  have hrank : (⟨case_000753_rank.val, hlt⟩ : Fin numPairWords) = case_000753_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000753_rank.val, hlt⟩ case_000753_mask =
        case_000753_seq := by
    simpa [hrank] using case_000753_seqAtRank
  simp [SourceChecks, hseq, case_000753_support,
    checkTranslationConstraintSource, case_000753_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000753_rows :
    EqEqPosVarSecondRows case_000753_support case_000753_rank.val case_000753_mask := by
  intro hlt
  have hrank : (⟨case_000753_rank.val, hlt⟩ : Fin numPairWords) = case_000753_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000753_rank.val, hlt⟩ case_000753_mask =
        case_000753_seq := by
    simpa [hrank] using case_000753_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000753_rank.val, hlt⟩ case_000753_mask =
        case_000753_b := by
    simpa [hrank] using case_000753_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000753_support case_000753_rank.val hlt
          case_000753_mask = case_000753_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000753_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000753_support case_000753_rank.val hlt
          case_000753_mask = case_000753_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000753_secondLine_eq]
  have case_000753_fixedFirst :
      FixedRow (FirstLineAt case_000753_support case_000753_rank.val hlt case_000753_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000753_firstLine, FixedRow]
  have case_000753_rowSecond :
      EqEqPosRow (SecondLineAt case_000753_support case_000753_rank.val hlt case_000753_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000753_secondLine, EqEqPosRow]
  exact ⟨case_000753_fixedFirst, case_000753_rowSecond⟩

private theorem case_000753_existsRows :
    ExistsEqEqPosVarSecondRows case_000753_rank.val case_000753_mask :=
  ⟨case_000753_support, case_000753_sourceAgrees, case_000753_rows⟩

private theorem case_000753_covered :
    RowPropertyParametricCovered case_000753_rank.val case_000753_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000753_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000754_rank : Fin numPairWords := ⟨582, by decide⟩
private def case_000754_mask : SignMask := ⟨55, by decide⟩
private def case_000754_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000754_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000754_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000754_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000754_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000754_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_000754_rankWord :
    rankPairWord? case_000754_word = some case_000754_rank := by
  decide

private theorem case_000754_unrank :
    unrankPairWord case_000754_rank = case_000754_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000754_word case_000754_rank).1
    case_000754_rankWord |>.symm

private theorem case_000754_seqChoice :
    translationChoiceSeq case_000754_word case_000754_mask = case_000754_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000754_seqAtRank :
    translationSeqAtRankMask case_000754_rank case_000754_mask = case_000754_seq := by
  rw [translationSeqAtRankMask, case_000754_unrank]
  exact case_000754_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000754_bAtRank :
    translationBAtRankMask case_000754_rank case_000754_mask = case_000754_b := by
  rw [translationBAtRankMask, case_000754_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000754_b, case_000754_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000754_firstLine_eq :
    case_000754_support.firstLine case_000754_seq case_000754_b = case_000754_firstLine := by
  norm_num [case_000754_firstLine, case_000754_support, case_000754_seq, case_000754_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000754_secondLine_eq :
    case_000754_support.secondLine case_000754_seq case_000754_b = case_000754_secondLine := by
  norm_num [case_000754_secondLine, case_000754_support, case_000754_seq, case_000754_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000754_sourceAgrees :
    SourceAgrees case_000754_support case_000754_rank.val case_000754_mask := by
  intro hlt
  have hrank : (⟨case_000754_rank.val, hlt⟩ : Fin numPairWords) = case_000754_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000754_rank.val, hlt⟩ case_000754_mask =
        case_000754_seq := by
    simpa [hrank] using case_000754_seqAtRank
  simp [SourceChecks, hseq, case_000754_support,
    checkTranslationConstraintSource, case_000754_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000754_rows :
    EqEqPosVarSecondRows case_000754_support case_000754_rank.val case_000754_mask := by
  intro hlt
  have hrank : (⟨case_000754_rank.val, hlt⟩ : Fin numPairWords) = case_000754_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000754_rank.val, hlt⟩ case_000754_mask =
        case_000754_seq := by
    simpa [hrank] using case_000754_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000754_rank.val, hlt⟩ case_000754_mask =
        case_000754_b := by
    simpa [hrank] using case_000754_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000754_support case_000754_rank.val hlt
          case_000754_mask = case_000754_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000754_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000754_support case_000754_rank.val hlt
          case_000754_mask = case_000754_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000754_secondLine_eq]
  have case_000754_fixedFirst :
      FixedRow (FirstLineAt case_000754_support case_000754_rank.val hlt case_000754_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000754_firstLine, FixedRow]
  have case_000754_rowSecond :
      EqEqPosRow (SecondLineAt case_000754_support case_000754_rank.val hlt case_000754_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000754_secondLine, EqEqPosRow]
  exact ⟨case_000754_fixedFirst, case_000754_rowSecond⟩

private theorem case_000754_existsRows :
    ExistsEqEqPosVarSecondRows case_000754_rank.val case_000754_mask :=
  ⟨case_000754_support, case_000754_sourceAgrees, case_000754_rows⟩

private theorem case_000754_covered :
    RowPropertyParametricCovered case_000754_rank.val case_000754_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000754_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000755_rank : Fin numPairWords := ⟨585, by decide⟩
private def case_000755_mask : SignMask := ⟨8, by decide⟩
private def case_000755_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000755_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000755_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000755_b : Vec3 Rat := { x := (-284/27), y := (-28/27), z := (-316/27) }
private def case_000755_firstLine : StrictLin2 := { a := -1, b := -1, c := (-101/71) }
private def case_000755_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000755_rankWord :
    rankPairWord? case_000755_word = some case_000755_rank := by
  decide

private theorem case_000755_unrank :
    unrankPairWord case_000755_rank = case_000755_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000755_word case_000755_rank).1
    case_000755_rankWord |>.symm

private theorem case_000755_seqChoice :
    translationChoiceSeq case_000755_word case_000755_mask = case_000755_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000755_seqAtRank :
    translationSeqAtRankMask case_000755_rank case_000755_mask = case_000755_seq := by
  rw [translationSeqAtRankMask, case_000755_unrank]
  exact case_000755_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000755_bAtRank :
    translationBAtRankMask case_000755_rank case_000755_mask = case_000755_b := by
  rw [translationBAtRankMask, case_000755_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000755_b, case_000755_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000755_firstLine_eq :
    case_000755_support.firstLine case_000755_seq case_000755_b = case_000755_firstLine := by
  norm_num [case_000755_firstLine, case_000755_support, case_000755_seq, case_000755_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000755_secondLine_eq :
    case_000755_support.secondLine case_000755_seq case_000755_b = case_000755_secondLine := by
  norm_num [case_000755_secondLine, case_000755_support, case_000755_seq, case_000755_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000755_sourceAgrees :
    SourceAgrees case_000755_support case_000755_rank.val case_000755_mask := by
  intro hlt
  have hrank : (⟨case_000755_rank.val, hlt⟩ : Fin numPairWords) = case_000755_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000755_rank.val, hlt⟩ case_000755_mask =
        case_000755_seq := by
    simpa [hrank] using case_000755_seqAtRank
  simp [SourceChecks, hseq, case_000755_support,
    checkTranslationConstraintSource, case_000755_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000755_rows :
    EqEqPosVarFirstRows case_000755_support case_000755_rank.val case_000755_mask := by
  intro hlt
  have hrank : (⟨case_000755_rank.val, hlt⟩ : Fin numPairWords) = case_000755_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000755_rank.val, hlt⟩ case_000755_mask =
        case_000755_seq := by
    simpa [hrank] using case_000755_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000755_rank.val, hlt⟩ case_000755_mask =
        case_000755_b := by
    simpa [hrank] using case_000755_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000755_support case_000755_rank.val hlt
          case_000755_mask = case_000755_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000755_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000755_support case_000755_rank.val hlt
          case_000755_mask = case_000755_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000755_secondLine_eq]
  have case_000755_rowFirst :
      EqEqPosRow (FirstLineAt case_000755_support case_000755_rank.val hlt case_000755_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000755_firstLine, EqEqPosRow]
  have case_000755_fixedSecond :
      FixedRow (SecondLineAt case_000755_support case_000755_rank.val hlt case_000755_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000755_secondLine, FixedRow]
  exact ⟨case_000755_rowFirst, case_000755_fixedSecond⟩

private theorem case_000755_existsRows :
    ExistsEqEqPosVarFirstRows case_000755_rank.val case_000755_mask :=
  ⟨case_000755_support, case_000755_sourceAgrees, case_000755_rows⟩

private theorem case_000755_covered :
    RowPropertyParametricCovered case_000755_rank.val case_000755_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000755_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000756_rank : Fin numPairWords := ⟨585, by decide⟩
private def case_000756_mask : SignMask := ⟨13, by decide⟩
private def case_000756_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000756_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000756_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000756_b : Vec3 Rat := { x := (-428/27), y := (332/27), z := (-172/27) }
private def case_000756_firstLine : StrictLin2 := { a := 1, b := -1, c := (-145/107) }
private def case_000756_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000756_rankWord :
    rankPairWord? case_000756_word = some case_000756_rank := by
  decide

private theorem case_000756_unrank :
    unrankPairWord case_000756_rank = case_000756_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000756_word case_000756_rank).1
    case_000756_rankWord |>.symm

private theorem case_000756_seqChoice :
    translationChoiceSeq case_000756_word case_000756_mask = case_000756_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000756_seqAtRank :
    translationSeqAtRankMask case_000756_rank case_000756_mask = case_000756_seq := by
  rw [translationSeqAtRankMask, case_000756_unrank]
  exact case_000756_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000756_bAtRank :
    translationBAtRankMask case_000756_rank case_000756_mask = case_000756_b := by
  rw [translationBAtRankMask, case_000756_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000756_b, case_000756_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000756_firstLine_eq :
    case_000756_support.firstLine case_000756_seq case_000756_b = case_000756_firstLine := by
  norm_num [case_000756_firstLine, case_000756_support, case_000756_seq, case_000756_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000756_secondLine_eq :
    case_000756_support.secondLine case_000756_seq case_000756_b = case_000756_secondLine := by
  norm_num [case_000756_secondLine, case_000756_support, case_000756_seq, case_000756_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000756_sourceAgrees :
    SourceAgrees case_000756_support case_000756_rank.val case_000756_mask := by
  intro hlt
  have hrank : (⟨case_000756_rank.val, hlt⟩ : Fin numPairWords) = case_000756_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000756_rank.val, hlt⟩ case_000756_mask =
        case_000756_seq := by
    simpa [hrank] using case_000756_seqAtRank
  simp [SourceChecks, hseq, case_000756_support,
    checkTranslationConstraintSource, case_000756_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000756_rows :
    OppMinusOneVarFirstRows case_000756_support case_000756_rank.val case_000756_mask := by
  intro hlt
  have hrank : (⟨case_000756_rank.val, hlt⟩ : Fin numPairWords) = case_000756_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000756_rank.val, hlt⟩ case_000756_mask =
        case_000756_seq := by
    simpa [hrank] using case_000756_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000756_rank.val, hlt⟩ case_000756_mask =
        case_000756_b := by
    simpa [hrank] using case_000756_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000756_support case_000756_rank.val hlt
          case_000756_mask = case_000756_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000756_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000756_support case_000756_rank.val hlt
          case_000756_mask = case_000756_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000756_secondLine_eq]
  have case_000756_rowFirst :
      OppNegRow (FirstLineAt case_000756_support case_000756_rank.val hlt case_000756_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000756_firstLine, OppNegRow]
  have case_000756_fixedSecond :
      FixedRow (SecondLineAt case_000756_support case_000756_rank.val hlt case_000756_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000756_secondLine, FixedRow]
  exact ⟨case_000756_rowFirst, case_000756_fixedSecond⟩

private theorem case_000756_existsRows :
    ExistsOppMinusOneVarFirstRows case_000756_rank.val case_000756_mask :=
  ⟨case_000756_support, case_000756_sourceAgrees, case_000756_rows⟩

private theorem case_000756_covered :
    RowPropertyParametricCovered case_000756_rank.val case_000756_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000756_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000757_rank : Fin numPairWords := ⟨585, by decide⟩
private def case_000757_mask : SignMask := ⟨15, by decide⟩
private def case_000757_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000757_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000757_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000757_b : Vec3 Rat := { x := (-428/27), y := (332/27), z := (44/27) }
private def case_000757_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000757_secondLine : StrictLin2 := { a := (-321/6566), b := (-321/6566), c := (-579/3283) }

private theorem case_000757_rankWord :
    rankPairWord? case_000757_word = some case_000757_rank := by
  decide

private theorem case_000757_unrank :
    unrankPairWord case_000757_rank = case_000757_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000757_word case_000757_rank).1
    case_000757_rankWord |>.symm

private theorem case_000757_seqChoice :
    translationChoiceSeq case_000757_word case_000757_mask = case_000757_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000757_seqAtRank :
    translationSeqAtRankMask case_000757_rank case_000757_mask = case_000757_seq := by
  rw [translationSeqAtRankMask, case_000757_unrank]
  exact case_000757_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000757_bAtRank :
    translationBAtRankMask case_000757_rank case_000757_mask = case_000757_b := by
  rw [translationBAtRankMask, case_000757_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000757_b, case_000757_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000757_firstLine_eq :
    case_000757_support.firstLine case_000757_seq case_000757_b = case_000757_firstLine := by
  norm_num [case_000757_firstLine, case_000757_support, case_000757_seq, case_000757_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000757_secondLine_eq :
    case_000757_support.secondLine case_000757_seq case_000757_b = case_000757_secondLine := by
  norm_num [case_000757_secondLine, case_000757_support, case_000757_seq, case_000757_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000757_sourceAgrees :
    SourceAgrees case_000757_support case_000757_rank.val case_000757_mask := by
  intro hlt
  have hrank : (⟨case_000757_rank.val, hlt⟩ : Fin numPairWords) = case_000757_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000757_rank.val, hlt⟩ case_000757_mask =
        case_000757_seq := by
    simpa [hrank] using case_000757_seqAtRank
  simp [SourceChecks, hseq, case_000757_support,
    checkTranslationConstraintSource, case_000757_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000757_rows :
    EqEqPosVarSecondRows case_000757_support case_000757_rank.val case_000757_mask := by
  intro hlt
  have hrank : (⟨case_000757_rank.val, hlt⟩ : Fin numPairWords) = case_000757_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000757_rank.val, hlt⟩ case_000757_mask =
        case_000757_seq := by
    simpa [hrank] using case_000757_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000757_rank.val, hlt⟩ case_000757_mask =
        case_000757_b := by
    simpa [hrank] using case_000757_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000757_support case_000757_rank.val hlt
          case_000757_mask = case_000757_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000757_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000757_support case_000757_rank.val hlt
          case_000757_mask = case_000757_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000757_secondLine_eq]
  have case_000757_fixedFirst :
      FixedRow (FirstLineAt case_000757_support case_000757_rank.val hlt case_000757_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000757_firstLine, FixedRow]
  have case_000757_rowSecond :
      EqEqPosRow (SecondLineAt case_000757_support case_000757_rank.val hlt case_000757_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000757_secondLine, EqEqPosRow]
  exact ⟨case_000757_fixedFirst, case_000757_rowSecond⟩

private theorem case_000757_existsRows :
    ExistsEqEqPosVarSecondRows case_000757_rank.val case_000757_mask :=
  ⟨case_000757_support, case_000757_sourceAgrees, case_000757_rows⟩

private theorem case_000757_covered :
    RowPropertyParametricCovered case_000757_rank.val case_000757_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000757_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000758_rank : Fin numPairWords := ⟨585, by decide⟩
private def case_000758_mask : SignMask := ⟨16, by decide⟩
private def case_000758_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000758_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000758_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000758_b : Vec3 Rat := { x := (-28/27), y := (-380/27), z := (-92/27) }
private def case_000758_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000758_secondLine : StrictLin2 := { a := (-21/1258), b := (-21/1258), c := (-316/629) }

private theorem case_000758_rankWord :
    rankPairWord? case_000758_word = some case_000758_rank := by
  decide

private theorem case_000758_unrank :
    unrankPairWord case_000758_rank = case_000758_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000758_word case_000758_rank).1
    case_000758_rankWord |>.symm

private theorem case_000758_seqChoice :
    translationChoiceSeq case_000758_word case_000758_mask = case_000758_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000758_seqAtRank :
    translationSeqAtRankMask case_000758_rank case_000758_mask = case_000758_seq := by
  rw [translationSeqAtRankMask, case_000758_unrank]
  exact case_000758_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000758_bAtRank :
    translationBAtRankMask case_000758_rank case_000758_mask = case_000758_b := by
  rw [translationBAtRankMask, case_000758_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000758_b, case_000758_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000758_firstLine_eq :
    case_000758_support.firstLine case_000758_seq case_000758_b = case_000758_firstLine := by
  norm_num [case_000758_firstLine, case_000758_support, case_000758_seq, case_000758_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000758_secondLine_eq :
    case_000758_support.secondLine case_000758_seq case_000758_b = case_000758_secondLine := by
  norm_num [case_000758_secondLine, case_000758_support, case_000758_seq, case_000758_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000758_sourceAgrees :
    SourceAgrees case_000758_support case_000758_rank.val case_000758_mask := by
  intro hlt
  have hrank : (⟨case_000758_rank.val, hlt⟩ : Fin numPairWords) = case_000758_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000758_rank.val, hlt⟩ case_000758_mask =
        case_000758_seq := by
    simpa [hrank] using case_000758_seqAtRank
  simp [SourceChecks, hseq, case_000758_support,
    checkTranslationConstraintSource, case_000758_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000758_rows :
    EqEqPosVarSecondRows case_000758_support case_000758_rank.val case_000758_mask := by
  intro hlt
  have hrank : (⟨case_000758_rank.val, hlt⟩ : Fin numPairWords) = case_000758_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000758_rank.val, hlt⟩ case_000758_mask =
        case_000758_seq := by
    simpa [hrank] using case_000758_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000758_rank.val, hlt⟩ case_000758_mask =
        case_000758_b := by
    simpa [hrank] using case_000758_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000758_support case_000758_rank.val hlt
          case_000758_mask = case_000758_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000758_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000758_support case_000758_rank.val hlt
          case_000758_mask = case_000758_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000758_secondLine_eq]
  have case_000758_fixedFirst :
      FixedRow (FirstLineAt case_000758_support case_000758_rank.val hlt case_000758_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000758_firstLine, FixedRow]
  have case_000758_rowSecond :
      EqEqPosRow (SecondLineAt case_000758_support case_000758_rank.val hlt case_000758_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000758_secondLine, EqEqPosRow]
  exact ⟨case_000758_fixedFirst, case_000758_rowSecond⟩

private theorem case_000758_existsRows :
    ExistsEqEqPosVarSecondRows case_000758_rank.val case_000758_mask :=
  ⟨case_000758_support, case_000758_sourceAgrees, case_000758_rows⟩

private theorem case_000758_covered :
    RowPropertyParametricCovered case_000758_rank.val case_000758_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000758_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000759_rank : Fin numPairWords := ⟨585, by decide⟩
private def case_000759_mask : SignMask := ⟨18, by decide⟩
private def case_000759_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000759_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000759_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000759_b : Vec3 Rat := { x := (-28/27), y := (-380/27), z := (124/27) }
private def case_000759_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000759_secondLine : StrictLin2 := { a := (-21/418), b := (-21/418), c := (-181/209) }

private theorem case_000759_rankWord :
    rankPairWord? case_000759_word = some case_000759_rank := by
  decide

private theorem case_000759_unrank :
    unrankPairWord case_000759_rank = case_000759_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000759_word case_000759_rank).1
    case_000759_rankWord |>.symm

private theorem case_000759_seqChoice :
    translationChoiceSeq case_000759_word case_000759_mask = case_000759_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000759_seqAtRank :
    translationSeqAtRankMask case_000759_rank case_000759_mask = case_000759_seq := by
  rw [translationSeqAtRankMask, case_000759_unrank]
  exact case_000759_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000759_bAtRank :
    translationBAtRankMask case_000759_rank case_000759_mask = case_000759_b := by
  rw [translationBAtRankMask, case_000759_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000759_b, case_000759_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000759_firstLine_eq :
    case_000759_support.firstLine case_000759_seq case_000759_b = case_000759_firstLine := by
  norm_num [case_000759_firstLine, case_000759_support, case_000759_seq, case_000759_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000759_secondLine_eq :
    case_000759_support.secondLine case_000759_seq case_000759_b = case_000759_secondLine := by
  norm_num [case_000759_secondLine, case_000759_support, case_000759_seq, case_000759_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000759_sourceAgrees :
    SourceAgrees case_000759_support case_000759_rank.val case_000759_mask := by
  intro hlt
  have hrank : (⟨case_000759_rank.val, hlt⟩ : Fin numPairWords) = case_000759_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000759_rank.val, hlt⟩ case_000759_mask =
        case_000759_seq := by
    simpa [hrank] using case_000759_seqAtRank
  simp [SourceChecks, hseq, case_000759_support,
    checkTranslationConstraintSource, case_000759_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000759_rows :
    EqEqPosVarSecondRows case_000759_support case_000759_rank.val case_000759_mask := by
  intro hlt
  have hrank : (⟨case_000759_rank.val, hlt⟩ : Fin numPairWords) = case_000759_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000759_rank.val, hlt⟩ case_000759_mask =
        case_000759_seq := by
    simpa [hrank] using case_000759_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000759_rank.val, hlt⟩ case_000759_mask =
        case_000759_b := by
    simpa [hrank] using case_000759_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000759_support case_000759_rank.val hlt
          case_000759_mask = case_000759_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000759_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000759_support case_000759_rank.val hlt
          case_000759_mask = case_000759_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000759_secondLine_eq]
  have case_000759_fixedFirst :
      FixedRow (FirstLineAt case_000759_support case_000759_rank.val hlt case_000759_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000759_firstLine, FixedRow]
  have case_000759_rowSecond :
      EqEqPosRow (SecondLineAt case_000759_support case_000759_rank.val hlt case_000759_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000759_secondLine, EqEqPosRow]
  exact ⟨case_000759_fixedFirst, case_000759_rowSecond⟩

private theorem case_000759_existsRows :
    ExistsEqEqPosVarSecondRows case_000759_rank.val case_000759_mask :=
  ⟨case_000759_support, case_000759_sourceAgrees, case_000759_rows⟩

private theorem case_000759_covered :
    RowPropertyParametricCovered case_000759_rank.val case_000759_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000759_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000760_rank : Fin numPairWords := ⟨585, by decide⟩
private def case_000760_mask : SignMask := ⟨22, by decide⟩
private def case_000760_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000760_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000760_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000760_b : Vec3 Rat := { x := (-172/27), y := (-236/27), z := (268/27) }
private def case_000760_firstLine : StrictLin2 := { a := -1, b := 1, c := (-209/43) }
private def case_000760_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000760_rankWord :
    rankPairWord? case_000760_word = some case_000760_rank := by
  decide

private theorem case_000760_unrank :
    unrankPairWord case_000760_rank = case_000760_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000760_word case_000760_rank).1
    case_000760_rankWord |>.symm

private theorem case_000760_seqChoice :
    translationChoiceSeq case_000760_word case_000760_mask = case_000760_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000760_seqAtRank :
    translationSeqAtRankMask case_000760_rank case_000760_mask = case_000760_seq := by
  rw [translationSeqAtRankMask, case_000760_unrank]
  exact case_000760_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000760_bAtRank :
    translationBAtRankMask case_000760_rank case_000760_mask = case_000760_b := by
  rw [translationBAtRankMask, case_000760_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000760_b, case_000760_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000760_firstLine_eq :
    case_000760_support.firstLine case_000760_seq case_000760_b = case_000760_firstLine := by
  norm_num [case_000760_firstLine, case_000760_support, case_000760_seq, case_000760_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000760_secondLine_eq :
    case_000760_support.secondLine case_000760_seq case_000760_b = case_000760_secondLine := by
  norm_num [case_000760_secondLine, case_000760_support, case_000760_seq, case_000760_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000760_sourceAgrees :
    SourceAgrees case_000760_support case_000760_rank.val case_000760_mask := by
  intro hlt
  have hrank : (⟨case_000760_rank.val, hlt⟩ : Fin numPairWords) = case_000760_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000760_rank.val, hlt⟩ case_000760_mask =
        case_000760_seq := by
    simpa [hrank] using case_000760_seqAtRank
  simp [SourceChecks, hseq, case_000760_support,
    checkTranslationConstraintSource, case_000760_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000760_rows :
    OppOneMinusVarFirstRows case_000760_support case_000760_rank.val case_000760_mask := by
  intro hlt
  have hrank : (⟨case_000760_rank.val, hlt⟩ : Fin numPairWords) = case_000760_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000760_rank.val, hlt⟩ case_000760_mask =
        case_000760_seq := by
    simpa [hrank] using case_000760_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000760_rank.val, hlt⟩ case_000760_mask =
        case_000760_b := by
    simpa [hrank] using case_000760_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000760_support case_000760_rank.val hlt
          case_000760_mask = case_000760_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000760_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000760_support case_000760_rank.val hlt
          case_000760_mask = case_000760_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000760_secondLine_eq]
  have case_000760_rowFirst :
      OppPosRow (FirstLineAt case_000760_support case_000760_rank.val hlt case_000760_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000760_firstLine, OppPosRow]
  have case_000760_fixedSecond :
      FixedRow (SecondLineAt case_000760_support case_000760_rank.val hlt case_000760_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000760_secondLine, FixedRow]
  exact ⟨case_000760_rowFirst, case_000760_fixedSecond⟩

private theorem case_000760_existsRows :
    ExistsOppOneMinusVarFirstRows case_000760_rank.val case_000760_mask :=
  ⟨case_000760_support, case_000760_sourceAgrees, case_000760_rows⟩

private theorem case_000760_covered :
    RowPropertyParametricCovered case_000760_rank.val case_000760_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000760_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000761_rank : Fin numPairWords := ⟨585, by decide⟩
private def case_000761_mask : SignMask := ⟨24, by decide⟩
private def case_000761_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000761_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000761_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000761_b : Vec3 Rat := { x := (-172/27), y := (-236/27), z := (-236/27) }
private def case_000761_firstLine : StrictLin2 := { a := -1, b := -1, c := (-193/43) }
private def case_000761_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000761_rankWord :
    rankPairWord? case_000761_word = some case_000761_rank := by
  decide

private theorem case_000761_unrank :
    unrankPairWord case_000761_rank = case_000761_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000761_word case_000761_rank).1
    case_000761_rankWord |>.symm

private theorem case_000761_seqChoice :
    translationChoiceSeq case_000761_word case_000761_mask = case_000761_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000761_seqAtRank :
    translationSeqAtRankMask case_000761_rank case_000761_mask = case_000761_seq := by
  rw [translationSeqAtRankMask, case_000761_unrank]
  exact case_000761_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000761_bAtRank :
    translationBAtRankMask case_000761_rank case_000761_mask = case_000761_b := by
  rw [translationBAtRankMask, case_000761_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000761_b, case_000761_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000761_firstLine_eq :
    case_000761_support.firstLine case_000761_seq case_000761_b = case_000761_firstLine := by
  norm_num [case_000761_firstLine, case_000761_support, case_000761_seq, case_000761_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000761_secondLine_eq :
    case_000761_support.secondLine case_000761_seq case_000761_b = case_000761_secondLine := by
  norm_num [case_000761_secondLine, case_000761_support, case_000761_seq, case_000761_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000761_sourceAgrees :
    SourceAgrees case_000761_support case_000761_rank.val case_000761_mask := by
  intro hlt
  have hrank : (⟨case_000761_rank.val, hlt⟩ : Fin numPairWords) = case_000761_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000761_rank.val, hlt⟩ case_000761_mask =
        case_000761_seq := by
    simpa [hrank] using case_000761_seqAtRank
  simp [SourceChecks, hseq, case_000761_support,
    checkTranslationConstraintSource, case_000761_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000761_rows :
    EqEqPosVarFirstRows case_000761_support case_000761_rank.val case_000761_mask := by
  intro hlt
  have hrank : (⟨case_000761_rank.val, hlt⟩ : Fin numPairWords) = case_000761_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000761_rank.val, hlt⟩ case_000761_mask =
        case_000761_seq := by
    simpa [hrank] using case_000761_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000761_rank.val, hlt⟩ case_000761_mask =
        case_000761_b := by
    simpa [hrank] using case_000761_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000761_support case_000761_rank.val hlt
          case_000761_mask = case_000761_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000761_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000761_support case_000761_rank.val hlt
          case_000761_mask = case_000761_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000761_secondLine_eq]
  have case_000761_rowFirst :
      EqEqPosRow (FirstLineAt case_000761_support case_000761_rank.val hlt case_000761_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000761_firstLine, EqEqPosRow]
  have case_000761_fixedSecond :
      FixedRow (SecondLineAt case_000761_support case_000761_rank.val hlt case_000761_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000761_secondLine, FixedRow]
  exact ⟨case_000761_rowFirst, case_000761_fixedSecond⟩

private theorem case_000761_existsRows :
    ExistsEqEqPosVarFirstRows case_000761_rank.val case_000761_mask :=
  ⟨case_000761_support, case_000761_sourceAgrees, case_000761_rows⟩

private theorem case_000761_covered :
    RowPropertyParametricCovered case_000761_rank.val case_000761_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000761_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000762_rank : Fin numPairWords := ⟨587, by decide⟩
private def case_000762_mask : SignMask := ⟨7, by decide⟩
private def case_000762_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000762_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000762_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000762_b : Vec3 Rat := { x := (-332/27), y := (236/27), z := (236/27) }
private def case_000762_firstLine : StrictLin2 := { a := (-83/201), b := (-83/201), c := (-275/201) }
private def case_000762_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000762_rankWord :
    rankPairWord? case_000762_word = some case_000762_rank := by
  decide

private theorem case_000762_unrank :
    unrankPairWord case_000762_rank = case_000762_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000762_word case_000762_rank).1
    case_000762_rankWord |>.symm

private theorem case_000762_seqChoice :
    translationChoiceSeq case_000762_word case_000762_mask = case_000762_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000762_seqAtRank :
    translationSeqAtRankMask case_000762_rank case_000762_mask = case_000762_seq := by
  rw [translationSeqAtRankMask, case_000762_unrank]
  exact case_000762_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000762_bAtRank :
    translationBAtRankMask case_000762_rank case_000762_mask = case_000762_b := by
  rw [translationBAtRankMask, case_000762_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000762_b, case_000762_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000762_firstLine_eq :
    case_000762_support.firstLine case_000762_seq case_000762_b = case_000762_firstLine := by
  norm_num [case_000762_firstLine, case_000762_support, case_000762_seq, case_000762_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000762_secondLine_eq :
    case_000762_support.secondLine case_000762_seq case_000762_b = case_000762_secondLine := by
  norm_num [case_000762_secondLine, case_000762_support, case_000762_seq, case_000762_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000762_sourceAgrees :
    SourceAgrees case_000762_support case_000762_rank.val case_000762_mask := by
  intro hlt
  have hrank : (⟨case_000762_rank.val, hlt⟩ : Fin numPairWords) = case_000762_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000762_rank.val, hlt⟩ case_000762_mask =
        case_000762_seq := by
    simpa [hrank] using case_000762_seqAtRank
  simp [SourceChecks, hseq, case_000762_support,
    checkTranslationConstraintSource, case_000762_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000762_rows :
    EqEqPosVarFirstRows case_000762_support case_000762_rank.val case_000762_mask := by
  intro hlt
  have hrank : (⟨case_000762_rank.val, hlt⟩ : Fin numPairWords) = case_000762_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000762_rank.val, hlt⟩ case_000762_mask =
        case_000762_seq := by
    simpa [hrank] using case_000762_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000762_rank.val, hlt⟩ case_000762_mask =
        case_000762_b := by
    simpa [hrank] using case_000762_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000762_support case_000762_rank.val hlt
          case_000762_mask = case_000762_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000762_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000762_support case_000762_rank.val hlt
          case_000762_mask = case_000762_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000762_secondLine_eq]
  have case_000762_rowFirst :
      EqEqPosRow (FirstLineAt case_000762_support case_000762_rank.val hlt case_000762_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000762_firstLine, EqEqPosRow]
  have case_000762_fixedSecond :
      FixedRow (SecondLineAt case_000762_support case_000762_rank.val hlt case_000762_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000762_secondLine, FixedRow]
  exact ⟨case_000762_rowFirst, case_000762_fixedSecond⟩

private theorem case_000762_existsRows :
    ExistsEqEqPosVarFirstRows case_000762_rank.val case_000762_mask :=
  ⟨case_000762_support, case_000762_sourceAgrees, case_000762_rows⟩

private theorem case_000762_covered :
    RowPropertyParametricCovered case_000762_rank.val case_000762_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000762_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000763_rank : Fin numPairWords := ⟨587, by decide⟩
private def case_000763_mask : SignMask := ⟨8, by decide⟩
private def case_000763_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000763_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000763_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000763_b : Vec3 Rat := { x := (-236/27), y := (-76/27), z := (-364/27) }
private def case_000763_firstLine : StrictLin2 := { a := -1, b := -1, c := (-161/59) }
private def case_000763_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000763_rankWord :
    rankPairWord? case_000763_word = some case_000763_rank := by
  decide

private theorem case_000763_unrank :
    unrankPairWord case_000763_rank = case_000763_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000763_word case_000763_rank).1
    case_000763_rankWord |>.symm

private theorem case_000763_seqChoice :
    translationChoiceSeq case_000763_word case_000763_mask = case_000763_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000763_seqAtRank :
    translationSeqAtRankMask case_000763_rank case_000763_mask = case_000763_seq := by
  rw [translationSeqAtRankMask, case_000763_unrank]
  exact case_000763_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000763_bAtRank :
    translationBAtRankMask case_000763_rank case_000763_mask = case_000763_b := by
  rw [translationBAtRankMask, case_000763_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000763_b, case_000763_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000763_firstLine_eq :
    case_000763_support.firstLine case_000763_seq case_000763_b = case_000763_firstLine := by
  norm_num [case_000763_firstLine, case_000763_support, case_000763_seq, case_000763_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000763_secondLine_eq :
    case_000763_support.secondLine case_000763_seq case_000763_b = case_000763_secondLine := by
  norm_num [case_000763_secondLine, case_000763_support, case_000763_seq, case_000763_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000763_sourceAgrees :
    SourceAgrees case_000763_support case_000763_rank.val case_000763_mask := by
  intro hlt
  have hrank : (⟨case_000763_rank.val, hlt⟩ : Fin numPairWords) = case_000763_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000763_rank.val, hlt⟩ case_000763_mask =
        case_000763_seq := by
    simpa [hrank] using case_000763_seqAtRank
  simp [SourceChecks, hseq, case_000763_support,
    checkTranslationConstraintSource, case_000763_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000763_rows :
    EqEqPosVarFirstRows case_000763_support case_000763_rank.val case_000763_mask := by
  intro hlt
  have hrank : (⟨case_000763_rank.val, hlt⟩ : Fin numPairWords) = case_000763_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000763_rank.val, hlt⟩ case_000763_mask =
        case_000763_seq := by
    simpa [hrank] using case_000763_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000763_rank.val, hlt⟩ case_000763_mask =
        case_000763_b := by
    simpa [hrank] using case_000763_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000763_support case_000763_rank.val hlt
          case_000763_mask = case_000763_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000763_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000763_support case_000763_rank.val hlt
          case_000763_mask = case_000763_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000763_secondLine_eq]
  have case_000763_rowFirst :
      EqEqPosRow (FirstLineAt case_000763_support case_000763_rank.val hlt case_000763_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000763_firstLine, EqEqPosRow]
  have case_000763_fixedSecond :
      FixedRow (SecondLineAt case_000763_support case_000763_rank.val hlt case_000763_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000763_secondLine, FixedRow]
  exact ⟨case_000763_rowFirst, case_000763_fixedSecond⟩

private theorem case_000763_existsRows :
    ExistsEqEqPosVarFirstRows case_000763_rank.val case_000763_mask :=
  ⟨case_000763_support, case_000763_sourceAgrees, case_000763_rows⟩

private theorem case_000763_covered :
    RowPropertyParametricCovered case_000763_rank.val case_000763_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000763_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000764_rank : Fin numPairWords := ⟨587, by decide⟩
private def case_000764_mask : SignMask := ⟨13, by decide⟩
private def case_000764_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000764_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000764_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000764_b : Vec3 Rat := { x := (-380/27), y := (284/27), z := (-220/27) }
private def case_000764_firstLine : StrictLin2 := { a := 1, b := -1, c := (-157/95) }
private def case_000764_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000764_rankWord :
    rankPairWord? case_000764_word = some case_000764_rank := by
  decide

private theorem case_000764_unrank :
    unrankPairWord case_000764_rank = case_000764_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000764_word case_000764_rank).1
    case_000764_rankWord |>.symm

private theorem case_000764_seqChoice :
    translationChoiceSeq case_000764_word case_000764_mask = case_000764_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000764_seqAtRank :
    translationSeqAtRankMask case_000764_rank case_000764_mask = case_000764_seq := by
  rw [translationSeqAtRankMask, case_000764_unrank]
  exact case_000764_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000764_bAtRank :
    translationBAtRankMask case_000764_rank case_000764_mask = case_000764_b := by
  rw [translationBAtRankMask, case_000764_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000764_b, case_000764_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000764_firstLine_eq :
    case_000764_support.firstLine case_000764_seq case_000764_b = case_000764_firstLine := by
  norm_num [case_000764_firstLine, case_000764_support, case_000764_seq, case_000764_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000764_secondLine_eq :
    case_000764_support.secondLine case_000764_seq case_000764_b = case_000764_secondLine := by
  norm_num [case_000764_secondLine, case_000764_support, case_000764_seq, case_000764_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000764_sourceAgrees :
    SourceAgrees case_000764_support case_000764_rank.val case_000764_mask := by
  intro hlt
  have hrank : (⟨case_000764_rank.val, hlt⟩ : Fin numPairWords) = case_000764_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000764_rank.val, hlt⟩ case_000764_mask =
        case_000764_seq := by
    simpa [hrank] using case_000764_seqAtRank
  simp [SourceChecks, hseq, case_000764_support,
    checkTranslationConstraintSource, case_000764_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000764_rows :
    OppMinusOneVarFirstRows case_000764_support case_000764_rank.val case_000764_mask := by
  intro hlt
  have hrank : (⟨case_000764_rank.val, hlt⟩ : Fin numPairWords) = case_000764_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000764_rank.val, hlt⟩ case_000764_mask =
        case_000764_seq := by
    simpa [hrank] using case_000764_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000764_rank.val, hlt⟩ case_000764_mask =
        case_000764_b := by
    simpa [hrank] using case_000764_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000764_support case_000764_rank.val hlt
          case_000764_mask = case_000764_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000764_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000764_support case_000764_rank.val hlt
          case_000764_mask = case_000764_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000764_secondLine_eq]
  have case_000764_rowFirst :
      OppNegRow (FirstLineAt case_000764_support case_000764_rank.val hlt case_000764_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000764_firstLine, OppNegRow]
  have case_000764_fixedSecond :
      FixedRow (SecondLineAt case_000764_support case_000764_rank.val hlt case_000764_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000764_secondLine, FixedRow]
  exact ⟨case_000764_rowFirst, case_000764_fixedSecond⟩

private theorem case_000764_existsRows :
    ExistsOppMinusOneVarFirstRows case_000764_rank.val case_000764_mask :=
  ⟨case_000764_support, case_000764_sourceAgrees, case_000764_rows⟩

private theorem case_000764_covered :
    RowPropertyParametricCovered case_000764_rank.val case_000764_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000764_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000765_rank : Fin numPairWords := ⟨587, by decide⟩
private def case_000765_mask : SignMask := ⟨16, by decide⟩
private def case_000765_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000765_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000765_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tppp
private def case_000765_b : Vec3 Rat := { x := (-76/27), y := (-332/27), z := (-44/27) }
private def case_000765_firstLine : StrictLin2 := { a := -1, b := -1, c := (-169/19) }
private def case_000765_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000765_rankWord :
    rankPairWord? case_000765_word = some case_000765_rank := by
  decide

private theorem case_000765_unrank :
    unrankPairWord case_000765_rank = case_000765_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000765_word case_000765_rank).1
    case_000765_rankWord |>.symm

private theorem case_000765_seqChoice :
    translationChoiceSeq case_000765_word case_000765_mask = case_000765_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000765_seqAtRank :
    translationSeqAtRankMask case_000765_rank case_000765_mask = case_000765_seq := by
  rw [translationSeqAtRankMask, case_000765_unrank]
  exact case_000765_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000765_bAtRank :
    translationBAtRankMask case_000765_rank case_000765_mask = case_000765_b := by
  rw [translationBAtRankMask, case_000765_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000765_b, case_000765_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000765_firstLine_eq :
    case_000765_support.firstLine case_000765_seq case_000765_b = case_000765_firstLine := by
  norm_num [case_000765_firstLine, case_000765_support, case_000765_seq, case_000765_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000765_secondLine_eq :
    case_000765_support.secondLine case_000765_seq case_000765_b = case_000765_secondLine := by
  norm_num [case_000765_secondLine, case_000765_support, case_000765_seq, case_000765_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000765_sourceAgrees :
    SourceAgrees case_000765_support case_000765_rank.val case_000765_mask := by
  intro hlt
  have hrank : (⟨case_000765_rank.val, hlt⟩ : Fin numPairWords) = case_000765_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000765_rank.val, hlt⟩ case_000765_mask =
        case_000765_seq := by
    simpa [hrank] using case_000765_seqAtRank
  simp [SourceChecks, hseq, case_000765_support,
    checkTranslationConstraintSource, case_000765_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000765_rows :
    EqEqPosVarFirstRows case_000765_support case_000765_rank.val case_000765_mask := by
  intro hlt
  have hrank : (⟨case_000765_rank.val, hlt⟩ : Fin numPairWords) = case_000765_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000765_rank.val, hlt⟩ case_000765_mask =
        case_000765_seq := by
    simpa [hrank] using case_000765_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000765_rank.val, hlt⟩ case_000765_mask =
        case_000765_b := by
    simpa [hrank] using case_000765_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000765_support case_000765_rank.val hlt
          case_000765_mask = case_000765_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000765_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000765_support case_000765_rank.val hlt
          case_000765_mask = case_000765_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000765_secondLine_eq]
  have case_000765_rowFirst :
      EqEqPosRow (FirstLineAt case_000765_support case_000765_rank.val hlt case_000765_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000765_firstLine, EqEqPosRow]
  have case_000765_fixedSecond :
      FixedRow (SecondLineAt case_000765_support case_000765_rank.val hlt case_000765_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000765_secondLine, FixedRow]
  exact ⟨case_000765_rowFirst, case_000765_fixedSecond⟩

private theorem case_000765_existsRows :
    ExistsEqEqPosVarFirstRows case_000765_rank.val case_000765_mask :=
  ⟨case_000765_support, case_000765_sourceAgrees, case_000765_rows⟩

private theorem case_000765_covered :
    RowPropertyParametricCovered case_000765_rank.val case_000765_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000765_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000766_rank : Fin numPairWords := ⟨587, by decide⟩
private def case_000766_mask : SignMask := ⟨18, by decide⟩
private def case_000766_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000766_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000766_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tppp
private def case_000766_b : Vec3 Rat := { x := (-76/27), y := (-332/27), z := (172/27) }
private def case_000766_firstLine : StrictLin2 := { a := -1, b := -1, c := (-61/19) }
private def case_000766_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000766_rankWord :
    rankPairWord? case_000766_word = some case_000766_rank := by
  decide

private theorem case_000766_unrank :
    unrankPairWord case_000766_rank = case_000766_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000766_word case_000766_rank).1
    case_000766_rankWord |>.symm

private theorem case_000766_seqChoice :
    translationChoiceSeq case_000766_word case_000766_mask = case_000766_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000766_seqAtRank :
    translationSeqAtRankMask case_000766_rank case_000766_mask = case_000766_seq := by
  rw [translationSeqAtRankMask, case_000766_unrank]
  exact case_000766_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000766_bAtRank :
    translationBAtRankMask case_000766_rank case_000766_mask = case_000766_b := by
  rw [translationBAtRankMask, case_000766_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000766_b, case_000766_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000766_firstLine_eq :
    case_000766_support.firstLine case_000766_seq case_000766_b = case_000766_firstLine := by
  norm_num [case_000766_firstLine, case_000766_support, case_000766_seq, case_000766_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000766_secondLine_eq :
    case_000766_support.secondLine case_000766_seq case_000766_b = case_000766_secondLine := by
  norm_num [case_000766_secondLine, case_000766_support, case_000766_seq, case_000766_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000766_sourceAgrees :
    SourceAgrees case_000766_support case_000766_rank.val case_000766_mask := by
  intro hlt
  have hrank : (⟨case_000766_rank.val, hlt⟩ : Fin numPairWords) = case_000766_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000766_rank.val, hlt⟩ case_000766_mask =
        case_000766_seq := by
    simpa [hrank] using case_000766_seqAtRank
  simp [SourceChecks, hseq, case_000766_support,
    checkTranslationConstraintSource, case_000766_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000766_rows :
    EqEqPosVarFirstRows case_000766_support case_000766_rank.val case_000766_mask := by
  intro hlt
  have hrank : (⟨case_000766_rank.val, hlt⟩ : Fin numPairWords) = case_000766_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000766_rank.val, hlt⟩ case_000766_mask =
        case_000766_seq := by
    simpa [hrank] using case_000766_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000766_rank.val, hlt⟩ case_000766_mask =
        case_000766_b := by
    simpa [hrank] using case_000766_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000766_support case_000766_rank.val hlt
          case_000766_mask = case_000766_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000766_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000766_support case_000766_rank.val hlt
          case_000766_mask = case_000766_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000766_secondLine_eq]
  have case_000766_rowFirst :
      EqEqPosRow (FirstLineAt case_000766_support case_000766_rank.val hlt case_000766_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000766_firstLine, EqEqPosRow]
  have case_000766_fixedSecond :
      FixedRow (SecondLineAt case_000766_support case_000766_rank.val hlt case_000766_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000766_secondLine, FixedRow]
  exact ⟨case_000766_rowFirst, case_000766_fixedSecond⟩

private theorem case_000766_existsRows :
    ExistsEqEqPosVarFirstRows case_000766_rank.val case_000766_mask :=
  ⟨case_000766_support, case_000766_sourceAgrees, case_000766_rows⟩

private theorem case_000766_covered :
    RowPropertyParametricCovered case_000766_rank.val case_000766_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000766_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000767_rank : Fin numPairWords := ⟨587, by decide⟩
private def case_000767_mask : SignMask := ⟨22, by decide⟩
private def case_000767_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000767_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000767_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000767_b : Vec3 Rat := { x := (-220/27), y := (-188/27), z := (316/27) }
private def case_000767_firstLine : StrictLin2 := { a := -1, b := 1, c := (-197/55) }
private def case_000767_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000767_rankWord :
    rankPairWord? case_000767_word = some case_000767_rank := by
  decide

private theorem case_000767_unrank :
    unrankPairWord case_000767_rank = case_000767_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000767_word case_000767_rank).1
    case_000767_rankWord |>.symm

private theorem case_000767_seqChoice :
    translationChoiceSeq case_000767_word case_000767_mask = case_000767_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000767_seqAtRank :
    translationSeqAtRankMask case_000767_rank case_000767_mask = case_000767_seq := by
  rw [translationSeqAtRankMask, case_000767_unrank]
  exact case_000767_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000767_bAtRank :
    translationBAtRankMask case_000767_rank case_000767_mask = case_000767_b := by
  rw [translationBAtRankMask, case_000767_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000767_b, case_000767_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000767_firstLine_eq :
    case_000767_support.firstLine case_000767_seq case_000767_b = case_000767_firstLine := by
  norm_num [case_000767_firstLine, case_000767_support, case_000767_seq, case_000767_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000767_secondLine_eq :
    case_000767_support.secondLine case_000767_seq case_000767_b = case_000767_secondLine := by
  norm_num [case_000767_secondLine, case_000767_support, case_000767_seq, case_000767_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000767_sourceAgrees :
    SourceAgrees case_000767_support case_000767_rank.val case_000767_mask := by
  intro hlt
  have hrank : (⟨case_000767_rank.val, hlt⟩ : Fin numPairWords) = case_000767_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000767_rank.val, hlt⟩ case_000767_mask =
        case_000767_seq := by
    simpa [hrank] using case_000767_seqAtRank
  simp [SourceChecks, hseq, case_000767_support,
    checkTranslationConstraintSource, case_000767_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000767_rows :
    OppOneMinusVarFirstRows case_000767_support case_000767_rank.val case_000767_mask := by
  intro hlt
  have hrank : (⟨case_000767_rank.val, hlt⟩ : Fin numPairWords) = case_000767_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000767_rank.val, hlt⟩ case_000767_mask =
        case_000767_seq := by
    simpa [hrank] using case_000767_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000767_rank.val, hlt⟩ case_000767_mask =
        case_000767_b := by
    simpa [hrank] using case_000767_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000767_support case_000767_rank.val hlt
          case_000767_mask = case_000767_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000767_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000767_support case_000767_rank.val hlt
          case_000767_mask = case_000767_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000767_secondLine_eq]
  have case_000767_rowFirst :
      OppPosRow (FirstLineAt case_000767_support case_000767_rank.val hlt case_000767_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000767_firstLine, OppPosRow]
  have case_000767_fixedSecond :
      FixedRow (SecondLineAt case_000767_support case_000767_rank.val hlt case_000767_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000767_secondLine, FixedRow]
  exact ⟨case_000767_rowFirst, case_000767_fixedSecond⟩

private theorem case_000767_existsRows :
    ExistsOppOneMinusVarFirstRows case_000767_rank.val case_000767_mask :=
  ⟨case_000767_support, case_000767_sourceAgrees, case_000767_rows⟩

private theorem case_000767_covered :
    RowPropertyParametricCovered case_000767_rank.val case_000767_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000767_existsRows

inductive Group023Covered : Nat -> SignMask -> Prop
  | case_000736 : Group023Covered case_000736_rank.val case_000736_mask
  | case_000737 : Group023Covered case_000737_rank.val case_000737_mask
  | case_000738 : Group023Covered case_000738_rank.val case_000738_mask
  | case_000739 : Group023Covered case_000739_rank.val case_000739_mask
  | case_000740 : Group023Covered case_000740_rank.val case_000740_mask
  | case_000741 : Group023Covered case_000741_rank.val case_000741_mask
  | case_000742 : Group023Covered case_000742_rank.val case_000742_mask
  | case_000743 : Group023Covered case_000743_rank.val case_000743_mask
  | case_000744 : Group023Covered case_000744_rank.val case_000744_mask
  | case_000745 : Group023Covered case_000745_rank.val case_000745_mask
  | case_000746 : Group023Covered case_000746_rank.val case_000746_mask
  | case_000747 : Group023Covered case_000747_rank.val case_000747_mask
  | case_000748 : Group023Covered case_000748_rank.val case_000748_mask
  | case_000749 : Group023Covered case_000749_rank.val case_000749_mask
  | case_000750 : Group023Covered case_000750_rank.val case_000750_mask
  | case_000751 : Group023Covered case_000751_rank.val case_000751_mask
  | case_000752 : Group023Covered case_000752_rank.val case_000752_mask
  | case_000753 : Group023Covered case_000753_rank.val case_000753_mask
  | case_000754 : Group023Covered case_000754_rank.val case_000754_mask
  | case_000755 : Group023Covered case_000755_rank.val case_000755_mask
  | case_000756 : Group023Covered case_000756_rank.val case_000756_mask
  | case_000757 : Group023Covered case_000757_rank.val case_000757_mask
  | case_000758 : Group023Covered case_000758_rank.val case_000758_mask
  | case_000759 : Group023Covered case_000759_rank.val case_000759_mask
  | case_000760 : Group023Covered case_000760_rank.val case_000760_mask
  | case_000761 : Group023Covered case_000761_rank.val case_000761_mask
  | case_000762 : Group023Covered case_000762_rank.val case_000762_mask
  | case_000763 : Group023Covered case_000763_rank.val case_000763_mask
  | case_000764 : Group023Covered case_000764_rank.val case_000764_mask
  | case_000765 : Group023Covered case_000765_rank.val case_000765_mask
  | case_000766 : Group023Covered case_000766_rank.val case_000766_mask
  | case_000767 : Group023Covered case_000767_rank.val case_000767_mask

theorem Group023GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group023Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000736 =>
      exact RowPropertyParametricCovered.kills case_000736_covered
  | case_000737 =>
      exact RowPropertyParametricCovered.kills case_000737_covered
  | case_000738 =>
      exact RowPropertyParametricCovered.kills case_000738_covered
  | case_000739 =>
      exact RowPropertyParametricCovered.kills case_000739_covered
  | case_000740 =>
      exact RowPropertyParametricCovered.kills case_000740_covered
  | case_000741 =>
      exact RowPropertyParametricCovered.kills case_000741_covered
  | case_000742 =>
      exact RowPropertyParametricCovered.kills case_000742_covered
  | case_000743 =>
      exact RowPropertyParametricCovered.kills case_000743_covered
  | case_000744 =>
      exact RowPropertyParametricCovered.kills case_000744_covered
  | case_000745 =>
      exact RowPropertyParametricCovered.kills case_000745_covered
  | case_000746 =>
      exact RowPropertyParametricCovered.kills case_000746_covered
  | case_000747 =>
      exact RowPropertyParametricCovered.kills case_000747_covered
  | case_000748 =>
      exact RowPropertyParametricCovered.kills case_000748_covered
  | case_000749 =>
      exact RowPropertyParametricCovered.kills case_000749_covered
  | case_000750 =>
      exact RowPropertyParametricCovered.kills case_000750_covered
  | case_000751 =>
      exact RowPropertyParametricCovered.kills case_000751_covered
  | case_000752 =>
      exact RowPropertyParametricCovered.kills case_000752_covered
  | case_000753 =>
      exact RowPropertyParametricCovered.kills case_000753_covered
  | case_000754 =>
      exact RowPropertyParametricCovered.kills case_000754_covered
  | case_000755 =>
      exact RowPropertyParametricCovered.kills case_000755_covered
  | case_000756 =>
      exact RowPropertyParametricCovered.kills case_000756_covered
  | case_000757 =>
      exact RowPropertyParametricCovered.kills case_000757_covered
  | case_000758 =>
      exact RowPropertyParametricCovered.kills case_000758_covered
  | case_000759 =>
      exact RowPropertyParametricCovered.kills case_000759_covered
  | case_000760 =>
      exact RowPropertyParametricCovered.kills case_000760_covered
  | case_000761 =>
      exact RowPropertyParametricCovered.kills case_000761_covered
  | case_000762 =>
      exact RowPropertyParametricCovered.kills case_000762_covered
  | case_000763 =>
      exact RowPropertyParametricCovered.kills case_000763_covered
  | case_000764 =>
      exact RowPropertyParametricCovered.kills case_000764_covered
  | case_000765 =>
      exact RowPropertyParametricCovered.kills case_000765_covered
  | case_000766 =>
      exact RowPropertyParametricCovered.kills case_000766_covered
  | case_000767 =>
      exact RowPropertyParametricCovered.kills case_000767_covered

theorem Group023_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group023
