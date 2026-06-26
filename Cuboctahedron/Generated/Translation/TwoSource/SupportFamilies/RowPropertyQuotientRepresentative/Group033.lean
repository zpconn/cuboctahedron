import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group033

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001056_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001056_mask : SignMask := ⟨29, by decide⟩
private def case_001056_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001056_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001056_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_001056_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001056_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_001056_rankWord :
    rankPairWord? case_001056_word = some case_001056_rank := by
  decide

private theorem case_001056_unrank :
    unrankPairWord case_001056_rank = case_001056_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001056_word case_001056_rank).1
    case_001056_rankWord |>.symm

private theorem case_001056_seqChoice :
    translationChoiceSeq case_001056_word case_001056_mask = case_001056_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001056_seqAtRank :
    translationSeqAtRankMask case_001056_rank case_001056_mask = case_001056_seq := by
  rw [translationSeqAtRankMask, case_001056_unrank]
  exact case_001056_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001056_bAtRank :
    translationBAtRankMask case_001056_rank case_001056_mask = case_001056_b := by
  rw [translationBAtRankMask, case_001056_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001056_b, case_001056_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001056_firstLine_eq :
    case_001056_support.firstLine case_001056_seq case_001056_b = case_001056_firstLine := by
  norm_num [case_001056_firstLine, case_001056_support, case_001056_seq, case_001056_b,
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
private theorem case_001056_secondLine_eq :
    case_001056_support.secondLine case_001056_seq case_001056_b = case_001056_secondLine := by
  norm_num [case_001056_secondLine, case_001056_support, case_001056_seq, case_001056_b,
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
private theorem case_001056_sourceAgrees :
    SourceAgrees case_001056_support case_001056_rank.val case_001056_mask := by
  intro hlt
  have hrank : (⟨case_001056_rank.val, hlt⟩ : Fin numPairWords) = case_001056_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001056_rank.val, hlt⟩ case_001056_mask =
        case_001056_seq := by
    simpa [hrank] using case_001056_seqAtRank
  simp [SourceChecks, hseq, case_001056_support,
    checkTranslationConstraintSource, case_001056_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001056_rows :
    EqEqPosVarSecondRows case_001056_support case_001056_rank.val case_001056_mask := by
  intro hlt
  have hrank : (⟨case_001056_rank.val, hlt⟩ : Fin numPairWords) = case_001056_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001056_rank.val, hlt⟩ case_001056_mask =
        case_001056_seq := by
    simpa [hrank] using case_001056_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001056_rank.val, hlt⟩ case_001056_mask =
        case_001056_b := by
    simpa [hrank] using case_001056_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001056_support case_001056_rank.val hlt
          case_001056_mask = case_001056_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001056_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001056_support case_001056_rank.val hlt
          case_001056_mask = case_001056_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001056_secondLine_eq]
  have case_001056_fixedFirst :
      FixedRow (FirstLineAt case_001056_support case_001056_rank.val hlt case_001056_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001056_firstLine, FixedRow]
  have case_001056_rowSecond :
      EqEqPosRow (SecondLineAt case_001056_support case_001056_rank.val hlt case_001056_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001056_secondLine, EqEqPosRow]
  exact ⟨case_001056_fixedFirst, case_001056_rowSecond⟩

private theorem case_001056_existsRows :
    ExistsEqEqPosVarSecondRows case_001056_rank.val case_001056_mask :=
  ⟨case_001056_support, case_001056_sourceAgrees, case_001056_rows⟩

private theorem case_001056_covered :
    RowPropertyParametricCovered case_001056_rank.val case_001056_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001056_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001057_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001057_mask : SignMask := ⟨30, by decide⟩
private def case_001057_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001057_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001057_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_001057_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001057_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001057_rankWord :
    rankPairWord? case_001057_word = some case_001057_rank := by
  decide

private theorem case_001057_unrank :
    unrankPairWord case_001057_rank = case_001057_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001057_word case_001057_rank).1
    case_001057_rankWord |>.symm

private theorem case_001057_seqChoice :
    translationChoiceSeq case_001057_word case_001057_mask = case_001057_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001057_seqAtRank :
    translationSeqAtRankMask case_001057_rank case_001057_mask = case_001057_seq := by
  rw [translationSeqAtRankMask, case_001057_unrank]
  exact case_001057_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001057_bAtRank :
    translationBAtRankMask case_001057_rank case_001057_mask = case_001057_b := by
  rw [translationBAtRankMask, case_001057_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001057_b, case_001057_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001057_firstLine_eq :
    case_001057_support.firstLine case_001057_seq case_001057_b = case_001057_firstLine := by
  norm_num [case_001057_firstLine, case_001057_support, case_001057_seq, case_001057_b,
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
private theorem case_001057_secondLine_eq :
    case_001057_support.secondLine case_001057_seq case_001057_b = case_001057_secondLine := by
  norm_num [case_001057_secondLine, case_001057_support, case_001057_seq, case_001057_b,
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
private theorem case_001057_sourceAgrees :
    SourceAgrees case_001057_support case_001057_rank.val case_001057_mask := by
  intro hlt
  have hrank : (⟨case_001057_rank.val, hlt⟩ : Fin numPairWords) = case_001057_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001057_rank.val, hlt⟩ case_001057_mask =
        case_001057_seq := by
    simpa [hrank] using case_001057_seqAtRank
  simp [SourceChecks, hseq, case_001057_support,
    checkTranslationConstraintSource, case_001057_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001057_rows :
    EqEqPosVarFirstRows case_001057_support case_001057_rank.val case_001057_mask := by
  intro hlt
  have hrank : (⟨case_001057_rank.val, hlt⟩ : Fin numPairWords) = case_001057_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001057_rank.val, hlt⟩ case_001057_mask =
        case_001057_seq := by
    simpa [hrank] using case_001057_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001057_rank.val, hlt⟩ case_001057_mask =
        case_001057_b := by
    simpa [hrank] using case_001057_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001057_support case_001057_rank.val hlt
          case_001057_mask = case_001057_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001057_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001057_support case_001057_rank.val hlt
          case_001057_mask = case_001057_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001057_secondLine_eq]
  have case_001057_rowFirst :
      EqEqPosRow (FirstLineAt case_001057_support case_001057_rank.val hlt case_001057_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001057_firstLine, EqEqPosRow]
  have case_001057_fixedSecond :
      FixedRow (SecondLineAt case_001057_support case_001057_rank.val hlt case_001057_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001057_secondLine, FixedRow]
  exact ⟨case_001057_rowFirst, case_001057_fixedSecond⟩

private theorem case_001057_existsRows :
    ExistsEqEqPosVarFirstRows case_001057_rank.val case_001057_mask :=
  ⟨case_001057_support, case_001057_sourceAgrees, case_001057_rows⟩

private theorem case_001057_covered :
    RowPropertyParametricCovered case_001057_rank.val case_001057_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001057_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001058_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001058_mask : SignMask := ⟨31, by decide⟩
private def case_001058_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001058_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001058_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_001058_firstLine : StrictLin2 := { a := (-11/17), b := (-11/17), c := (-59/17) }
private def case_001058_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001058_rankWord :
    rankPairWord? case_001058_word = some case_001058_rank := by
  decide

private theorem case_001058_unrank :
    unrankPairWord case_001058_rank = case_001058_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001058_word case_001058_rank).1
    case_001058_rankWord |>.symm

private theorem case_001058_seqChoice :
    translationChoiceSeq case_001058_word case_001058_mask = case_001058_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001058_seqAtRank :
    translationSeqAtRankMask case_001058_rank case_001058_mask = case_001058_seq := by
  rw [translationSeqAtRankMask, case_001058_unrank]
  exact case_001058_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001058_bAtRank :
    translationBAtRankMask case_001058_rank case_001058_mask = case_001058_b := by
  rw [translationBAtRankMask, case_001058_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001058_b, case_001058_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001058_firstLine_eq :
    case_001058_support.firstLine case_001058_seq case_001058_b = case_001058_firstLine := by
  norm_num [case_001058_firstLine, case_001058_support, case_001058_seq, case_001058_b,
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
private theorem case_001058_secondLine_eq :
    case_001058_support.secondLine case_001058_seq case_001058_b = case_001058_secondLine := by
  norm_num [case_001058_secondLine, case_001058_support, case_001058_seq, case_001058_b,
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
private theorem case_001058_sourceAgrees :
    SourceAgrees case_001058_support case_001058_rank.val case_001058_mask := by
  intro hlt
  have hrank : (⟨case_001058_rank.val, hlt⟩ : Fin numPairWords) = case_001058_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001058_rank.val, hlt⟩ case_001058_mask =
        case_001058_seq := by
    simpa [hrank] using case_001058_seqAtRank
  simp [SourceChecks, hseq, case_001058_support,
    checkTranslationConstraintSource, case_001058_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001058_rows :
    EqEqPosVarFirstRows case_001058_support case_001058_rank.val case_001058_mask := by
  intro hlt
  have hrank : (⟨case_001058_rank.val, hlt⟩ : Fin numPairWords) = case_001058_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001058_rank.val, hlt⟩ case_001058_mask =
        case_001058_seq := by
    simpa [hrank] using case_001058_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001058_rank.val, hlt⟩ case_001058_mask =
        case_001058_b := by
    simpa [hrank] using case_001058_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001058_support case_001058_rank.val hlt
          case_001058_mask = case_001058_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001058_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001058_support case_001058_rank.val hlt
          case_001058_mask = case_001058_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001058_secondLine_eq]
  have case_001058_rowFirst :
      EqEqPosRow (FirstLineAt case_001058_support case_001058_rank.val hlt case_001058_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001058_firstLine, EqEqPosRow]
  have case_001058_fixedSecond :
      FixedRow (SecondLineAt case_001058_support case_001058_rank.val hlt case_001058_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001058_secondLine, FixedRow]
  exact ⟨case_001058_rowFirst, case_001058_fixedSecond⟩

private theorem case_001058_existsRows :
    ExistsEqEqPosVarFirstRows case_001058_rank.val case_001058_mask :=
  ⟨case_001058_support, case_001058_sourceAgrees, case_001058_rows⟩

private theorem case_001058_covered :
    RowPropertyParametricCovered case_001058_rank.val case_001058_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001058_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001059_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001059_mask : SignMask := ⟨45, by decide⟩
private def case_001059_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001059_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001059_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_001059_firstLine : StrictLin2 := { a := 1, b := -1, c := (-25/3) }
private def case_001059_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001059_rankWord :
    rankPairWord? case_001059_word = some case_001059_rank := by
  decide

private theorem case_001059_unrank :
    unrankPairWord case_001059_rank = case_001059_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001059_word case_001059_rank).1
    case_001059_rankWord |>.symm

private theorem case_001059_seqChoice :
    translationChoiceSeq case_001059_word case_001059_mask = case_001059_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001059_seqAtRank :
    translationSeqAtRankMask case_001059_rank case_001059_mask = case_001059_seq := by
  rw [translationSeqAtRankMask, case_001059_unrank]
  exact case_001059_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001059_bAtRank :
    translationBAtRankMask case_001059_rank case_001059_mask = case_001059_b := by
  rw [translationBAtRankMask, case_001059_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001059_b, case_001059_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001059_firstLine_eq :
    case_001059_support.firstLine case_001059_seq case_001059_b = case_001059_firstLine := by
  norm_num [case_001059_firstLine, case_001059_support, case_001059_seq, case_001059_b,
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
private theorem case_001059_secondLine_eq :
    case_001059_support.secondLine case_001059_seq case_001059_b = case_001059_secondLine := by
  norm_num [case_001059_secondLine, case_001059_support, case_001059_seq, case_001059_b,
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
private theorem case_001059_sourceAgrees :
    SourceAgrees case_001059_support case_001059_rank.val case_001059_mask := by
  intro hlt
  have hrank : (⟨case_001059_rank.val, hlt⟩ : Fin numPairWords) = case_001059_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001059_rank.val, hlt⟩ case_001059_mask =
        case_001059_seq := by
    simpa [hrank] using case_001059_seqAtRank
  simp [SourceChecks, hseq, case_001059_support,
    checkTranslationConstraintSource, case_001059_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001059_rows :
    OppMinusOneVarFirstRows case_001059_support case_001059_rank.val case_001059_mask := by
  intro hlt
  have hrank : (⟨case_001059_rank.val, hlt⟩ : Fin numPairWords) = case_001059_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001059_rank.val, hlt⟩ case_001059_mask =
        case_001059_seq := by
    simpa [hrank] using case_001059_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001059_rank.val, hlt⟩ case_001059_mask =
        case_001059_b := by
    simpa [hrank] using case_001059_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001059_support case_001059_rank.val hlt
          case_001059_mask = case_001059_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001059_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001059_support case_001059_rank.val hlt
          case_001059_mask = case_001059_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001059_secondLine_eq]
  have case_001059_rowFirst :
      OppNegRow (FirstLineAt case_001059_support case_001059_rank.val hlt case_001059_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001059_firstLine, OppNegRow]
  have case_001059_fixedSecond :
      FixedRow (SecondLineAt case_001059_support case_001059_rank.val hlt case_001059_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001059_secondLine, FixedRow]
  exact ⟨case_001059_rowFirst, case_001059_fixedSecond⟩

private theorem case_001059_existsRows :
    ExistsOppMinusOneVarFirstRows case_001059_rank.val case_001059_mask :=
  ⟨case_001059_support, case_001059_sourceAgrees, case_001059_rows⟩

private theorem case_001059_covered :
    RowPropertyParametricCovered case_001059_rank.val case_001059_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001059_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001060_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001060_mask : SignMask := ⟨47, by decide⟩
private def case_001060_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001060_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001060_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_001060_firstLine : StrictLin2 := { a := 1, b := -1, c := (-13/3) }
private def case_001060_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001060_rankWord :
    rankPairWord? case_001060_word = some case_001060_rank := by
  decide

private theorem case_001060_unrank :
    unrankPairWord case_001060_rank = case_001060_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001060_word case_001060_rank).1
    case_001060_rankWord |>.symm

private theorem case_001060_seqChoice :
    translationChoiceSeq case_001060_word case_001060_mask = case_001060_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001060_seqAtRank :
    translationSeqAtRankMask case_001060_rank case_001060_mask = case_001060_seq := by
  rw [translationSeqAtRankMask, case_001060_unrank]
  exact case_001060_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001060_bAtRank :
    translationBAtRankMask case_001060_rank case_001060_mask = case_001060_b := by
  rw [translationBAtRankMask, case_001060_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001060_b, case_001060_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001060_firstLine_eq :
    case_001060_support.firstLine case_001060_seq case_001060_b = case_001060_firstLine := by
  norm_num [case_001060_firstLine, case_001060_support, case_001060_seq, case_001060_b,
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
private theorem case_001060_secondLine_eq :
    case_001060_support.secondLine case_001060_seq case_001060_b = case_001060_secondLine := by
  norm_num [case_001060_secondLine, case_001060_support, case_001060_seq, case_001060_b,
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
private theorem case_001060_sourceAgrees :
    SourceAgrees case_001060_support case_001060_rank.val case_001060_mask := by
  intro hlt
  have hrank : (⟨case_001060_rank.val, hlt⟩ : Fin numPairWords) = case_001060_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001060_rank.val, hlt⟩ case_001060_mask =
        case_001060_seq := by
    simpa [hrank] using case_001060_seqAtRank
  simp [SourceChecks, hseq, case_001060_support,
    checkTranslationConstraintSource, case_001060_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001060_rows :
    OppMinusOneVarFirstRows case_001060_support case_001060_rank.val case_001060_mask := by
  intro hlt
  have hrank : (⟨case_001060_rank.val, hlt⟩ : Fin numPairWords) = case_001060_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001060_rank.val, hlt⟩ case_001060_mask =
        case_001060_seq := by
    simpa [hrank] using case_001060_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001060_rank.val, hlt⟩ case_001060_mask =
        case_001060_b := by
    simpa [hrank] using case_001060_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001060_support case_001060_rank.val hlt
          case_001060_mask = case_001060_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001060_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001060_support case_001060_rank.val hlt
          case_001060_mask = case_001060_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001060_secondLine_eq]
  have case_001060_rowFirst :
      OppNegRow (FirstLineAt case_001060_support case_001060_rank.val hlt case_001060_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001060_firstLine, OppNegRow]
  have case_001060_fixedSecond :
      FixedRow (SecondLineAt case_001060_support case_001060_rank.val hlt case_001060_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001060_secondLine, FixedRow]
  exact ⟨case_001060_rowFirst, case_001060_fixedSecond⟩

private theorem case_001060_existsRows :
    ExistsOppMinusOneVarFirstRows case_001060_rank.val case_001060_mask :=
  ⟨case_001060_support, case_001060_sourceAgrees, case_001060_rows⟩

private theorem case_001060_covered :
    RowPropertyParametricCovered case_001060_rank.val case_001060_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001060_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001061_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001061_mask : SignMask := ⟨54, by decide⟩
private def case_001061_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001061_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001061_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_001061_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_001061_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001061_rankWord :
    rankPairWord? case_001061_word = some case_001061_rank := by
  decide

private theorem case_001061_unrank :
    unrankPairWord case_001061_rank = case_001061_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001061_word case_001061_rank).1
    case_001061_rankWord |>.symm

private theorem case_001061_seqChoice :
    translationChoiceSeq case_001061_word case_001061_mask = case_001061_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001061_seqAtRank :
    translationSeqAtRankMask case_001061_rank case_001061_mask = case_001061_seq := by
  rw [translationSeqAtRankMask, case_001061_unrank]
  exact case_001061_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001061_bAtRank :
    translationBAtRankMask case_001061_rank case_001061_mask = case_001061_b := by
  rw [translationBAtRankMask, case_001061_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001061_b, case_001061_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001061_firstLine_eq :
    case_001061_support.firstLine case_001061_seq case_001061_b = case_001061_firstLine := by
  norm_num [case_001061_firstLine, case_001061_support, case_001061_seq, case_001061_b,
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
private theorem case_001061_secondLine_eq :
    case_001061_support.secondLine case_001061_seq case_001061_b = case_001061_secondLine := by
  norm_num [case_001061_secondLine, case_001061_support, case_001061_seq, case_001061_b,
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
private theorem case_001061_sourceAgrees :
    SourceAgrees case_001061_support case_001061_rank.val case_001061_mask := by
  intro hlt
  have hrank : (⟨case_001061_rank.val, hlt⟩ : Fin numPairWords) = case_001061_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001061_rank.val, hlt⟩ case_001061_mask =
        case_001061_seq := by
    simpa [hrank] using case_001061_seqAtRank
  simp [SourceChecks, hseq, case_001061_support,
    checkTranslationConstraintSource, case_001061_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001061_rows :
    OppOneMinusVarFirstRows case_001061_support case_001061_rank.val case_001061_mask := by
  intro hlt
  have hrank : (⟨case_001061_rank.val, hlt⟩ : Fin numPairWords) = case_001061_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001061_rank.val, hlt⟩ case_001061_mask =
        case_001061_seq := by
    simpa [hrank] using case_001061_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001061_rank.val, hlt⟩ case_001061_mask =
        case_001061_b := by
    simpa [hrank] using case_001061_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001061_support case_001061_rank.val hlt
          case_001061_mask = case_001061_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001061_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001061_support case_001061_rank.val hlt
          case_001061_mask = case_001061_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001061_secondLine_eq]
  have case_001061_rowFirst :
      OppPosRow (FirstLineAt case_001061_support case_001061_rank.val hlt case_001061_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001061_firstLine, OppPosRow]
  have case_001061_fixedSecond :
      FixedRow (SecondLineAt case_001061_support case_001061_rank.val hlt case_001061_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001061_secondLine, FixedRow]
  exact ⟨case_001061_rowFirst, case_001061_fixedSecond⟩

private theorem case_001061_existsRows :
    ExistsOppOneMinusVarFirstRows case_001061_rank.val case_001061_mask :=
  ⟨case_001061_support, case_001061_sourceAgrees, case_001061_rows⟩

private theorem case_001061_covered :
    RowPropertyParametricCovered case_001061_rank.val case_001061_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001061_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001062_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001062_mask : SignMask := ⟨55, by decide⟩
private def case_001062_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001062_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001062_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_001062_firstLine : StrictLin2 := { a := (-3/17), b := (-3/17), c := (-25/51) }
private def case_001062_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001062_rankWord :
    rankPairWord? case_001062_word = some case_001062_rank := by
  decide

private theorem case_001062_unrank :
    unrankPairWord case_001062_rank = case_001062_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001062_word case_001062_rank).1
    case_001062_rankWord |>.symm

private theorem case_001062_seqChoice :
    translationChoiceSeq case_001062_word case_001062_mask = case_001062_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001062_seqAtRank :
    translationSeqAtRankMask case_001062_rank case_001062_mask = case_001062_seq := by
  rw [translationSeqAtRankMask, case_001062_unrank]
  exact case_001062_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001062_bAtRank :
    translationBAtRankMask case_001062_rank case_001062_mask = case_001062_b := by
  rw [translationBAtRankMask, case_001062_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001062_b, case_001062_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001062_firstLine_eq :
    case_001062_support.firstLine case_001062_seq case_001062_b = case_001062_firstLine := by
  norm_num [case_001062_firstLine, case_001062_support, case_001062_seq, case_001062_b,
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
private theorem case_001062_secondLine_eq :
    case_001062_support.secondLine case_001062_seq case_001062_b = case_001062_secondLine := by
  norm_num [case_001062_secondLine, case_001062_support, case_001062_seq, case_001062_b,
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
private theorem case_001062_sourceAgrees :
    SourceAgrees case_001062_support case_001062_rank.val case_001062_mask := by
  intro hlt
  have hrank : (⟨case_001062_rank.val, hlt⟩ : Fin numPairWords) = case_001062_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001062_rank.val, hlt⟩ case_001062_mask =
        case_001062_seq := by
    simpa [hrank] using case_001062_seqAtRank
  simp [SourceChecks, hseq, case_001062_support,
    checkTranslationConstraintSource, case_001062_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001062_rows :
    EqEqPosVarFirstRows case_001062_support case_001062_rank.val case_001062_mask := by
  intro hlt
  have hrank : (⟨case_001062_rank.val, hlt⟩ : Fin numPairWords) = case_001062_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001062_rank.val, hlt⟩ case_001062_mask =
        case_001062_seq := by
    simpa [hrank] using case_001062_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001062_rank.val, hlt⟩ case_001062_mask =
        case_001062_b := by
    simpa [hrank] using case_001062_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001062_support case_001062_rank.val hlt
          case_001062_mask = case_001062_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001062_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001062_support case_001062_rank.val hlt
          case_001062_mask = case_001062_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001062_secondLine_eq]
  have case_001062_rowFirst :
      EqEqPosRow (FirstLineAt case_001062_support case_001062_rank.val hlt case_001062_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001062_firstLine, EqEqPosRow]
  have case_001062_fixedSecond :
      FixedRow (SecondLineAt case_001062_support case_001062_rank.val hlt case_001062_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001062_secondLine, FixedRow]
  exact ⟨case_001062_rowFirst, case_001062_fixedSecond⟩

private theorem case_001062_existsRows :
    ExistsEqEqPosVarFirstRows case_001062_rank.val case_001062_mask :=
  ⟨case_001062_support, case_001062_sourceAgrees, case_001062_rows⟩

private theorem case_001062_covered :
    RowPropertyParametricCovered case_001062_rank.val case_001062_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001062_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001063_rank : Fin numPairWords := ⟨810, by decide⟩
private def case_001063_mask : SignMask := ⟨63, by decide⟩
private def case_001063_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001063_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001063_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_001063_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001063_secondLine : StrictLin2 := { a := (-3/28), b := (3/28), c := (-3/14) }

private theorem case_001063_rankWord :
    rankPairWord? case_001063_word = some case_001063_rank := by
  decide

private theorem case_001063_unrank :
    unrankPairWord case_001063_rank = case_001063_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001063_word case_001063_rank).1
    case_001063_rankWord |>.symm

private theorem case_001063_seqChoice :
    translationChoiceSeq case_001063_word case_001063_mask = case_001063_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001063_seqAtRank :
    translationSeqAtRankMask case_001063_rank case_001063_mask = case_001063_seq := by
  rw [translationSeqAtRankMask, case_001063_unrank]
  exact case_001063_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001063_bAtRank :
    translationBAtRankMask case_001063_rank case_001063_mask = case_001063_b := by
  rw [translationBAtRankMask, case_001063_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001063_b, case_001063_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001063_firstLine_eq :
    case_001063_support.firstLine case_001063_seq case_001063_b = case_001063_firstLine := by
  norm_num [case_001063_firstLine, case_001063_support, case_001063_seq, case_001063_b,
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
private theorem case_001063_secondLine_eq :
    case_001063_support.secondLine case_001063_seq case_001063_b = case_001063_secondLine := by
  norm_num [case_001063_secondLine, case_001063_support, case_001063_seq, case_001063_b,
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
private theorem case_001063_sourceAgrees :
    SourceAgrees case_001063_support case_001063_rank.val case_001063_mask := by
  intro hlt
  have hrank : (⟨case_001063_rank.val, hlt⟩ : Fin numPairWords) = case_001063_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001063_rank.val, hlt⟩ case_001063_mask =
        case_001063_seq := by
    simpa [hrank] using case_001063_seqAtRank
  simp [SourceChecks, hseq, case_001063_support,
    checkTranslationConstraintSource, case_001063_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001063_rows :
    OppOneMinusVarSecondRows case_001063_support case_001063_rank.val case_001063_mask := by
  intro hlt
  have hrank : (⟨case_001063_rank.val, hlt⟩ : Fin numPairWords) = case_001063_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001063_rank.val, hlt⟩ case_001063_mask =
        case_001063_seq := by
    simpa [hrank] using case_001063_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001063_rank.val, hlt⟩ case_001063_mask =
        case_001063_b := by
    simpa [hrank] using case_001063_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001063_support case_001063_rank.val hlt
          case_001063_mask = case_001063_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001063_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001063_support case_001063_rank.val hlt
          case_001063_mask = case_001063_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001063_secondLine_eq]
  have case_001063_fixedFirst :
      FixedRow (FirstLineAt case_001063_support case_001063_rank.val hlt case_001063_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001063_firstLine, FixedRow]
  have case_001063_rowSecond :
      OppPosRow (SecondLineAt case_001063_support case_001063_rank.val hlt case_001063_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001063_secondLine, OppPosRow]
  exact ⟨case_001063_fixedFirst, case_001063_rowSecond⟩

private theorem case_001063_existsRows :
    ExistsOppOneMinusVarSecondRows case_001063_rank.val case_001063_mask :=
  ⟨case_001063_support, case_001063_sourceAgrees, case_001063_rows⟩

private theorem case_001063_covered :
    RowPropertyParametricCovered case_001063_rank.val case_001063_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001063_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001064_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001064_mask : SignMask := ⟨8, by decide⟩
private def case_001064_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001064_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_001064_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-148/9) }
private def case_001064_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_001064_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001064_rankWord :
    rankPairWord? case_001064_word = some case_001064_rank := by
  decide

private theorem case_001064_unrank :
    unrankPairWord case_001064_rank = case_001064_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001064_word case_001064_rank).1
    case_001064_rankWord |>.symm

private theorem case_001064_seqChoice :
    translationChoiceSeq case_001064_word case_001064_mask = case_001064_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001064_seqAtRank :
    translationSeqAtRankMask case_001064_rank case_001064_mask = case_001064_seq := by
  rw [translationSeqAtRankMask, case_001064_unrank]
  exact case_001064_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001064_bAtRank :
    translationBAtRankMask case_001064_rank case_001064_mask = case_001064_b := by
  rw [translationBAtRankMask, case_001064_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001064_b, case_001064_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001064_firstLine_eq :
    case_001064_support.firstLine case_001064_seq case_001064_b = case_001064_firstLine := by
  norm_num [case_001064_firstLine, case_001064_support, case_001064_seq, case_001064_b,
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
private theorem case_001064_secondLine_eq :
    case_001064_support.secondLine case_001064_seq case_001064_b = case_001064_secondLine := by
  norm_num [case_001064_secondLine, case_001064_support, case_001064_seq, case_001064_b,
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
private theorem case_001064_sourceAgrees :
    SourceAgrees case_001064_support case_001064_rank.val case_001064_mask := by
  intro hlt
  have hrank : (⟨case_001064_rank.val, hlt⟩ : Fin numPairWords) = case_001064_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001064_rank.val, hlt⟩ case_001064_mask =
        case_001064_seq := by
    simpa [hrank] using case_001064_seqAtRank
  simp [SourceChecks, hseq, case_001064_support,
    checkTranslationConstraintSource, case_001064_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001064_rows :
    EqEqPosVarFirstRows case_001064_support case_001064_rank.val case_001064_mask := by
  intro hlt
  have hrank : (⟨case_001064_rank.val, hlt⟩ : Fin numPairWords) = case_001064_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001064_rank.val, hlt⟩ case_001064_mask =
        case_001064_seq := by
    simpa [hrank] using case_001064_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001064_rank.val, hlt⟩ case_001064_mask =
        case_001064_b := by
    simpa [hrank] using case_001064_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001064_support case_001064_rank.val hlt
          case_001064_mask = case_001064_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001064_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001064_support case_001064_rank.val hlt
          case_001064_mask = case_001064_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001064_secondLine_eq]
  have case_001064_rowFirst :
      EqEqPosRow (FirstLineAt case_001064_support case_001064_rank.val hlt case_001064_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001064_firstLine, EqEqPosRow]
  have case_001064_fixedSecond :
      FixedRow (SecondLineAt case_001064_support case_001064_rank.val hlt case_001064_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001064_secondLine, FixedRow]
  exact ⟨case_001064_rowFirst, case_001064_fixedSecond⟩

private theorem case_001064_existsRows :
    ExistsEqEqPosVarFirstRows case_001064_rank.val case_001064_mask :=
  ⟨case_001064_support, case_001064_sourceAgrees, case_001064_rows⟩

private theorem case_001064_covered :
    RowPropertyParametricCovered case_001064_rank.val case_001064_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001064_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001065_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001065_mask : SignMask := ⟨9, by decide⟩
private def case_001065_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001065_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_001065_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (-148/9) }
private def case_001065_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_001065_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001065_rankWord :
    rankPairWord? case_001065_word = some case_001065_rank := by
  decide

private theorem case_001065_unrank :
    unrankPairWord case_001065_rank = case_001065_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001065_word case_001065_rank).1
    case_001065_rankWord |>.symm

private theorem case_001065_seqChoice :
    translationChoiceSeq case_001065_word case_001065_mask = case_001065_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001065_seqAtRank :
    translationSeqAtRankMask case_001065_rank case_001065_mask = case_001065_seq := by
  rw [translationSeqAtRankMask, case_001065_unrank]
  exact case_001065_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001065_bAtRank :
    translationBAtRankMask case_001065_rank case_001065_mask = case_001065_b := by
  rw [translationBAtRankMask, case_001065_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001065_b, case_001065_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001065_firstLine_eq :
    case_001065_support.firstLine case_001065_seq case_001065_b = case_001065_firstLine := by
  norm_num [case_001065_firstLine, case_001065_support, case_001065_seq, case_001065_b,
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
private theorem case_001065_secondLine_eq :
    case_001065_support.secondLine case_001065_seq case_001065_b = case_001065_secondLine := by
  norm_num [case_001065_secondLine, case_001065_support, case_001065_seq, case_001065_b,
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
private theorem case_001065_sourceAgrees :
    SourceAgrees case_001065_support case_001065_rank.val case_001065_mask := by
  intro hlt
  have hrank : (⟨case_001065_rank.val, hlt⟩ : Fin numPairWords) = case_001065_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001065_rank.val, hlt⟩ case_001065_mask =
        case_001065_seq := by
    simpa [hrank] using case_001065_seqAtRank
  simp [SourceChecks, hseq, case_001065_support,
    checkTranslationConstraintSource, case_001065_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001065_rows :
    EqEqPosVarFirstRows case_001065_support case_001065_rank.val case_001065_mask := by
  intro hlt
  have hrank : (⟨case_001065_rank.val, hlt⟩ : Fin numPairWords) = case_001065_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001065_rank.val, hlt⟩ case_001065_mask =
        case_001065_seq := by
    simpa [hrank] using case_001065_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001065_rank.val, hlt⟩ case_001065_mask =
        case_001065_b := by
    simpa [hrank] using case_001065_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001065_support case_001065_rank.val hlt
          case_001065_mask = case_001065_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001065_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001065_support case_001065_rank.val hlt
          case_001065_mask = case_001065_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001065_secondLine_eq]
  have case_001065_rowFirst :
      EqEqPosRow (FirstLineAt case_001065_support case_001065_rank.val hlt case_001065_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001065_firstLine, EqEqPosRow]
  have case_001065_fixedSecond :
      FixedRow (SecondLineAt case_001065_support case_001065_rank.val hlt case_001065_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001065_secondLine, FixedRow]
  exact ⟨case_001065_rowFirst, case_001065_fixedSecond⟩

private theorem case_001065_existsRows :
    ExistsEqEqPosVarFirstRows case_001065_rank.val case_001065_mask :=
  ⟨case_001065_support, case_001065_sourceAgrees, case_001065_rows⟩

private theorem case_001065_covered :
    RowPropertyParametricCovered case_001065_rank.val case_001065_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001065_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001066_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001066_mask : SignMask := ⟨13, by decide⟩
private def case_001066_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001066_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_001066_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (-100/9) }
private def case_001066_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001066_secondLine : StrictLin2 := { a := (-9/100), b := (-9/100), c := (-9/50) }

private theorem case_001066_rankWord :
    rankPairWord? case_001066_word = some case_001066_rank := by
  decide

private theorem case_001066_unrank :
    unrankPairWord case_001066_rank = case_001066_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001066_word case_001066_rank).1
    case_001066_rankWord |>.symm

private theorem case_001066_seqChoice :
    translationChoiceSeq case_001066_word case_001066_mask = case_001066_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001066_seqAtRank :
    translationSeqAtRankMask case_001066_rank case_001066_mask = case_001066_seq := by
  rw [translationSeqAtRankMask, case_001066_unrank]
  exact case_001066_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001066_bAtRank :
    translationBAtRankMask case_001066_rank case_001066_mask = case_001066_b := by
  rw [translationBAtRankMask, case_001066_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001066_b, case_001066_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001066_firstLine_eq :
    case_001066_support.firstLine case_001066_seq case_001066_b = case_001066_firstLine := by
  norm_num [case_001066_firstLine, case_001066_support, case_001066_seq, case_001066_b,
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
private theorem case_001066_secondLine_eq :
    case_001066_support.secondLine case_001066_seq case_001066_b = case_001066_secondLine := by
  norm_num [case_001066_secondLine, case_001066_support, case_001066_seq, case_001066_b,
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
private theorem case_001066_sourceAgrees :
    SourceAgrees case_001066_support case_001066_rank.val case_001066_mask := by
  intro hlt
  have hrank : (⟨case_001066_rank.val, hlt⟩ : Fin numPairWords) = case_001066_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001066_rank.val, hlt⟩ case_001066_mask =
        case_001066_seq := by
    simpa [hrank] using case_001066_seqAtRank
  simp [SourceChecks, hseq, case_001066_support,
    checkTranslationConstraintSource, case_001066_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001066_rows :
    EqEqPosVarSecondRows case_001066_support case_001066_rank.val case_001066_mask := by
  intro hlt
  have hrank : (⟨case_001066_rank.val, hlt⟩ : Fin numPairWords) = case_001066_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001066_rank.val, hlt⟩ case_001066_mask =
        case_001066_seq := by
    simpa [hrank] using case_001066_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001066_rank.val, hlt⟩ case_001066_mask =
        case_001066_b := by
    simpa [hrank] using case_001066_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001066_support case_001066_rank.val hlt
          case_001066_mask = case_001066_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001066_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001066_support case_001066_rank.val hlt
          case_001066_mask = case_001066_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001066_secondLine_eq]
  have case_001066_fixedFirst :
      FixedRow (FirstLineAt case_001066_support case_001066_rank.val hlt case_001066_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001066_firstLine, FixedRow]
  have case_001066_rowSecond :
      EqEqPosRow (SecondLineAt case_001066_support case_001066_rank.val hlt case_001066_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001066_secondLine, EqEqPosRow]
  exact ⟨case_001066_fixedFirst, case_001066_rowSecond⟩

private theorem case_001066_existsRows :
    ExistsEqEqPosVarSecondRows case_001066_rank.val case_001066_mask :=
  ⟨case_001066_support, case_001066_sourceAgrees, case_001066_rows⟩

private theorem case_001066_covered :
    RowPropertyParametricCovered case_001066_rank.val case_001066_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001066_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001067_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001067_mask : SignMask := ⟨16, by decide⟩
private def case_001067_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001067_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001067_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-52/9) }
private def case_001067_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_001067_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001067_rankWord :
    rankPairWord? case_001067_word = some case_001067_rank := by
  decide

private theorem case_001067_unrank :
    unrankPairWord case_001067_rank = case_001067_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001067_word case_001067_rank).1
    case_001067_rankWord |>.symm

private theorem case_001067_seqChoice :
    translationChoiceSeq case_001067_word case_001067_mask = case_001067_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001067_seqAtRank :
    translationSeqAtRankMask case_001067_rank case_001067_mask = case_001067_seq := by
  rw [translationSeqAtRankMask, case_001067_unrank]
  exact case_001067_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001067_bAtRank :
    translationBAtRankMask case_001067_rank case_001067_mask = case_001067_b := by
  rw [translationBAtRankMask, case_001067_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001067_b, case_001067_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001067_firstLine_eq :
    case_001067_support.firstLine case_001067_seq case_001067_b = case_001067_firstLine := by
  norm_num [case_001067_firstLine, case_001067_support, case_001067_seq, case_001067_b,
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
private theorem case_001067_secondLine_eq :
    case_001067_support.secondLine case_001067_seq case_001067_b = case_001067_secondLine := by
  norm_num [case_001067_secondLine, case_001067_support, case_001067_seq, case_001067_b,
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
private theorem case_001067_sourceAgrees :
    SourceAgrees case_001067_support case_001067_rank.val case_001067_mask := by
  intro hlt
  have hrank : (⟨case_001067_rank.val, hlt⟩ : Fin numPairWords) = case_001067_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001067_rank.val, hlt⟩ case_001067_mask =
        case_001067_seq := by
    simpa [hrank] using case_001067_seqAtRank
  simp [SourceChecks, hseq, case_001067_support,
    checkTranslationConstraintSource, case_001067_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001067_rows :
    EqEqPosVarFirstRows case_001067_support case_001067_rank.val case_001067_mask := by
  intro hlt
  have hrank : (⟨case_001067_rank.val, hlt⟩ : Fin numPairWords) = case_001067_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001067_rank.val, hlt⟩ case_001067_mask =
        case_001067_seq := by
    simpa [hrank] using case_001067_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001067_rank.val, hlt⟩ case_001067_mask =
        case_001067_b := by
    simpa [hrank] using case_001067_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001067_support case_001067_rank.val hlt
          case_001067_mask = case_001067_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001067_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001067_support case_001067_rank.val hlt
          case_001067_mask = case_001067_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001067_secondLine_eq]
  have case_001067_rowFirst :
      EqEqPosRow (FirstLineAt case_001067_support case_001067_rank.val hlt case_001067_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001067_firstLine, EqEqPosRow]
  have case_001067_fixedSecond :
      FixedRow (SecondLineAt case_001067_support case_001067_rank.val hlt case_001067_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001067_secondLine, FixedRow]
  exact ⟨case_001067_rowFirst, case_001067_fixedSecond⟩

private theorem case_001067_existsRows :
    ExistsEqEqPosVarFirstRows case_001067_rank.val case_001067_mask :=
  ⟨case_001067_support, case_001067_sourceAgrees, case_001067_rows⟩

private theorem case_001067_covered :
    RowPropertyParametricCovered case_001067_rank.val case_001067_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001067_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001068_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001068_mask : SignMask := ⟨18, by decide⟩
private def case_001068_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001068_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001068_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (20/9) }
private def case_001068_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_001068_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001068_rankWord :
    rankPairWord? case_001068_word = some case_001068_rank := by
  decide

private theorem case_001068_unrank :
    unrankPairWord case_001068_rank = case_001068_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001068_word case_001068_rank).1
    case_001068_rankWord |>.symm

private theorem case_001068_seqChoice :
    translationChoiceSeq case_001068_word case_001068_mask = case_001068_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001068_seqAtRank :
    translationSeqAtRankMask case_001068_rank case_001068_mask = case_001068_seq := by
  rw [translationSeqAtRankMask, case_001068_unrank]
  exact case_001068_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001068_bAtRank :
    translationBAtRankMask case_001068_rank case_001068_mask = case_001068_b := by
  rw [translationBAtRankMask, case_001068_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001068_b, case_001068_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001068_firstLine_eq :
    case_001068_support.firstLine case_001068_seq case_001068_b = case_001068_firstLine := by
  norm_num [case_001068_firstLine, case_001068_support, case_001068_seq, case_001068_b,
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
private theorem case_001068_secondLine_eq :
    case_001068_support.secondLine case_001068_seq case_001068_b = case_001068_secondLine := by
  norm_num [case_001068_secondLine, case_001068_support, case_001068_seq, case_001068_b,
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
private theorem case_001068_sourceAgrees :
    SourceAgrees case_001068_support case_001068_rank.val case_001068_mask := by
  intro hlt
  have hrank : (⟨case_001068_rank.val, hlt⟩ : Fin numPairWords) = case_001068_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001068_rank.val, hlt⟩ case_001068_mask =
        case_001068_seq := by
    simpa [hrank] using case_001068_seqAtRank
  simp [SourceChecks, hseq, case_001068_support,
    checkTranslationConstraintSource, case_001068_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001068_rows :
    EqEqPosVarFirstRows case_001068_support case_001068_rank.val case_001068_mask := by
  intro hlt
  have hrank : (⟨case_001068_rank.val, hlt⟩ : Fin numPairWords) = case_001068_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001068_rank.val, hlt⟩ case_001068_mask =
        case_001068_seq := by
    simpa [hrank] using case_001068_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001068_rank.val, hlt⟩ case_001068_mask =
        case_001068_b := by
    simpa [hrank] using case_001068_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001068_support case_001068_rank.val hlt
          case_001068_mask = case_001068_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001068_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001068_support case_001068_rank.val hlt
          case_001068_mask = case_001068_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001068_secondLine_eq]
  have case_001068_rowFirst :
      EqEqPosRow (FirstLineAt case_001068_support case_001068_rank.val hlt case_001068_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001068_firstLine, EqEqPosRow]
  have case_001068_fixedSecond :
      FixedRow (SecondLineAt case_001068_support case_001068_rank.val hlt case_001068_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001068_secondLine, FixedRow]
  exact ⟨case_001068_rowFirst, case_001068_fixedSecond⟩

private theorem case_001068_existsRows :
    ExistsEqEqPosVarFirstRows case_001068_rank.val case_001068_mask :=
  ⟨case_001068_support, case_001068_sourceAgrees, case_001068_rows⟩

private theorem case_001068_covered :
    RowPropertyParametricCovered case_001068_rank.val case_001068_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001068_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001069_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001069_mask : SignMask := ⟨24, by decide⟩
private def case_001069_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001069_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001069_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (-100/9) }
private def case_001069_firstLine : StrictLin2 := { a := -1, b := -1, c := (-67/17) }
private def case_001069_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001069_rankWord :
    rankPairWord? case_001069_word = some case_001069_rank := by
  decide

private theorem case_001069_unrank :
    unrankPairWord case_001069_rank = case_001069_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001069_word case_001069_rank).1
    case_001069_rankWord |>.symm

private theorem case_001069_seqChoice :
    translationChoiceSeq case_001069_word case_001069_mask = case_001069_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001069_seqAtRank :
    translationSeqAtRankMask case_001069_rank case_001069_mask = case_001069_seq := by
  rw [translationSeqAtRankMask, case_001069_unrank]
  exact case_001069_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001069_bAtRank :
    translationBAtRankMask case_001069_rank case_001069_mask = case_001069_b := by
  rw [translationBAtRankMask, case_001069_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001069_b, case_001069_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001069_firstLine_eq :
    case_001069_support.firstLine case_001069_seq case_001069_b = case_001069_firstLine := by
  norm_num [case_001069_firstLine, case_001069_support, case_001069_seq, case_001069_b,
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
private theorem case_001069_secondLine_eq :
    case_001069_support.secondLine case_001069_seq case_001069_b = case_001069_secondLine := by
  norm_num [case_001069_secondLine, case_001069_support, case_001069_seq, case_001069_b,
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
private theorem case_001069_sourceAgrees :
    SourceAgrees case_001069_support case_001069_rank.val case_001069_mask := by
  intro hlt
  have hrank : (⟨case_001069_rank.val, hlt⟩ : Fin numPairWords) = case_001069_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001069_rank.val, hlt⟩ case_001069_mask =
        case_001069_seq := by
    simpa [hrank] using case_001069_seqAtRank
  simp [SourceChecks, hseq, case_001069_support,
    checkTranslationConstraintSource, case_001069_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001069_rows :
    EqEqPosVarFirstRows case_001069_support case_001069_rank.val case_001069_mask := by
  intro hlt
  have hrank : (⟨case_001069_rank.val, hlt⟩ : Fin numPairWords) = case_001069_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001069_rank.val, hlt⟩ case_001069_mask =
        case_001069_seq := by
    simpa [hrank] using case_001069_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001069_rank.val, hlt⟩ case_001069_mask =
        case_001069_b := by
    simpa [hrank] using case_001069_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001069_support case_001069_rank.val hlt
          case_001069_mask = case_001069_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001069_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001069_support case_001069_rank.val hlt
          case_001069_mask = case_001069_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001069_secondLine_eq]
  have case_001069_rowFirst :
      EqEqPosRow (FirstLineAt case_001069_support case_001069_rank.val hlt case_001069_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001069_firstLine, EqEqPosRow]
  have case_001069_fixedSecond :
      FixedRow (SecondLineAt case_001069_support case_001069_rank.val hlt case_001069_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001069_secondLine, FixedRow]
  exact ⟨case_001069_rowFirst, case_001069_fixedSecond⟩

private theorem case_001069_existsRows :
    ExistsEqEqPosVarFirstRows case_001069_rank.val case_001069_mask :=
  ⟨case_001069_support, case_001069_sourceAgrees, case_001069_rows⟩

private theorem case_001069_covered :
    RowPropertyParametricCovered case_001069_rank.val case_001069_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001069_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001070_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001070_mask : SignMask := ⟨28, by decide⟩
private def case_001070_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001070_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001070_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-52/9) }
private def case_001070_firstLine : StrictLin2 := { a := (-58/37), b := (58/37), c := (-308/111) }
private def case_001070_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001070_rankWord :
    rankPairWord? case_001070_word = some case_001070_rank := by
  decide

private theorem case_001070_unrank :
    unrankPairWord case_001070_rank = case_001070_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001070_word case_001070_rank).1
    case_001070_rankWord |>.symm

private theorem case_001070_seqChoice :
    translationChoiceSeq case_001070_word case_001070_mask = case_001070_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001070_seqAtRank :
    translationSeqAtRankMask case_001070_rank case_001070_mask = case_001070_seq := by
  rw [translationSeqAtRankMask, case_001070_unrank]
  exact case_001070_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001070_bAtRank :
    translationBAtRankMask case_001070_rank case_001070_mask = case_001070_b := by
  rw [translationBAtRankMask, case_001070_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001070_b, case_001070_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001070_firstLine_eq :
    case_001070_support.firstLine case_001070_seq case_001070_b = case_001070_firstLine := by
  norm_num [case_001070_firstLine, case_001070_support, case_001070_seq, case_001070_b,
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
private theorem case_001070_secondLine_eq :
    case_001070_support.secondLine case_001070_seq case_001070_b = case_001070_secondLine := by
  norm_num [case_001070_secondLine, case_001070_support, case_001070_seq, case_001070_b,
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
private theorem case_001070_sourceAgrees :
    SourceAgrees case_001070_support case_001070_rank.val case_001070_mask := by
  intro hlt
  have hrank : (⟨case_001070_rank.val, hlt⟩ : Fin numPairWords) = case_001070_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001070_rank.val, hlt⟩ case_001070_mask =
        case_001070_seq := by
    simpa [hrank] using case_001070_seqAtRank
  simp [SourceChecks, hseq, case_001070_support,
    checkTranslationConstraintSource, case_001070_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001070_rows :
    OppOneMinusVarFirstRows case_001070_support case_001070_rank.val case_001070_mask := by
  intro hlt
  have hrank : (⟨case_001070_rank.val, hlt⟩ : Fin numPairWords) = case_001070_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001070_rank.val, hlt⟩ case_001070_mask =
        case_001070_seq := by
    simpa [hrank] using case_001070_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001070_rank.val, hlt⟩ case_001070_mask =
        case_001070_b := by
    simpa [hrank] using case_001070_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001070_support case_001070_rank.val hlt
          case_001070_mask = case_001070_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001070_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001070_support case_001070_rank.val hlt
          case_001070_mask = case_001070_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001070_secondLine_eq]
  have case_001070_rowFirst :
      OppPosRow (FirstLineAt case_001070_support case_001070_rank.val hlt case_001070_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001070_firstLine, OppPosRow]
  have case_001070_fixedSecond :
      FixedRow (SecondLineAt case_001070_support case_001070_rank.val hlt case_001070_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001070_secondLine, FixedRow]
  exact ⟨case_001070_rowFirst, case_001070_fixedSecond⟩

private theorem case_001070_existsRows :
    ExistsOppOneMinusVarFirstRows case_001070_rank.val case_001070_mask :=
  ⟨case_001070_support, case_001070_sourceAgrees, case_001070_rows⟩

private theorem case_001070_covered :
    RowPropertyParametricCovered case_001070_rank.val case_001070_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001070_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001071_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001071_mask : SignMask := ⟨29, by decide⟩
private def case_001071_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001071_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001071_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (-52/9) }
private def case_001071_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001071_secondLine : StrictLin2 := { a := (-9/52), b := (-9/52), c := (-9/26) }

private theorem case_001071_rankWord :
    rankPairWord? case_001071_word = some case_001071_rank := by
  decide

private theorem case_001071_unrank :
    unrankPairWord case_001071_rank = case_001071_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001071_word case_001071_rank).1
    case_001071_rankWord |>.symm

private theorem case_001071_seqChoice :
    translationChoiceSeq case_001071_word case_001071_mask = case_001071_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001071_seqAtRank :
    translationSeqAtRankMask case_001071_rank case_001071_mask = case_001071_seq := by
  rw [translationSeqAtRankMask, case_001071_unrank]
  exact case_001071_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001071_bAtRank :
    translationBAtRankMask case_001071_rank case_001071_mask = case_001071_b := by
  rw [translationBAtRankMask, case_001071_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001071_b, case_001071_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001071_firstLine_eq :
    case_001071_support.firstLine case_001071_seq case_001071_b = case_001071_firstLine := by
  norm_num [case_001071_firstLine, case_001071_support, case_001071_seq, case_001071_b,
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
private theorem case_001071_secondLine_eq :
    case_001071_support.secondLine case_001071_seq case_001071_b = case_001071_secondLine := by
  norm_num [case_001071_secondLine, case_001071_support, case_001071_seq, case_001071_b,
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
private theorem case_001071_sourceAgrees :
    SourceAgrees case_001071_support case_001071_rank.val case_001071_mask := by
  intro hlt
  have hrank : (⟨case_001071_rank.val, hlt⟩ : Fin numPairWords) = case_001071_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001071_rank.val, hlt⟩ case_001071_mask =
        case_001071_seq := by
    simpa [hrank] using case_001071_seqAtRank
  simp [SourceChecks, hseq, case_001071_support,
    checkTranslationConstraintSource, case_001071_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001071_rows :
    EqEqPosVarSecondRows case_001071_support case_001071_rank.val case_001071_mask := by
  intro hlt
  have hrank : (⟨case_001071_rank.val, hlt⟩ : Fin numPairWords) = case_001071_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001071_rank.val, hlt⟩ case_001071_mask =
        case_001071_seq := by
    simpa [hrank] using case_001071_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001071_rank.val, hlt⟩ case_001071_mask =
        case_001071_b := by
    simpa [hrank] using case_001071_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001071_support case_001071_rank.val hlt
          case_001071_mask = case_001071_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001071_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001071_support case_001071_rank.val hlt
          case_001071_mask = case_001071_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001071_secondLine_eq]
  have case_001071_fixedFirst :
      FixedRow (FirstLineAt case_001071_support case_001071_rank.val hlt case_001071_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001071_firstLine, FixedRow]
  have case_001071_rowSecond :
      EqEqPosRow (SecondLineAt case_001071_support case_001071_rank.val hlt case_001071_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001071_secondLine, EqEqPosRow]
  exact ⟨case_001071_fixedFirst, case_001071_rowSecond⟩

private theorem case_001071_existsRows :
    ExistsEqEqPosVarSecondRows case_001071_rank.val case_001071_mask :=
  ⟨case_001071_support, case_001071_sourceAgrees, case_001071_rows⟩

private theorem case_001071_covered :
    RowPropertyParametricCovered case_001071_rank.val case_001071_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001071_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001072_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001072_mask : SignMask := ⟨30, by decide⟩
private def case_001072_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001072_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001072_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (20/9) }
private def case_001072_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001072_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001072_rankWord :
    rankPairWord? case_001072_word = some case_001072_rank := by
  decide

private theorem case_001072_unrank :
    unrankPairWord case_001072_rank = case_001072_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001072_word case_001072_rank).1
    case_001072_rankWord |>.symm

private theorem case_001072_seqChoice :
    translationChoiceSeq case_001072_word case_001072_mask = case_001072_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001072_seqAtRank :
    translationSeqAtRankMask case_001072_rank case_001072_mask = case_001072_seq := by
  rw [translationSeqAtRankMask, case_001072_unrank]
  exact case_001072_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001072_bAtRank :
    translationBAtRankMask case_001072_rank case_001072_mask = case_001072_b := by
  rw [translationBAtRankMask, case_001072_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001072_b, case_001072_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001072_firstLine_eq :
    case_001072_support.firstLine case_001072_seq case_001072_b = case_001072_firstLine := by
  norm_num [case_001072_firstLine, case_001072_support, case_001072_seq, case_001072_b,
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
private theorem case_001072_secondLine_eq :
    case_001072_support.secondLine case_001072_seq case_001072_b = case_001072_secondLine := by
  norm_num [case_001072_secondLine, case_001072_support, case_001072_seq, case_001072_b,
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
private theorem case_001072_sourceAgrees :
    SourceAgrees case_001072_support case_001072_rank.val case_001072_mask := by
  intro hlt
  have hrank : (⟨case_001072_rank.val, hlt⟩ : Fin numPairWords) = case_001072_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001072_rank.val, hlt⟩ case_001072_mask =
        case_001072_seq := by
    simpa [hrank] using case_001072_seqAtRank
  simp [SourceChecks, hseq, case_001072_support,
    checkTranslationConstraintSource, case_001072_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001072_rows :
    EqEqPosVarFirstRows case_001072_support case_001072_rank.val case_001072_mask := by
  intro hlt
  have hrank : (⟨case_001072_rank.val, hlt⟩ : Fin numPairWords) = case_001072_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001072_rank.val, hlt⟩ case_001072_mask =
        case_001072_seq := by
    simpa [hrank] using case_001072_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001072_rank.val, hlt⟩ case_001072_mask =
        case_001072_b := by
    simpa [hrank] using case_001072_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001072_support case_001072_rank.val hlt
          case_001072_mask = case_001072_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001072_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001072_support case_001072_rank.val hlt
          case_001072_mask = case_001072_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001072_secondLine_eq]
  have case_001072_rowFirst :
      EqEqPosRow (FirstLineAt case_001072_support case_001072_rank.val hlt case_001072_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001072_firstLine, EqEqPosRow]
  have case_001072_fixedSecond :
      FixedRow (SecondLineAt case_001072_support case_001072_rank.val hlt case_001072_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001072_secondLine, FixedRow]
  exact ⟨case_001072_rowFirst, case_001072_fixedSecond⟩

private theorem case_001072_existsRows :
    ExistsEqEqPosVarFirstRows case_001072_rank.val case_001072_mask :=
  ⟨case_001072_support, case_001072_sourceAgrees, case_001072_rows⟩

private theorem case_001072_covered :
    RowPropertyParametricCovered case_001072_rank.val case_001072_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001072_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001073_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001073_mask : SignMask := ⟨47, by decide⟩
private def case_001073_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001073_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def case_001073_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (52/9) }
private def case_001073_firstLine : StrictLin2 := { a := 1, b := -1, c := (-19/13) }
private def case_001073_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001073_rankWord :
    rankPairWord? case_001073_word = some case_001073_rank := by
  decide

private theorem case_001073_unrank :
    unrankPairWord case_001073_rank = case_001073_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001073_word case_001073_rank).1
    case_001073_rankWord |>.symm

private theorem case_001073_seqChoice :
    translationChoiceSeq case_001073_word case_001073_mask = case_001073_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001073_seqAtRank :
    translationSeqAtRankMask case_001073_rank case_001073_mask = case_001073_seq := by
  rw [translationSeqAtRankMask, case_001073_unrank]
  exact case_001073_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001073_bAtRank :
    translationBAtRankMask case_001073_rank case_001073_mask = case_001073_b := by
  rw [translationBAtRankMask, case_001073_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001073_b, case_001073_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001073_firstLine_eq :
    case_001073_support.firstLine case_001073_seq case_001073_b = case_001073_firstLine := by
  norm_num [case_001073_firstLine, case_001073_support, case_001073_seq, case_001073_b,
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
private theorem case_001073_secondLine_eq :
    case_001073_support.secondLine case_001073_seq case_001073_b = case_001073_secondLine := by
  norm_num [case_001073_secondLine, case_001073_support, case_001073_seq, case_001073_b,
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
private theorem case_001073_sourceAgrees :
    SourceAgrees case_001073_support case_001073_rank.val case_001073_mask := by
  intro hlt
  have hrank : (⟨case_001073_rank.val, hlt⟩ : Fin numPairWords) = case_001073_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001073_rank.val, hlt⟩ case_001073_mask =
        case_001073_seq := by
    simpa [hrank] using case_001073_seqAtRank
  simp [SourceChecks, hseq, case_001073_support,
    checkTranslationConstraintSource, case_001073_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001073_rows :
    OppMinusOneVarFirstRows case_001073_support case_001073_rank.val case_001073_mask := by
  intro hlt
  have hrank : (⟨case_001073_rank.val, hlt⟩ : Fin numPairWords) = case_001073_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001073_rank.val, hlt⟩ case_001073_mask =
        case_001073_seq := by
    simpa [hrank] using case_001073_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001073_rank.val, hlt⟩ case_001073_mask =
        case_001073_b := by
    simpa [hrank] using case_001073_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001073_support case_001073_rank.val hlt
          case_001073_mask = case_001073_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001073_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001073_support case_001073_rank.val hlt
          case_001073_mask = case_001073_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001073_secondLine_eq]
  have case_001073_rowFirst :
      OppNegRow (FirstLineAt case_001073_support case_001073_rank.val hlt case_001073_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001073_firstLine, OppNegRow]
  have case_001073_fixedSecond :
      FixedRow (SecondLineAt case_001073_support case_001073_rank.val hlt case_001073_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001073_secondLine, FixedRow]
  exact ⟨case_001073_rowFirst, case_001073_fixedSecond⟩

private theorem case_001073_existsRows :
    ExistsOppMinusOneVarFirstRows case_001073_rank.val case_001073_mask :=
  ⟨case_001073_support, case_001073_sourceAgrees, case_001073_rows⟩

private theorem case_001073_covered :
    RowPropertyParametricCovered case_001073_rank.val case_001073_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001073_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001074_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001074_mask : SignMask := ⟨54, by decide⟩
private def case_001074_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001074_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001074_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001074_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (148/9) }
private def case_001074_firstLine : StrictLin2 := { a := -1, b := 1, c := (-87/13) }
private def case_001074_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001074_rankWord :
    rankPairWord? case_001074_word = some case_001074_rank := by
  decide

private theorem case_001074_unrank :
    unrankPairWord case_001074_rank = case_001074_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001074_word case_001074_rank).1
    case_001074_rankWord |>.symm

private theorem case_001074_seqChoice :
    translationChoiceSeq case_001074_word case_001074_mask = case_001074_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001074_seqAtRank :
    translationSeqAtRankMask case_001074_rank case_001074_mask = case_001074_seq := by
  rw [translationSeqAtRankMask, case_001074_unrank]
  exact case_001074_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001074_bAtRank :
    translationBAtRankMask case_001074_rank case_001074_mask = case_001074_b := by
  rw [translationBAtRankMask, case_001074_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001074_b, case_001074_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001074_firstLine_eq :
    case_001074_support.firstLine case_001074_seq case_001074_b = case_001074_firstLine := by
  norm_num [case_001074_firstLine, case_001074_support, case_001074_seq, case_001074_b,
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
private theorem case_001074_secondLine_eq :
    case_001074_support.secondLine case_001074_seq case_001074_b = case_001074_secondLine := by
  norm_num [case_001074_secondLine, case_001074_support, case_001074_seq, case_001074_b,
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
private theorem case_001074_sourceAgrees :
    SourceAgrees case_001074_support case_001074_rank.val case_001074_mask := by
  intro hlt
  have hrank : (⟨case_001074_rank.val, hlt⟩ : Fin numPairWords) = case_001074_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001074_rank.val, hlt⟩ case_001074_mask =
        case_001074_seq := by
    simpa [hrank] using case_001074_seqAtRank
  simp [SourceChecks, hseq, case_001074_support,
    checkTranslationConstraintSource, case_001074_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001074_rows :
    OppOneMinusVarFirstRows case_001074_support case_001074_rank.val case_001074_mask := by
  intro hlt
  have hrank : (⟨case_001074_rank.val, hlt⟩ : Fin numPairWords) = case_001074_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001074_rank.val, hlt⟩ case_001074_mask =
        case_001074_seq := by
    simpa [hrank] using case_001074_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001074_rank.val, hlt⟩ case_001074_mask =
        case_001074_b := by
    simpa [hrank] using case_001074_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001074_support case_001074_rank.val hlt
          case_001074_mask = case_001074_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001074_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001074_support case_001074_rank.val hlt
          case_001074_mask = case_001074_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001074_secondLine_eq]
  have case_001074_rowFirst :
      OppPosRow (FirstLineAt case_001074_support case_001074_rank.val hlt case_001074_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001074_firstLine, OppPosRow]
  have case_001074_fixedSecond :
      FixedRow (SecondLineAt case_001074_support case_001074_rank.val hlt case_001074_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001074_secondLine, FixedRow]
  exact ⟨case_001074_rowFirst, case_001074_fixedSecond⟩

private theorem case_001074_existsRows :
    ExistsOppOneMinusVarFirstRows case_001074_rank.val case_001074_mask :=
  ⟨case_001074_support, case_001074_sourceAgrees, case_001074_rows⟩

private theorem case_001074_covered :
    RowPropertyParametricCovered case_001074_rank.val case_001074_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001074_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001075_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001075_mask : SignMask := ⟨55, by decide⟩
private def case_001075_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001075_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001075_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001075_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (148/9) }
private def case_001075_firstLine : StrictLin2 := { a := (-13/55), b := (-13/55), c := (-61/55) }
private def case_001075_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001075_rankWord :
    rankPairWord? case_001075_word = some case_001075_rank := by
  decide

private theorem case_001075_unrank :
    unrankPairWord case_001075_rank = case_001075_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001075_word case_001075_rank).1
    case_001075_rankWord |>.symm

private theorem case_001075_seqChoice :
    translationChoiceSeq case_001075_word case_001075_mask = case_001075_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001075_seqAtRank :
    translationSeqAtRankMask case_001075_rank case_001075_mask = case_001075_seq := by
  rw [translationSeqAtRankMask, case_001075_unrank]
  exact case_001075_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001075_bAtRank :
    translationBAtRankMask case_001075_rank case_001075_mask = case_001075_b := by
  rw [translationBAtRankMask, case_001075_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001075_b, case_001075_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001075_firstLine_eq :
    case_001075_support.firstLine case_001075_seq case_001075_b = case_001075_firstLine := by
  norm_num [case_001075_firstLine, case_001075_support, case_001075_seq, case_001075_b,
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
private theorem case_001075_secondLine_eq :
    case_001075_support.secondLine case_001075_seq case_001075_b = case_001075_secondLine := by
  norm_num [case_001075_secondLine, case_001075_support, case_001075_seq, case_001075_b,
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
private theorem case_001075_sourceAgrees :
    SourceAgrees case_001075_support case_001075_rank.val case_001075_mask := by
  intro hlt
  have hrank : (⟨case_001075_rank.val, hlt⟩ : Fin numPairWords) = case_001075_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001075_rank.val, hlt⟩ case_001075_mask =
        case_001075_seq := by
    simpa [hrank] using case_001075_seqAtRank
  simp [SourceChecks, hseq, case_001075_support,
    checkTranslationConstraintSource, case_001075_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001075_rows :
    EqEqPosVarFirstRows case_001075_support case_001075_rank.val case_001075_mask := by
  intro hlt
  have hrank : (⟨case_001075_rank.val, hlt⟩ : Fin numPairWords) = case_001075_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001075_rank.val, hlt⟩ case_001075_mask =
        case_001075_seq := by
    simpa [hrank] using case_001075_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001075_rank.val, hlt⟩ case_001075_mask =
        case_001075_b := by
    simpa [hrank] using case_001075_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001075_support case_001075_rank.val hlt
          case_001075_mask = case_001075_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001075_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001075_support case_001075_rank.val hlt
          case_001075_mask = case_001075_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001075_secondLine_eq]
  have case_001075_rowFirst :
      EqEqPosRow (FirstLineAt case_001075_support case_001075_rank.val hlt case_001075_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001075_firstLine, EqEqPosRow]
  have case_001075_fixedSecond :
      FixedRow (SecondLineAt case_001075_support case_001075_rank.val hlt case_001075_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001075_secondLine, FixedRow]
  exact ⟨case_001075_rowFirst, case_001075_fixedSecond⟩

private theorem case_001075_existsRows :
    ExistsEqEqPosVarFirstRows case_001075_rank.val case_001075_mask :=
  ⟨case_001075_support, case_001075_sourceAgrees, case_001075_rows⟩

private theorem case_001075_covered :
    RowPropertyParametricCovered case_001075_rank.val case_001075_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001075_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001076_rank : Fin numPairWords := ⟨812, by decide⟩
private def case_001076_mask : SignMask := ⟨63, by decide⟩
private def case_001076_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001076_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001076_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001076_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (100/9) }
private def case_001076_firstLine : StrictLin2 := { a := (-25/17), b := (25/17), c := (-57/17) }
private def case_001076_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001076_rankWord :
    rankPairWord? case_001076_word = some case_001076_rank := by
  decide

private theorem case_001076_unrank :
    unrankPairWord case_001076_rank = case_001076_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001076_word case_001076_rank).1
    case_001076_rankWord |>.symm

private theorem case_001076_seqChoice :
    translationChoiceSeq case_001076_word case_001076_mask = case_001076_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001076_seqAtRank :
    translationSeqAtRankMask case_001076_rank case_001076_mask = case_001076_seq := by
  rw [translationSeqAtRankMask, case_001076_unrank]
  exact case_001076_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001076_bAtRank :
    translationBAtRankMask case_001076_rank case_001076_mask = case_001076_b := by
  rw [translationBAtRankMask, case_001076_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001076_b, case_001076_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001076_firstLine_eq :
    case_001076_support.firstLine case_001076_seq case_001076_b = case_001076_firstLine := by
  norm_num [case_001076_firstLine, case_001076_support, case_001076_seq, case_001076_b,
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
private theorem case_001076_secondLine_eq :
    case_001076_support.secondLine case_001076_seq case_001076_b = case_001076_secondLine := by
  norm_num [case_001076_secondLine, case_001076_support, case_001076_seq, case_001076_b,
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
private theorem case_001076_sourceAgrees :
    SourceAgrees case_001076_support case_001076_rank.val case_001076_mask := by
  intro hlt
  have hrank : (⟨case_001076_rank.val, hlt⟩ : Fin numPairWords) = case_001076_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001076_rank.val, hlt⟩ case_001076_mask =
        case_001076_seq := by
    simpa [hrank] using case_001076_seqAtRank
  simp [SourceChecks, hseq, case_001076_support,
    checkTranslationConstraintSource, case_001076_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001076_rows :
    OppOneMinusVarFirstRows case_001076_support case_001076_rank.val case_001076_mask := by
  intro hlt
  have hrank : (⟨case_001076_rank.val, hlt⟩ : Fin numPairWords) = case_001076_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001076_rank.val, hlt⟩ case_001076_mask =
        case_001076_seq := by
    simpa [hrank] using case_001076_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001076_rank.val, hlt⟩ case_001076_mask =
        case_001076_b := by
    simpa [hrank] using case_001076_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001076_support case_001076_rank.val hlt
          case_001076_mask = case_001076_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001076_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001076_support case_001076_rank.val hlt
          case_001076_mask = case_001076_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001076_secondLine_eq]
  have case_001076_rowFirst :
      OppPosRow (FirstLineAt case_001076_support case_001076_rank.val hlt case_001076_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001076_firstLine, OppPosRow]
  have case_001076_fixedSecond :
      FixedRow (SecondLineAt case_001076_support case_001076_rank.val hlt case_001076_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001076_secondLine, FixedRow]
  exact ⟨case_001076_rowFirst, case_001076_fixedSecond⟩

private theorem case_001076_existsRows :
    ExistsOppOneMinusVarFirstRows case_001076_rank.val case_001076_mask :=
  ⟨case_001076_support, case_001076_sourceAgrees, case_001076_rows⟩

private theorem case_001076_covered :
    RowPropertyParametricCovered case_001076_rank.val case_001076_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001076_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001077_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001077_mask : SignMask := ⟨8, by decide⟩
private def case_001077_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001077_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001077_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_001077_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (-148/9) }
private def case_001077_firstLine : StrictLin2 := { a := -1, b := -1, c := (-87/13) }
private def case_001077_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001077_rankWord :
    rankPairWord? case_001077_word = some case_001077_rank := by
  decide

private theorem case_001077_unrank :
    unrankPairWord case_001077_rank = case_001077_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001077_word case_001077_rank).1
    case_001077_rankWord |>.symm

private theorem case_001077_seqChoice :
    translationChoiceSeq case_001077_word case_001077_mask = case_001077_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001077_seqAtRank :
    translationSeqAtRankMask case_001077_rank case_001077_mask = case_001077_seq := by
  rw [translationSeqAtRankMask, case_001077_unrank]
  exact case_001077_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001077_bAtRank :
    translationBAtRankMask case_001077_rank case_001077_mask = case_001077_b := by
  rw [translationBAtRankMask, case_001077_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001077_b, case_001077_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001077_firstLine_eq :
    case_001077_support.firstLine case_001077_seq case_001077_b = case_001077_firstLine := by
  norm_num [case_001077_firstLine, case_001077_support, case_001077_seq, case_001077_b,
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
private theorem case_001077_secondLine_eq :
    case_001077_support.secondLine case_001077_seq case_001077_b = case_001077_secondLine := by
  norm_num [case_001077_secondLine, case_001077_support, case_001077_seq, case_001077_b,
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
private theorem case_001077_sourceAgrees :
    SourceAgrees case_001077_support case_001077_rank.val case_001077_mask := by
  intro hlt
  have hrank : (⟨case_001077_rank.val, hlt⟩ : Fin numPairWords) = case_001077_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001077_rank.val, hlt⟩ case_001077_mask =
        case_001077_seq := by
    simpa [hrank] using case_001077_seqAtRank
  simp [SourceChecks, hseq, case_001077_support,
    checkTranslationConstraintSource, case_001077_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001077_rows :
    EqEqPosVarFirstRows case_001077_support case_001077_rank.val case_001077_mask := by
  intro hlt
  have hrank : (⟨case_001077_rank.val, hlt⟩ : Fin numPairWords) = case_001077_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001077_rank.val, hlt⟩ case_001077_mask =
        case_001077_seq := by
    simpa [hrank] using case_001077_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001077_rank.val, hlt⟩ case_001077_mask =
        case_001077_b := by
    simpa [hrank] using case_001077_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001077_support case_001077_rank.val hlt
          case_001077_mask = case_001077_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001077_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001077_support case_001077_rank.val hlt
          case_001077_mask = case_001077_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001077_secondLine_eq]
  have case_001077_rowFirst :
      EqEqPosRow (FirstLineAt case_001077_support case_001077_rank.val hlt case_001077_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001077_firstLine, EqEqPosRow]
  have case_001077_fixedSecond :
      FixedRow (SecondLineAt case_001077_support case_001077_rank.val hlt case_001077_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001077_secondLine, FixedRow]
  exact ⟨case_001077_rowFirst, case_001077_fixedSecond⟩

private theorem case_001077_existsRows :
    ExistsEqEqPosVarFirstRows case_001077_rank.val case_001077_mask :=
  ⟨case_001077_support, case_001077_sourceAgrees, case_001077_rows⟩

private theorem case_001077_covered :
    RowPropertyParametricCovered case_001077_rank.val case_001077_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001077_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001078_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001078_mask : SignMask := ⟨9, by decide⟩
private def case_001078_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001078_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001078_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_001078_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (-148/9) }
private def case_001078_firstLine : StrictLin2 := { a := -1, b := -1, c := (-51/13) }
private def case_001078_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001078_rankWord :
    rankPairWord? case_001078_word = some case_001078_rank := by
  decide

private theorem case_001078_unrank :
    unrankPairWord case_001078_rank = case_001078_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001078_word case_001078_rank).1
    case_001078_rankWord |>.symm

private theorem case_001078_seqChoice :
    translationChoiceSeq case_001078_word case_001078_mask = case_001078_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001078_seqAtRank :
    translationSeqAtRankMask case_001078_rank case_001078_mask = case_001078_seq := by
  rw [translationSeqAtRankMask, case_001078_unrank]
  exact case_001078_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001078_bAtRank :
    translationBAtRankMask case_001078_rank case_001078_mask = case_001078_b := by
  rw [translationBAtRankMask, case_001078_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001078_b, case_001078_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001078_firstLine_eq :
    case_001078_support.firstLine case_001078_seq case_001078_b = case_001078_firstLine := by
  norm_num [case_001078_firstLine, case_001078_support, case_001078_seq, case_001078_b,
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
private theorem case_001078_secondLine_eq :
    case_001078_support.secondLine case_001078_seq case_001078_b = case_001078_secondLine := by
  norm_num [case_001078_secondLine, case_001078_support, case_001078_seq, case_001078_b,
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
private theorem case_001078_sourceAgrees :
    SourceAgrees case_001078_support case_001078_rank.val case_001078_mask := by
  intro hlt
  have hrank : (⟨case_001078_rank.val, hlt⟩ : Fin numPairWords) = case_001078_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001078_rank.val, hlt⟩ case_001078_mask =
        case_001078_seq := by
    simpa [hrank] using case_001078_seqAtRank
  simp [SourceChecks, hseq, case_001078_support,
    checkTranslationConstraintSource, case_001078_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001078_rows :
    EqEqPosVarFirstRows case_001078_support case_001078_rank.val case_001078_mask := by
  intro hlt
  have hrank : (⟨case_001078_rank.val, hlt⟩ : Fin numPairWords) = case_001078_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001078_rank.val, hlt⟩ case_001078_mask =
        case_001078_seq := by
    simpa [hrank] using case_001078_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001078_rank.val, hlt⟩ case_001078_mask =
        case_001078_b := by
    simpa [hrank] using case_001078_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001078_support case_001078_rank.val hlt
          case_001078_mask = case_001078_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001078_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001078_support case_001078_rank.val hlt
          case_001078_mask = case_001078_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001078_secondLine_eq]
  have case_001078_rowFirst :
      EqEqPosRow (FirstLineAt case_001078_support case_001078_rank.val hlt case_001078_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001078_firstLine, EqEqPosRow]
  have case_001078_fixedSecond :
      FixedRow (SecondLineAt case_001078_support case_001078_rank.val hlt case_001078_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001078_secondLine, FixedRow]
  exact ⟨case_001078_rowFirst, case_001078_fixedSecond⟩

private theorem case_001078_existsRows :
    ExistsEqEqPosVarFirstRows case_001078_rank.val case_001078_mask :=
  ⟨case_001078_support, case_001078_sourceAgrees, case_001078_rows⟩

private theorem case_001078_covered :
    RowPropertyParametricCovered case_001078_rank.val case_001078_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001078_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001079_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001079_mask : SignMask := ⟨13, by decide⟩
private def case_001079_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001079_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001079_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_001079_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-100/9) }
private def case_001079_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001079_secondLine : StrictLin2 := { a := (-75/374), b := (-75/374), c := (-225/187) }

private theorem case_001079_rankWord :
    rankPairWord? case_001079_word = some case_001079_rank := by
  decide

private theorem case_001079_unrank :
    unrankPairWord case_001079_rank = case_001079_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001079_word case_001079_rank).1
    case_001079_rankWord |>.symm

private theorem case_001079_seqChoice :
    translationChoiceSeq case_001079_word case_001079_mask = case_001079_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001079_seqAtRank :
    translationSeqAtRankMask case_001079_rank case_001079_mask = case_001079_seq := by
  rw [translationSeqAtRankMask, case_001079_unrank]
  exact case_001079_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001079_bAtRank :
    translationBAtRankMask case_001079_rank case_001079_mask = case_001079_b := by
  rw [translationBAtRankMask, case_001079_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001079_b, case_001079_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001079_firstLine_eq :
    case_001079_support.firstLine case_001079_seq case_001079_b = case_001079_firstLine := by
  norm_num [case_001079_firstLine, case_001079_support, case_001079_seq, case_001079_b,
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
private theorem case_001079_secondLine_eq :
    case_001079_support.secondLine case_001079_seq case_001079_b = case_001079_secondLine := by
  norm_num [case_001079_secondLine, case_001079_support, case_001079_seq, case_001079_b,
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
private theorem case_001079_sourceAgrees :
    SourceAgrees case_001079_support case_001079_rank.val case_001079_mask := by
  intro hlt
  have hrank : (⟨case_001079_rank.val, hlt⟩ : Fin numPairWords) = case_001079_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001079_rank.val, hlt⟩ case_001079_mask =
        case_001079_seq := by
    simpa [hrank] using case_001079_seqAtRank
  simp [SourceChecks, hseq, case_001079_support,
    checkTranslationConstraintSource, case_001079_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001079_rows :
    EqEqPosVarSecondRows case_001079_support case_001079_rank.val case_001079_mask := by
  intro hlt
  have hrank : (⟨case_001079_rank.val, hlt⟩ : Fin numPairWords) = case_001079_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001079_rank.val, hlt⟩ case_001079_mask =
        case_001079_seq := by
    simpa [hrank] using case_001079_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001079_rank.val, hlt⟩ case_001079_mask =
        case_001079_b := by
    simpa [hrank] using case_001079_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001079_support case_001079_rank.val hlt
          case_001079_mask = case_001079_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001079_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001079_support case_001079_rank.val hlt
          case_001079_mask = case_001079_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001079_secondLine_eq]
  have case_001079_fixedFirst :
      FixedRow (FirstLineAt case_001079_support case_001079_rank.val hlt case_001079_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001079_firstLine, FixedRow]
  have case_001079_rowSecond :
      EqEqPosRow (SecondLineAt case_001079_support case_001079_rank.val hlt case_001079_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001079_secondLine, EqEqPosRow]
  exact ⟨case_001079_fixedFirst, case_001079_rowSecond⟩

private theorem case_001079_existsRows :
    ExistsEqEqPosVarSecondRows case_001079_rank.val case_001079_mask :=
  ⟨case_001079_support, case_001079_sourceAgrees, case_001079_rows⟩

private theorem case_001079_covered :
    RowPropertyParametricCovered case_001079_rank.val case_001079_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001079_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001080_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001080_mask : SignMask := ⟨16, by decide⟩
private def case_001080_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001080_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001080_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001080_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-20/9) }
private def case_001080_firstLine : StrictLin2 := { a := -1, b := -1, c := (-63/5) }
private def case_001080_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001080_rankWord :
    rankPairWord? case_001080_word = some case_001080_rank := by
  decide

private theorem case_001080_unrank :
    unrankPairWord case_001080_rank = case_001080_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001080_word case_001080_rank).1
    case_001080_rankWord |>.symm

private theorem case_001080_seqChoice :
    translationChoiceSeq case_001080_word case_001080_mask = case_001080_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001080_seqAtRank :
    translationSeqAtRankMask case_001080_rank case_001080_mask = case_001080_seq := by
  rw [translationSeqAtRankMask, case_001080_unrank]
  exact case_001080_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001080_bAtRank :
    translationBAtRankMask case_001080_rank case_001080_mask = case_001080_b := by
  rw [translationBAtRankMask, case_001080_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001080_b, case_001080_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001080_firstLine_eq :
    case_001080_support.firstLine case_001080_seq case_001080_b = case_001080_firstLine := by
  norm_num [case_001080_firstLine, case_001080_support, case_001080_seq, case_001080_b,
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
private theorem case_001080_secondLine_eq :
    case_001080_support.secondLine case_001080_seq case_001080_b = case_001080_secondLine := by
  norm_num [case_001080_secondLine, case_001080_support, case_001080_seq, case_001080_b,
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
private theorem case_001080_sourceAgrees :
    SourceAgrees case_001080_support case_001080_rank.val case_001080_mask := by
  intro hlt
  have hrank : (⟨case_001080_rank.val, hlt⟩ : Fin numPairWords) = case_001080_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001080_rank.val, hlt⟩ case_001080_mask =
        case_001080_seq := by
    simpa [hrank] using case_001080_seqAtRank
  simp [SourceChecks, hseq, case_001080_support,
    checkTranslationConstraintSource, case_001080_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001080_rows :
    EqEqPosVarFirstRows case_001080_support case_001080_rank.val case_001080_mask := by
  intro hlt
  have hrank : (⟨case_001080_rank.val, hlt⟩ : Fin numPairWords) = case_001080_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001080_rank.val, hlt⟩ case_001080_mask =
        case_001080_seq := by
    simpa [hrank] using case_001080_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001080_rank.val, hlt⟩ case_001080_mask =
        case_001080_b := by
    simpa [hrank] using case_001080_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001080_support case_001080_rank.val hlt
          case_001080_mask = case_001080_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001080_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001080_support case_001080_rank.val hlt
          case_001080_mask = case_001080_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001080_secondLine_eq]
  have case_001080_rowFirst :
      EqEqPosRow (FirstLineAt case_001080_support case_001080_rank.val hlt case_001080_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001080_firstLine, EqEqPosRow]
  have case_001080_fixedSecond :
      FixedRow (SecondLineAt case_001080_support case_001080_rank.val hlt case_001080_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001080_secondLine, FixedRow]
  exact ⟨case_001080_rowFirst, case_001080_fixedSecond⟩

private theorem case_001080_existsRows :
    ExistsEqEqPosVarFirstRows case_001080_rank.val case_001080_mask :=
  ⟨case_001080_support, case_001080_sourceAgrees, case_001080_rows⟩

private theorem case_001080_covered :
    RowPropertyParametricCovered case_001080_rank.val case_001080_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001080_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001081_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001081_mask : SignMask := ⟨18, by decide⟩
private def case_001081_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001081_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001081_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001081_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (52/9) }
private def case_001081_firstLine : StrictLin2 := { a := -1, b := -1, c := (-27/5) }
private def case_001081_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001081_rankWord :
    rankPairWord? case_001081_word = some case_001081_rank := by
  decide

private theorem case_001081_unrank :
    unrankPairWord case_001081_rank = case_001081_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001081_word case_001081_rank).1
    case_001081_rankWord |>.symm

private theorem case_001081_seqChoice :
    translationChoiceSeq case_001081_word case_001081_mask = case_001081_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001081_seqAtRank :
    translationSeqAtRankMask case_001081_rank case_001081_mask = case_001081_seq := by
  rw [translationSeqAtRankMask, case_001081_unrank]
  exact case_001081_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001081_bAtRank :
    translationBAtRankMask case_001081_rank case_001081_mask = case_001081_b := by
  rw [translationBAtRankMask, case_001081_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001081_b, case_001081_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001081_firstLine_eq :
    case_001081_support.firstLine case_001081_seq case_001081_b = case_001081_firstLine := by
  norm_num [case_001081_firstLine, case_001081_support, case_001081_seq, case_001081_b,
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
private theorem case_001081_secondLine_eq :
    case_001081_support.secondLine case_001081_seq case_001081_b = case_001081_secondLine := by
  norm_num [case_001081_secondLine, case_001081_support, case_001081_seq, case_001081_b,
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
private theorem case_001081_sourceAgrees :
    SourceAgrees case_001081_support case_001081_rank.val case_001081_mask := by
  intro hlt
  have hrank : (⟨case_001081_rank.val, hlt⟩ : Fin numPairWords) = case_001081_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001081_rank.val, hlt⟩ case_001081_mask =
        case_001081_seq := by
    simpa [hrank] using case_001081_seqAtRank
  simp [SourceChecks, hseq, case_001081_support,
    checkTranslationConstraintSource, case_001081_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001081_rows :
    EqEqPosVarFirstRows case_001081_support case_001081_rank.val case_001081_mask := by
  intro hlt
  have hrank : (⟨case_001081_rank.val, hlt⟩ : Fin numPairWords) = case_001081_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001081_rank.val, hlt⟩ case_001081_mask =
        case_001081_seq := by
    simpa [hrank] using case_001081_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001081_rank.val, hlt⟩ case_001081_mask =
        case_001081_b := by
    simpa [hrank] using case_001081_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001081_support case_001081_rank.val hlt
          case_001081_mask = case_001081_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001081_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001081_support case_001081_rank.val hlt
          case_001081_mask = case_001081_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001081_secondLine_eq]
  have case_001081_rowFirst :
      EqEqPosRow (FirstLineAt case_001081_support case_001081_rank.val hlt case_001081_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001081_firstLine, EqEqPosRow]
  have case_001081_fixedSecond :
      FixedRow (SecondLineAt case_001081_support case_001081_rank.val hlt case_001081_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001081_secondLine, FixedRow]
  exact ⟨case_001081_rowFirst, case_001081_fixedSecond⟩

private theorem case_001081_existsRows :
    ExistsEqEqPosVarFirstRows case_001081_rank.val case_001081_mask :=
  ⟨case_001081_support, case_001081_sourceAgrees, case_001081_rows⟩

private theorem case_001081_covered :
    RowPropertyParametricCovered case_001081_rank.val case_001081_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001081_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001082_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001082_mask : SignMask := ⟨22, by decide⟩
private def case_001082_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001082_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001082_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001082_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (100/9) }
private def case_001082_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001082_secondLine : StrictLin2 := { a := (-17/50), b := (-17/50), c := (-49/75) }

private theorem case_001082_rankWord :
    rankPairWord? case_001082_word = some case_001082_rank := by
  decide

private theorem case_001082_unrank :
    unrankPairWord case_001082_rank = case_001082_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001082_word case_001082_rank).1
    case_001082_rankWord |>.symm

private theorem case_001082_seqChoice :
    translationChoiceSeq case_001082_word case_001082_mask = case_001082_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001082_seqAtRank :
    translationSeqAtRankMask case_001082_rank case_001082_mask = case_001082_seq := by
  rw [translationSeqAtRankMask, case_001082_unrank]
  exact case_001082_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001082_bAtRank :
    translationBAtRankMask case_001082_rank case_001082_mask = case_001082_b := by
  rw [translationBAtRankMask, case_001082_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001082_b, case_001082_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001082_firstLine_eq :
    case_001082_support.firstLine case_001082_seq case_001082_b = case_001082_firstLine := by
  norm_num [case_001082_firstLine, case_001082_support, case_001082_seq, case_001082_b,
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
private theorem case_001082_secondLine_eq :
    case_001082_support.secondLine case_001082_seq case_001082_b = case_001082_secondLine := by
  norm_num [case_001082_secondLine, case_001082_support, case_001082_seq, case_001082_b,
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
private theorem case_001082_sourceAgrees :
    SourceAgrees case_001082_support case_001082_rank.val case_001082_mask := by
  intro hlt
  have hrank : (⟨case_001082_rank.val, hlt⟩ : Fin numPairWords) = case_001082_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001082_rank.val, hlt⟩ case_001082_mask =
        case_001082_seq := by
    simpa [hrank] using case_001082_seqAtRank
  simp [SourceChecks, hseq, case_001082_support,
    checkTranslationConstraintSource, case_001082_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001082_rows :
    EqEqPosVarSecondRows case_001082_support case_001082_rank.val case_001082_mask := by
  intro hlt
  have hrank : (⟨case_001082_rank.val, hlt⟩ : Fin numPairWords) = case_001082_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001082_rank.val, hlt⟩ case_001082_mask =
        case_001082_seq := by
    simpa [hrank] using case_001082_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001082_rank.val, hlt⟩ case_001082_mask =
        case_001082_b := by
    simpa [hrank] using case_001082_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001082_support case_001082_rank.val hlt
          case_001082_mask = case_001082_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001082_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001082_support case_001082_rank.val hlt
          case_001082_mask = case_001082_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001082_secondLine_eq]
  have case_001082_fixedFirst :
      FixedRow (FirstLineAt case_001082_support case_001082_rank.val hlt case_001082_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001082_firstLine, FixedRow]
  have case_001082_rowSecond :
      EqEqPosRow (SecondLineAt case_001082_support case_001082_rank.val hlt case_001082_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001082_secondLine, EqEqPosRow]
  exact ⟨case_001082_fixedFirst, case_001082_rowSecond⟩

private theorem case_001082_existsRows :
    ExistsEqEqPosVarSecondRows case_001082_rank.val case_001082_mask :=
  ⟨case_001082_support, case_001082_sourceAgrees, case_001082_rows⟩

private theorem case_001082_covered :
    RowPropertyParametricCovered case_001082_rank.val case_001082_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001082_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001083_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001083_mask : SignMask := ⟨28, by decide⟩
private def case_001083_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001083_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001083_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001083_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-20/9) }
private def case_001083_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_001083_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001083_rankWord :
    rankPairWord? case_001083_word = some case_001083_rank := by
  decide

private theorem case_001083_unrank :
    unrankPairWord case_001083_rank = case_001083_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001083_word case_001083_rank).1
    case_001083_rankWord |>.symm

private theorem case_001083_seqChoice :
    translationChoiceSeq case_001083_word case_001083_mask = case_001083_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001083_seqAtRank :
    translationSeqAtRankMask case_001083_rank case_001083_mask = case_001083_seq := by
  rw [translationSeqAtRankMask, case_001083_unrank]
  exact case_001083_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001083_bAtRank :
    translationBAtRankMask case_001083_rank case_001083_mask = case_001083_b := by
  rw [translationBAtRankMask, case_001083_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001083_b, case_001083_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001083_firstLine_eq :
    case_001083_support.firstLine case_001083_seq case_001083_b = case_001083_firstLine := by
  norm_num [case_001083_firstLine, case_001083_support, case_001083_seq, case_001083_b,
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
private theorem case_001083_secondLine_eq :
    case_001083_support.secondLine case_001083_seq case_001083_b = case_001083_secondLine := by
  norm_num [case_001083_secondLine, case_001083_support, case_001083_seq, case_001083_b,
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
private theorem case_001083_sourceAgrees :
    SourceAgrees case_001083_support case_001083_rank.val case_001083_mask := by
  intro hlt
  have hrank : (⟨case_001083_rank.val, hlt⟩ : Fin numPairWords) = case_001083_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001083_rank.val, hlt⟩ case_001083_mask =
        case_001083_seq := by
    simpa [hrank] using case_001083_seqAtRank
  simp [SourceChecks, hseq, case_001083_support,
    checkTranslationConstraintSource, case_001083_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001083_rows :
    OppOneMinusVarFirstRows case_001083_support case_001083_rank.val case_001083_mask := by
  intro hlt
  have hrank : (⟨case_001083_rank.val, hlt⟩ : Fin numPairWords) = case_001083_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001083_rank.val, hlt⟩ case_001083_mask =
        case_001083_seq := by
    simpa [hrank] using case_001083_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001083_rank.val, hlt⟩ case_001083_mask =
        case_001083_b := by
    simpa [hrank] using case_001083_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001083_support case_001083_rank.val hlt
          case_001083_mask = case_001083_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001083_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001083_support case_001083_rank.val hlt
          case_001083_mask = case_001083_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001083_secondLine_eq]
  have case_001083_rowFirst :
      OppPosRow (FirstLineAt case_001083_support case_001083_rank.val hlt case_001083_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001083_firstLine, OppPosRow]
  have case_001083_fixedSecond :
      FixedRow (SecondLineAt case_001083_support case_001083_rank.val hlt case_001083_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001083_secondLine, FixedRow]
  exact ⟨case_001083_rowFirst, case_001083_fixedSecond⟩

private theorem case_001083_existsRows :
    ExistsOppOneMinusVarFirstRows case_001083_rank.val case_001083_mask :=
  ⟨case_001083_support, case_001083_sourceAgrees, case_001083_rows⟩

private theorem case_001083_covered :
    RowPropertyParametricCovered case_001083_rank.val case_001083_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001083_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001084_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001084_mask : SignMask := ⟨30, by decide⟩
private def case_001084_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001084_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001084_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001084_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (52/9) }
private def case_001084_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001084_secondLine : StrictLin2 := { a := (-87/518), b := (-87/518), c := (-45/259) }

private theorem case_001084_rankWord :
    rankPairWord? case_001084_word = some case_001084_rank := by
  decide

private theorem case_001084_unrank :
    unrankPairWord case_001084_rank = case_001084_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001084_word case_001084_rank).1
    case_001084_rankWord |>.symm

private theorem case_001084_seqChoice :
    translationChoiceSeq case_001084_word case_001084_mask = case_001084_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001084_seqAtRank :
    translationSeqAtRankMask case_001084_rank case_001084_mask = case_001084_seq := by
  rw [translationSeqAtRankMask, case_001084_unrank]
  exact case_001084_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001084_bAtRank :
    translationBAtRankMask case_001084_rank case_001084_mask = case_001084_b := by
  rw [translationBAtRankMask, case_001084_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001084_b, case_001084_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001084_firstLine_eq :
    case_001084_support.firstLine case_001084_seq case_001084_b = case_001084_firstLine := by
  norm_num [case_001084_firstLine, case_001084_support, case_001084_seq, case_001084_b,
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
private theorem case_001084_secondLine_eq :
    case_001084_support.secondLine case_001084_seq case_001084_b = case_001084_secondLine := by
  norm_num [case_001084_secondLine, case_001084_support, case_001084_seq, case_001084_b,
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
private theorem case_001084_sourceAgrees :
    SourceAgrees case_001084_support case_001084_rank.val case_001084_mask := by
  intro hlt
  have hrank : (⟨case_001084_rank.val, hlt⟩ : Fin numPairWords) = case_001084_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001084_rank.val, hlt⟩ case_001084_mask =
        case_001084_seq := by
    simpa [hrank] using case_001084_seqAtRank
  simp [SourceChecks, hseq, case_001084_support,
    checkTranslationConstraintSource, case_001084_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001084_rows :
    EqEqPosVarSecondRows case_001084_support case_001084_rank.val case_001084_mask := by
  intro hlt
  have hrank : (⟨case_001084_rank.val, hlt⟩ : Fin numPairWords) = case_001084_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001084_rank.val, hlt⟩ case_001084_mask =
        case_001084_seq := by
    simpa [hrank] using case_001084_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001084_rank.val, hlt⟩ case_001084_mask =
        case_001084_b := by
    simpa [hrank] using case_001084_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001084_support case_001084_rank.val hlt
          case_001084_mask = case_001084_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001084_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001084_support case_001084_rank.val hlt
          case_001084_mask = case_001084_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001084_secondLine_eq]
  have case_001084_fixedFirst :
      FixedRow (FirstLineAt case_001084_support case_001084_rank.val hlt case_001084_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001084_firstLine, FixedRow]
  have case_001084_rowSecond :
      EqEqPosRow (SecondLineAt case_001084_support case_001084_rank.val hlt case_001084_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001084_secondLine, EqEqPosRow]
  exact ⟨case_001084_fixedFirst, case_001084_rowSecond⟩

private theorem case_001084_existsRows :
    ExistsEqEqPosVarSecondRows case_001084_rank.val case_001084_mask :=
  ⟨case_001084_support, case_001084_sourceAgrees, case_001084_rows⟩

private theorem case_001084_covered :
    RowPropertyParametricCovered case_001084_rank.val case_001084_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001084_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001085_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001085_mask : SignMask := ⟨31, by decide⟩
private def case_001085_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001085_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001085_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001085_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (52/9) }
private def case_001085_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001085_secondLine : StrictLin2 := { a := (-87/110), b := (-87/110), c := (-168/55) }

private theorem case_001085_rankWord :
    rankPairWord? case_001085_word = some case_001085_rank := by
  decide

private theorem case_001085_unrank :
    unrankPairWord case_001085_rank = case_001085_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001085_word case_001085_rank).1
    case_001085_rankWord |>.symm

private theorem case_001085_seqChoice :
    translationChoiceSeq case_001085_word case_001085_mask = case_001085_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001085_seqAtRank :
    translationSeqAtRankMask case_001085_rank case_001085_mask = case_001085_seq := by
  rw [translationSeqAtRankMask, case_001085_unrank]
  exact case_001085_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001085_bAtRank :
    translationBAtRankMask case_001085_rank case_001085_mask = case_001085_b := by
  rw [translationBAtRankMask, case_001085_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001085_b, case_001085_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001085_firstLine_eq :
    case_001085_support.firstLine case_001085_seq case_001085_b = case_001085_firstLine := by
  norm_num [case_001085_firstLine, case_001085_support, case_001085_seq, case_001085_b,
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
private theorem case_001085_secondLine_eq :
    case_001085_support.secondLine case_001085_seq case_001085_b = case_001085_secondLine := by
  norm_num [case_001085_secondLine, case_001085_support, case_001085_seq, case_001085_b,
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
private theorem case_001085_sourceAgrees :
    SourceAgrees case_001085_support case_001085_rank.val case_001085_mask := by
  intro hlt
  have hrank : (⟨case_001085_rank.val, hlt⟩ : Fin numPairWords) = case_001085_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001085_rank.val, hlt⟩ case_001085_mask =
        case_001085_seq := by
    simpa [hrank] using case_001085_seqAtRank
  simp [SourceChecks, hseq, case_001085_support,
    checkTranslationConstraintSource, case_001085_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001085_rows :
    EqEqPosVarSecondRows case_001085_support case_001085_rank.val case_001085_mask := by
  intro hlt
  have hrank : (⟨case_001085_rank.val, hlt⟩ : Fin numPairWords) = case_001085_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001085_rank.val, hlt⟩ case_001085_mask =
        case_001085_seq := by
    simpa [hrank] using case_001085_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001085_rank.val, hlt⟩ case_001085_mask =
        case_001085_b := by
    simpa [hrank] using case_001085_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001085_support case_001085_rank.val hlt
          case_001085_mask = case_001085_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001085_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001085_support case_001085_rank.val hlt
          case_001085_mask = case_001085_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001085_secondLine_eq]
  have case_001085_fixedFirst :
      FixedRow (FirstLineAt case_001085_support case_001085_rank.val hlt case_001085_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001085_firstLine, FixedRow]
  have case_001085_rowSecond :
      EqEqPosRow (SecondLineAt case_001085_support case_001085_rank.val hlt case_001085_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001085_secondLine, EqEqPosRow]
  exact ⟨case_001085_fixedFirst, case_001085_rowSecond⟩

private theorem case_001085_existsRows :
    ExistsEqEqPosVarSecondRows case_001085_rank.val case_001085_mask :=
  ⟨case_001085_support, case_001085_sourceAgrees, case_001085_rows⟩

private theorem case_001085_covered :
    RowPropertyParametricCovered case_001085_rank.val case_001085_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001085_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001086_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001086_mask : SignMask := ⟨45, by decide⟩
private def case_001086_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001086_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001086_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def case_001086_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-52/9) }
private def case_001086_firstLine : StrictLin2 := { a := 1, b := -1, c := (-71/13) }
private def case_001086_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001086_rankWord :
    rankPairWord? case_001086_word = some case_001086_rank := by
  decide

private theorem case_001086_unrank :
    unrankPairWord case_001086_rank = case_001086_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001086_word case_001086_rank).1
    case_001086_rankWord |>.symm

private theorem case_001086_seqChoice :
    translationChoiceSeq case_001086_word case_001086_mask = case_001086_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001086_seqAtRank :
    translationSeqAtRankMask case_001086_rank case_001086_mask = case_001086_seq := by
  rw [translationSeqAtRankMask, case_001086_unrank]
  exact case_001086_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001086_bAtRank :
    translationBAtRankMask case_001086_rank case_001086_mask = case_001086_b := by
  rw [translationBAtRankMask, case_001086_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001086_b, case_001086_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001086_firstLine_eq :
    case_001086_support.firstLine case_001086_seq case_001086_b = case_001086_firstLine := by
  norm_num [case_001086_firstLine, case_001086_support, case_001086_seq, case_001086_b,
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
private theorem case_001086_secondLine_eq :
    case_001086_support.secondLine case_001086_seq case_001086_b = case_001086_secondLine := by
  norm_num [case_001086_secondLine, case_001086_support, case_001086_seq, case_001086_b,
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
private theorem case_001086_sourceAgrees :
    SourceAgrees case_001086_support case_001086_rank.val case_001086_mask := by
  intro hlt
  have hrank : (⟨case_001086_rank.val, hlt⟩ : Fin numPairWords) = case_001086_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001086_rank.val, hlt⟩ case_001086_mask =
        case_001086_seq := by
    simpa [hrank] using case_001086_seqAtRank
  simp [SourceChecks, hseq, case_001086_support,
    checkTranslationConstraintSource, case_001086_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001086_rows :
    OppMinusOneVarFirstRows case_001086_support case_001086_rank.val case_001086_mask := by
  intro hlt
  have hrank : (⟨case_001086_rank.val, hlt⟩ : Fin numPairWords) = case_001086_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001086_rank.val, hlt⟩ case_001086_mask =
        case_001086_seq := by
    simpa [hrank] using case_001086_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001086_rank.val, hlt⟩ case_001086_mask =
        case_001086_b := by
    simpa [hrank] using case_001086_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001086_support case_001086_rank.val hlt
          case_001086_mask = case_001086_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001086_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001086_support case_001086_rank.val hlt
          case_001086_mask = case_001086_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001086_secondLine_eq]
  have case_001086_rowFirst :
      OppNegRow (FirstLineAt case_001086_support case_001086_rank.val hlt case_001086_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001086_firstLine, OppNegRow]
  have case_001086_fixedSecond :
      FixedRow (SecondLineAt case_001086_support case_001086_rank.val hlt case_001086_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001086_secondLine, FixedRow]
  exact ⟨case_001086_rowFirst, case_001086_fixedSecond⟩

private theorem case_001086_existsRows :
    ExistsOppMinusOneVarFirstRows case_001086_rank.val case_001086_mask :=
  ⟨case_001086_support, case_001086_sourceAgrees, case_001086_rows⟩

private theorem case_001086_covered :
    RowPropertyParametricCovered case_001086_rank.val case_001086_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001086_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001087_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001087_mask : SignMask := ⟨54, by decide⟩
private def case_001087_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001087_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001087_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_001087_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (148/9) }
private def case_001087_firstLine : StrictLin2 := { a := -1, b := 1, c := (-79/5) }
private def case_001087_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001087_rankWord :
    rankPairWord? case_001087_word = some case_001087_rank := by
  decide

private theorem case_001087_unrank :
    unrankPairWord case_001087_rank = case_001087_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001087_word case_001087_rank).1
    case_001087_rankWord |>.symm

private theorem case_001087_seqChoice :
    translationChoiceSeq case_001087_word case_001087_mask = case_001087_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001087_seqAtRank :
    translationSeqAtRankMask case_001087_rank case_001087_mask = case_001087_seq := by
  rw [translationSeqAtRankMask, case_001087_unrank]
  exact case_001087_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001087_bAtRank :
    translationBAtRankMask case_001087_rank case_001087_mask = case_001087_b := by
  rw [translationBAtRankMask, case_001087_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001087_b, case_001087_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001087_firstLine_eq :
    case_001087_support.firstLine case_001087_seq case_001087_b = case_001087_firstLine := by
  norm_num [case_001087_firstLine, case_001087_support, case_001087_seq, case_001087_b,
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
private theorem case_001087_secondLine_eq :
    case_001087_support.secondLine case_001087_seq case_001087_b = case_001087_secondLine := by
  norm_num [case_001087_secondLine, case_001087_support, case_001087_seq, case_001087_b,
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
private theorem case_001087_sourceAgrees :
    SourceAgrees case_001087_support case_001087_rank.val case_001087_mask := by
  intro hlt
  have hrank : (⟨case_001087_rank.val, hlt⟩ : Fin numPairWords) = case_001087_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001087_rank.val, hlt⟩ case_001087_mask =
        case_001087_seq := by
    simpa [hrank] using case_001087_seqAtRank
  simp [SourceChecks, hseq, case_001087_support,
    checkTranslationConstraintSource, case_001087_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001087_rows :
    OppOneMinusVarFirstRows case_001087_support case_001087_rank.val case_001087_mask := by
  intro hlt
  have hrank : (⟨case_001087_rank.val, hlt⟩ : Fin numPairWords) = case_001087_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001087_rank.val, hlt⟩ case_001087_mask =
        case_001087_seq := by
    simpa [hrank] using case_001087_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001087_rank.val, hlt⟩ case_001087_mask =
        case_001087_b := by
    simpa [hrank] using case_001087_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001087_support case_001087_rank.val hlt
          case_001087_mask = case_001087_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001087_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001087_support case_001087_rank.val hlt
          case_001087_mask = case_001087_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001087_secondLine_eq]
  have case_001087_rowFirst :
      OppPosRow (FirstLineAt case_001087_support case_001087_rank.val hlt case_001087_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001087_firstLine, OppPosRow]
  have case_001087_fixedSecond :
      FixedRow (SecondLineAt case_001087_support case_001087_rank.val hlt case_001087_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001087_secondLine, FixedRow]
  exact ⟨case_001087_rowFirst, case_001087_fixedSecond⟩

private theorem case_001087_existsRows :
    ExistsOppOneMinusVarFirstRows case_001087_rank.val case_001087_mask :=
  ⟨case_001087_support, case_001087_sourceAgrees, case_001087_rows⟩

private theorem case_001087_covered :
    RowPropertyParametricCovered case_001087_rank.val case_001087_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001087_existsRows

inductive Group033Covered : Nat -> SignMask -> Prop
  | case_001056 : Group033Covered case_001056_rank.val case_001056_mask
  | case_001057 : Group033Covered case_001057_rank.val case_001057_mask
  | case_001058 : Group033Covered case_001058_rank.val case_001058_mask
  | case_001059 : Group033Covered case_001059_rank.val case_001059_mask
  | case_001060 : Group033Covered case_001060_rank.val case_001060_mask
  | case_001061 : Group033Covered case_001061_rank.val case_001061_mask
  | case_001062 : Group033Covered case_001062_rank.val case_001062_mask
  | case_001063 : Group033Covered case_001063_rank.val case_001063_mask
  | case_001064 : Group033Covered case_001064_rank.val case_001064_mask
  | case_001065 : Group033Covered case_001065_rank.val case_001065_mask
  | case_001066 : Group033Covered case_001066_rank.val case_001066_mask
  | case_001067 : Group033Covered case_001067_rank.val case_001067_mask
  | case_001068 : Group033Covered case_001068_rank.val case_001068_mask
  | case_001069 : Group033Covered case_001069_rank.val case_001069_mask
  | case_001070 : Group033Covered case_001070_rank.val case_001070_mask
  | case_001071 : Group033Covered case_001071_rank.val case_001071_mask
  | case_001072 : Group033Covered case_001072_rank.val case_001072_mask
  | case_001073 : Group033Covered case_001073_rank.val case_001073_mask
  | case_001074 : Group033Covered case_001074_rank.val case_001074_mask
  | case_001075 : Group033Covered case_001075_rank.val case_001075_mask
  | case_001076 : Group033Covered case_001076_rank.val case_001076_mask
  | case_001077 : Group033Covered case_001077_rank.val case_001077_mask
  | case_001078 : Group033Covered case_001078_rank.val case_001078_mask
  | case_001079 : Group033Covered case_001079_rank.val case_001079_mask
  | case_001080 : Group033Covered case_001080_rank.val case_001080_mask
  | case_001081 : Group033Covered case_001081_rank.val case_001081_mask
  | case_001082 : Group033Covered case_001082_rank.val case_001082_mask
  | case_001083 : Group033Covered case_001083_rank.val case_001083_mask
  | case_001084 : Group033Covered case_001084_rank.val case_001084_mask
  | case_001085 : Group033Covered case_001085_rank.val case_001085_mask
  | case_001086 : Group033Covered case_001086_rank.val case_001086_mask
  | case_001087 : Group033Covered case_001087_rank.val case_001087_mask

theorem Group033GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group033Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001056 =>
      exact RowPropertyParametricCovered.kills case_001056_covered
  | case_001057 =>
      exact RowPropertyParametricCovered.kills case_001057_covered
  | case_001058 =>
      exact RowPropertyParametricCovered.kills case_001058_covered
  | case_001059 =>
      exact RowPropertyParametricCovered.kills case_001059_covered
  | case_001060 =>
      exact RowPropertyParametricCovered.kills case_001060_covered
  | case_001061 =>
      exact RowPropertyParametricCovered.kills case_001061_covered
  | case_001062 =>
      exact RowPropertyParametricCovered.kills case_001062_covered
  | case_001063 =>
      exact RowPropertyParametricCovered.kills case_001063_covered
  | case_001064 =>
      exact RowPropertyParametricCovered.kills case_001064_covered
  | case_001065 =>
      exact RowPropertyParametricCovered.kills case_001065_covered
  | case_001066 =>
      exact RowPropertyParametricCovered.kills case_001066_covered
  | case_001067 =>
      exact RowPropertyParametricCovered.kills case_001067_covered
  | case_001068 =>
      exact RowPropertyParametricCovered.kills case_001068_covered
  | case_001069 =>
      exact RowPropertyParametricCovered.kills case_001069_covered
  | case_001070 =>
      exact RowPropertyParametricCovered.kills case_001070_covered
  | case_001071 =>
      exact RowPropertyParametricCovered.kills case_001071_covered
  | case_001072 =>
      exact RowPropertyParametricCovered.kills case_001072_covered
  | case_001073 =>
      exact RowPropertyParametricCovered.kills case_001073_covered
  | case_001074 =>
      exact RowPropertyParametricCovered.kills case_001074_covered
  | case_001075 =>
      exact RowPropertyParametricCovered.kills case_001075_covered
  | case_001076 =>
      exact RowPropertyParametricCovered.kills case_001076_covered
  | case_001077 =>
      exact RowPropertyParametricCovered.kills case_001077_covered
  | case_001078 =>
      exact RowPropertyParametricCovered.kills case_001078_covered
  | case_001079 =>
      exact RowPropertyParametricCovered.kills case_001079_covered
  | case_001080 =>
      exact RowPropertyParametricCovered.kills case_001080_covered
  | case_001081 =>
      exact RowPropertyParametricCovered.kills case_001081_covered
  | case_001082 =>
      exact RowPropertyParametricCovered.kills case_001082_covered
  | case_001083 =>
      exact RowPropertyParametricCovered.kills case_001083_covered
  | case_001084 =>
      exact RowPropertyParametricCovered.kills case_001084_covered
  | case_001085 =>
      exact RowPropertyParametricCovered.kills case_001085_covered
  | case_001086 =>
      exact RowPropertyParametricCovered.kills case_001086_covered
  | case_001087 =>
      exact RowPropertyParametricCovered.kills case_001087_covered

theorem Group033_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group033
