import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group003

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
private def case_000096_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000096_mask : SignMask := ⟨8, by decide⟩
private def case_000096_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000096_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000096_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000096_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (-116/9) }
private def case_000096_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_000096_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000096_rankWord :
    rankPairWord? case_000096_word = some case_000096_rank := by
  decide

private theorem case_000096_unrank :
    unrankPairWord case_000096_rank = case_000096_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000096_word case_000096_rank).1
    case_000096_rankWord |>.symm

private theorem case_000096_seqChoice :
    translationChoiceSeq case_000096_word case_000096_mask = case_000096_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000096_seqAtRank :
    translationSeqAtRankMask case_000096_rank case_000096_mask = case_000096_seq := by
  rw [translationSeqAtRankMask, case_000096_unrank]
  exact case_000096_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000096_bAtRank :
    translationBAtRankMask case_000096_rank case_000096_mask = case_000096_b := by
  rw [translationBAtRankMask, case_000096_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000096_b, case_000096_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000096_firstLine_eq :
    case_000096_support.firstLine case_000096_seq case_000096_b = case_000096_firstLine := by
  norm_num [case_000096_firstLine, case_000096_support, case_000096_seq, case_000096_b,
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
private theorem case_000096_secondLine_eq :
    case_000096_support.secondLine case_000096_seq case_000096_b = case_000096_secondLine := by
  norm_num [case_000096_secondLine, case_000096_support, case_000096_seq, case_000096_b,
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
private theorem case_000096_sourceAgrees :
    SourceAgrees case_000096_support case_000096_rank.val case_000096_mask := by
  intro hlt
  have hrank : (⟨case_000096_rank.val, hlt⟩ : Fin numPairWords) = case_000096_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000096_rank.val, hlt⟩ case_000096_mask =
        case_000096_seq := by
    simpa [hrank] using case_000096_seqAtRank
  simp [SourceChecks, hseq, case_000096_support,
    checkTranslationConstraintSource, case_000096_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000096_rows :
    EqEqPosVarFirstRows case_000096_support case_000096_rank.val case_000096_mask := by
  intro hlt
  have hrank : (⟨case_000096_rank.val, hlt⟩ : Fin numPairWords) = case_000096_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000096_rank.val, hlt⟩ case_000096_mask =
        case_000096_seq := by
    simpa [hrank] using case_000096_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000096_rank.val, hlt⟩ case_000096_mask =
        case_000096_b := by
    simpa [hrank] using case_000096_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000096_support case_000096_rank.val hlt
          case_000096_mask = case_000096_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000096_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000096_support case_000096_rank.val hlt
          case_000096_mask = case_000096_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000096_secondLine_eq]
  have case_000096_rowFirst :
      EqEqPosRow (FirstLineAt case_000096_support case_000096_rank.val hlt case_000096_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000096_firstLine, EqEqPosRow]
  have case_000096_fixedSecond :
      FixedRow (SecondLineAt case_000096_support case_000096_rank.val hlt case_000096_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000096_secondLine, FixedRow]
  exact ⟨case_000096_rowFirst, case_000096_fixedSecond⟩

private theorem case_000096_existsRows :
    ExistsEqEqPosVarFirstRows case_000096_rank.val case_000096_mask :=
  ⟨case_000096_support, case_000096_sourceAgrees, case_000096_rows⟩

private theorem case_000096_covered :
    RowPropertyParametricCovered case_000096_rank.val case_000096_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000096_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000097_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000097_mask : SignMask := ⟨9, by decide⟩
private def case_000097_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000097_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000097_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000097_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-116/9) }
private def case_000097_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000097_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000097_rankWord :
    rankPairWord? case_000097_word = some case_000097_rank := by
  decide

private theorem case_000097_unrank :
    unrankPairWord case_000097_rank = case_000097_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000097_word case_000097_rank).1
    case_000097_rankWord |>.symm

private theorem case_000097_seqChoice :
    translationChoiceSeq case_000097_word case_000097_mask = case_000097_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000097_seqAtRank :
    translationSeqAtRankMask case_000097_rank case_000097_mask = case_000097_seq := by
  rw [translationSeqAtRankMask, case_000097_unrank]
  exact case_000097_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000097_bAtRank :
    translationBAtRankMask case_000097_rank case_000097_mask = case_000097_b := by
  rw [translationBAtRankMask, case_000097_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000097_b, case_000097_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000097_firstLine_eq :
    case_000097_support.firstLine case_000097_seq case_000097_b = case_000097_firstLine := by
  norm_num [case_000097_firstLine, case_000097_support, case_000097_seq, case_000097_b,
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
private theorem case_000097_secondLine_eq :
    case_000097_support.secondLine case_000097_seq case_000097_b = case_000097_secondLine := by
  norm_num [case_000097_secondLine, case_000097_support, case_000097_seq, case_000097_b,
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
private theorem case_000097_sourceAgrees :
    SourceAgrees case_000097_support case_000097_rank.val case_000097_mask := by
  intro hlt
  have hrank : (⟨case_000097_rank.val, hlt⟩ : Fin numPairWords) = case_000097_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000097_rank.val, hlt⟩ case_000097_mask =
        case_000097_seq := by
    simpa [hrank] using case_000097_seqAtRank
  simp [SourceChecks, hseq, case_000097_support,
    checkTranslationConstraintSource, case_000097_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000097_rows :
    EqEqPosVarFirstRows case_000097_support case_000097_rank.val case_000097_mask := by
  intro hlt
  have hrank : (⟨case_000097_rank.val, hlt⟩ : Fin numPairWords) = case_000097_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000097_rank.val, hlt⟩ case_000097_mask =
        case_000097_seq := by
    simpa [hrank] using case_000097_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000097_rank.val, hlt⟩ case_000097_mask =
        case_000097_b := by
    simpa [hrank] using case_000097_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000097_support case_000097_rank.val hlt
          case_000097_mask = case_000097_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000097_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000097_support case_000097_rank.val hlt
          case_000097_mask = case_000097_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000097_secondLine_eq]
  have case_000097_rowFirst :
      EqEqPosRow (FirstLineAt case_000097_support case_000097_rank.val hlt case_000097_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000097_firstLine, EqEqPosRow]
  have case_000097_fixedSecond :
      FixedRow (SecondLineAt case_000097_support case_000097_rank.val hlt case_000097_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000097_secondLine, FixedRow]
  exact ⟨case_000097_rowFirst, case_000097_fixedSecond⟩

private theorem case_000097_existsRows :
    ExistsEqEqPosVarFirstRows case_000097_rank.val case_000097_mask :=
  ⟨case_000097_support, case_000097_sourceAgrees, case_000097_rows⟩

private theorem case_000097_covered :
    RowPropertyParametricCovered case_000097_rank.val case_000097_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000097_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000098_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000098_mask : SignMask := ⟨16, by decide⟩
private def case_000098_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000098_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000098_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000098_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (-20/9) }
private def case_000098_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_000098_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000098_rankWord :
    rankPairWord? case_000098_word = some case_000098_rank := by
  decide

private theorem case_000098_unrank :
    unrankPairWord case_000098_rank = case_000098_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000098_word case_000098_rank).1
    case_000098_rankWord |>.symm

private theorem case_000098_seqChoice :
    translationChoiceSeq case_000098_word case_000098_mask = case_000098_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000098_seqAtRank :
    translationSeqAtRankMask case_000098_rank case_000098_mask = case_000098_seq := by
  rw [translationSeqAtRankMask, case_000098_unrank]
  exact case_000098_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000098_bAtRank :
    translationBAtRankMask case_000098_rank case_000098_mask = case_000098_b := by
  rw [translationBAtRankMask, case_000098_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000098_b, case_000098_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000098_firstLine_eq :
    case_000098_support.firstLine case_000098_seq case_000098_b = case_000098_firstLine := by
  norm_num [case_000098_firstLine, case_000098_support, case_000098_seq, case_000098_b,
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
private theorem case_000098_secondLine_eq :
    case_000098_support.secondLine case_000098_seq case_000098_b = case_000098_secondLine := by
  norm_num [case_000098_secondLine, case_000098_support, case_000098_seq, case_000098_b,
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
private theorem case_000098_sourceAgrees :
    SourceAgrees case_000098_support case_000098_rank.val case_000098_mask := by
  intro hlt
  have hrank : (⟨case_000098_rank.val, hlt⟩ : Fin numPairWords) = case_000098_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000098_rank.val, hlt⟩ case_000098_mask =
        case_000098_seq := by
    simpa [hrank] using case_000098_seqAtRank
  simp [SourceChecks, hseq, case_000098_support,
    checkTranslationConstraintSource, case_000098_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000098_rows :
    EqEqPosVarFirstRows case_000098_support case_000098_rank.val case_000098_mask := by
  intro hlt
  have hrank : (⟨case_000098_rank.val, hlt⟩ : Fin numPairWords) = case_000098_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000098_rank.val, hlt⟩ case_000098_mask =
        case_000098_seq := by
    simpa [hrank] using case_000098_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000098_rank.val, hlt⟩ case_000098_mask =
        case_000098_b := by
    simpa [hrank] using case_000098_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000098_support case_000098_rank.val hlt
          case_000098_mask = case_000098_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000098_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000098_support case_000098_rank.val hlt
          case_000098_mask = case_000098_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000098_secondLine_eq]
  have case_000098_rowFirst :
      EqEqPosRow (FirstLineAt case_000098_support case_000098_rank.val hlt case_000098_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000098_firstLine, EqEqPosRow]
  have case_000098_fixedSecond :
      FixedRow (SecondLineAt case_000098_support case_000098_rank.val hlt case_000098_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000098_secondLine, FixedRow]
  exact ⟨case_000098_rowFirst, case_000098_fixedSecond⟩

private theorem case_000098_existsRows :
    ExistsEqEqPosVarFirstRows case_000098_rank.val case_000098_mask :=
  ⟨case_000098_support, case_000098_sourceAgrees, case_000098_rows⟩

private theorem case_000098_covered :
    RowPropertyParametricCovered case_000098_rank.val case_000098_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000098_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000099_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000099_mask : SignMask := ⟨18, by decide⟩
private def case_000099_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000099_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000099_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000099_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (52/9) }
private def case_000099_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000099_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000099_rankWord :
    rankPairWord? case_000099_word = some case_000099_rank := by
  decide

private theorem case_000099_unrank :
    unrankPairWord case_000099_rank = case_000099_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000099_word case_000099_rank).1
    case_000099_rankWord |>.symm

private theorem case_000099_seqChoice :
    translationChoiceSeq case_000099_word case_000099_mask = case_000099_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000099_seqAtRank :
    translationSeqAtRankMask case_000099_rank case_000099_mask = case_000099_seq := by
  rw [translationSeqAtRankMask, case_000099_unrank]
  exact case_000099_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000099_bAtRank :
    translationBAtRankMask case_000099_rank case_000099_mask = case_000099_b := by
  rw [translationBAtRankMask, case_000099_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000099_b, case_000099_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000099_firstLine_eq :
    case_000099_support.firstLine case_000099_seq case_000099_b = case_000099_firstLine := by
  norm_num [case_000099_firstLine, case_000099_support, case_000099_seq, case_000099_b,
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
private theorem case_000099_secondLine_eq :
    case_000099_support.secondLine case_000099_seq case_000099_b = case_000099_secondLine := by
  norm_num [case_000099_secondLine, case_000099_support, case_000099_seq, case_000099_b,
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
private theorem case_000099_sourceAgrees :
    SourceAgrees case_000099_support case_000099_rank.val case_000099_mask := by
  intro hlt
  have hrank : (⟨case_000099_rank.val, hlt⟩ : Fin numPairWords) = case_000099_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000099_rank.val, hlt⟩ case_000099_mask =
        case_000099_seq := by
    simpa [hrank] using case_000099_seqAtRank
  simp [SourceChecks, hseq, case_000099_support,
    checkTranslationConstraintSource, case_000099_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000099_rows :
    EqEqPosVarFirstRows case_000099_support case_000099_rank.val case_000099_mask := by
  intro hlt
  have hrank : (⟨case_000099_rank.val, hlt⟩ : Fin numPairWords) = case_000099_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000099_rank.val, hlt⟩ case_000099_mask =
        case_000099_seq := by
    simpa [hrank] using case_000099_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000099_rank.val, hlt⟩ case_000099_mask =
        case_000099_b := by
    simpa [hrank] using case_000099_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000099_support case_000099_rank.val hlt
          case_000099_mask = case_000099_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000099_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000099_support case_000099_rank.val hlt
          case_000099_mask = case_000099_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000099_secondLine_eq]
  have case_000099_rowFirst :
      EqEqPosRow (FirstLineAt case_000099_support case_000099_rank.val hlt case_000099_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000099_firstLine, EqEqPosRow]
  have case_000099_fixedSecond :
      FixedRow (SecondLineAt case_000099_support case_000099_rank.val hlt case_000099_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000099_secondLine, FixedRow]
  exact ⟨case_000099_rowFirst, case_000099_fixedSecond⟩

private theorem case_000099_existsRows :
    ExistsEqEqPosVarFirstRows case_000099_rank.val case_000099_mask :=
  ⟨case_000099_support, case_000099_sourceAgrees, case_000099_rows⟩

private theorem case_000099_covered :
    RowPropertyParametricCovered case_000099_rank.val case_000099_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000099_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000100_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000100_mask : SignMask := ⟨22, by decide⟩
private def case_000100_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000100_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000100_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000100_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (100/9) }
private def case_000100_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000100_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000100_rankWord :
    rankPairWord? case_000100_word = some case_000100_rank := by
  decide

private theorem case_000100_unrank :
    unrankPairWord case_000100_rank = case_000100_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000100_word case_000100_rank).1
    case_000100_rankWord |>.symm

private theorem case_000100_seqChoice :
    translationChoiceSeq case_000100_word case_000100_mask = case_000100_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000100_seqAtRank :
    translationSeqAtRankMask case_000100_rank case_000100_mask = case_000100_seq := by
  rw [translationSeqAtRankMask, case_000100_unrank]
  exact case_000100_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000100_bAtRank :
    translationBAtRankMask case_000100_rank case_000100_mask = case_000100_b := by
  rw [translationBAtRankMask, case_000100_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000100_b, case_000100_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000100_firstLine_eq :
    case_000100_support.firstLine case_000100_seq case_000100_b = case_000100_firstLine := by
  norm_num [case_000100_firstLine, case_000100_support, case_000100_seq, case_000100_b,
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
private theorem case_000100_secondLine_eq :
    case_000100_support.secondLine case_000100_seq case_000100_b = case_000100_secondLine := by
  norm_num [case_000100_secondLine, case_000100_support, case_000100_seq, case_000100_b,
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
private theorem case_000100_sourceAgrees :
    SourceAgrees case_000100_support case_000100_rank.val case_000100_mask := by
  intro hlt
  have hrank : (⟨case_000100_rank.val, hlt⟩ : Fin numPairWords) = case_000100_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000100_rank.val, hlt⟩ case_000100_mask =
        case_000100_seq := by
    simpa [hrank] using case_000100_seqAtRank
  simp [SourceChecks, hseq, case_000100_support,
    checkTranslationConstraintSource, case_000100_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000100_rows :
    EqEqPosVarFirstRows case_000100_support case_000100_rank.val case_000100_mask := by
  intro hlt
  have hrank : (⟨case_000100_rank.val, hlt⟩ : Fin numPairWords) = case_000100_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000100_rank.val, hlt⟩ case_000100_mask =
        case_000100_seq := by
    simpa [hrank] using case_000100_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000100_rank.val, hlt⟩ case_000100_mask =
        case_000100_b := by
    simpa [hrank] using case_000100_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000100_support case_000100_rank.val hlt
          case_000100_mask = case_000100_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000100_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000100_support case_000100_rank.val hlt
          case_000100_mask = case_000100_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000100_secondLine_eq]
  have case_000100_rowFirst :
      EqEqPosRow (FirstLineAt case_000100_support case_000100_rank.val hlt case_000100_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000100_firstLine, EqEqPosRow]
  have case_000100_fixedSecond :
      FixedRow (SecondLineAt case_000100_support case_000100_rank.val hlt case_000100_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000100_secondLine, FixedRow]
  exact ⟨case_000100_rowFirst, case_000100_fixedSecond⟩

private theorem case_000100_existsRows :
    ExistsEqEqPosVarFirstRows case_000100_rank.val case_000100_mask :=
  ⟨case_000100_support, case_000100_sourceAgrees, case_000100_rows⟩

private theorem case_000100_covered :
    RowPropertyParametricCovered case_000100_rank.val case_000100_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000100_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000101_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000101_mask : SignMask := ⟨24, by decide⟩
private def case_000101_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000101_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000101_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000101_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-68/9) }
private def case_000101_firstLine : StrictLin2 := { a := -1, b := -1, c := (-67/17) }
private def case_000101_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000101_rankWord :
    rankPairWord? case_000101_word = some case_000101_rank := by
  decide

private theorem case_000101_unrank :
    unrankPairWord case_000101_rank = case_000101_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000101_word case_000101_rank).1
    case_000101_rankWord |>.symm

private theorem case_000101_seqChoice :
    translationChoiceSeq case_000101_word case_000101_mask = case_000101_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000101_seqAtRank :
    translationSeqAtRankMask case_000101_rank case_000101_mask = case_000101_seq := by
  rw [translationSeqAtRankMask, case_000101_unrank]
  exact case_000101_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000101_bAtRank :
    translationBAtRankMask case_000101_rank case_000101_mask = case_000101_b := by
  rw [translationBAtRankMask, case_000101_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000101_b, case_000101_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000101_firstLine_eq :
    case_000101_support.firstLine case_000101_seq case_000101_b = case_000101_firstLine := by
  norm_num [case_000101_firstLine, case_000101_support, case_000101_seq, case_000101_b,
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
private theorem case_000101_secondLine_eq :
    case_000101_support.secondLine case_000101_seq case_000101_b = case_000101_secondLine := by
  norm_num [case_000101_secondLine, case_000101_support, case_000101_seq, case_000101_b,
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
private theorem case_000101_sourceAgrees :
    SourceAgrees case_000101_support case_000101_rank.val case_000101_mask := by
  intro hlt
  have hrank : (⟨case_000101_rank.val, hlt⟩ : Fin numPairWords) = case_000101_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000101_rank.val, hlt⟩ case_000101_mask =
        case_000101_seq := by
    simpa [hrank] using case_000101_seqAtRank
  simp [SourceChecks, hseq, case_000101_support,
    checkTranslationConstraintSource, case_000101_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000101_rows :
    EqEqPosVarFirstRows case_000101_support case_000101_rank.val case_000101_mask := by
  intro hlt
  have hrank : (⟨case_000101_rank.val, hlt⟩ : Fin numPairWords) = case_000101_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000101_rank.val, hlt⟩ case_000101_mask =
        case_000101_seq := by
    simpa [hrank] using case_000101_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000101_rank.val, hlt⟩ case_000101_mask =
        case_000101_b := by
    simpa [hrank] using case_000101_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000101_support case_000101_rank.val hlt
          case_000101_mask = case_000101_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000101_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000101_support case_000101_rank.val hlt
          case_000101_mask = case_000101_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000101_secondLine_eq]
  have case_000101_rowFirst :
      EqEqPosRow (FirstLineAt case_000101_support case_000101_rank.val hlt case_000101_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000101_firstLine, EqEqPosRow]
  have case_000101_fixedSecond :
      FixedRow (SecondLineAt case_000101_support case_000101_rank.val hlt case_000101_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000101_secondLine, FixedRow]
  exact ⟨case_000101_rowFirst, case_000101_fixedSecond⟩

private theorem case_000101_existsRows :
    ExistsEqEqPosVarFirstRows case_000101_rank.val case_000101_mask :=
  ⟨case_000101_support, case_000101_sourceAgrees, case_000101_rows⟩

private theorem case_000101_covered :
    RowPropertyParametricCovered case_000101_rank.val case_000101_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000101_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000102_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000102_mask : SignMask := ⟨28, by decide⟩
private def case_000102_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000102_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000102_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000102_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-20/9) }
private def case_000102_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000102_secondLine : StrictLin2 := { a := (-87/518), b := (87/518), c := (-101/259) }

private theorem case_000102_rankWord :
    rankPairWord? case_000102_word = some case_000102_rank := by
  decide

private theorem case_000102_unrank :
    unrankPairWord case_000102_rank = case_000102_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000102_word case_000102_rank).1
    case_000102_rankWord |>.symm

private theorem case_000102_seqChoice :
    translationChoiceSeq case_000102_word case_000102_mask = case_000102_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000102_seqAtRank :
    translationSeqAtRankMask case_000102_rank case_000102_mask = case_000102_seq := by
  rw [translationSeqAtRankMask, case_000102_unrank]
  exact case_000102_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000102_bAtRank :
    translationBAtRankMask case_000102_rank case_000102_mask = case_000102_b := by
  rw [translationBAtRankMask, case_000102_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000102_b, case_000102_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000102_firstLine_eq :
    case_000102_support.firstLine case_000102_seq case_000102_b = case_000102_firstLine := by
  norm_num [case_000102_firstLine, case_000102_support, case_000102_seq, case_000102_b,
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
private theorem case_000102_secondLine_eq :
    case_000102_support.secondLine case_000102_seq case_000102_b = case_000102_secondLine := by
  norm_num [case_000102_secondLine, case_000102_support, case_000102_seq, case_000102_b,
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
private theorem case_000102_sourceAgrees :
    SourceAgrees case_000102_support case_000102_rank.val case_000102_mask := by
  intro hlt
  have hrank : (⟨case_000102_rank.val, hlt⟩ : Fin numPairWords) = case_000102_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000102_rank.val, hlt⟩ case_000102_mask =
        case_000102_seq := by
    simpa [hrank] using case_000102_seqAtRank
  simp [SourceChecks, hseq, case_000102_support,
    checkTranslationConstraintSource, case_000102_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000102_rows :
    OppOneMinusVarSecondRows case_000102_support case_000102_rank.val case_000102_mask := by
  intro hlt
  have hrank : (⟨case_000102_rank.val, hlt⟩ : Fin numPairWords) = case_000102_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000102_rank.val, hlt⟩ case_000102_mask =
        case_000102_seq := by
    simpa [hrank] using case_000102_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000102_rank.val, hlt⟩ case_000102_mask =
        case_000102_b := by
    simpa [hrank] using case_000102_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000102_support case_000102_rank.val hlt
          case_000102_mask = case_000102_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000102_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000102_support case_000102_rank.val hlt
          case_000102_mask = case_000102_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000102_secondLine_eq]
  have case_000102_fixedFirst :
      FixedRow (FirstLineAt case_000102_support case_000102_rank.val hlt case_000102_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000102_firstLine, FixedRow]
  have case_000102_rowSecond :
      OppPosRow (SecondLineAt case_000102_support case_000102_rank.val hlt case_000102_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000102_secondLine, OppPosRow]
  exact ⟨case_000102_fixedFirst, case_000102_rowSecond⟩

private theorem case_000102_existsRows :
    ExistsOppOneMinusVarSecondRows case_000102_rank.val case_000102_mask :=
  ⟨case_000102_support, case_000102_sourceAgrees, case_000102_rows⟩

private theorem case_000102_covered :
    RowPropertyParametricCovered case_000102_rank.val case_000102_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000102_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000103_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000103_mask : SignMask := ⟨29, by decide⟩
private def case_000103_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000103_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000103_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000103_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-20/9) }
private def case_000103_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000103_secondLine : StrictLin2 := { a := (-9/20), b := (-9/20), c := (-9/10) }

private theorem case_000103_rankWord :
    rankPairWord? case_000103_word = some case_000103_rank := by
  decide

private theorem case_000103_unrank :
    unrankPairWord case_000103_rank = case_000103_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000103_word case_000103_rank).1
    case_000103_rankWord |>.symm

private theorem case_000103_seqChoice :
    translationChoiceSeq case_000103_word case_000103_mask = case_000103_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000103_seqAtRank :
    translationSeqAtRankMask case_000103_rank case_000103_mask = case_000103_seq := by
  rw [translationSeqAtRankMask, case_000103_unrank]
  exact case_000103_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000103_bAtRank :
    translationBAtRankMask case_000103_rank case_000103_mask = case_000103_b := by
  rw [translationBAtRankMask, case_000103_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000103_b, case_000103_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000103_firstLine_eq :
    case_000103_support.firstLine case_000103_seq case_000103_b = case_000103_firstLine := by
  norm_num [case_000103_firstLine, case_000103_support, case_000103_seq, case_000103_b,
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
private theorem case_000103_secondLine_eq :
    case_000103_support.secondLine case_000103_seq case_000103_b = case_000103_secondLine := by
  norm_num [case_000103_secondLine, case_000103_support, case_000103_seq, case_000103_b,
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
private theorem case_000103_sourceAgrees :
    SourceAgrees case_000103_support case_000103_rank.val case_000103_mask := by
  intro hlt
  have hrank : (⟨case_000103_rank.val, hlt⟩ : Fin numPairWords) = case_000103_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000103_rank.val, hlt⟩ case_000103_mask =
        case_000103_seq := by
    simpa [hrank] using case_000103_seqAtRank
  simp [SourceChecks, hseq, case_000103_support,
    checkTranslationConstraintSource, case_000103_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000103_rows :
    EqEqPosVarSecondRows case_000103_support case_000103_rank.val case_000103_mask := by
  intro hlt
  have hrank : (⟨case_000103_rank.val, hlt⟩ : Fin numPairWords) = case_000103_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000103_rank.val, hlt⟩ case_000103_mask =
        case_000103_seq := by
    simpa [hrank] using case_000103_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000103_rank.val, hlt⟩ case_000103_mask =
        case_000103_b := by
    simpa [hrank] using case_000103_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000103_support case_000103_rank.val hlt
          case_000103_mask = case_000103_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000103_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000103_support case_000103_rank.val hlt
          case_000103_mask = case_000103_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000103_secondLine_eq]
  have case_000103_fixedFirst :
      FixedRow (FirstLineAt case_000103_support case_000103_rank.val hlt case_000103_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000103_firstLine, FixedRow]
  have case_000103_rowSecond :
      EqEqPosRow (SecondLineAt case_000103_support case_000103_rank.val hlt case_000103_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000103_secondLine, EqEqPosRow]
  exact ⟨case_000103_fixedFirst, case_000103_rowSecond⟩

private theorem case_000103_existsRows :
    ExistsEqEqPosVarSecondRows case_000103_rank.val case_000103_mask :=
  ⟨case_000103_support, case_000103_sourceAgrees, case_000103_rows⟩

private theorem case_000103_covered :
    RowPropertyParametricCovered case_000103_rank.val case_000103_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000103_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000104_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000104_mask : SignMask := ⟨30, by decide⟩
private def case_000104_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000104_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000104_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000104_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (52/9) }
private def case_000104_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000104_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000104_rankWord :
    rankPairWord? case_000104_word = some case_000104_rank := by
  decide

private theorem case_000104_unrank :
    unrankPairWord case_000104_rank = case_000104_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000104_word case_000104_rank).1
    case_000104_rankWord |>.symm

private theorem case_000104_seqChoice :
    translationChoiceSeq case_000104_word case_000104_mask = case_000104_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000104_seqAtRank :
    translationSeqAtRankMask case_000104_rank case_000104_mask = case_000104_seq := by
  rw [translationSeqAtRankMask, case_000104_unrank]
  exact case_000104_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000104_bAtRank :
    translationBAtRankMask case_000104_rank case_000104_mask = case_000104_b := by
  rw [translationBAtRankMask, case_000104_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000104_b, case_000104_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000104_firstLine_eq :
    case_000104_support.firstLine case_000104_seq case_000104_b = case_000104_firstLine := by
  norm_num [case_000104_firstLine, case_000104_support, case_000104_seq, case_000104_b,
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
private theorem case_000104_secondLine_eq :
    case_000104_support.secondLine case_000104_seq case_000104_b = case_000104_secondLine := by
  norm_num [case_000104_secondLine, case_000104_support, case_000104_seq, case_000104_b,
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
private theorem case_000104_sourceAgrees :
    SourceAgrees case_000104_support case_000104_rank.val case_000104_mask := by
  intro hlt
  have hrank : (⟨case_000104_rank.val, hlt⟩ : Fin numPairWords) = case_000104_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000104_rank.val, hlt⟩ case_000104_mask =
        case_000104_seq := by
    simpa [hrank] using case_000104_seqAtRank
  simp [SourceChecks, hseq, case_000104_support,
    checkTranslationConstraintSource, case_000104_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000104_rows :
    EqEqPosVarFirstRows case_000104_support case_000104_rank.val case_000104_mask := by
  intro hlt
  have hrank : (⟨case_000104_rank.val, hlt⟩ : Fin numPairWords) = case_000104_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000104_rank.val, hlt⟩ case_000104_mask =
        case_000104_seq := by
    simpa [hrank] using case_000104_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000104_rank.val, hlt⟩ case_000104_mask =
        case_000104_b := by
    simpa [hrank] using case_000104_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000104_support case_000104_rank.val hlt
          case_000104_mask = case_000104_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000104_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000104_support case_000104_rank.val hlt
          case_000104_mask = case_000104_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000104_secondLine_eq]
  have case_000104_rowFirst :
      EqEqPosRow (FirstLineAt case_000104_support case_000104_rank.val hlt case_000104_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000104_firstLine, EqEqPosRow]
  have case_000104_fixedSecond :
      FixedRow (SecondLineAt case_000104_support case_000104_rank.val hlt case_000104_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000104_secondLine, FixedRow]
  exact ⟨case_000104_rowFirst, case_000104_fixedSecond⟩

private theorem case_000104_existsRows :
    ExistsEqEqPosVarFirstRows case_000104_rank.val case_000104_mask :=
  ⟨case_000104_support, case_000104_sourceAgrees, case_000104_rows⟩

private theorem case_000104_covered :
    RowPropertyParametricCovered case_000104_rank.val case_000104_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000104_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000105_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000105_mask : SignMask := ⟨45, by decide⟩
private def case_000105_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000105_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000105_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000105_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (-52/9) }
private def case_000105_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000105_secondLine : StrictLin2 := { a := (13/518), b := (-13/518), c := (-79/777) }

private theorem case_000105_rankWord :
    rankPairWord? case_000105_word = some case_000105_rank := by
  decide

private theorem case_000105_unrank :
    unrankPairWord case_000105_rank = case_000105_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000105_word case_000105_rank).1
    case_000105_rankWord |>.symm

private theorem case_000105_seqChoice :
    translationChoiceSeq case_000105_word case_000105_mask = case_000105_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000105_seqAtRank :
    translationSeqAtRankMask case_000105_rank case_000105_mask = case_000105_seq := by
  rw [translationSeqAtRankMask, case_000105_unrank]
  exact case_000105_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000105_bAtRank :
    translationBAtRankMask case_000105_rank case_000105_mask = case_000105_b := by
  rw [translationBAtRankMask, case_000105_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000105_b, case_000105_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000105_firstLine_eq :
    case_000105_support.firstLine case_000105_seq case_000105_b = case_000105_firstLine := by
  norm_num [case_000105_firstLine, case_000105_support, case_000105_seq, case_000105_b,
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
private theorem case_000105_secondLine_eq :
    case_000105_support.secondLine case_000105_seq case_000105_b = case_000105_secondLine := by
  norm_num [case_000105_secondLine, case_000105_support, case_000105_seq, case_000105_b,
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
private theorem case_000105_sourceAgrees :
    SourceAgrees case_000105_support case_000105_rank.val case_000105_mask := by
  intro hlt
  have hrank : (⟨case_000105_rank.val, hlt⟩ : Fin numPairWords) = case_000105_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000105_rank.val, hlt⟩ case_000105_mask =
        case_000105_seq := by
    simpa [hrank] using case_000105_seqAtRank
  simp [SourceChecks, hseq, case_000105_support,
    checkTranslationConstraintSource, case_000105_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000105_rows :
    OppMinusOneVarSecondRows case_000105_support case_000105_rank.val case_000105_mask := by
  intro hlt
  have hrank : (⟨case_000105_rank.val, hlt⟩ : Fin numPairWords) = case_000105_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000105_rank.val, hlt⟩ case_000105_mask =
        case_000105_seq := by
    simpa [hrank] using case_000105_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000105_rank.val, hlt⟩ case_000105_mask =
        case_000105_b := by
    simpa [hrank] using case_000105_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000105_support case_000105_rank.val hlt
          case_000105_mask = case_000105_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000105_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000105_support case_000105_rank.val hlt
          case_000105_mask = case_000105_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000105_secondLine_eq]
  have case_000105_fixedFirst :
      FixedRow (FirstLineAt case_000105_support case_000105_rank.val hlt case_000105_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000105_firstLine, FixedRow]
  have case_000105_rowSecond :
      OppNegRow (SecondLineAt case_000105_support case_000105_rank.val hlt case_000105_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000105_secondLine, OppNegRow]
  exact ⟨case_000105_fixedFirst, case_000105_rowSecond⟩

private theorem case_000105_existsRows :
    ExistsOppMinusOneVarSecondRows case_000105_rank.val case_000105_mask :=
  ⟨case_000105_support, case_000105_sourceAgrees, case_000105_rows⟩

private theorem case_000105_covered :
    RowPropertyParametricCovered case_000105_rank.val case_000105_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000105_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000106_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000106_mask : SignMask := ⟨47, by decide⟩
private def case_000106_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000106_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000106_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000106_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (20/9) }
private def case_000106_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000106_secondLine : StrictLin2 := { a := (13/190), b := (-13/190), c := (-88/285) }

private theorem case_000106_rankWord :
    rankPairWord? case_000106_word = some case_000106_rank := by
  decide

private theorem case_000106_unrank :
    unrankPairWord case_000106_rank = case_000106_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000106_word case_000106_rank).1
    case_000106_rankWord |>.symm

private theorem case_000106_seqChoice :
    translationChoiceSeq case_000106_word case_000106_mask = case_000106_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000106_seqAtRank :
    translationSeqAtRankMask case_000106_rank case_000106_mask = case_000106_seq := by
  rw [translationSeqAtRankMask, case_000106_unrank]
  exact case_000106_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000106_bAtRank :
    translationBAtRankMask case_000106_rank case_000106_mask = case_000106_b := by
  rw [translationBAtRankMask, case_000106_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000106_b, case_000106_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000106_firstLine_eq :
    case_000106_support.firstLine case_000106_seq case_000106_b = case_000106_firstLine := by
  norm_num [case_000106_firstLine, case_000106_support, case_000106_seq, case_000106_b,
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
private theorem case_000106_secondLine_eq :
    case_000106_support.secondLine case_000106_seq case_000106_b = case_000106_secondLine := by
  norm_num [case_000106_secondLine, case_000106_support, case_000106_seq, case_000106_b,
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
private theorem case_000106_sourceAgrees :
    SourceAgrees case_000106_support case_000106_rank.val case_000106_mask := by
  intro hlt
  have hrank : (⟨case_000106_rank.val, hlt⟩ : Fin numPairWords) = case_000106_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000106_rank.val, hlt⟩ case_000106_mask =
        case_000106_seq := by
    simpa [hrank] using case_000106_seqAtRank
  simp [SourceChecks, hseq, case_000106_support,
    checkTranslationConstraintSource, case_000106_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000106_rows :
    OppMinusOneVarSecondRows case_000106_support case_000106_rank.val case_000106_mask := by
  intro hlt
  have hrank : (⟨case_000106_rank.val, hlt⟩ : Fin numPairWords) = case_000106_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000106_rank.val, hlt⟩ case_000106_mask =
        case_000106_seq := by
    simpa [hrank] using case_000106_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000106_rank.val, hlt⟩ case_000106_mask =
        case_000106_b := by
    simpa [hrank] using case_000106_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000106_support case_000106_rank.val hlt
          case_000106_mask = case_000106_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000106_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000106_support case_000106_rank.val hlt
          case_000106_mask = case_000106_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000106_secondLine_eq]
  have case_000106_fixedFirst :
      FixedRow (FirstLineAt case_000106_support case_000106_rank.val hlt case_000106_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000106_firstLine, FixedRow]
  have case_000106_rowSecond :
      OppNegRow (SecondLineAt case_000106_support case_000106_rank.val hlt case_000106_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000106_secondLine, OppNegRow]
  exact ⟨case_000106_fixedFirst, case_000106_rowSecond⟩

private theorem case_000106_existsRows :
    ExistsOppMinusOneVarSecondRows case_000106_rank.val case_000106_mask :=
  ⟨case_000106_support, case_000106_sourceAgrees, case_000106_rows⟩

private theorem case_000106_covered :
    RowPropertyParametricCovered case_000106_rank.val case_000106_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000106_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000107_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000107_mask : SignMask := ⟨55, by decide⟩
private def case_000107_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000107_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000107_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000107_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (116/9) }
private def case_000107_firstLine : StrictLin2 := { a := -1, b := 1, c := (-19/13) }
private def case_000107_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000107_rankWord :
    rankPairWord? case_000107_word = some case_000107_rank := by
  decide

private theorem case_000107_unrank :
    unrankPairWord case_000107_rank = case_000107_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000107_word case_000107_rank).1
    case_000107_rankWord |>.symm

private theorem case_000107_seqChoice :
    translationChoiceSeq case_000107_word case_000107_mask = case_000107_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000107_seqAtRank :
    translationSeqAtRankMask case_000107_rank case_000107_mask = case_000107_seq := by
  rw [translationSeqAtRankMask, case_000107_unrank]
  exact case_000107_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000107_bAtRank :
    translationBAtRankMask case_000107_rank case_000107_mask = case_000107_b := by
  rw [translationBAtRankMask, case_000107_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000107_b, case_000107_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000107_firstLine_eq :
    case_000107_support.firstLine case_000107_seq case_000107_b = case_000107_firstLine := by
  norm_num [case_000107_firstLine, case_000107_support, case_000107_seq, case_000107_b,
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
private theorem case_000107_secondLine_eq :
    case_000107_support.secondLine case_000107_seq case_000107_b = case_000107_secondLine := by
  norm_num [case_000107_secondLine, case_000107_support, case_000107_seq, case_000107_b,
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
private theorem case_000107_sourceAgrees :
    SourceAgrees case_000107_support case_000107_rank.val case_000107_mask := by
  intro hlt
  have hrank : (⟨case_000107_rank.val, hlt⟩ : Fin numPairWords) = case_000107_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000107_rank.val, hlt⟩ case_000107_mask =
        case_000107_seq := by
    simpa [hrank] using case_000107_seqAtRank
  simp [SourceChecks, hseq, case_000107_support,
    checkTranslationConstraintSource, case_000107_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000107_rows :
    OppOneMinusVarFirstRows case_000107_support case_000107_rank.val case_000107_mask := by
  intro hlt
  have hrank : (⟨case_000107_rank.val, hlt⟩ : Fin numPairWords) = case_000107_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000107_rank.val, hlt⟩ case_000107_mask =
        case_000107_seq := by
    simpa [hrank] using case_000107_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000107_rank.val, hlt⟩ case_000107_mask =
        case_000107_b := by
    simpa [hrank] using case_000107_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000107_support case_000107_rank.val hlt
          case_000107_mask = case_000107_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000107_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000107_support case_000107_rank.val hlt
          case_000107_mask = case_000107_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000107_secondLine_eq]
  have case_000107_rowFirst :
      OppPosRow (FirstLineAt case_000107_support case_000107_rank.val hlt case_000107_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000107_firstLine, OppPosRow]
  have case_000107_fixedSecond :
      FixedRow (SecondLineAt case_000107_support case_000107_rank.val hlt case_000107_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000107_secondLine, FixedRow]
  exact ⟨case_000107_rowFirst, case_000107_fixedSecond⟩

private theorem case_000107_existsRows :
    ExistsOppOneMinusVarFirstRows case_000107_rank.val case_000107_mask :=
  ⟨case_000107_support, case_000107_sourceAgrees, case_000107_rows⟩

private theorem case_000107_covered :
    RowPropertyParametricCovered case_000107_rank.val case_000107_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000107_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000108_rank : Fin numPairWords := ⟨27, by decide⟩
private def case_000108_mask : SignMask := ⟨63, by decide⟩
private def case_000108_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000108_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000108_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000108_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (68/9) }
private def case_000108_firstLine : StrictLin2 := { a := (-25/67), b := (-25/67), c := (-57/67) }
private def case_000108_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000108_rankWord :
    rankPairWord? case_000108_word = some case_000108_rank := by
  decide

private theorem case_000108_unrank :
    unrankPairWord case_000108_rank = case_000108_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000108_word case_000108_rank).1
    case_000108_rankWord |>.symm

private theorem case_000108_seqChoice :
    translationChoiceSeq case_000108_word case_000108_mask = case_000108_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000108_seqAtRank :
    translationSeqAtRankMask case_000108_rank case_000108_mask = case_000108_seq := by
  rw [translationSeqAtRankMask, case_000108_unrank]
  exact case_000108_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000108_bAtRank :
    translationBAtRankMask case_000108_rank case_000108_mask = case_000108_b := by
  rw [translationBAtRankMask, case_000108_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000108_b, case_000108_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000108_firstLine_eq :
    case_000108_support.firstLine case_000108_seq case_000108_b = case_000108_firstLine := by
  norm_num [case_000108_firstLine, case_000108_support, case_000108_seq, case_000108_b,
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
private theorem case_000108_secondLine_eq :
    case_000108_support.secondLine case_000108_seq case_000108_b = case_000108_secondLine := by
  norm_num [case_000108_secondLine, case_000108_support, case_000108_seq, case_000108_b,
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
private theorem case_000108_sourceAgrees :
    SourceAgrees case_000108_support case_000108_rank.val case_000108_mask := by
  intro hlt
  have hrank : (⟨case_000108_rank.val, hlt⟩ : Fin numPairWords) = case_000108_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000108_rank.val, hlt⟩ case_000108_mask =
        case_000108_seq := by
    simpa [hrank] using case_000108_seqAtRank
  simp [SourceChecks, hseq, case_000108_support,
    checkTranslationConstraintSource, case_000108_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000108_rows :
    EqEqPosVarFirstRows case_000108_support case_000108_rank.val case_000108_mask := by
  intro hlt
  have hrank : (⟨case_000108_rank.val, hlt⟩ : Fin numPairWords) = case_000108_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000108_rank.val, hlt⟩ case_000108_mask =
        case_000108_seq := by
    simpa [hrank] using case_000108_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000108_rank.val, hlt⟩ case_000108_mask =
        case_000108_b := by
    simpa [hrank] using case_000108_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000108_support case_000108_rank.val hlt
          case_000108_mask = case_000108_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000108_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000108_support case_000108_rank.val hlt
          case_000108_mask = case_000108_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000108_secondLine_eq]
  have case_000108_rowFirst :
      EqEqPosRow (FirstLineAt case_000108_support case_000108_rank.val hlt case_000108_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000108_firstLine, EqEqPosRow]
  have case_000108_fixedSecond :
      FixedRow (SecondLineAt case_000108_support case_000108_rank.val hlt case_000108_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000108_secondLine, FixedRow]
  exact ⟨case_000108_rowFirst, case_000108_fixedSecond⟩

private theorem case_000108_existsRows :
    ExistsEqEqPosVarFirstRows case_000108_rank.val case_000108_mask :=
  ⟨case_000108_support, case_000108_sourceAgrees, case_000108_rows⟩

private theorem case_000108_covered :
    RowPropertyParametricCovered case_000108_rank.val case_000108_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000108_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000109_rank : Fin numPairWords := ⟨29, by decide⟩
private def case_000109_mask : SignMask := ⟨8, by decide⟩
private def case_000109_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000109_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000109_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_000109_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (-100/9) }
private def case_000109_firstLine : StrictLin2 := { a := -1, b := -1, c := -83 }
private def case_000109_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000109_rankWord :
    rankPairWord? case_000109_word = some case_000109_rank := by
  decide

private theorem case_000109_unrank :
    unrankPairWord case_000109_rank = case_000109_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000109_word case_000109_rank).1
    case_000109_rankWord |>.symm

private theorem case_000109_seqChoice :
    translationChoiceSeq case_000109_word case_000109_mask = case_000109_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000109_seqAtRank :
    translationSeqAtRankMask case_000109_rank case_000109_mask = case_000109_seq := by
  rw [translationSeqAtRankMask, case_000109_unrank]
  exact case_000109_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000109_bAtRank :
    translationBAtRankMask case_000109_rank case_000109_mask = case_000109_b := by
  rw [translationBAtRankMask, case_000109_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000109_b, case_000109_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000109_firstLine_eq :
    case_000109_support.firstLine case_000109_seq case_000109_b = case_000109_firstLine := by
  norm_num [case_000109_firstLine, case_000109_support, case_000109_seq, case_000109_b,
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
private theorem case_000109_secondLine_eq :
    case_000109_support.secondLine case_000109_seq case_000109_b = case_000109_secondLine := by
  norm_num [case_000109_secondLine, case_000109_support, case_000109_seq, case_000109_b,
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
private theorem case_000109_sourceAgrees :
    SourceAgrees case_000109_support case_000109_rank.val case_000109_mask := by
  intro hlt
  have hrank : (⟨case_000109_rank.val, hlt⟩ : Fin numPairWords) = case_000109_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000109_rank.val, hlt⟩ case_000109_mask =
        case_000109_seq := by
    simpa [hrank] using case_000109_seqAtRank
  simp [SourceChecks, hseq, case_000109_support,
    checkTranslationConstraintSource, case_000109_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000109_rows :
    EqEqPosVarFirstRows case_000109_support case_000109_rank.val case_000109_mask := by
  intro hlt
  have hrank : (⟨case_000109_rank.val, hlt⟩ : Fin numPairWords) = case_000109_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000109_rank.val, hlt⟩ case_000109_mask =
        case_000109_seq := by
    simpa [hrank] using case_000109_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000109_rank.val, hlt⟩ case_000109_mask =
        case_000109_b := by
    simpa [hrank] using case_000109_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000109_support case_000109_rank.val hlt
          case_000109_mask = case_000109_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000109_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000109_support case_000109_rank.val hlt
          case_000109_mask = case_000109_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000109_secondLine_eq]
  have case_000109_rowFirst :
      EqEqPosRow (FirstLineAt case_000109_support case_000109_rank.val hlt case_000109_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000109_firstLine, EqEqPosRow]
  have case_000109_fixedSecond :
      FixedRow (SecondLineAt case_000109_support case_000109_rank.val hlt case_000109_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000109_secondLine, FixedRow]
  exact ⟨case_000109_rowFirst, case_000109_fixedSecond⟩

private theorem case_000109_existsRows :
    ExistsEqEqPosVarFirstRows case_000109_rank.val case_000109_mask :=
  ⟨case_000109_support, case_000109_sourceAgrees, case_000109_rows⟩

private theorem case_000109_covered :
    RowPropertyParametricCovered case_000109_rank.val case_000109_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000109_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000110_rank : Fin numPairWords := ⟨29, by decide⟩
private def case_000110_mask : SignMask := ⟨9, by decide⟩
private def case_000110_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000110_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000110_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_000110_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (-100/9) }
private def case_000110_firstLine : StrictLin2 := { a := -1, b := -1, c := -47 }
private def case_000110_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000110_rankWord :
    rankPairWord? case_000110_word = some case_000110_rank := by
  decide

private theorem case_000110_unrank :
    unrankPairWord case_000110_rank = case_000110_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000110_word case_000110_rank).1
    case_000110_rankWord |>.symm

private theorem case_000110_seqChoice :
    translationChoiceSeq case_000110_word case_000110_mask = case_000110_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000110_seqAtRank :
    translationSeqAtRankMask case_000110_rank case_000110_mask = case_000110_seq := by
  rw [translationSeqAtRankMask, case_000110_unrank]
  exact case_000110_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000110_bAtRank :
    translationBAtRankMask case_000110_rank case_000110_mask = case_000110_b := by
  rw [translationBAtRankMask, case_000110_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000110_b, case_000110_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000110_firstLine_eq :
    case_000110_support.firstLine case_000110_seq case_000110_b = case_000110_firstLine := by
  norm_num [case_000110_firstLine, case_000110_support, case_000110_seq, case_000110_b,
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
private theorem case_000110_secondLine_eq :
    case_000110_support.secondLine case_000110_seq case_000110_b = case_000110_secondLine := by
  norm_num [case_000110_secondLine, case_000110_support, case_000110_seq, case_000110_b,
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
private theorem case_000110_sourceAgrees :
    SourceAgrees case_000110_support case_000110_rank.val case_000110_mask := by
  intro hlt
  have hrank : (⟨case_000110_rank.val, hlt⟩ : Fin numPairWords) = case_000110_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000110_rank.val, hlt⟩ case_000110_mask =
        case_000110_seq := by
    simpa [hrank] using case_000110_seqAtRank
  simp [SourceChecks, hseq, case_000110_support,
    checkTranslationConstraintSource, case_000110_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000110_rows :
    EqEqPosVarFirstRows case_000110_support case_000110_rank.val case_000110_mask := by
  intro hlt
  have hrank : (⟨case_000110_rank.val, hlt⟩ : Fin numPairWords) = case_000110_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000110_rank.val, hlt⟩ case_000110_mask =
        case_000110_seq := by
    simpa [hrank] using case_000110_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000110_rank.val, hlt⟩ case_000110_mask =
        case_000110_b := by
    simpa [hrank] using case_000110_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000110_support case_000110_rank.val hlt
          case_000110_mask = case_000110_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000110_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000110_support case_000110_rank.val hlt
          case_000110_mask = case_000110_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000110_secondLine_eq]
  have case_000110_rowFirst :
      EqEqPosRow (FirstLineAt case_000110_support case_000110_rank.val hlt case_000110_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000110_firstLine, EqEqPosRow]
  have case_000110_fixedSecond :
      FixedRow (SecondLineAt case_000110_support case_000110_rank.val hlt case_000110_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000110_secondLine, FixedRow]
  exact ⟨case_000110_rowFirst, case_000110_fixedSecond⟩

private theorem case_000110_existsRows :
    ExistsEqEqPosVarFirstRows case_000110_rank.val case_000110_mask :=
  ⟨case_000110_support, case_000110_sourceAgrees, case_000110_rows⟩

private theorem case_000110_covered :
    RowPropertyParametricCovered case_000110_rank.val case_000110_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000110_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000111_rank : Fin numPairWords := ⟨29, by decide⟩
private def case_000111_mask : SignMask := ⟨16, by decide⟩
private def case_000111_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000111_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000111_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000111_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000111_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000111_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000111_rankWord :
    rankPairWord? case_000111_word = some case_000111_rank := by
  decide

private theorem case_000111_unrank :
    unrankPairWord case_000111_rank = case_000111_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000111_word case_000111_rank).1
    case_000111_rankWord |>.symm

private theorem case_000111_seqChoice :
    translationChoiceSeq case_000111_word case_000111_mask = case_000111_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000111_seqAtRank :
    translationSeqAtRankMask case_000111_rank case_000111_mask = case_000111_seq := by
  rw [translationSeqAtRankMask, case_000111_unrank]
  exact case_000111_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000111_bAtRank :
    translationBAtRankMask case_000111_rank case_000111_mask = case_000111_b := by
  rw [translationBAtRankMask, case_000111_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000111_b, case_000111_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000111_firstLine_eq :
    case_000111_support.firstLine case_000111_seq case_000111_b = case_000111_firstLine := by
  norm_num [case_000111_firstLine, case_000111_support, case_000111_seq, case_000111_b,
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
private theorem case_000111_secondLine_eq :
    case_000111_support.secondLine case_000111_seq case_000111_b = case_000111_secondLine := by
  norm_num [case_000111_secondLine, case_000111_support, case_000111_seq, case_000111_b,
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
private theorem case_000111_sourceAgrees :
    SourceAgrees case_000111_support case_000111_rank.val case_000111_mask := by
  intro hlt
  have hrank : (⟨case_000111_rank.val, hlt⟩ : Fin numPairWords) = case_000111_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000111_rank.val, hlt⟩ case_000111_mask =
        case_000111_seq := by
    simpa [hrank] using case_000111_seqAtRank
  simp [SourceChecks, hseq, case_000111_support,
    checkTranslationConstraintSource, case_000111_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000111_rows :
    EqEqPosVarFirstRows case_000111_support case_000111_rank.val case_000111_mask := by
  intro hlt
  have hrank : (⟨case_000111_rank.val, hlt⟩ : Fin numPairWords) = case_000111_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000111_rank.val, hlt⟩ case_000111_mask =
        case_000111_seq := by
    simpa [hrank] using case_000111_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000111_rank.val, hlt⟩ case_000111_mask =
        case_000111_b := by
    simpa [hrank] using case_000111_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000111_support case_000111_rank.val hlt
          case_000111_mask = case_000111_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000111_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000111_support case_000111_rank.val hlt
          case_000111_mask = case_000111_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000111_secondLine_eq]
  have case_000111_rowFirst :
      EqEqPosRow (FirstLineAt case_000111_support case_000111_rank.val hlt case_000111_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000111_firstLine, EqEqPosRow]
  have case_000111_fixedSecond :
      FixedRow (SecondLineAt case_000111_support case_000111_rank.val hlt case_000111_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000111_secondLine, FixedRow]
  exact ⟨case_000111_rowFirst, case_000111_fixedSecond⟩

private theorem case_000111_existsRows :
    ExistsEqEqPosVarFirstRows case_000111_rank.val case_000111_mask :=
  ⟨case_000111_support, case_000111_sourceAgrees, case_000111_rows⟩

private theorem case_000111_covered :
    RowPropertyParametricCovered case_000111_rank.val case_000111_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000111_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000112_rank : Fin numPairWords := ⟨29, by decide⟩
private def case_000112_mask : SignMask := ⟨18, by decide⟩
private def case_000112_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000112_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000112_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000112_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000112_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000112_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000112_rankWord :
    rankPairWord? case_000112_word = some case_000112_rank := by
  decide

private theorem case_000112_unrank :
    unrankPairWord case_000112_rank = case_000112_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000112_word case_000112_rank).1
    case_000112_rankWord |>.symm

private theorem case_000112_seqChoice :
    translationChoiceSeq case_000112_word case_000112_mask = case_000112_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000112_seqAtRank :
    translationSeqAtRankMask case_000112_rank case_000112_mask = case_000112_seq := by
  rw [translationSeqAtRankMask, case_000112_unrank]
  exact case_000112_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000112_bAtRank :
    translationBAtRankMask case_000112_rank case_000112_mask = case_000112_b := by
  rw [translationBAtRankMask, case_000112_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000112_b, case_000112_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000112_firstLine_eq :
    case_000112_support.firstLine case_000112_seq case_000112_b = case_000112_firstLine := by
  norm_num [case_000112_firstLine, case_000112_support, case_000112_seq, case_000112_b,
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
private theorem case_000112_secondLine_eq :
    case_000112_support.secondLine case_000112_seq case_000112_b = case_000112_secondLine := by
  norm_num [case_000112_secondLine, case_000112_support, case_000112_seq, case_000112_b,
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
private theorem case_000112_sourceAgrees :
    SourceAgrees case_000112_support case_000112_rank.val case_000112_mask := by
  intro hlt
  have hrank : (⟨case_000112_rank.val, hlt⟩ : Fin numPairWords) = case_000112_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000112_rank.val, hlt⟩ case_000112_mask =
        case_000112_seq := by
    simpa [hrank] using case_000112_seqAtRank
  simp [SourceChecks, hseq, case_000112_support,
    checkTranslationConstraintSource, case_000112_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000112_rows :
    EqEqPosVarFirstRows case_000112_support case_000112_rank.val case_000112_mask := by
  intro hlt
  have hrank : (⟨case_000112_rank.val, hlt⟩ : Fin numPairWords) = case_000112_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000112_rank.val, hlt⟩ case_000112_mask =
        case_000112_seq := by
    simpa [hrank] using case_000112_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000112_rank.val, hlt⟩ case_000112_mask =
        case_000112_b := by
    simpa [hrank] using case_000112_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000112_support case_000112_rank.val hlt
          case_000112_mask = case_000112_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000112_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000112_support case_000112_rank.val hlt
          case_000112_mask = case_000112_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000112_secondLine_eq]
  have case_000112_rowFirst :
      EqEqPosRow (FirstLineAt case_000112_support case_000112_rank.val hlt case_000112_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000112_firstLine, EqEqPosRow]
  have case_000112_fixedSecond :
      FixedRow (SecondLineAt case_000112_support case_000112_rank.val hlt case_000112_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000112_secondLine, FixedRow]
  exact ⟨case_000112_rowFirst, case_000112_fixedSecond⟩

private theorem case_000112_existsRows :
    ExistsEqEqPosVarFirstRows case_000112_rank.val case_000112_mask :=
  ⟨case_000112_support, case_000112_sourceAgrees, case_000112_rows⟩

private theorem case_000112_covered :
    RowPropertyParametricCovered case_000112_rank.val case_000112_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000112_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000113_rank : Fin numPairWords := ⟨29, by decide⟩
private def case_000113_mask : SignMask := ⟨22, by decide⟩
private def case_000113_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000113_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000113_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000113_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000113_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000113_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000113_rankWord :
    rankPairWord? case_000113_word = some case_000113_rank := by
  decide

private theorem case_000113_unrank :
    unrankPairWord case_000113_rank = case_000113_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000113_word case_000113_rank).1
    case_000113_rankWord |>.symm

private theorem case_000113_seqChoice :
    translationChoiceSeq case_000113_word case_000113_mask = case_000113_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000113_seqAtRank :
    translationSeqAtRankMask case_000113_rank case_000113_mask = case_000113_seq := by
  rw [translationSeqAtRankMask, case_000113_unrank]
  exact case_000113_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000113_bAtRank :
    translationBAtRankMask case_000113_rank case_000113_mask = case_000113_b := by
  rw [translationBAtRankMask, case_000113_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000113_b, case_000113_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000113_firstLine_eq :
    case_000113_support.firstLine case_000113_seq case_000113_b = case_000113_firstLine := by
  norm_num [case_000113_firstLine, case_000113_support, case_000113_seq, case_000113_b,
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
private theorem case_000113_secondLine_eq :
    case_000113_support.secondLine case_000113_seq case_000113_b = case_000113_secondLine := by
  norm_num [case_000113_secondLine, case_000113_support, case_000113_seq, case_000113_b,
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
private theorem case_000113_sourceAgrees :
    SourceAgrees case_000113_support case_000113_rank.val case_000113_mask := by
  intro hlt
  have hrank : (⟨case_000113_rank.val, hlt⟩ : Fin numPairWords) = case_000113_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000113_rank.val, hlt⟩ case_000113_mask =
        case_000113_seq := by
    simpa [hrank] using case_000113_seqAtRank
  simp [SourceChecks, hseq, case_000113_support,
    checkTranslationConstraintSource, case_000113_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000113_rows :
    EqEqPosVarFirstRows case_000113_support case_000113_rank.val case_000113_mask := by
  intro hlt
  have hrank : (⟨case_000113_rank.val, hlt⟩ : Fin numPairWords) = case_000113_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000113_rank.val, hlt⟩ case_000113_mask =
        case_000113_seq := by
    simpa [hrank] using case_000113_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000113_rank.val, hlt⟩ case_000113_mask =
        case_000113_b := by
    simpa [hrank] using case_000113_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000113_support case_000113_rank.val hlt
          case_000113_mask = case_000113_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000113_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000113_support case_000113_rank.val hlt
          case_000113_mask = case_000113_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000113_secondLine_eq]
  have case_000113_rowFirst :
      EqEqPosRow (FirstLineAt case_000113_support case_000113_rank.val hlt case_000113_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000113_firstLine, EqEqPosRow]
  have case_000113_fixedSecond :
      FixedRow (SecondLineAt case_000113_support case_000113_rank.val hlt case_000113_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000113_secondLine, FixedRow]
  exact ⟨case_000113_rowFirst, case_000113_fixedSecond⟩

private theorem case_000113_existsRows :
    ExistsEqEqPosVarFirstRows case_000113_rank.val case_000113_mask :=
  ⟨case_000113_support, case_000113_sourceAgrees, case_000113_rows⟩

private theorem case_000113_covered :
    RowPropertyParametricCovered case_000113_rank.val case_000113_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000113_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000114_rank : Fin numPairWords := ⟨29, by decide⟩
private def case_000114_mask : SignMask := ⟨24, by decide⟩
private def case_000114_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000114_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000114_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000114_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000114_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000114_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000114_rankWord :
    rankPairWord? case_000114_word = some case_000114_rank := by
  decide

private theorem case_000114_unrank :
    unrankPairWord case_000114_rank = case_000114_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000114_word case_000114_rank).1
    case_000114_rankWord |>.symm

private theorem case_000114_seqChoice :
    translationChoiceSeq case_000114_word case_000114_mask = case_000114_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000114_seqAtRank :
    translationSeqAtRankMask case_000114_rank case_000114_mask = case_000114_seq := by
  rw [translationSeqAtRankMask, case_000114_unrank]
  exact case_000114_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000114_bAtRank :
    translationBAtRankMask case_000114_rank case_000114_mask = case_000114_b := by
  rw [translationBAtRankMask, case_000114_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000114_b, case_000114_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000114_firstLine_eq :
    case_000114_support.firstLine case_000114_seq case_000114_b = case_000114_firstLine := by
  norm_num [case_000114_firstLine, case_000114_support, case_000114_seq, case_000114_b,
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
private theorem case_000114_secondLine_eq :
    case_000114_support.secondLine case_000114_seq case_000114_b = case_000114_secondLine := by
  norm_num [case_000114_secondLine, case_000114_support, case_000114_seq, case_000114_b,
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
private theorem case_000114_sourceAgrees :
    SourceAgrees case_000114_support case_000114_rank.val case_000114_mask := by
  intro hlt
  have hrank : (⟨case_000114_rank.val, hlt⟩ : Fin numPairWords) = case_000114_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000114_rank.val, hlt⟩ case_000114_mask =
        case_000114_seq := by
    simpa [hrank] using case_000114_seqAtRank
  simp [SourceChecks, hseq, case_000114_support,
    checkTranslationConstraintSource, case_000114_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000114_rows :
    EqEqPosVarFirstRows case_000114_support case_000114_rank.val case_000114_mask := by
  intro hlt
  have hrank : (⟨case_000114_rank.val, hlt⟩ : Fin numPairWords) = case_000114_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000114_rank.val, hlt⟩ case_000114_mask =
        case_000114_seq := by
    simpa [hrank] using case_000114_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000114_rank.val, hlt⟩ case_000114_mask =
        case_000114_b := by
    simpa [hrank] using case_000114_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000114_support case_000114_rank.val hlt
          case_000114_mask = case_000114_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000114_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000114_support case_000114_rank.val hlt
          case_000114_mask = case_000114_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000114_secondLine_eq]
  have case_000114_rowFirst :
      EqEqPosRow (FirstLineAt case_000114_support case_000114_rank.val hlt case_000114_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000114_firstLine, EqEqPosRow]
  have case_000114_fixedSecond :
      FixedRow (SecondLineAt case_000114_support case_000114_rank.val hlt case_000114_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000114_secondLine, FixedRow]
  exact ⟨case_000114_rowFirst, case_000114_fixedSecond⟩

private theorem case_000114_existsRows :
    ExistsEqEqPosVarFirstRows case_000114_rank.val case_000114_mask :=
  ⟨case_000114_support, case_000114_sourceAgrees, case_000114_rows⟩

private theorem case_000114_covered :
    RowPropertyParametricCovered case_000114_rank.val case_000114_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000114_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000115_rank : Fin numPairWords := ⟨29, by decide⟩
private def case_000115_mask : SignMask := ⟨28, by decide⟩
private def case_000115_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000115_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000115_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000115_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000115_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000115_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000115_rankWord :
    rankPairWord? case_000115_word = some case_000115_rank := by
  decide

private theorem case_000115_unrank :
    unrankPairWord case_000115_rank = case_000115_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000115_word case_000115_rank).1
    case_000115_rankWord |>.symm

private theorem case_000115_seqChoice :
    translationChoiceSeq case_000115_word case_000115_mask = case_000115_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000115_seqAtRank :
    translationSeqAtRankMask case_000115_rank case_000115_mask = case_000115_seq := by
  rw [translationSeqAtRankMask, case_000115_unrank]
  exact case_000115_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000115_bAtRank :
    translationBAtRankMask case_000115_rank case_000115_mask = case_000115_b := by
  rw [translationBAtRankMask, case_000115_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000115_b, case_000115_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000115_firstLine_eq :
    case_000115_support.firstLine case_000115_seq case_000115_b = case_000115_firstLine := by
  norm_num [case_000115_firstLine, case_000115_support, case_000115_seq, case_000115_b,
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
private theorem case_000115_secondLine_eq :
    case_000115_support.secondLine case_000115_seq case_000115_b = case_000115_secondLine := by
  norm_num [case_000115_secondLine, case_000115_support, case_000115_seq, case_000115_b,
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
private theorem case_000115_sourceAgrees :
    SourceAgrees case_000115_support case_000115_rank.val case_000115_mask := by
  intro hlt
  have hrank : (⟨case_000115_rank.val, hlt⟩ : Fin numPairWords) = case_000115_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000115_rank.val, hlt⟩ case_000115_mask =
        case_000115_seq := by
    simpa [hrank] using case_000115_seqAtRank
  simp [SourceChecks, hseq, case_000115_support,
    checkTranslationConstraintSource, case_000115_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000115_rows :
    OppOneMinusVarFirstRows case_000115_support case_000115_rank.val case_000115_mask := by
  intro hlt
  have hrank : (⟨case_000115_rank.val, hlt⟩ : Fin numPairWords) = case_000115_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000115_rank.val, hlt⟩ case_000115_mask =
        case_000115_seq := by
    simpa [hrank] using case_000115_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000115_rank.val, hlt⟩ case_000115_mask =
        case_000115_b := by
    simpa [hrank] using case_000115_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000115_support case_000115_rank.val hlt
          case_000115_mask = case_000115_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000115_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000115_support case_000115_rank.val hlt
          case_000115_mask = case_000115_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000115_secondLine_eq]
  have case_000115_rowFirst :
      OppPosRow (FirstLineAt case_000115_support case_000115_rank.val hlt case_000115_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000115_firstLine, OppPosRow]
  have case_000115_fixedSecond :
      FixedRow (SecondLineAt case_000115_support case_000115_rank.val hlt case_000115_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000115_secondLine, FixedRow]
  exact ⟨case_000115_rowFirst, case_000115_fixedSecond⟩

private theorem case_000115_existsRows :
    ExistsOppOneMinusVarFirstRows case_000115_rank.val case_000115_mask :=
  ⟨case_000115_support, case_000115_sourceAgrees, case_000115_rows⟩

private theorem case_000115_covered :
    RowPropertyParametricCovered case_000115_rank.val case_000115_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000115_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000116_rank : Fin numPairWords := ⟨29, by decide⟩
private def case_000116_mask : SignMask := ⟨30, by decide⟩
private def case_000116_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000116_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000116_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000116_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000116_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000116_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000116_rankWord :
    rankPairWord? case_000116_word = some case_000116_rank := by
  decide

private theorem case_000116_unrank :
    unrankPairWord case_000116_rank = case_000116_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000116_word case_000116_rank).1
    case_000116_rankWord |>.symm

private theorem case_000116_seqChoice :
    translationChoiceSeq case_000116_word case_000116_mask = case_000116_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000116_seqAtRank :
    translationSeqAtRankMask case_000116_rank case_000116_mask = case_000116_seq := by
  rw [translationSeqAtRankMask, case_000116_unrank]
  exact case_000116_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000116_bAtRank :
    translationBAtRankMask case_000116_rank case_000116_mask = case_000116_b := by
  rw [translationBAtRankMask, case_000116_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000116_b, case_000116_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000116_firstLine_eq :
    case_000116_support.firstLine case_000116_seq case_000116_b = case_000116_firstLine := by
  norm_num [case_000116_firstLine, case_000116_support, case_000116_seq, case_000116_b,
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
private theorem case_000116_secondLine_eq :
    case_000116_support.secondLine case_000116_seq case_000116_b = case_000116_secondLine := by
  norm_num [case_000116_secondLine, case_000116_support, case_000116_seq, case_000116_b,
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
private theorem case_000116_sourceAgrees :
    SourceAgrees case_000116_support case_000116_rank.val case_000116_mask := by
  intro hlt
  have hrank : (⟨case_000116_rank.val, hlt⟩ : Fin numPairWords) = case_000116_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000116_rank.val, hlt⟩ case_000116_mask =
        case_000116_seq := by
    simpa [hrank] using case_000116_seqAtRank
  simp [SourceChecks, hseq, case_000116_support,
    checkTranslationConstraintSource, case_000116_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000116_rows :
    EqEqPosVarFirstRows case_000116_support case_000116_rank.val case_000116_mask := by
  intro hlt
  have hrank : (⟨case_000116_rank.val, hlt⟩ : Fin numPairWords) = case_000116_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000116_rank.val, hlt⟩ case_000116_mask =
        case_000116_seq := by
    simpa [hrank] using case_000116_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000116_rank.val, hlt⟩ case_000116_mask =
        case_000116_b := by
    simpa [hrank] using case_000116_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000116_support case_000116_rank.val hlt
          case_000116_mask = case_000116_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000116_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000116_support case_000116_rank.val hlt
          case_000116_mask = case_000116_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000116_secondLine_eq]
  have case_000116_rowFirst :
      EqEqPosRow (FirstLineAt case_000116_support case_000116_rank.val hlt case_000116_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000116_firstLine, EqEqPosRow]
  have case_000116_fixedSecond :
      FixedRow (SecondLineAt case_000116_support case_000116_rank.val hlt case_000116_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000116_secondLine, FixedRow]
  exact ⟨case_000116_rowFirst, case_000116_fixedSecond⟩

private theorem case_000116_existsRows :
    ExistsEqEqPosVarFirstRows case_000116_rank.val case_000116_mask :=
  ⟨case_000116_support, case_000116_sourceAgrees, case_000116_rows⟩

private theorem case_000116_covered :
    RowPropertyParametricCovered case_000116_rank.val case_000116_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000116_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000117_rank : Fin numPairWords := ⟨29, by decide⟩
private def case_000117_mask : SignMask := ⟨54, by decide⟩
private def case_000117_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000117_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000117_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000117_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (100/9) }
private def case_000117_firstLine : StrictLin2 := { a := -1, b := 1, c := (-35/17) }
private def case_000117_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000117_rankWord :
    rankPairWord? case_000117_word = some case_000117_rank := by
  decide

private theorem case_000117_unrank :
    unrankPairWord case_000117_rank = case_000117_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000117_word case_000117_rank).1
    case_000117_rankWord |>.symm

private theorem case_000117_seqChoice :
    translationChoiceSeq case_000117_word case_000117_mask = case_000117_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000117_seqAtRank :
    translationSeqAtRankMask case_000117_rank case_000117_mask = case_000117_seq := by
  rw [translationSeqAtRankMask, case_000117_unrank]
  exact case_000117_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000117_bAtRank :
    translationBAtRankMask case_000117_rank case_000117_mask = case_000117_b := by
  rw [translationBAtRankMask, case_000117_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000117_b, case_000117_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000117_firstLine_eq :
    case_000117_support.firstLine case_000117_seq case_000117_b = case_000117_firstLine := by
  norm_num [case_000117_firstLine, case_000117_support, case_000117_seq, case_000117_b,
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
private theorem case_000117_secondLine_eq :
    case_000117_support.secondLine case_000117_seq case_000117_b = case_000117_secondLine := by
  norm_num [case_000117_secondLine, case_000117_support, case_000117_seq, case_000117_b,
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
private theorem case_000117_sourceAgrees :
    SourceAgrees case_000117_support case_000117_rank.val case_000117_mask := by
  intro hlt
  have hrank : (⟨case_000117_rank.val, hlt⟩ : Fin numPairWords) = case_000117_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000117_rank.val, hlt⟩ case_000117_mask =
        case_000117_seq := by
    simpa [hrank] using case_000117_seqAtRank
  simp [SourceChecks, hseq, case_000117_support,
    checkTranslationConstraintSource, case_000117_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000117_rows :
    OppOneMinusVarFirstRows case_000117_support case_000117_rank.val case_000117_mask := by
  intro hlt
  have hrank : (⟨case_000117_rank.val, hlt⟩ : Fin numPairWords) = case_000117_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000117_rank.val, hlt⟩ case_000117_mask =
        case_000117_seq := by
    simpa [hrank] using case_000117_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000117_rank.val, hlt⟩ case_000117_mask =
        case_000117_b := by
    simpa [hrank] using case_000117_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000117_support case_000117_rank.val hlt
          case_000117_mask = case_000117_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000117_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000117_support case_000117_rank.val hlt
          case_000117_mask = case_000117_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000117_secondLine_eq]
  have case_000117_rowFirst :
      OppPosRow (FirstLineAt case_000117_support case_000117_rank.val hlt case_000117_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000117_firstLine, OppPosRow]
  have case_000117_fixedSecond :
      FixedRow (SecondLineAt case_000117_support case_000117_rank.val hlt case_000117_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000117_secondLine, FixedRow]
  exact ⟨case_000117_rowFirst, case_000117_fixedSecond⟩

private theorem case_000117_existsRows :
    ExistsOppOneMinusVarFirstRows case_000117_rank.val case_000117_mask :=
  ⟨case_000117_support, case_000117_sourceAgrees, case_000117_rows⟩

private theorem case_000117_covered :
    RowPropertyParametricCovered case_000117_rank.val case_000117_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000117_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000118_rank : Fin numPairWords := ⟨29, by decide⟩
private def case_000118_mask : SignMask := ⟨61, by decide⟩
private def case_000118_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000118_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000118_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000118_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (-20/9) }
private def case_000118_firstLine : StrictLin2 := { a := (-29/63), b := (29/63), c := (-103/189) }
private def case_000118_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000118_rankWord :
    rankPairWord? case_000118_word = some case_000118_rank := by
  decide

private theorem case_000118_unrank :
    unrankPairWord case_000118_rank = case_000118_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000118_word case_000118_rank).1
    case_000118_rankWord |>.symm

private theorem case_000118_seqChoice :
    translationChoiceSeq case_000118_word case_000118_mask = case_000118_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000118_seqAtRank :
    translationSeqAtRankMask case_000118_rank case_000118_mask = case_000118_seq := by
  rw [translationSeqAtRankMask, case_000118_unrank]
  exact case_000118_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000118_bAtRank :
    translationBAtRankMask case_000118_rank case_000118_mask = case_000118_b := by
  rw [translationBAtRankMask, case_000118_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000118_b, case_000118_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000118_firstLine_eq :
    case_000118_support.firstLine case_000118_seq case_000118_b = case_000118_firstLine := by
  norm_num [case_000118_firstLine, case_000118_support, case_000118_seq, case_000118_b,
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
private theorem case_000118_secondLine_eq :
    case_000118_support.secondLine case_000118_seq case_000118_b = case_000118_secondLine := by
  norm_num [case_000118_secondLine, case_000118_support, case_000118_seq, case_000118_b,
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
private theorem case_000118_sourceAgrees :
    SourceAgrees case_000118_support case_000118_rank.val case_000118_mask := by
  intro hlt
  have hrank : (⟨case_000118_rank.val, hlt⟩ : Fin numPairWords) = case_000118_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000118_rank.val, hlt⟩ case_000118_mask =
        case_000118_seq := by
    simpa [hrank] using case_000118_seqAtRank
  simp [SourceChecks, hseq, case_000118_support,
    checkTranslationConstraintSource, case_000118_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000118_rows :
    OppOneMinusVarFirstRows case_000118_support case_000118_rank.val case_000118_mask := by
  intro hlt
  have hrank : (⟨case_000118_rank.val, hlt⟩ : Fin numPairWords) = case_000118_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000118_rank.val, hlt⟩ case_000118_mask =
        case_000118_seq := by
    simpa [hrank] using case_000118_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000118_rank.val, hlt⟩ case_000118_mask =
        case_000118_b := by
    simpa [hrank] using case_000118_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000118_support case_000118_rank.val hlt
          case_000118_mask = case_000118_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000118_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000118_support case_000118_rank.val hlt
          case_000118_mask = case_000118_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000118_secondLine_eq]
  have case_000118_rowFirst :
      OppPosRow (FirstLineAt case_000118_support case_000118_rank.val hlt case_000118_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000118_firstLine, OppPosRow]
  have case_000118_fixedSecond :
      FixedRow (SecondLineAt case_000118_support case_000118_rank.val hlt case_000118_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000118_secondLine, FixedRow]
  exact ⟨case_000118_rowFirst, case_000118_fixedSecond⟩

private theorem case_000118_existsRows :
    ExistsOppOneMinusVarFirstRows case_000118_rank.val case_000118_mask :=
  ⟨case_000118_support, case_000118_sourceAgrees, case_000118_rows⟩

private theorem case_000118_covered :
    RowPropertyParametricCovered case_000118_rank.val case_000118_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000118_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000119_rank : Fin numPairWords := ⟨29, by decide⟩
private def case_000119_mask : SignMask := ⟨63, by decide⟩
private def case_000119_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000119_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000119_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000119_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (52/9) }
private def case_000119_firstLine : StrictLin2 := { a := (-29/71), b := (-29/71), c := (-93/71) }
private def case_000119_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000119_rankWord :
    rankPairWord? case_000119_word = some case_000119_rank := by
  decide

private theorem case_000119_unrank :
    unrankPairWord case_000119_rank = case_000119_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000119_word case_000119_rank).1
    case_000119_rankWord |>.symm

private theorem case_000119_seqChoice :
    translationChoiceSeq case_000119_word case_000119_mask = case_000119_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000119_seqAtRank :
    translationSeqAtRankMask case_000119_rank case_000119_mask = case_000119_seq := by
  rw [translationSeqAtRankMask, case_000119_unrank]
  exact case_000119_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000119_bAtRank :
    translationBAtRankMask case_000119_rank case_000119_mask = case_000119_b := by
  rw [translationBAtRankMask, case_000119_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000119_b, case_000119_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000119_firstLine_eq :
    case_000119_support.firstLine case_000119_seq case_000119_b = case_000119_firstLine := by
  norm_num [case_000119_firstLine, case_000119_support, case_000119_seq, case_000119_b,
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
private theorem case_000119_secondLine_eq :
    case_000119_support.secondLine case_000119_seq case_000119_b = case_000119_secondLine := by
  norm_num [case_000119_secondLine, case_000119_support, case_000119_seq, case_000119_b,
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
private theorem case_000119_sourceAgrees :
    SourceAgrees case_000119_support case_000119_rank.val case_000119_mask := by
  intro hlt
  have hrank : (⟨case_000119_rank.val, hlt⟩ : Fin numPairWords) = case_000119_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000119_rank.val, hlt⟩ case_000119_mask =
        case_000119_seq := by
    simpa [hrank] using case_000119_seqAtRank
  simp [SourceChecks, hseq, case_000119_support,
    checkTranslationConstraintSource, case_000119_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000119_rows :
    EqEqPosVarFirstRows case_000119_support case_000119_rank.val case_000119_mask := by
  intro hlt
  have hrank : (⟨case_000119_rank.val, hlt⟩ : Fin numPairWords) = case_000119_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000119_rank.val, hlt⟩ case_000119_mask =
        case_000119_seq := by
    simpa [hrank] using case_000119_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000119_rank.val, hlt⟩ case_000119_mask =
        case_000119_b := by
    simpa [hrank] using case_000119_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000119_support case_000119_rank.val hlt
          case_000119_mask = case_000119_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000119_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000119_support case_000119_rank.val hlt
          case_000119_mask = case_000119_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000119_secondLine_eq]
  have case_000119_rowFirst :
      EqEqPosRow (FirstLineAt case_000119_support case_000119_rank.val hlt case_000119_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000119_firstLine, EqEqPosRow]
  have case_000119_fixedSecond :
      FixedRow (SecondLineAt case_000119_support case_000119_rank.val hlt case_000119_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000119_secondLine, FixedRow]
  exact ⟨case_000119_rowFirst, case_000119_fixedSecond⟩

private theorem case_000119_existsRows :
    ExistsEqEqPosVarFirstRows case_000119_rank.val case_000119_mask :=
  ⟨case_000119_support, case_000119_sourceAgrees, case_000119_rows⟩

private theorem case_000119_covered :
    RowPropertyParametricCovered case_000119_rank.val case_000119_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000119_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000120_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000120_mask : SignMask := ⟨8, by decide⟩
private def case_000120_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000120_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000120_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000120_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (-116/9) }
private def case_000120_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000120_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000120_rankWord :
    rankPairWord? case_000120_word = some case_000120_rank := by
  decide

private theorem case_000120_unrank :
    unrankPairWord case_000120_rank = case_000120_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000120_word case_000120_rank).1
    case_000120_rankWord |>.symm

private theorem case_000120_seqChoice :
    translationChoiceSeq case_000120_word case_000120_mask = case_000120_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000120_seqAtRank :
    translationSeqAtRankMask case_000120_rank case_000120_mask = case_000120_seq := by
  rw [translationSeqAtRankMask, case_000120_unrank]
  exact case_000120_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000120_bAtRank :
    translationBAtRankMask case_000120_rank case_000120_mask = case_000120_b := by
  rw [translationBAtRankMask, case_000120_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000120_b, case_000120_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000120_firstLine_eq :
    case_000120_support.firstLine case_000120_seq case_000120_b = case_000120_firstLine := by
  norm_num [case_000120_firstLine, case_000120_support, case_000120_seq, case_000120_b,
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
private theorem case_000120_secondLine_eq :
    case_000120_support.secondLine case_000120_seq case_000120_b = case_000120_secondLine := by
  norm_num [case_000120_secondLine, case_000120_support, case_000120_seq, case_000120_b,
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
private theorem case_000120_sourceAgrees :
    SourceAgrees case_000120_support case_000120_rank.val case_000120_mask := by
  intro hlt
  have hrank : (⟨case_000120_rank.val, hlt⟩ : Fin numPairWords) = case_000120_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000120_rank.val, hlt⟩ case_000120_mask =
        case_000120_seq := by
    simpa [hrank] using case_000120_seqAtRank
  simp [SourceChecks, hseq, case_000120_support,
    checkTranslationConstraintSource, case_000120_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000120_rows :
    EqEqPosVarFirstRows case_000120_support case_000120_rank.val case_000120_mask := by
  intro hlt
  have hrank : (⟨case_000120_rank.val, hlt⟩ : Fin numPairWords) = case_000120_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000120_rank.val, hlt⟩ case_000120_mask =
        case_000120_seq := by
    simpa [hrank] using case_000120_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000120_rank.val, hlt⟩ case_000120_mask =
        case_000120_b := by
    simpa [hrank] using case_000120_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000120_support case_000120_rank.val hlt
          case_000120_mask = case_000120_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000120_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000120_support case_000120_rank.val hlt
          case_000120_mask = case_000120_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000120_secondLine_eq]
  have case_000120_rowFirst :
      EqEqPosRow (FirstLineAt case_000120_support case_000120_rank.val hlt case_000120_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000120_firstLine, EqEqPosRow]
  have case_000120_fixedSecond :
      FixedRow (SecondLineAt case_000120_support case_000120_rank.val hlt case_000120_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000120_secondLine, FixedRow]
  exact ⟨case_000120_rowFirst, case_000120_fixedSecond⟩

private theorem case_000120_existsRows :
    ExistsEqEqPosVarFirstRows case_000120_rank.val case_000120_mask :=
  ⟨case_000120_support, case_000120_sourceAgrees, case_000120_rows⟩

private theorem case_000120_covered :
    RowPropertyParametricCovered case_000120_rank.val case_000120_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000120_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000121_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000121_mask : SignMask := ⟨9, by decide⟩
private def case_000121_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000121_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000121_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000121_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (-116/9) }
private def case_000121_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/13) }
private def case_000121_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000121_rankWord :
    rankPairWord? case_000121_word = some case_000121_rank := by
  decide

private theorem case_000121_unrank :
    unrankPairWord case_000121_rank = case_000121_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000121_word case_000121_rank).1
    case_000121_rankWord |>.symm

private theorem case_000121_seqChoice :
    translationChoiceSeq case_000121_word case_000121_mask = case_000121_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000121_seqAtRank :
    translationSeqAtRankMask case_000121_rank case_000121_mask = case_000121_seq := by
  rw [translationSeqAtRankMask, case_000121_unrank]
  exact case_000121_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000121_bAtRank :
    translationBAtRankMask case_000121_rank case_000121_mask = case_000121_b := by
  rw [translationBAtRankMask, case_000121_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000121_b, case_000121_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000121_firstLine_eq :
    case_000121_support.firstLine case_000121_seq case_000121_b = case_000121_firstLine := by
  norm_num [case_000121_firstLine, case_000121_support, case_000121_seq, case_000121_b,
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
private theorem case_000121_secondLine_eq :
    case_000121_support.secondLine case_000121_seq case_000121_b = case_000121_secondLine := by
  norm_num [case_000121_secondLine, case_000121_support, case_000121_seq, case_000121_b,
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
private theorem case_000121_sourceAgrees :
    SourceAgrees case_000121_support case_000121_rank.val case_000121_mask := by
  intro hlt
  have hrank : (⟨case_000121_rank.val, hlt⟩ : Fin numPairWords) = case_000121_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000121_rank.val, hlt⟩ case_000121_mask =
        case_000121_seq := by
    simpa [hrank] using case_000121_seqAtRank
  simp [SourceChecks, hseq, case_000121_support,
    checkTranslationConstraintSource, case_000121_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000121_rows :
    EqEqPosVarFirstRows case_000121_support case_000121_rank.val case_000121_mask := by
  intro hlt
  have hrank : (⟨case_000121_rank.val, hlt⟩ : Fin numPairWords) = case_000121_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000121_rank.val, hlt⟩ case_000121_mask =
        case_000121_seq := by
    simpa [hrank] using case_000121_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000121_rank.val, hlt⟩ case_000121_mask =
        case_000121_b := by
    simpa [hrank] using case_000121_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000121_support case_000121_rank.val hlt
          case_000121_mask = case_000121_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000121_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000121_support case_000121_rank.val hlt
          case_000121_mask = case_000121_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000121_secondLine_eq]
  have case_000121_rowFirst :
      EqEqPosRow (FirstLineAt case_000121_support case_000121_rank.val hlt case_000121_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000121_firstLine, EqEqPosRow]
  have case_000121_fixedSecond :
      FixedRow (SecondLineAt case_000121_support case_000121_rank.val hlt case_000121_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000121_secondLine, FixedRow]
  exact ⟨case_000121_rowFirst, case_000121_fixedSecond⟩

private theorem case_000121_existsRows :
    ExistsEqEqPosVarFirstRows case_000121_rank.val case_000121_mask :=
  ⟨case_000121_support, case_000121_sourceAgrees, case_000121_rows⟩

private theorem case_000121_covered :
    RowPropertyParametricCovered case_000121_rank.val case_000121_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000121_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000122_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000122_mask : SignMask := ⟨13, by decide⟩
private def case_000122_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000122_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000122_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000122_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-68/9) }
private def case_000122_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000122_secondLine : StrictLin2 := { a := (-9/68), b := (-9/68), c := (-9/34) }

private theorem case_000122_rankWord :
    rankPairWord? case_000122_word = some case_000122_rank := by
  decide

private theorem case_000122_unrank :
    unrankPairWord case_000122_rank = case_000122_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000122_word case_000122_rank).1
    case_000122_rankWord |>.symm

private theorem case_000122_seqChoice :
    translationChoiceSeq case_000122_word case_000122_mask = case_000122_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000122_seqAtRank :
    translationSeqAtRankMask case_000122_rank case_000122_mask = case_000122_seq := by
  rw [translationSeqAtRankMask, case_000122_unrank]
  exact case_000122_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000122_bAtRank :
    translationBAtRankMask case_000122_rank case_000122_mask = case_000122_b := by
  rw [translationBAtRankMask, case_000122_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000122_b, case_000122_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000122_firstLine_eq :
    case_000122_support.firstLine case_000122_seq case_000122_b = case_000122_firstLine := by
  norm_num [case_000122_firstLine, case_000122_support, case_000122_seq, case_000122_b,
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
private theorem case_000122_secondLine_eq :
    case_000122_support.secondLine case_000122_seq case_000122_b = case_000122_secondLine := by
  norm_num [case_000122_secondLine, case_000122_support, case_000122_seq, case_000122_b,
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
private theorem case_000122_sourceAgrees :
    SourceAgrees case_000122_support case_000122_rank.val case_000122_mask := by
  intro hlt
  have hrank : (⟨case_000122_rank.val, hlt⟩ : Fin numPairWords) = case_000122_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000122_rank.val, hlt⟩ case_000122_mask =
        case_000122_seq := by
    simpa [hrank] using case_000122_seqAtRank
  simp [SourceChecks, hseq, case_000122_support,
    checkTranslationConstraintSource, case_000122_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000122_rows :
    EqEqPosVarSecondRows case_000122_support case_000122_rank.val case_000122_mask := by
  intro hlt
  have hrank : (⟨case_000122_rank.val, hlt⟩ : Fin numPairWords) = case_000122_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000122_rank.val, hlt⟩ case_000122_mask =
        case_000122_seq := by
    simpa [hrank] using case_000122_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000122_rank.val, hlt⟩ case_000122_mask =
        case_000122_b := by
    simpa [hrank] using case_000122_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000122_support case_000122_rank.val hlt
          case_000122_mask = case_000122_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000122_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000122_support case_000122_rank.val hlt
          case_000122_mask = case_000122_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000122_secondLine_eq]
  have case_000122_fixedFirst :
      FixedRow (FirstLineAt case_000122_support case_000122_rank.val hlt case_000122_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000122_firstLine, FixedRow]
  have case_000122_rowSecond :
      EqEqPosRow (SecondLineAt case_000122_support case_000122_rank.val hlt case_000122_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000122_secondLine, EqEqPosRow]
  exact ⟨case_000122_fixedFirst, case_000122_rowSecond⟩

private theorem case_000122_existsRows :
    ExistsEqEqPosVarSecondRows case_000122_rank.val case_000122_mask :=
  ⟨case_000122_support, case_000122_sourceAgrees, case_000122_rows⟩

private theorem case_000122_covered :
    RowPropertyParametricCovered case_000122_rank.val case_000122_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000122_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000123_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000123_mask : SignMask := ⟨18, by decide⟩
private def case_000123_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000123_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000123_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000123_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (20/9) }
private def case_000123_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000123_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000123_rankWord :
    rankPairWord? case_000123_word = some case_000123_rank := by
  decide

private theorem case_000123_unrank :
    unrankPairWord case_000123_rank = case_000123_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000123_word case_000123_rank).1
    case_000123_rankWord |>.symm

private theorem case_000123_seqChoice :
    translationChoiceSeq case_000123_word case_000123_mask = case_000123_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000123_seqAtRank :
    translationSeqAtRankMask case_000123_rank case_000123_mask = case_000123_seq := by
  rw [translationSeqAtRankMask, case_000123_unrank]
  exact case_000123_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000123_bAtRank :
    translationBAtRankMask case_000123_rank case_000123_mask = case_000123_b := by
  rw [translationBAtRankMask, case_000123_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000123_b, case_000123_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000123_firstLine_eq :
    case_000123_support.firstLine case_000123_seq case_000123_b = case_000123_firstLine := by
  norm_num [case_000123_firstLine, case_000123_support, case_000123_seq, case_000123_b,
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
private theorem case_000123_secondLine_eq :
    case_000123_support.secondLine case_000123_seq case_000123_b = case_000123_secondLine := by
  norm_num [case_000123_secondLine, case_000123_support, case_000123_seq, case_000123_b,
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
private theorem case_000123_sourceAgrees :
    SourceAgrees case_000123_support case_000123_rank.val case_000123_mask := by
  intro hlt
  have hrank : (⟨case_000123_rank.val, hlt⟩ : Fin numPairWords) = case_000123_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000123_rank.val, hlt⟩ case_000123_mask =
        case_000123_seq := by
    simpa [hrank] using case_000123_seqAtRank
  simp [SourceChecks, hseq, case_000123_support,
    checkTranslationConstraintSource, case_000123_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000123_rows :
    EqEqPosVarFirstRows case_000123_support case_000123_rank.val case_000123_mask := by
  intro hlt
  have hrank : (⟨case_000123_rank.val, hlt⟩ : Fin numPairWords) = case_000123_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000123_rank.val, hlt⟩ case_000123_mask =
        case_000123_seq := by
    simpa [hrank] using case_000123_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000123_rank.val, hlt⟩ case_000123_mask =
        case_000123_b := by
    simpa [hrank] using case_000123_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000123_support case_000123_rank.val hlt
          case_000123_mask = case_000123_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000123_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000123_support case_000123_rank.val hlt
          case_000123_mask = case_000123_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000123_secondLine_eq]
  have case_000123_rowFirst :
      EqEqPosRow (FirstLineAt case_000123_support case_000123_rank.val hlt case_000123_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000123_firstLine, EqEqPosRow]
  have case_000123_fixedSecond :
      FixedRow (SecondLineAt case_000123_support case_000123_rank.val hlt case_000123_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000123_secondLine, FixedRow]
  exact ⟨case_000123_rowFirst, case_000123_fixedSecond⟩

private theorem case_000123_existsRows :
    ExistsEqEqPosVarFirstRows case_000123_rank.val case_000123_mask :=
  ⟨case_000123_support, case_000123_sourceAgrees, case_000123_rows⟩

private theorem case_000123_covered :
    RowPropertyParametricCovered case_000123_rank.val case_000123_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000123_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000124_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000124_mask : SignMask := ⟨24, by decide⟩
private def case_000124_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000124_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000124_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000124_b : Vec3 Rat := { x := (-100/9), y := (-100/9), z := (-68/9) }
private def case_000124_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_000124_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000124_rankWord :
    rankPairWord? case_000124_word = some case_000124_rank := by
  decide

private theorem case_000124_unrank :
    unrankPairWord case_000124_rank = case_000124_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000124_word case_000124_rank).1
    case_000124_rankWord |>.symm

private theorem case_000124_seqChoice :
    translationChoiceSeq case_000124_word case_000124_mask = case_000124_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000124_seqAtRank :
    translationSeqAtRankMask case_000124_rank case_000124_mask = case_000124_seq := by
  rw [translationSeqAtRankMask, case_000124_unrank]
  exact case_000124_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000124_bAtRank :
    translationBAtRankMask case_000124_rank case_000124_mask = case_000124_b := by
  rw [translationBAtRankMask, case_000124_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000124_b, case_000124_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000124_firstLine_eq :
    case_000124_support.firstLine case_000124_seq case_000124_b = case_000124_firstLine := by
  norm_num [case_000124_firstLine, case_000124_support, case_000124_seq, case_000124_b,
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
private theorem case_000124_secondLine_eq :
    case_000124_support.secondLine case_000124_seq case_000124_b = case_000124_secondLine := by
  norm_num [case_000124_secondLine, case_000124_support, case_000124_seq, case_000124_b,
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
private theorem case_000124_sourceAgrees :
    SourceAgrees case_000124_support case_000124_rank.val case_000124_mask := by
  intro hlt
  have hrank : (⟨case_000124_rank.val, hlt⟩ : Fin numPairWords) = case_000124_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000124_rank.val, hlt⟩ case_000124_mask =
        case_000124_seq := by
    simpa [hrank] using case_000124_seqAtRank
  simp [SourceChecks, hseq, case_000124_support,
    checkTranslationConstraintSource, case_000124_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000124_rows :
    EqEqPosVarFirstRows case_000124_support case_000124_rank.val case_000124_mask := by
  intro hlt
  have hrank : (⟨case_000124_rank.val, hlt⟩ : Fin numPairWords) = case_000124_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000124_rank.val, hlt⟩ case_000124_mask =
        case_000124_seq := by
    simpa [hrank] using case_000124_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000124_rank.val, hlt⟩ case_000124_mask =
        case_000124_b := by
    simpa [hrank] using case_000124_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000124_support case_000124_rank.val hlt
          case_000124_mask = case_000124_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000124_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000124_support case_000124_rank.val hlt
          case_000124_mask = case_000124_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000124_secondLine_eq]
  have case_000124_rowFirst :
      EqEqPosRow (FirstLineAt case_000124_support case_000124_rank.val hlt case_000124_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000124_firstLine, EqEqPosRow]
  have case_000124_fixedSecond :
      FixedRow (SecondLineAt case_000124_support case_000124_rank.val hlt case_000124_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000124_secondLine, FixedRow]
  exact ⟨case_000124_rowFirst, case_000124_fixedSecond⟩

private theorem case_000124_existsRows :
    ExistsEqEqPosVarFirstRows case_000124_rank.val case_000124_mask :=
  ⟨case_000124_support, case_000124_sourceAgrees, case_000124_rows⟩

private theorem case_000124_covered :
    RowPropertyParametricCovered case_000124_rank.val case_000124_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000124_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000125_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000125_mask : SignMask := ⟨28, by decide⟩
private def case_000125_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000125_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000125_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000125_b : Vec3 Rat := { x := (-148/9), y := (-52/9), z := (-20/9) }
private def case_000125_firstLine : StrictLin2 := { a := (-74/55), b := (-74/55), c := (-344/165) }
private def case_000125_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000125_rankWord :
    rankPairWord? case_000125_word = some case_000125_rank := by
  decide

private theorem case_000125_unrank :
    unrankPairWord case_000125_rank = case_000125_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000125_word case_000125_rank).1
    case_000125_rankWord |>.symm

private theorem case_000125_seqChoice :
    translationChoiceSeq case_000125_word case_000125_mask = case_000125_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000125_seqAtRank :
    translationSeqAtRankMask case_000125_rank case_000125_mask = case_000125_seq := by
  rw [translationSeqAtRankMask, case_000125_unrank]
  exact case_000125_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000125_bAtRank :
    translationBAtRankMask case_000125_rank case_000125_mask = case_000125_b := by
  rw [translationBAtRankMask, case_000125_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000125_b, case_000125_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000125_firstLine_eq :
    case_000125_support.firstLine case_000125_seq case_000125_b = case_000125_firstLine := by
  norm_num [case_000125_firstLine, case_000125_support, case_000125_seq, case_000125_b,
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
private theorem case_000125_secondLine_eq :
    case_000125_support.secondLine case_000125_seq case_000125_b = case_000125_secondLine := by
  norm_num [case_000125_secondLine, case_000125_support, case_000125_seq, case_000125_b,
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
private theorem case_000125_sourceAgrees :
    SourceAgrees case_000125_support case_000125_rank.val case_000125_mask := by
  intro hlt
  have hrank : (⟨case_000125_rank.val, hlt⟩ : Fin numPairWords) = case_000125_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000125_rank.val, hlt⟩ case_000125_mask =
        case_000125_seq := by
    simpa [hrank] using case_000125_seqAtRank
  simp [SourceChecks, hseq, case_000125_support,
    checkTranslationConstraintSource, case_000125_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000125_rows :
    EqEqPosVarFirstRows case_000125_support case_000125_rank.val case_000125_mask := by
  intro hlt
  have hrank : (⟨case_000125_rank.val, hlt⟩ : Fin numPairWords) = case_000125_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000125_rank.val, hlt⟩ case_000125_mask =
        case_000125_seq := by
    simpa [hrank] using case_000125_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000125_rank.val, hlt⟩ case_000125_mask =
        case_000125_b := by
    simpa [hrank] using case_000125_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000125_support case_000125_rank.val hlt
          case_000125_mask = case_000125_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000125_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000125_support case_000125_rank.val hlt
          case_000125_mask = case_000125_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000125_secondLine_eq]
  have case_000125_rowFirst :
      EqEqPosRow (FirstLineAt case_000125_support case_000125_rank.val hlt case_000125_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000125_firstLine, EqEqPosRow]
  have case_000125_fixedSecond :
      FixedRow (SecondLineAt case_000125_support case_000125_rank.val hlt case_000125_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000125_secondLine, FixedRow]
  exact ⟨case_000125_rowFirst, case_000125_fixedSecond⟩

private theorem case_000125_existsRows :
    ExistsEqEqPosVarFirstRows case_000125_rank.val case_000125_mask :=
  ⟨case_000125_support, case_000125_sourceAgrees, case_000125_rows⟩

private theorem case_000125_covered :
    RowPropertyParametricCovered case_000125_rank.val case_000125_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000125_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000126_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000126_mask : SignMask := ⟨29, by decide⟩
private def case_000126_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000126_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000126_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000126_b : Vec3 Rat := { x := (-148/9), y := (20/9), z := (-20/9) }
private def case_000126_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000126_secondLine : StrictLin2 := { a := (-9/20), b := (-9/20), c := (-9/10) }

private theorem case_000126_rankWord :
    rankPairWord? case_000126_word = some case_000126_rank := by
  decide

private theorem case_000126_unrank :
    unrankPairWord case_000126_rank = case_000126_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000126_word case_000126_rank).1
    case_000126_rankWord |>.symm

private theorem case_000126_seqChoice :
    translationChoiceSeq case_000126_word case_000126_mask = case_000126_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000126_seqAtRank :
    translationSeqAtRankMask case_000126_rank case_000126_mask = case_000126_seq := by
  rw [translationSeqAtRankMask, case_000126_unrank]
  exact case_000126_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000126_bAtRank :
    translationBAtRankMask case_000126_rank case_000126_mask = case_000126_b := by
  rw [translationBAtRankMask, case_000126_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000126_b, case_000126_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000126_firstLine_eq :
    case_000126_support.firstLine case_000126_seq case_000126_b = case_000126_firstLine := by
  norm_num [case_000126_firstLine, case_000126_support, case_000126_seq, case_000126_b,
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
private theorem case_000126_secondLine_eq :
    case_000126_support.secondLine case_000126_seq case_000126_b = case_000126_secondLine := by
  norm_num [case_000126_secondLine, case_000126_support, case_000126_seq, case_000126_b,
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
private theorem case_000126_sourceAgrees :
    SourceAgrees case_000126_support case_000126_rank.val case_000126_mask := by
  intro hlt
  have hrank : (⟨case_000126_rank.val, hlt⟩ : Fin numPairWords) = case_000126_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000126_rank.val, hlt⟩ case_000126_mask =
        case_000126_seq := by
    simpa [hrank] using case_000126_seqAtRank
  simp [SourceChecks, hseq, case_000126_support,
    checkTranslationConstraintSource, case_000126_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000126_rows :
    EqEqPosVarSecondRows case_000126_support case_000126_rank.val case_000126_mask := by
  intro hlt
  have hrank : (⟨case_000126_rank.val, hlt⟩ : Fin numPairWords) = case_000126_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000126_rank.val, hlt⟩ case_000126_mask =
        case_000126_seq := by
    simpa [hrank] using case_000126_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000126_rank.val, hlt⟩ case_000126_mask =
        case_000126_b := by
    simpa [hrank] using case_000126_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000126_support case_000126_rank.val hlt
          case_000126_mask = case_000126_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000126_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000126_support case_000126_rank.val hlt
          case_000126_mask = case_000126_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000126_secondLine_eq]
  have case_000126_fixedFirst :
      FixedRow (FirstLineAt case_000126_support case_000126_rank.val hlt case_000126_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000126_firstLine, FixedRow]
  have case_000126_rowSecond :
      EqEqPosRow (SecondLineAt case_000126_support case_000126_rank.val hlt case_000126_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000126_secondLine, EqEqPosRow]
  exact ⟨case_000126_fixedFirst, case_000126_rowSecond⟩

private theorem case_000126_existsRows :
    ExistsEqEqPosVarSecondRows case_000126_rank.val case_000126_mask :=
  ⟨case_000126_support, case_000126_sourceAgrees, case_000126_rows⟩

private theorem case_000126_covered :
    RowPropertyParametricCovered case_000126_rank.val case_000126_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000126_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000127_rank : Fin numPairWords := ⟨30, by decide⟩
private def case_000127_mask : SignMask := ⟨30, by decide⟩
private def case_000127_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000127_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000127_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000127_b : Vec3 Rat := { x := (-148/9), y := (-52/9), z := (52/9) }
private def case_000127_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000127_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000127_rankWord :
    rankPairWord? case_000127_word = some case_000127_rank := by
  decide

private theorem case_000127_unrank :
    unrankPairWord case_000127_rank = case_000127_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000127_word case_000127_rank).1
    case_000127_rankWord |>.symm

private theorem case_000127_seqChoice :
    translationChoiceSeq case_000127_word case_000127_mask = case_000127_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000127_seqAtRank :
    translationSeqAtRankMask case_000127_rank case_000127_mask = case_000127_seq := by
  rw [translationSeqAtRankMask, case_000127_unrank]
  exact case_000127_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000127_bAtRank :
    translationBAtRankMask case_000127_rank case_000127_mask = case_000127_b := by
  rw [translationBAtRankMask, case_000127_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000127_b, case_000127_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000127_firstLine_eq :
    case_000127_support.firstLine case_000127_seq case_000127_b = case_000127_firstLine := by
  norm_num [case_000127_firstLine, case_000127_support, case_000127_seq, case_000127_b,
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
private theorem case_000127_secondLine_eq :
    case_000127_support.secondLine case_000127_seq case_000127_b = case_000127_secondLine := by
  norm_num [case_000127_secondLine, case_000127_support, case_000127_seq, case_000127_b,
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
private theorem case_000127_sourceAgrees :
    SourceAgrees case_000127_support case_000127_rank.val case_000127_mask := by
  intro hlt
  have hrank : (⟨case_000127_rank.val, hlt⟩ : Fin numPairWords) = case_000127_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000127_rank.val, hlt⟩ case_000127_mask =
        case_000127_seq := by
    simpa [hrank] using case_000127_seqAtRank
  simp [SourceChecks, hseq, case_000127_support,
    checkTranslationConstraintSource, case_000127_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000127_rows :
    EqEqPosVarFirstRows case_000127_support case_000127_rank.val case_000127_mask := by
  intro hlt
  have hrank : (⟨case_000127_rank.val, hlt⟩ : Fin numPairWords) = case_000127_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000127_rank.val, hlt⟩ case_000127_mask =
        case_000127_seq := by
    simpa [hrank] using case_000127_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000127_rank.val, hlt⟩ case_000127_mask =
        case_000127_b := by
    simpa [hrank] using case_000127_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000127_support case_000127_rank.val hlt
          case_000127_mask = case_000127_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000127_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000127_support case_000127_rank.val hlt
          case_000127_mask = case_000127_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000127_secondLine_eq]
  have case_000127_rowFirst :
      EqEqPosRow (FirstLineAt case_000127_support case_000127_rank.val hlt case_000127_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000127_firstLine, EqEqPosRow]
  have case_000127_fixedSecond :
      FixedRow (SecondLineAt case_000127_support case_000127_rank.val hlt case_000127_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000127_secondLine, FixedRow]
  exact ⟨case_000127_rowFirst, case_000127_fixedSecond⟩

private theorem case_000127_existsRows :
    ExistsEqEqPosVarFirstRows case_000127_rank.val case_000127_mask :=
  ⟨case_000127_support, case_000127_sourceAgrees, case_000127_rows⟩

private theorem case_000127_covered :
    RowPropertyParametricCovered case_000127_rank.val case_000127_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000127_existsRows

inductive Group003Covered : Nat -> SignMask -> Prop
  | case_000096 : Group003Covered case_000096_rank.val case_000096_mask
  | case_000097 : Group003Covered case_000097_rank.val case_000097_mask
  | case_000098 : Group003Covered case_000098_rank.val case_000098_mask
  | case_000099 : Group003Covered case_000099_rank.val case_000099_mask
  | case_000100 : Group003Covered case_000100_rank.val case_000100_mask
  | case_000101 : Group003Covered case_000101_rank.val case_000101_mask
  | case_000102 : Group003Covered case_000102_rank.val case_000102_mask
  | case_000103 : Group003Covered case_000103_rank.val case_000103_mask
  | case_000104 : Group003Covered case_000104_rank.val case_000104_mask
  | case_000105 : Group003Covered case_000105_rank.val case_000105_mask
  | case_000106 : Group003Covered case_000106_rank.val case_000106_mask
  | case_000107 : Group003Covered case_000107_rank.val case_000107_mask
  | case_000108 : Group003Covered case_000108_rank.val case_000108_mask
  | case_000109 : Group003Covered case_000109_rank.val case_000109_mask
  | case_000110 : Group003Covered case_000110_rank.val case_000110_mask
  | case_000111 : Group003Covered case_000111_rank.val case_000111_mask
  | case_000112 : Group003Covered case_000112_rank.val case_000112_mask
  | case_000113 : Group003Covered case_000113_rank.val case_000113_mask
  | case_000114 : Group003Covered case_000114_rank.val case_000114_mask
  | case_000115 : Group003Covered case_000115_rank.val case_000115_mask
  | case_000116 : Group003Covered case_000116_rank.val case_000116_mask
  | case_000117 : Group003Covered case_000117_rank.val case_000117_mask
  | case_000118 : Group003Covered case_000118_rank.val case_000118_mask
  | case_000119 : Group003Covered case_000119_rank.val case_000119_mask
  | case_000120 : Group003Covered case_000120_rank.val case_000120_mask
  | case_000121 : Group003Covered case_000121_rank.val case_000121_mask
  | case_000122 : Group003Covered case_000122_rank.val case_000122_mask
  | case_000123 : Group003Covered case_000123_rank.val case_000123_mask
  | case_000124 : Group003Covered case_000124_rank.val case_000124_mask
  | case_000125 : Group003Covered case_000125_rank.val case_000125_mask
  | case_000126 : Group003Covered case_000126_rank.val case_000126_mask
  | case_000127 : Group003Covered case_000127_rank.val case_000127_mask

theorem Group003GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group003Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000096 =>
      exact RowPropertyParametricCovered.kills case_000096_covered
  | case_000097 =>
      exact RowPropertyParametricCovered.kills case_000097_covered
  | case_000098 =>
      exact RowPropertyParametricCovered.kills case_000098_covered
  | case_000099 =>
      exact RowPropertyParametricCovered.kills case_000099_covered
  | case_000100 =>
      exact RowPropertyParametricCovered.kills case_000100_covered
  | case_000101 =>
      exact RowPropertyParametricCovered.kills case_000101_covered
  | case_000102 =>
      exact RowPropertyParametricCovered.kills case_000102_covered
  | case_000103 =>
      exact RowPropertyParametricCovered.kills case_000103_covered
  | case_000104 =>
      exact RowPropertyParametricCovered.kills case_000104_covered
  | case_000105 =>
      exact RowPropertyParametricCovered.kills case_000105_covered
  | case_000106 =>
      exact RowPropertyParametricCovered.kills case_000106_covered
  | case_000107 =>
      exact RowPropertyParametricCovered.kills case_000107_covered
  | case_000108 =>
      exact RowPropertyParametricCovered.kills case_000108_covered
  | case_000109 =>
      exact RowPropertyParametricCovered.kills case_000109_covered
  | case_000110 =>
      exact RowPropertyParametricCovered.kills case_000110_covered
  | case_000111 =>
      exact RowPropertyParametricCovered.kills case_000111_covered
  | case_000112 =>
      exact RowPropertyParametricCovered.kills case_000112_covered
  | case_000113 =>
      exact RowPropertyParametricCovered.kills case_000113_covered
  | case_000114 =>
      exact RowPropertyParametricCovered.kills case_000114_covered
  | case_000115 =>
      exact RowPropertyParametricCovered.kills case_000115_covered
  | case_000116 =>
      exact RowPropertyParametricCovered.kills case_000116_covered
  | case_000117 =>
      exact RowPropertyParametricCovered.kills case_000117_covered
  | case_000118 =>
      exact RowPropertyParametricCovered.kills case_000118_covered
  | case_000119 =>
      exact RowPropertyParametricCovered.kills case_000119_covered
  | case_000120 =>
      exact RowPropertyParametricCovered.kills case_000120_covered
  | case_000121 =>
      exact RowPropertyParametricCovered.kills case_000121_covered
  | case_000122 =>
      exact RowPropertyParametricCovered.kills case_000122_covered
  | case_000123 =>
      exact RowPropertyParametricCovered.kills case_000123_covered
  | case_000124 =>
      exact RowPropertyParametricCovered.kills case_000124_covered
  | case_000125 =>
      exact RowPropertyParametricCovered.kills case_000125_covered
  | case_000126 =>
      exact RowPropertyParametricCovered.kills case_000126_covered
  | case_000127 =>
      exact RowPropertyParametricCovered.kills case_000127_covered

theorem Group003_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group003
