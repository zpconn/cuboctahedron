import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group002

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
private def case_000064_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000064_mask : SignMask := ⟨29, by decide⟩
private def case_000064_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000064_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000064_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (-52/9) }
private def case_000064_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000064_secondLine : StrictLin2 := { a := (-9/52), b := (-9/52), c := (-9/26) }

private theorem case_000064_rankWord :
    rankPairWord? case_000064_word = some case_000064_rank := by
  decide

private theorem case_000064_unrank :
    unrankPairWord case_000064_rank = case_000064_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000064_word case_000064_rank).1
    case_000064_rankWord |>.symm

private theorem case_000064_seqChoice :
    translationChoiceSeq case_000064_word case_000064_mask = case_000064_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000064_seqAtRank :
    translationSeqAtRankMask case_000064_rank case_000064_mask = case_000064_seq := by
  rw [translationSeqAtRankMask, case_000064_unrank]
  exact case_000064_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000064_bAtRank :
    translationBAtRankMask case_000064_rank case_000064_mask = case_000064_b := by
  rw [translationBAtRankMask, case_000064_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000064_b, case_000064_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000064_firstLine_eq :
    case_000064_support.firstLine case_000064_seq case_000064_b = case_000064_firstLine := by
  norm_num [case_000064_firstLine, case_000064_support, case_000064_seq, case_000064_b,
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
private theorem case_000064_secondLine_eq :
    case_000064_support.secondLine case_000064_seq case_000064_b = case_000064_secondLine := by
  norm_num [case_000064_secondLine, case_000064_support, case_000064_seq, case_000064_b,
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
private theorem case_000064_sourceAgrees :
    SourceAgrees case_000064_support case_000064_rank.val case_000064_mask := by
  intro hlt
  have hrank : (⟨case_000064_rank.val, hlt⟩ : Fin numPairWords) = case_000064_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000064_rank.val, hlt⟩ case_000064_mask =
        case_000064_seq := by
    simpa [hrank] using case_000064_seqAtRank
  simp [SourceChecks, hseq, case_000064_support,
    checkTranslationConstraintSource, case_000064_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000064_rows :
    EqEqPosVarSecondRows case_000064_support case_000064_rank.val case_000064_mask := by
  intro hlt
  have hrank : (⟨case_000064_rank.val, hlt⟩ : Fin numPairWords) = case_000064_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000064_rank.val, hlt⟩ case_000064_mask =
        case_000064_seq := by
    simpa [hrank] using case_000064_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000064_rank.val, hlt⟩ case_000064_mask =
        case_000064_b := by
    simpa [hrank] using case_000064_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000064_support case_000064_rank.val hlt
          case_000064_mask = case_000064_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000064_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000064_support case_000064_rank.val hlt
          case_000064_mask = case_000064_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000064_secondLine_eq]
  have case_000064_fixedFirst :
      FixedRow (FirstLineAt case_000064_support case_000064_rank.val hlt case_000064_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000064_firstLine, FixedRow]
  have case_000064_rowSecond :
      EqEqPosRow (SecondLineAt case_000064_support case_000064_rank.val hlt case_000064_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000064_secondLine, EqEqPosRow]
  exact ⟨case_000064_fixedFirst, case_000064_rowSecond⟩

private theorem case_000064_existsRows :
    ExistsEqEqPosVarSecondRows case_000064_rank.val case_000064_mask :=
  ⟨case_000064_support, case_000064_sourceAgrees, case_000064_rows⟩

private theorem case_000064_covered :
    RowPropertyParametricCovered case_000064_rank.val case_000064_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000064_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000065_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000065_mask : SignMask := ⟨30, by decide⟩
private def case_000065_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000065_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000065_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (20/9) }
private def case_000065_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000065_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000065_rankWord :
    rankPairWord? case_000065_word = some case_000065_rank := by
  decide

private theorem case_000065_unrank :
    unrankPairWord case_000065_rank = case_000065_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000065_word case_000065_rank).1
    case_000065_rankWord |>.symm

private theorem case_000065_seqChoice :
    translationChoiceSeq case_000065_word case_000065_mask = case_000065_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000065_seqAtRank :
    translationSeqAtRankMask case_000065_rank case_000065_mask = case_000065_seq := by
  rw [translationSeqAtRankMask, case_000065_unrank]
  exact case_000065_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000065_bAtRank :
    translationBAtRankMask case_000065_rank case_000065_mask = case_000065_b := by
  rw [translationBAtRankMask, case_000065_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000065_b, case_000065_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000065_firstLine_eq :
    case_000065_support.firstLine case_000065_seq case_000065_b = case_000065_firstLine := by
  norm_num [case_000065_firstLine, case_000065_support, case_000065_seq, case_000065_b,
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
private theorem case_000065_secondLine_eq :
    case_000065_support.secondLine case_000065_seq case_000065_b = case_000065_secondLine := by
  norm_num [case_000065_secondLine, case_000065_support, case_000065_seq, case_000065_b,
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
private theorem case_000065_sourceAgrees :
    SourceAgrees case_000065_support case_000065_rank.val case_000065_mask := by
  intro hlt
  have hrank : (⟨case_000065_rank.val, hlt⟩ : Fin numPairWords) = case_000065_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000065_rank.val, hlt⟩ case_000065_mask =
        case_000065_seq := by
    simpa [hrank] using case_000065_seqAtRank
  simp [SourceChecks, hseq, case_000065_support,
    checkTranslationConstraintSource, case_000065_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000065_rows :
    EqEqPosVarFirstRows case_000065_support case_000065_rank.val case_000065_mask := by
  intro hlt
  have hrank : (⟨case_000065_rank.val, hlt⟩ : Fin numPairWords) = case_000065_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000065_rank.val, hlt⟩ case_000065_mask =
        case_000065_seq := by
    simpa [hrank] using case_000065_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000065_rank.val, hlt⟩ case_000065_mask =
        case_000065_b := by
    simpa [hrank] using case_000065_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000065_support case_000065_rank.val hlt
          case_000065_mask = case_000065_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000065_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000065_support case_000065_rank.val hlt
          case_000065_mask = case_000065_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000065_secondLine_eq]
  have case_000065_rowFirst :
      EqEqPosRow (FirstLineAt case_000065_support case_000065_rank.val hlt case_000065_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000065_firstLine, EqEqPosRow]
  have case_000065_fixedSecond :
      FixedRow (SecondLineAt case_000065_support case_000065_rank.val hlt case_000065_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000065_secondLine, FixedRow]
  exact ⟨case_000065_rowFirst, case_000065_fixedSecond⟩

private theorem case_000065_existsRows :
    ExistsEqEqPosVarFirstRows case_000065_rank.val case_000065_mask :=
  ⟨case_000065_support, case_000065_sourceAgrees, case_000065_rows⟩

private theorem case_000065_covered :
    RowPropertyParametricCovered case_000065_rank.val case_000065_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000065_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000066_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000066_mask : SignMask := ⟨31, by decide⟩
private def case_000066_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000066_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000066_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (20/9) }
private def case_000066_firstLine : StrictLin2 := { a := (-37/55), b := (-37/55), c := (-261/55) }
private def case_000066_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000066_rankWord :
    rankPairWord? case_000066_word = some case_000066_rank := by
  decide

private theorem case_000066_unrank :
    unrankPairWord case_000066_rank = case_000066_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000066_word case_000066_rank).1
    case_000066_rankWord |>.symm

private theorem case_000066_seqChoice :
    translationChoiceSeq case_000066_word case_000066_mask = case_000066_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000066_seqAtRank :
    translationSeqAtRankMask case_000066_rank case_000066_mask = case_000066_seq := by
  rw [translationSeqAtRankMask, case_000066_unrank]
  exact case_000066_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000066_bAtRank :
    translationBAtRankMask case_000066_rank case_000066_mask = case_000066_b := by
  rw [translationBAtRankMask, case_000066_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000066_b, case_000066_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000066_firstLine_eq :
    case_000066_support.firstLine case_000066_seq case_000066_b = case_000066_firstLine := by
  norm_num [case_000066_firstLine, case_000066_support, case_000066_seq, case_000066_b,
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
private theorem case_000066_secondLine_eq :
    case_000066_support.secondLine case_000066_seq case_000066_b = case_000066_secondLine := by
  norm_num [case_000066_secondLine, case_000066_support, case_000066_seq, case_000066_b,
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
private theorem case_000066_sourceAgrees :
    SourceAgrees case_000066_support case_000066_rank.val case_000066_mask := by
  intro hlt
  have hrank : (⟨case_000066_rank.val, hlt⟩ : Fin numPairWords) = case_000066_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000066_rank.val, hlt⟩ case_000066_mask =
        case_000066_seq := by
    simpa [hrank] using case_000066_seqAtRank
  simp [SourceChecks, hseq, case_000066_support,
    checkTranslationConstraintSource, case_000066_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000066_rows :
    EqEqPosVarFirstRows case_000066_support case_000066_rank.val case_000066_mask := by
  intro hlt
  have hrank : (⟨case_000066_rank.val, hlt⟩ : Fin numPairWords) = case_000066_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000066_rank.val, hlt⟩ case_000066_mask =
        case_000066_seq := by
    simpa [hrank] using case_000066_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000066_rank.val, hlt⟩ case_000066_mask =
        case_000066_b := by
    simpa [hrank] using case_000066_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000066_support case_000066_rank.val hlt
          case_000066_mask = case_000066_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000066_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000066_support case_000066_rank.val hlt
          case_000066_mask = case_000066_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000066_secondLine_eq]
  have case_000066_rowFirst :
      EqEqPosRow (FirstLineAt case_000066_support case_000066_rank.val hlt case_000066_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000066_firstLine, EqEqPosRow]
  have case_000066_fixedSecond :
      FixedRow (SecondLineAt case_000066_support case_000066_rank.val hlt case_000066_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000066_secondLine, FixedRow]
  exact ⟨case_000066_rowFirst, case_000066_fixedSecond⟩

private theorem case_000066_existsRows :
    ExistsEqEqPosVarFirstRows case_000066_rank.val case_000066_mask :=
  ⟨case_000066_support, case_000066_sourceAgrees, case_000066_rows⟩

private theorem case_000066_covered :
    RowPropertyParametricCovered case_000066_rank.val case_000066_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000066_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000067_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000067_mask : SignMask := ⟨45, by decide⟩
private def case_000067_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000067_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000067_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-20/9) }
private def case_000067_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000067_secondLine : StrictLin2 := { a := (5/26), b := (-5/26), c := (-214/39) }

private theorem case_000067_rankWord :
    rankPairWord? case_000067_word = some case_000067_rank := by
  decide

private theorem case_000067_unrank :
    unrankPairWord case_000067_rank = case_000067_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000067_word case_000067_rank).1
    case_000067_rankWord |>.symm

private theorem case_000067_seqChoice :
    translationChoiceSeq case_000067_word case_000067_mask = case_000067_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000067_seqAtRank :
    translationSeqAtRankMask case_000067_rank case_000067_mask = case_000067_seq := by
  rw [translationSeqAtRankMask, case_000067_unrank]
  exact case_000067_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000067_bAtRank :
    translationBAtRankMask case_000067_rank case_000067_mask = case_000067_b := by
  rw [translationBAtRankMask, case_000067_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000067_b, case_000067_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000067_firstLine_eq :
    case_000067_support.firstLine case_000067_seq case_000067_b = case_000067_firstLine := by
  norm_num [case_000067_firstLine, case_000067_support, case_000067_seq, case_000067_b,
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
private theorem case_000067_secondLine_eq :
    case_000067_support.secondLine case_000067_seq case_000067_b = case_000067_secondLine := by
  norm_num [case_000067_secondLine, case_000067_support, case_000067_seq, case_000067_b,
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
private theorem case_000067_sourceAgrees :
    SourceAgrees case_000067_support case_000067_rank.val case_000067_mask := by
  intro hlt
  have hrank : (⟨case_000067_rank.val, hlt⟩ : Fin numPairWords) = case_000067_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000067_rank.val, hlt⟩ case_000067_mask =
        case_000067_seq := by
    simpa [hrank] using case_000067_seqAtRank
  simp [SourceChecks, hseq, case_000067_support,
    checkTranslationConstraintSource, case_000067_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000067_rows :
    OppMinusOneVarSecondRows case_000067_support case_000067_rank.val case_000067_mask := by
  intro hlt
  have hrank : (⟨case_000067_rank.val, hlt⟩ : Fin numPairWords) = case_000067_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000067_rank.val, hlt⟩ case_000067_mask =
        case_000067_seq := by
    simpa [hrank] using case_000067_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000067_rank.val, hlt⟩ case_000067_mask =
        case_000067_b := by
    simpa [hrank] using case_000067_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000067_support case_000067_rank.val hlt
          case_000067_mask = case_000067_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000067_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000067_support case_000067_rank.val hlt
          case_000067_mask = case_000067_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000067_secondLine_eq]
  have case_000067_fixedFirst :
      FixedRow (FirstLineAt case_000067_support case_000067_rank.val hlt case_000067_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000067_firstLine, FixedRow]
  have case_000067_rowSecond :
      OppNegRow (SecondLineAt case_000067_support case_000067_rank.val hlt case_000067_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000067_secondLine, OppNegRow]
  exact ⟨case_000067_fixedFirst, case_000067_rowSecond⟩

private theorem case_000067_existsRows :
    ExistsOppMinusOneVarSecondRows case_000067_rank.val case_000067_mask :=
  ⟨case_000067_support, case_000067_sourceAgrees, case_000067_rows⟩

private theorem case_000067_covered :
    RowPropertyParametricCovered case_000067_rank.val case_000067_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000067_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000068_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000068_mask : SignMask := ⟨54, by decide⟩
private def case_000068_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000068_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000068_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (116/9) }
private def case_000068_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000068_secondLine : StrictLin2 := { a := (-13/154), b := (13/154), c := (-124/231) }

private theorem case_000068_rankWord :
    rankPairWord? case_000068_word = some case_000068_rank := by
  decide

private theorem case_000068_unrank :
    unrankPairWord case_000068_rank = case_000068_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000068_word case_000068_rank).1
    case_000068_rankWord |>.symm

private theorem case_000068_seqChoice :
    translationChoiceSeq case_000068_word case_000068_mask = case_000068_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000068_seqAtRank :
    translationSeqAtRankMask case_000068_rank case_000068_mask = case_000068_seq := by
  rw [translationSeqAtRankMask, case_000068_unrank]
  exact case_000068_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000068_bAtRank :
    translationBAtRankMask case_000068_rank case_000068_mask = case_000068_b := by
  rw [translationBAtRankMask, case_000068_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000068_b, case_000068_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000068_firstLine_eq :
    case_000068_support.firstLine case_000068_seq case_000068_b = case_000068_firstLine := by
  norm_num [case_000068_firstLine, case_000068_support, case_000068_seq, case_000068_b,
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
private theorem case_000068_secondLine_eq :
    case_000068_support.secondLine case_000068_seq case_000068_b = case_000068_secondLine := by
  norm_num [case_000068_secondLine, case_000068_support, case_000068_seq, case_000068_b,
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
private theorem case_000068_sourceAgrees :
    SourceAgrees case_000068_support case_000068_rank.val case_000068_mask := by
  intro hlt
  have hrank : (⟨case_000068_rank.val, hlt⟩ : Fin numPairWords) = case_000068_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000068_rank.val, hlt⟩ case_000068_mask =
        case_000068_seq := by
    simpa [hrank] using case_000068_seqAtRank
  simp [SourceChecks, hseq, case_000068_support,
    checkTranslationConstraintSource, case_000068_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000068_rows :
    OppOneMinusVarSecondRows case_000068_support case_000068_rank.val case_000068_mask := by
  intro hlt
  have hrank : (⟨case_000068_rank.val, hlt⟩ : Fin numPairWords) = case_000068_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000068_rank.val, hlt⟩ case_000068_mask =
        case_000068_seq := by
    simpa [hrank] using case_000068_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000068_rank.val, hlt⟩ case_000068_mask =
        case_000068_b := by
    simpa [hrank] using case_000068_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000068_support case_000068_rank.val hlt
          case_000068_mask = case_000068_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000068_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000068_support case_000068_rank.val hlt
          case_000068_mask = case_000068_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000068_secondLine_eq]
  have case_000068_fixedFirst :
      FixedRow (FirstLineAt case_000068_support case_000068_rank.val hlt case_000068_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000068_firstLine, FixedRow]
  have case_000068_rowSecond :
      OppPosRow (SecondLineAt case_000068_support case_000068_rank.val hlt case_000068_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000068_secondLine, OppPosRow]
  exact ⟨case_000068_fixedFirst, case_000068_rowSecond⟩

private theorem case_000068_existsRows :
    ExistsOppOneMinusVarSecondRows case_000068_rank.val case_000068_mask :=
  ⟨case_000068_support, case_000068_sourceAgrees, case_000068_rows⟩

private theorem case_000068_covered :
    RowPropertyParametricCovered case_000068_rank.val case_000068_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000068_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000069_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000069_mask : SignMask := ⟨55, by decide⟩
private def case_000069_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000069_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000069_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (116/9) }
private def case_000069_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000069_secondLine : StrictLin2 := { a := (-13/18), b := (13/18), c := (-79/27) }

private theorem case_000069_rankWord :
    rankPairWord? case_000069_word = some case_000069_rank := by
  decide

private theorem case_000069_unrank :
    unrankPairWord case_000069_rank = case_000069_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000069_word case_000069_rank).1
    case_000069_rankWord |>.symm

private theorem case_000069_seqChoice :
    translationChoiceSeq case_000069_word case_000069_mask = case_000069_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000069_seqAtRank :
    translationSeqAtRankMask case_000069_rank case_000069_mask = case_000069_seq := by
  rw [translationSeqAtRankMask, case_000069_unrank]
  exact case_000069_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000069_bAtRank :
    translationBAtRankMask case_000069_rank case_000069_mask = case_000069_b := by
  rw [translationBAtRankMask, case_000069_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000069_b, case_000069_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000069_firstLine_eq :
    case_000069_support.firstLine case_000069_seq case_000069_b = case_000069_firstLine := by
  norm_num [case_000069_firstLine, case_000069_support, case_000069_seq, case_000069_b,
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
private theorem case_000069_secondLine_eq :
    case_000069_support.secondLine case_000069_seq case_000069_b = case_000069_secondLine := by
  norm_num [case_000069_secondLine, case_000069_support, case_000069_seq, case_000069_b,
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
private theorem case_000069_sourceAgrees :
    SourceAgrees case_000069_support case_000069_rank.val case_000069_mask := by
  intro hlt
  have hrank : (⟨case_000069_rank.val, hlt⟩ : Fin numPairWords) = case_000069_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000069_rank.val, hlt⟩ case_000069_mask =
        case_000069_seq := by
    simpa [hrank] using case_000069_seqAtRank
  simp [SourceChecks, hseq, case_000069_support,
    checkTranslationConstraintSource, case_000069_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000069_rows :
    OppOneMinusVarSecondRows case_000069_support case_000069_rank.val case_000069_mask := by
  intro hlt
  have hrank : (⟨case_000069_rank.val, hlt⟩ : Fin numPairWords) = case_000069_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000069_rank.val, hlt⟩ case_000069_mask =
        case_000069_seq := by
    simpa [hrank] using case_000069_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000069_rank.val, hlt⟩ case_000069_mask =
        case_000069_b := by
    simpa [hrank] using case_000069_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000069_support case_000069_rank.val hlt
          case_000069_mask = case_000069_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000069_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000069_support case_000069_rank.val hlt
          case_000069_mask = case_000069_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000069_secondLine_eq]
  have case_000069_fixedFirst :
      FixedRow (FirstLineAt case_000069_support case_000069_rank.val hlt case_000069_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000069_firstLine, FixedRow]
  have case_000069_rowSecond :
      OppPosRow (SecondLineAt case_000069_support case_000069_rank.val hlt case_000069_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000069_secondLine, OppPosRow]
  exact ⟨case_000069_fixedFirst, case_000069_rowSecond⟩

private theorem case_000069_existsRows :
    ExistsOppOneMinusVarSecondRows case_000069_rank.val case_000069_mask :=
  ⟨case_000069_support, case_000069_sourceAgrees, case_000069_rows⟩

private theorem case_000069_covered :
    RowPropertyParametricCovered case_000069_rank.val case_000069_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000069_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000070_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000070_mask : SignMask := ⟨63, by decide⟩
private def case_000070_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000070_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000070_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (68/9) }
private def case_000070_firstLine : StrictLin2 := { a := (-25/67), b := (-25/67), c := (-57/67) }
private def case_000070_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000070_rankWord :
    rankPairWord? case_000070_word = some case_000070_rank := by
  decide

private theorem case_000070_unrank :
    unrankPairWord case_000070_rank = case_000070_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000070_word case_000070_rank).1
    case_000070_rankWord |>.symm

private theorem case_000070_seqChoice :
    translationChoiceSeq case_000070_word case_000070_mask = case_000070_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000070_seqAtRank :
    translationSeqAtRankMask case_000070_rank case_000070_mask = case_000070_seq := by
  rw [translationSeqAtRankMask, case_000070_unrank]
  exact case_000070_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000070_bAtRank :
    translationBAtRankMask case_000070_rank case_000070_mask = case_000070_b := by
  rw [translationBAtRankMask, case_000070_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000070_b, case_000070_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000070_firstLine_eq :
    case_000070_support.firstLine case_000070_seq case_000070_b = case_000070_firstLine := by
  norm_num [case_000070_firstLine, case_000070_support, case_000070_seq, case_000070_b,
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
private theorem case_000070_secondLine_eq :
    case_000070_support.secondLine case_000070_seq case_000070_b = case_000070_secondLine := by
  norm_num [case_000070_secondLine, case_000070_support, case_000070_seq, case_000070_b,
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
private theorem case_000070_sourceAgrees :
    SourceAgrees case_000070_support case_000070_rank.val case_000070_mask := by
  intro hlt
  have hrank : (⟨case_000070_rank.val, hlt⟩ : Fin numPairWords) = case_000070_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000070_rank.val, hlt⟩ case_000070_mask =
        case_000070_seq := by
    simpa [hrank] using case_000070_seqAtRank
  simp [SourceChecks, hseq, case_000070_support,
    checkTranslationConstraintSource, case_000070_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000070_rows :
    EqEqPosVarFirstRows case_000070_support case_000070_rank.val case_000070_mask := by
  intro hlt
  have hrank : (⟨case_000070_rank.val, hlt⟩ : Fin numPairWords) = case_000070_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000070_rank.val, hlt⟩ case_000070_mask =
        case_000070_seq := by
    simpa [hrank] using case_000070_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000070_rank.val, hlt⟩ case_000070_mask =
        case_000070_b := by
    simpa [hrank] using case_000070_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000070_support case_000070_rank.val hlt
          case_000070_mask = case_000070_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000070_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000070_support case_000070_rank.val hlt
          case_000070_mask = case_000070_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000070_secondLine_eq]
  have case_000070_rowFirst :
      EqEqPosRow (FirstLineAt case_000070_support case_000070_rank.val hlt case_000070_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000070_firstLine, EqEqPosRow]
  have case_000070_fixedSecond :
      FixedRow (SecondLineAt case_000070_support case_000070_rank.val hlt case_000070_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000070_secondLine, FixedRow]
  exact ⟨case_000070_rowFirst, case_000070_fixedSecond⟩

private theorem case_000070_existsRows :
    ExistsEqEqPosVarFirstRows case_000070_rank.val case_000070_mask :=
  ⟨case_000070_support, case_000070_sourceAgrees, case_000070_rows⟩

private theorem case_000070_covered :
    RowPropertyParametricCovered case_000070_rank.val case_000070_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000070_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000071_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000071_mask : SignMask := ⟨8, by decide⟩
private def case_000071_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000071_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000071_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (-100/9) }
private def case_000071_firstLine : StrictLin2 := { a := -1, b := -1, c := -83 }
private def case_000071_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000071_rankWord :
    rankPairWord? case_000071_word = some case_000071_rank := by
  decide

private theorem case_000071_unrank :
    unrankPairWord case_000071_rank = case_000071_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000071_word case_000071_rank).1
    case_000071_rankWord |>.symm

private theorem case_000071_seqChoice :
    translationChoiceSeq case_000071_word case_000071_mask = case_000071_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000071_seqAtRank :
    translationSeqAtRankMask case_000071_rank case_000071_mask = case_000071_seq := by
  rw [translationSeqAtRankMask, case_000071_unrank]
  exact case_000071_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000071_bAtRank :
    translationBAtRankMask case_000071_rank case_000071_mask = case_000071_b := by
  rw [translationBAtRankMask, case_000071_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000071_b, case_000071_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000071_firstLine_eq :
    case_000071_support.firstLine case_000071_seq case_000071_b = case_000071_firstLine := by
  norm_num [case_000071_firstLine, case_000071_support, case_000071_seq, case_000071_b,
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
private theorem case_000071_secondLine_eq :
    case_000071_support.secondLine case_000071_seq case_000071_b = case_000071_secondLine := by
  norm_num [case_000071_secondLine, case_000071_support, case_000071_seq, case_000071_b,
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
private theorem case_000071_sourceAgrees :
    SourceAgrees case_000071_support case_000071_rank.val case_000071_mask := by
  intro hlt
  have hrank : (⟨case_000071_rank.val, hlt⟩ : Fin numPairWords) = case_000071_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000071_rank.val, hlt⟩ case_000071_mask =
        case_000071_seq := by
    simpa [hrank] using case_000071_seqAtRank
  simp [SourceChecks, hseq, case_000071_support,
    checkTranslationConstraintSource, case_000071_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000071_rows :
    EqEqPosVarFirstRows case_000071_support case_000071_rank.val case_000071_mask := by
  intro hlt
  have hrank : (⟨case_000071_rank.val, hlt⟩ : Fin numPairWords) = case_000071_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000071_rank.val, hlt⟩ case_000071_mask =
        case_000071_seq := by
    simpa [hrank] using case_000071_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000071_rank.val, hlt⟩ case_000071_mask =
        case_000071_b := by
    simpa [hrank] using case_000071_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000071_support case_000071_rank.val hlt
          case_000071_mask = case_000071_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000071_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000071_support case_000071_rank.val hlt
          case_000071_mask = case_000071_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000071_secondLine_eq]
  have case_000071_rowFirst :
      EqEqPosRow (FirstLineAt case_000071_support case_000071_rank.val hlt case_000071_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000071_firstLine, EqEqPosRow]
  have case_000071_fixedSecond :
      FixedRow (SecondLineAt case_000071_support case_000071_rank.val hlt case_000071_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000071_secondLine, FixedRow]
  exact ⟨case_000071_rowFirst, case_000071_fixedSecond⟩

private theorem case_000071_existsRows :
    ExistsEqEqPosVarFirstRows case_000071_rank.val case_000071_mask :=
  ⟨case_000071_support, case_000071_sourceAgrees, case_000071_rows⟩

private theorem case_000071_covered :
    RowPropertyParametricCovered case_000071_rank.val case_000071_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000071_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000072_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000072_mask : SignMask := ⟨9, by decide⟩
private def case_000072_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000072_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000072_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (-100/9) }
private def case_000072_firstLine : StrictLin2 := { a := -1, b := -1, c := -47 }
private def case_000072_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000072_rankWord :
    rankPairWord? case_000072_word = some case_000072_rank := by
  decide

private theorem case_000072_unrank :
    unrankPairWord case_000072_rank = case_000072_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000072_word case_000072_rank).1
    case_000072_rankWord |>.symm

private theorem case_000072_seqChoice :
    translationChoiceSeq case_000072_word case_000072_mask = case_000072_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000072_seqAtRank :
    translationSeqAtRankMask case_000072_rank case_000072_mask = case_000072_seq := by
  rw [translationSeqAtRankMask, case_000072_unrank]
  exact case_000072_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000072_bAtRank :
    translationBAtRankMask case_000072_rank case_000072_mask = case_000072_b := by
  rw [translationBAtRankMask, case_000072_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000072_b, case_000072_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000072_firstLine_eq :
    case_000072_support.firstLine case_000072_seq case_000072_b = case_000072_firstLine := by
  norm_num [case_000072_firstLine, case_000072_support, case_000072_seq, case_000072_b,
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
private theorem case_000072_secondLine_eq :
    case_000072_support.secondLine case_000072_seq case_000072_b = case_000072_secondLine := by
  norm_num [case_000072_secondLine, case_000072_support, case_000072_seq, case_000072_b,
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
private theorem case_000072_sourceAgrees :
    SourceAgrees case_000072_support case_000072_rank.val case_000072_mask := by
  intro hlt
  have hrank : (⟨case_000072_rank.val, hlt⟩ : Fin numPairWords) = case_000072_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000072_rank.val, hlt⟩ case_000072_mask =
        case_000072_seq := by
    simpa [hrank] using case_000072_seqAtRank
  simp [SourceChecks, hseq, case_000072_support,
    checkTranslationConstraintSource, case_000072_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000072_rows :
    EqEqPosVarFirstRows case_000072_support case_000072_rank.val case_000072_mask := by
  intro hlt
  have hrank : (⟨case_000072_rank.val, hlt⟩ : Fin numPairWords) = case_000072_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000072_rank.val, hlt⟩ case_000072_mask =
        case_000072_seq := by
    simpa [hrank] using case_000072_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000072_rank.val, hlt⟩ case_000072_mask =
        case_000072_b := by
    simpa [hrank] using case_000072_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000072_support case_000072_rank.val hlt
          case_000072_mask = case_000072_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000072_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000072_support case_000072_rank.val hlt
          case_000072_mask = case_000072_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000072_secondLine_eq]
  have case_000072_rowFirst :
      EqEqPosRow (FirstLineAt case_000072_support case_000072_rank.val hlt case_000072_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000072_firstLine, EqEqPosRow]
  have case_000072_fixedSecond :
      FixedRow (SecondLineAt case_000072_support case_000072_rank.val hlt case_000072_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000072_secondLine, FixedRow]
  exact ⟨case_000072_rowFirst, case_000072_fixedSecond⟩

private theorem case_000072_existsRows :
    ExistsEqEqPosVarFirstRows case_000072_rank.val case_000072_mask :=
  ⟨case_000072_support, case_000072_sourceAgrees, case_000072_rows⟩

private theorem case_000072_covered :
    RowPropertyParametricCovered case_000072_rank.val case_000072_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000072_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000073_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000073_mask : SignMask := ⟨16, by decide⟩
private def case_000073_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000073_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000073_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000073_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000073_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000073_rankWord :
    rankPairWord? case_000073_word = some case_000073_rank := by
  decide

private theorem case_000073_unrank :
    unrankPairWord case_000073_rank = case_000073_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000073_word case_000073_rank).1
    case_000073_rankWord |>.symm

private theorem case_000073_seqChoice :
    translationChoiceSeq case_000073_word case_000073_mask = case_000073_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000073_seqAtRank :
    translationSeqAtRankMask case_000073_rank case_000073_mask = case_000073_seq := by
  rw [translationSeqAtRankMask, case_000073_unrank]
  exact case_000073_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000073_bAtRank :
    translationBAtRankMask case_000073_rank case_000073_mask = case_000073_b := by
  rw [translationBAtRankMask, case_000073_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000073_b, case_000073_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000073_firstLine_eq :
    case_000073_support.firstLine case_000073_seq case_000073_b = case_000073_firstLine := by
  norm_num [case_000073_firstLine, case_000073_support, case_000073_seq, case_000073_b,
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
private theorem case_000073_secondLine_eq :
    case_000073_support.secondLine case_000073_seq case_000073_b = case_000073_secondLine := by
  norm_num [case_000073_secondLine, case_000073_support, case_000073_seq, case_000073_b,
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
private theorem case_000073_sourceAgrees :
    SourceAgrees case_000073_support case_000073_rank.val case_000073_mask := by
  intro hlt
  have hrank : (⟨case_000073_rank.val, hlt⟩ : Fin numPairWords) = case_000073_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000073_rank.val, hlt⟩ case_000073_mask =
        case_000073_seq := by
    simpa [hrank] using case_000073_seqAtRank
  simp [SourceChecks, hseq, case_000073_support,
    checkTranslationConstraintSource, case_000073_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000073_rows :
    EqEqPosVarFirstRows case_000073_support case_000073_rank.val case_000073_mask := by
  intro hlt
  have hrank : (⟨case_000073_rank.val, hlt⟩ : Fin numPairWords) = case_000073_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000073_rank.val, hlt⟩ case_000073_mask =
        case_000073_seq := by
    simpa [hrank] using case_000073_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000073_rank.val, hlt⟩ case_000073_mask =
        case_000073_b := by
    simpa [hrank] using case_000073_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000073_support case_000073_rank.val hlt
          case_000073_mask = case_000073_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000073_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000073_support case_000073_rank.val hlt
          case_000073_mask = case_000073_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000073_secondLine_eq]
  have case_000073_rowFirst :
      EqEqPosRow (FirstLineAt case_000073_support case_000073_rank.val hlt case_000073_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000073_firstLine, EqEqPosRow]
  have case_000073_fixedSecond :
      FixedRow (SecondLineAt case_000073_support case_000073_rank.val hlt case_000073_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000073_secondLine, FixedRow]
  exact ⟨case_000073_rowFirst, case_000073_fixedSecond⟩

private theorem case_000073_existsRows :
    ExistsEqEqPosVarFirstRows case_000073_rank.val case_000073_mask :=
  ⟨case_000073_support, case_000073_sourceAgrees, case_000073_rows⟩

private theorem case_000073_covered :
    RowPropertyParametricCovered case_000073_rank.val case_000073_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000073_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000074_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000074_mask : SignMask := ⟨18, by decide⟩
private def case_000074_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000074_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000074_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000074_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000074_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000074_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000074_rankWord :
    rankPairWord? case_000074_word = some case_000074_rank := by
  decide

private theorem case_000074_unrank :
    unrankPairWord case_000074_rank = case_000074_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000074_word case_000074_rank).1
    case_000074_rankWord |>.symm

private theorem case_000074_seqChoice :
    translationChoiceSeq case_000074_word case_000074_mask = case_000074_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000074_seqAtRank :
    translationSeqAtRankMask case_000074_rank case_000074_mask = case_000074_seq := by
  rw [translationSeqAtRankMask, case_000074_unrank]
  exact case_000074_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000074_bAtRank :
    translationBAtRankMask case_000074_rank case_000074_mask = case_000074_b := by
  rw [translationBAtRankMask, case_000074_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000074_b, case_000074_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000074_firstLine_eq :
    case_000074_support.firstLine case_000074_seq case_000074_b = case_000074_firstLine := by
  norm_num [case_000074_firstLine, case_000074_support, case_000074_seq, case_000074_b,
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
private theorem case_000074_secondLine_eq :
    case_000074_support.secondLine case_000074_seq case_000074_b = case_000074_secondLine := by
  norm_num [case_000074_secondLine, case_000074_support, case_000074_seq, case_000074_b,
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
private theorem case_000074_sourceAgrees :
    SourceAgrees case_000074_support case_000074_rank.val case_000074_mask := by
  intro hlt
  have hrank : (⟨case_000074_rank.val, hlt⟩ : Fin numPairWords) = case_000074_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000074_rank.val, hlt⟩ case_000074_mask =
        case_000074_seq := by
    simpa [hrank] using case_000074_seqAtRank
  simp [SourceChecks, hseq, case_000074_support,
    checkTranslationConstraintSource, case_000074_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000074_rows :
    EqEqPosVarFirstRows case_000074_support case_000074_rank.val case_000074_mask := by
  intro hlt
  have hrank : (⟨case_000074_rank.val, hlt⟩ : Fin numPairWords) = case_000074_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000074_rank.val, hlt⟩ case_000074_mask =
        case_000074_seq := by
    simpa [hrank] using case_000074_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000074_rank.val, hlt⟩ case_000074_mask =
        case_000074_b := by
    simpa [hrank] using case_000074_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000074_support case_000074_rank.val hlt
          case_000074_mask = case_000074_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000074_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000074_support case_000074_rank.val hlt
          case_000074_mask = case_000074_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000074_secondLine_eq]
  have case_000074_rowFirst :
      EqEqPosRow (FirstLineAt case_000074_support case_000074_rank.val hlt case_000074_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000074_firstLine, EqEqPosRow]
  have case_000074_fixedSecond :
      FixedRow (SecondLineAt case_000074_support case_000074_rank.val hlt case_000074_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000074_secondLine, FixedRow]
  exact ⟨case_000074_rowFirst, case_000074_fixedSecond⟩

private theorem case_000074_existsRows :
    ExistsEqEqPosVarFirstRows case_000074_rank.val case_000074_mask :=
  ⟨case_000074_support, case_000074_sourceAgrees, case_000074_rows⟩

private theorem case_000074_covered :
    RowPropertyParametricCovered case_000074_rank.val case_000074_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000074_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000075_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000075_mask : SignMask := ⟨22, by decide⟩
private def case_000075_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000075_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000075_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000075_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000075_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000075_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000075_rankWord :
    rankPairWord? case_000075_word = some case_000075_rank := by
  decide

private theorem case_000075_unrank :
    unrankPairWord case_000075_rank = case_000075_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000075_word case_000075_rank).1
    case_000075_rankWord |>.symm

private theorem case_000075_seqChoice :
    translationChoiceSeq case_000075_word case_000075_mask = case_000075_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000075_seqAtRank :
    translationSeqAtRankMask case_000075_rank case_000075_mask = case_000075_seq := by
  rw [translationSeqAtRankMask, case_000075_unrank]
  exact case_000075_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000075_bAtRank :
    translationBAtRankMask case_000075_rank case_000075_mask = case_000075_b := by
  rw [translationBAtRankMask, case_000075_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000075_b, case_000075_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000075_firstLine_eq :
    case_000075_support.firstLine case_000075_seq case_000075_b = case_000075_firstLine := by
  norm_num [case_000075_firstLine, case_000075_support, case_000075_seq, case_000075_b,
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
private theorem case_000075_secondLine_eq :
    case_000075_support.secondLine case_000075_seq case_000075_b = case_000075_secondLine := by
  norm_num [case_000075_secondLine, case_000075_support, case_000075_seq, case_000075_b,
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
private theorem case_000075_sourceAgrees :
    SourceAgrees case_000075_support case_000075_rank.val case_000075_mask := by
  intro hlt
  have hrank : (⟨case_000075_rank.val, hlt⟩ : Fin numPairWords) = case_000075_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000075_rank.val, hlt⟩ case_000075_mask =
        case_000075_seq := by
    simpa [hrank] using case_000075_seqAtRank
  simp [SourceChecks, hseq, case_000075_support,
    checkTranslationConstraintSource, case_000075_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000075_rows :
    EqEqPosVarFirstRows case_000075_support case_000075_rank.val case_000075_mask := by
  intro hlt
  have hrank : (⟨case_000075_rank.val, hlt⟩ : Fin numPairWords) = case_000075_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000075_rank.val, hlt⟩ case_000075_mask =
        case_000075_seq := by
    simpa [hrank] using case_000075_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000075_rank.val, hlt⟩ case_000075_mask =
        case_000075_b := by
    simpa [hrank] using case_000075_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000075_support case_000075_rank.val hlt
          case_000075_mask = case_000075_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000075_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000075_support case_000075_rank.val hlt
          case_000075_mask = case_000075_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000075_secondLine_eq]
  have case_000075_rowFirst :
      EqEqPosRow (FirstLineAt case_000075_support case_000075_rank.val hlt case_000075_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000075_firstLine, EqEqPosRow]
  have case_000075_fixedSecond :
      FixedRow (SecondLineAt case_000075_support case_000075_rank.val hlt case_000075_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000075_secondLine, FixedRow]
  exact ⟨case_000075_rowFirst, case_000075_fixedSecond⟩

private theorem case_000075_existsRows :
    ExistsEqEqPosVarFirstRows case_000075_rank.val case_000075_mask :=
  ⟨case_000075_support, case_000075_sourceAgrees, case_000075_rows⟩

private theorem case_000075_covered :
    RowPropertyParametricCovered case_000075_rank.val case_000075_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000075_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000076_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000076_mask : SignMask := ⟨24, by decide⟩
private def case_000076_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000076_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000076_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000076_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000076_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000076_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000076_rankWord :
    rankPairWord? case_000076_word = some case_000076_rank := by
  decide

private theorem case_000076_unrank :
    unrankPairWord case_000076_rank = case_000076_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000076_word case_000076_rank).1
    case_000076_rankWord |>.symm

private theorem case_000076_seqChoice :
    translationChoiceSeq case_000076_word case_000076_mask = case_000076_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000076_seqAtRank :
    translationSeqAtRankMask case_000076_rank case_000076_mask = case_000076_seq := by
  rw [translationSeqAtRankMask, case_000076_unrank]
  exact case_000076_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000076_bAtRank :
    translationBAtRankMask case_000076_rank case_000076_mask = case_000076_b := by
  rw [translationBAtRankMask, case_000076_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000076_b, case_000076_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000076_firstLine_eq :
    case_000076_support.firstLine case_000076_seq case_000076_b = case_000076_firstLine := by
  norm_num [case_000076_firstLine, case_000076_support, case_000076_seq, case_000076_b,
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
private theorem case_000076_secondLine_eq :
    case_000076_support.secondLine case_000076_seq case_000076_b = case_000076_secondLine := by
  norm_num [case_000076_secondLine, case_000076_support, case_000076_seq, case_000076_b,
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
private theorem case_000076_sourceAgrees :
    SourceAgrees case_000076_support case_000076_rank.val case_000076_mask := by
  intro hlt
  have hrank : (⟨case_000076_rank.val, hlt⟩ : Fin numPairWords) = case_000076_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000076_rank.val, hlt⟩ case_000076_mask =
        case_000076_seq := by
    simpa [hrank] using case_000076_seqAtRank
  simp [SourceChecks, hseq, case_000076_support,
    checkTranslationConstraintSource, case_000076_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000076_rows :
    EqEqPosVarFirstRows case_000076_support case_000076_rank.val case_000076_mask := by
  intro hlt
  have hrank : (⟨case_000076_rank.val, hlt⟩ : Fin numPairWords) = case_000076_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000076_rank.val, hlt⟩ case_000076_mask =
        case_000076_seq := by
    simpa [hrank] using case_000076_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000076_rank.val, hlt⟩ case_000076_mask =
        case_000076_b := by
    simpa [hrank] using case_000076_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000076_support case_000076_rank.val hlt
          case_000076_mask = case_000076_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000076_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000076_support case_000076_rank.val hlt
          case_000076_mask = case_000076_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000076_secondLine_eq]
  have case_000076_rowFirst :
      EqEqPosRow (FirstLineAt case_000076_support case_000076_rank.val hlt case_000076_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000076_firstLine, EqEqPosRow]
  have case_000076_fixedSecond :
      FixedRow (SecondLineAt case_000076_support case_000076_rank.val hlt case_000076_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000076_secondLine, FixedRow]
  exact ⟨case_000076_rowFirst, case_000076_fixedSecond⟩

private theorem case_000076_existsRows :
    ExistsEqEqPosVarFirstRows case_000076_rank.val case_000076_mask :=
  ⟨case_000076_support, case_000076_sourceAgrees, case_000076_rows⟩

private theorem case_000076_covered :
    RowPropertyParametricCovered case_000076_rank.val case_000076_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000076_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000077_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000077_mask : SignMask := ⟨28, by decide⟩
private def case_000077_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000077_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000077_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000077_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000077_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000077_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000077_rankWord :
    rankPairWord? case_000077_word = some case_000077_rank := by
  decide

private theorem case_000077_unrank :
    unrankPairWord case_000077_rank = case_000077_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000077_word case_000077_rank).1
    case_000077_rankWord |>.symm

private theorem case_000077_seqChoice :
    translationChoiceSeq case_000077_word case_000077_mask = case_000077_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000077_seqAtRank :
    translationSeqAtRankMask case_000077_rank case_000077_mask = case_000077_seq := by
  rw [translationSeqAtRankMask, case_000077_unrank]
  exact case_000077_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000077_bAtRank :
    translationBAtRankMask case_000077_rank case_000077_mask = case_000077_b := by
  rw [translationBAtRankMask, case_000077_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000077_b, case_000077_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000077_firstLine_eq :
    case_000077_support.firstLine case_000077_seq case_000077_b = case_000077_firstLine := by
  norm_num [case_000077_firstLine, case_000077_support, case_000077_seq, case_000077_b,
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
private theorem case_000077_secondLine_eq :
    case_000077_support.secondLine case_000077_seq case_000077_b = case_000077_secondLine := by
  norm_num [case_000077_secondLine, case_000077_support, case_000077_seq, case_000077_b,
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
private theorem case_000077_sourceAgrees :
    SourceAgrees case_000077_support case_000077_rank.val case_000077_mask := by
  intro hlt
  have hrank : (⟨case_000077_rank.val, hlt⟩ : Fin numPairWords) = case_000077_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000077_rank.val, hlt⟩ case_000077_mask =
        case_000077_seq := by
    simpa [hrank] using case_000077_seqAtRank
  simp [SourceChecks, hseq, case_000077_support,
    checkTranslationConstraintSource, case_000077_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000077_rows :
    OppOneMinusVarFirstRows case_000077_support case_000077_rank.val case_000077_mask := by
  intro hlt
  have hrank : (⟨case_000077_rank.val, hlt⟩ : Fin numPairWords) = case_000077_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000077_rank.val, hlt⟩ case_000077_mask =
        case_000077_seq := by
    simpa [hrank] using case_000077_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000077_rank.val, hlt⟩ case_000077_mask =
        case_000077_b := by
    simpa [hrank] using case_000077_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000077_support case_000077_rank.val hlt
          case_000077_mask = case_000077_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000077_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000077_support case_000077_rank.val hlt
          case_000077_mask = case_000077_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000077_secondLine_eq]
  have case_000077_rowFirst :
      OppPosRow (FirstLineAt case_000077_support case_000077_rank.val hlt case_000077_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000077_firstLine, OppPosRow]
  have case_000077_fixedSecond :
      FixedRow (SecondLineAt case_000077_support case_000077_rank.val hlt case_000077_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000077_secondLine, FixedRow]
  exact ⟨case_000077_rowFirst, case_000077_fixedSecond⟩

private theorem case_000077_existsRows :
    ExistsOppOneMinusVarFirstRows case_000077_rank.val case_000077_mask :=
  ⟨case_000077_support, case_000077_sourceAgrees, case_000077_rows⟩

private theorem case_000077_covered :
    RowPropertyParametricCovered case_000077_rank.val case_000077_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000077_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000078_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000078_mask : SignMask := ⟨30, by decide⟩
private def case_000078_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000078_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000078_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000078_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000078_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000078_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000078_rankWord :
    rankPairWord? case_000078_word = some case_000078_rank := by
  decide

private theorem case_000078_unrank :
    unrankPairWord case_000078_rank = case_000078_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000078_word case_000078_rank).1
    case_000078_rankWord |>.symm

private theorem case_000078_seqChoice :
    translationChoiceSeq case_000078_word case_000078_mask = case_000078_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000078_seqAtRank :
    translationSeqAtRankMask case_000078_rank case_000078_mask = case_000078_seq := by
  rw [translationSeqAtRankMask, case_000078_unrank]
  exact case_000078_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000078_bAtRank :
    translationBAtRankMask case_000078_rank case_000078_mask = case_000078_b := by
  rw [translationBAtRankMask, case_000078_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000078_b, case_000078_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000078_firstLine_eq :
    case_000078_support.firstLine case_000078_seq case_000078_b = case_000078_firstLine := by
  norm_num [case_000078_firstLine, case_000078_support, case_000078_seq, case_000078_b,
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
private theorem case_000078_secondLine_eq :
    case_000078_support.secondLine case_000078_seq case_000078_b = case_000078_secondLine := by
  norm_num [case_000078_secondLine, case_000078_support, case_000078_seq, case_000078_b,
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
private theorem case_000078_sourceAgrees :
    SourceAgrees case_000078_support case_000078_rank.val case_000078_mask := by
  intro hlt
  have hrank : (⟨case_000078_rank.val, hlt⟩ : Fin numPairWords) = case_000078_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000078_rank.val, hlt⟩ case_000078_mask =
        case_000078_seq := by
    simpa [hrank] using case_000078_seqAtRank
  simp [SourceChecks, hseq, case_000078_support,
    checkTranslationConstraintSource, case_000078_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000078_rows :
    EqEqPosVarFirstRows case_000078_support case_000078_rank.val case_000078_mask := by
  intro hlt
  have hrank : (⟨case_000078_rank.val, hlt⟩ : Fin numPairWords) = case_000078_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000078_rank.val, hlt⟩ case_000078_mask =
        case_000078_seq := by
    simpa [hrank] using case_000078_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000078_rank.val, hlt⟩ case_000078_mask =
        case_000078_b := by
    simpa [hrank] using case_000078_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000078_support case_000078_rank.val hlt
          case_000078_mask = case_000078_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000078_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000078_support case_000078_rank.val hlt
          case_000078_mask = case_000078_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000078_secondLine_eq]
  have case_000078_rowFirst :
      EqEqPosRow (FirstLineAt case_000078_support case_000078_rank.val hlt case_000078_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000078_firstLine, EqEqPosRow]
  have case_000078_fixedSecond :
      FixedRow (SecondLineAt case_000078_support case_000078_rank.val hlt case_000078_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000078_secondLine, FixedRow]
  exact ⟨case_000078_rowFirst, case_000078_fixedSecond⟩

private theorem case_000078_existsRows :
    ExistsEqEqPosVarFirstRows case_000078_rank.val case_000078_mask :=
  ⟨case_000078_support, case_000078_sourceAgrees, case_000078_rows⟩

private theorem case_000078_covered :
    RowPropertyParametricCovered case_000078_rank.val case_000078_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000078_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000079_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000079_mask : SignMask := ⟨54, by decide⟩
private def case_000079_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000079_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000079_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def case_000079_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (100/9) }
private def case_000079_firstLine : StrictLin2 := { a := -1, b := 1, c := (-35/17) }
private def case_000079_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000079_rankWord :
    rankPairWord? case_000079_word = some case_000079_rank := by
  decide

private theorem case_000079_unrank :
    unrankPairWord case_000079_rank = case_000079_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000079_word case_000079_rank).1
    case_000079_rankWord |>.symm

private theorem case_000079_seqChoice :
    translationChoiceSeq case_000079_word case_000079_mask = case_000079_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000079_seqAtRank :
    translationSeqAtRankMask case_000079_rank case_000079_mask = case_000079_seq := by
  rw [translationSeqAtRankMask, case_000079_unrank]
  exact case_000079_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000079_bAtRank :
    translationBAtRankMask case_000079_rank case_000079_mask = case_000079_b := by
  rw [translationBAtRankMask, case_000079_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000079_b, case_000079_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000079_firstLine_eq :
    case_000079_support.firstLine case_000079_seq case_000079_b = case_000079_firstLine := by
  norm_num [case_000079_firstLine, case_000079_support, case_000079_seq, case_000079_b,
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
private theorem case_000079_secondLine_eq :
    case_000079_support.secondLine case_000079_seq case_000079_b = case_000079_secondLine := by
  norm_num [case_000079_secondLine, case_000079_support, case_000079_seq, case_000079_b,
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
private theorem case_000079_sourceAgrees :
    SourceAgrees case_000079_support case_000079_rank.val case_000079_mask := by
  intro hlt
  have hrank : (⟨case_000079_rank.val, hlt⟩ : Fin numPairWords) = case_000079_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000079_rank.val, hlt⟩ case_000079_mask =
        case_000079_seq := by
    simpa [hrank] using case_000079_seqAtRank
  simp [SourceChecks, hseq, case_000079_support,
    checkTranslationConstraintSource, case_000079_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000079_rows :
    OppOneMinusVarFirstRows case_000079_support case_000079_rank.val case_000079_mask := by
  intro hlt
  have hrank : (⟨case_000079_rank.val, hlt⟩ : Fin numPairWords) = case_000079_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000079_rank.val, hlt⟩ case_000079_mask =
        case_000079_seq := by
    simpa [hrank] using case_000079_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000079_rank.val, hlt⟩ case_000079_mask =
        case_000079_b := by
    simpa [hrank] using case_000079_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000079_support case_000079_rank.val hlt
          case_000079_mask = case_000079_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000079_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000079_support case_000079_rank.val hlt
          case_000079_mask = case_000079_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000079_secondLine_eq]
  have case_000079_rowFirst :
      OppPosRow (FirstLineAt case_000079_support case_000079_rank.val hlt case_000079_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000079_firstLine, OppPosRow]
  have case_000079_fixedSecond :
      FixedRow (SecondLineAt case_000079_support case_000079_rank.val hlt case_000079_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000079_secondLine, FixedRow]
  exact ⟨case_000079_rowFirst, case_000079_fixedSecond⟩

private theorem case_000079_existsRows :
    ExistsOppOneMinusVarFirstRows case_000079_rank.val case_000079_mask :=
  ⟨case_000079_support, case_000079_sourceAgrees, case_000079_rows⟩

private theorem case_000079_covered :
    RowPropertyParametricCovered case_000079_rank.val case_000079_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000079_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000080_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000080_mask : SignMask := ⟨61, by decide⟩
private def case_000080_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000080_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000080_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000080_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (-20/9) }
private def case_000080_firstLine : StrictLin2 := { a := (-29/63), b := (29/63), c := (-103/189) }
private def case_000080_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000080_rankWord :
    rankPairWord? case_000080_word = some case_000080_rank := by
  decide

private theorem case_000080_unrank :
    unrankPairWord case_000080_rank = case_000080_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000080_word case_000080_rank).1
    case_000080_rankWord |>.symm

private theorem case_000080_seqChoice :
    translationChoiceSeq case_000080_word case_000080_mask = case_000080_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000080_seqAtRank :
    translationSeqAtRankMask case_000080_rank case_000080_mask = case_000080_seq := by
  rw [translationSeqAtRankMask, case_000080_unrank]
  exact case_000080_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000080_bAtRank :
    translationBAtRankMask case_000080_rank case_000080_mask = case_000080_b := by
  rw [translationBAtRankMask, case_000080_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000080_b, case_000080_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000080_firstLine_eq :
    case_000080_support.firstLine case_000080_seq case_000080_b = case_000080_firstLine := by
  norm_num [case_000080_firstLine, case_000080_support, case_000080_seq, case_000080_b,
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
private theorem case_000080_secondLine_eq :
    case_000080_support.secondLine case_000080_seq case_000080_b = case_000080_secondLine := by
  norm_num [case_000080_secondLine, case_000080_support, case_000080_seq, case_000080_b,
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
private theorem case_000080_sourceAgrees :
    SourceAgrees case_000080_support case_000080_rank.val case_000080_mask := by
  intro hlt
  have hrank : (⟨case_000080_rank.val, hlt⟩ : Fin numPairWords) = case_000080_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000080_rank.val, hlt⟩ case_000080_mask =
        case_000080_seq := by
    simpa [hrank] using case_000080_seqAtRank
  simp [SourceChecks, hseq, case_000080_support,
    checkTranslationConstraintSource, case_000080_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000080_rows :
    OppOneMinusVarFirstRows case_000080_support case_000080_rank.val case_000080_mask := by
  intro hlt
  have hrank : (⟨case_000080_rank.val, hlt⟩ : Fin numPairWords) = case_000080_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000080_rank.val, hlt⟩ case_000080_mask =
        case_000080_seq := by
    simpa [hrank] using case_000080_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000080_rank.val, hlt⟩ case_000080_mask =
        case_000080_b := by
    simpa [hrank] using case_000080_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000080_support case_000080_rank.val hlt
          case_000080_mask = case_000080_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000080_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000080_support case_000080_rank.val hlt
          case_000080_mask = case_000080_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000080_secondLine_eq]
  have case_000080_rowFirst :
      OppPosRow (FirstLineAt case_000080_support case_000080_rank.val hlt case_000080_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000080_firstLine, OppPosRow]
  have case_000080_fixedSecond :
      FixedRow (SecondLineAt case_000080_support case_000080_rank.val hlt case_000080_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000080_secondLine, FixedRow]
  exact ⟨case_000080_rowFirst, case_000080_fixedSecond⟩

private theorem case_000080_existsRows :
    ExistsOppOneMinusVarFirstRows case_000080_rank.val case_000080_mask :=
  ⟨case_000080_support, case_000080_sourceAgrees, case_000080_rows⟩

private theorem case_000080_covered :
    RowPropertyParametricCovered case_000080_rank.val case_000080_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000080_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000081_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000081_mask : SignMask := ⟨63, by decide⟩
private def case_000081_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000081_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000081_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000081_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (52/9) }
private def case_000081_firstLine : StrictLin2 := { a := (-29/71), b := (-29/71), c := (-93/71) }
private def case_000081_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000081_rankWord :
    rankPairWord? case_000081_word = some case_000081_rank := by
  decide

private theorem case_000081_unrank :
    unrankPairWord case_000081_rank = case_000081_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000081_word case_000081_rank).1
    case_000081_rankWord |>.symm

private theorem case_000081_seqChoice :
    translationChoiceSeq case_000081_word case_000081_mask = case_000081_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000081_seqAtRank :
    translationSeqAtRankMask case_000081_rank case_000081_mask = case_000081_seq := by
  rw [translationSeqAtRankMask, case_000081_unrank]
  exact case_000081_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000081_bAtRank :
    translationBAtRankMask case_000081_rank case_000081_mask = case_000081_b := by
  rw [translationBAtRankMask, case_000081_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000081_b, case_000081_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000081_firstLine_eq :
    case_000081_support.firstLine case_000081_seq case_000081_b = case_000081_firstLine := by
  norm_num [case_000081_firstLine, case_000081_support, case_000081_seq, case_000081_b,
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
private theorem case_000081_secondLine_eq :
    case_000081_support.secondLine case_000081_seq case_000081_b = case_000081_secondLine := by
  norm_num [case_000081_secondLine, case_000081_support, case_000081_seq, case_000081_b,
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
private theorem case_000081_sourceAgrees :
    SourceAgrees case_000081_support case_000081_rank.val case_000081_mask := by
  intro hlt
  have hrank : (⟨case_000081_rank.val, hlt⟩ : Fin numPairWords) = case_000081_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000081_rank.val, hlt⟩ case_000081_mask =
        case_000081_seq := by
    simpa [hrank] using case_000081_seqAtRank
  simp [SourceChecks, hseq, case_000081_support,
    checkTranslationConstraintSource, case_000081_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000081_rows :
    EqEqPosVarFirstRows case_000081_support case_000081_rank.val case_000081_mask := by
  intro hlt
  have hrank : (⟨case_000081_rank.val, hlt⟩ : Fin numPairWords) = case_000081_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000081_rank.val, hlt⟩ case_000081_mask =
        case_000081_seq := by
    simpa [hrank] using case_000081_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000081_rank.val, hlt⟩ case_000081_mask =
        case_000081_b := by
    simpa [hrank] using case_000081_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000081_support case_000081_rank.val hlt
          case_000081_mask = case_000081_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000081_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000081_support case_000081_rank.val hlt
          case_000081_mask = case_000081_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000081_secondLine_eq]
  have case_000081_rowFirst :
      EqEqPosRow (FirstLineAt case_000081_support case_000081_rank.val hlt case_000081_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000081_firstLine, EqEqPosRow]
  have case_000081_fixedSecond :
      FixedRow (SecondLineAt case_000081_support case_000081_rank.val hlt case_000081_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000081_secondLine, FixedRow]
  exact ⟨case_000081_rowFirst, case_000081_fixedSecond⟩

private theorem case_000081_existsRows :
    ExistsEqEqPosVarFirstRows case_000081_rank.val case_000081_mask :=
  ⟨case_000081_support, case_000081_sourceAgrees, case_000081_rows⟩

private theorem case_000081_covered :
    RowPropertyParametricCovered case_000081_rank.val case_000081_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000081_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000082_rank : Fin numPairWords := ⟨17, by decide⟩
private def case_000082_mask : SignMask := ⟨16, by decide⟩
private def case_000082_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000082_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000082_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000082_b : Vec3 Rat := { x := (-28/27), y := (-380/27), z := (-124/27) }
private def case_000082_firstLine : StrictLin2 := { a := -1, b := -1, c := -35 }
private def case_000082_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000082_rankWord :
    rankPairWord? case_000082_word = some case_000082_rank := by
  decide

private theorem case_000082_unrank :
    unrankPairWord case_000082_rank = case_000082_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000082_word case_000082_rank).1
    case_000082_rankWord |>.symm

private theorem case_000082_seqChoice :
    translationChoiceSeq case_000082_word case_000082_mask = case_000082_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000082_seqAtRank :
    translationSeqAtRankMask case_000082_rank case_000082_mask = case_000082_seq := by
  rw [translationSeqAtRankMask, case_000082_unrank]
  exact case_000082_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000082_bAtRank :
    translationBAtRankMask case_000082_rank case_000082_mask = case_000082_b := by
  rw [translationBAtRankMask, case_000082_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000082_b, case_000082_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000082_firstLine_eq :
    case_000082_support.firstLine case_000082_seq case_000082_b = case_000082_firstLine := by
  norm_num [case_000082_firstLine, case_000082_support, case_000082_seq, case_000082_b,
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
private theorem case_000082_secondLine_eq :
    case_000082_support.secondLine case_000082_seq case_000082_b = case_000082_secondLine := by
  norm_num [case_000082_secondLine, case_000082_support, case_000082_seq, case_000082_b,
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
private theorem case_000082_sourceAgrees :
    SourceAgrees case_000082_support case_000082_rank.val case_000082_mask := by
  intro hlt
  have hrank : (⟨case_000082_rank.val, hlt⟩ : Fin numPairWords) = case_000082_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000082_rank.val, hlt⟩ case_000082_mask =
        case_000082_seq := by
    simpa [hrank] using case_000082_seqAtRank
  simp [SourceChecks, hseq, case_000082_support,
    checkTranslationConstraintSource, case_000082_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000082_rows :
    EqEqPosVarFirstRows case_000082_support case_000082_rank.val case_000082_mask := by
  intro hlt
  have hrank : (⟨case_000082_rank.val, hlt⟩ : Fin numPairWords) = case_000082_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000082_rank.val, hlt⟩ case_000082_mask =
        case_000082_seq := by
    simpa [hrank] using case_000082_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000082_rank.val, hlt⟩ case_000082_mask =
        case_000082_b := by
    simpa [hrank] using case_000082_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000082_support case_000082_rank.val hlt
          case_000082_mask = case_000082_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000082_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000082_support case_000082_rank.val hlt
          case_000082_mask = case_000082_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000082_secondLine_eq]
  have case_000082_rowFirst :
      EqEqPosRow (FirstLineAt case_000082_support case_000082_rank.val hlt case_000082_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000082_firstLine, EqEqPosRow]
  have case_000082_fixedSecond :
      FixedRow (SecondLineAt case_000082_support case_000082_rank.val hlt case_000082_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000082_secondLine, FixedRow]
  exact ⟨case_000082_rowFirst, case_000082_fixedSecond⟩

private theorem case_000082_existsRows :
    ExistsEqEqPosVarFirstRows case_000082_rank.val case_000082_mask :=
  ⟨case_000082_support, case_000082_sourceAgrees, case_000082_rows⟩

private theorem case_000082_covered :
    RowPropertyParametricCovered case_000082_rank.val case_000082_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000082_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000083_rank : Fin numPairWords := ⟨17, by decide⟩
private def case_000083_mask : SignMask := ⟨18, by decide⟩
private def case_000083_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000083_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000083_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000083_b : Vec3 Rat := { x := (-28/27), y := (-380/27), z := (92/27) }
private def case_000083_firstLine : StrictLin2 := { a := -1, b := -1, c := (-137/7) }
private def case_000083_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000083_rankWord :
    rankPairWord? case_000083_word = some case_000083_rank := by
  decide

private theorem case_000083_unrank :
    unrankPairWord case_000083_rank = case_000083_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000083_word case_000083_rank).1
    case_000083_rankWord |>.symm

private theorem case_000083_seqChoice :
    translationChoiceSeq case_000083_word case_000083_mask = case_000083_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000083_seqAtRank :
    translationSeqAtRankMask case_000083_rank case_000083_mask = case_000083_seq := by
  rw [translationSeqAtRankMask, case_000083_unrank]
  exact case_000083_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000083_bAtRank :
    translationBAtRankMask case_000083_rank case_000083_mask = case_000083_b := by
  rw [translationBAtRankMask, case_000083_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000083_b, case_000083_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000083_firstLine_eq :
    case_000083_support.firstLine case_000083_seq case_000083_b = case_000083_firstLine := by
  norm_num [case_000083_firstLine, case_000083_support, case_000083_seq, case_000083_b,
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
private theorem case_000083_secondLine_eq :
    case_000083_support.secondLine case_000083_seq case_000083_b = case_000083_secondLine := by
  norm_num [case_000083_secondLine, case_000083_support, case_000083_seq, case_000083_b,
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
private theorem case_000083_sourceAgrees :
    SourceAgrees case_000083_support case_000083_rank.val case_000083_mask := by
  intro hlt
  have hrank : (⟨case_000083_rank.val, hlt⟩ : Fin numPairWords) = case_000083_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000083_rank.val, hlt⟩ case_000083_mask =
        case_000083_seq := by
    simpa [hrank] using case_000083_seqAtRank
  simp [SourceChecks, hseq, case_000083_support,
    checkTranslationConstraintSource, case_000083_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000083_rows :
    EqEqPosVarFirstRows case_000083_support case_000083_rank.val case_000083_mask := by
  intro hlt
  have hrank : (⟨case_000083_rank.val, hlt⟩ : Fin numPairWords) = case_000083_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000083_rank.val, hlt⟩ case_000083_mask =
        case_000083_seq := by
    simpa [hrank] using case_000083_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000083_rank.val, hlt⟩ case_000083_mask =
        case_000083_b := by
    simpa [hrank] using case_000083_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000083_support case_000083_rank.val hlt
          case_000083_mask = case_000083_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000083_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000083_support case_000083_rank.val hlt
          case_000083_mask = case_000083_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000083_secondLine_eq]
  have case_000083_rowFirst :
      EqEqPosRow (FirstLineAt case_000083_support case_000083_rank.val hlt case_000083_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000083_firstLine, EqEqPosRow]
  have case_000083_fixedSecond :
      FixedRow (SecondLineAt case_000083_support case_000083_rank.val hlt case_000083_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000083_secondLine, FixedRow]
  exact ⟨case_000083_rowFirst, case_000083_fixedSecond⟩

private theorem case_000083_existsRows :
    ExistsEqEqPosVarFirstRows case_000083_rank.val case_000083_mask :=
  ⟨case_000083_support, case_000083_sourceAgrees, case_000083_rows⟩

private theorem case_000083_covered :
    RowPropertyParametricCovered case_000083_rank.val case_000083_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000083_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000084_rank : Fin numPairWords := ⟨17, by decide⟩
private def case_000084_mask : SignMask := ⟨22, by decide⟩
private def case_000084_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000084_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000084_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000084_b : Vec3 Rat := { x := (-172/27), y := (-236/27), z := (236/27) }
private def case_000084_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000084_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000084_rankWord :
    rankPairWord? case_000084_word = some case_000084_rank := by
  decide

private theorem case_000084_unrank :
    unrankPairWord case_000084_rank = case_000084_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000084_word case_000084_rank).1
    case_000084_rankWord |>.symm

private theorem case_000084_seqChoice :
    translationChoiceSeq case_000084_word case_000084_mask = case_000084_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000084_seqAtRank :
    translationSeqAtRankMask case_000084_rank case_000084_mask = case_000084_seq := by
  rw [translationSeqAtRankMask, case_000084_unrank]
  exact case_000084_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000084_bAtRank :
    translationBAtRankMask case_000084_rank case_000084_mask = case_000084_b := by
  rw [translationBAtRankMask, case_000084_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000084_b, case_000084_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000084_firstLine_eq :
    case_000084_support.firstLine case_000084_seq case_000084_b = case_000084_firstLine := by
  norm_num [case_000084_firstLine, case_000084_support, case_000084_seq, case_000084_b,
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
private theorem case_000084_secondLine_eq :
    case_000084_support.secondLine case_000084_seq case_000084_b = case_000084_secondLine := by
  norm_num [case_000084_secondLine, case_000084_support, case_000084_seq, case_000084_b,
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
private theorem case_000084_sourceAgrees :
    SourceAgrees case_000084_support case_000084_rank.val case_000084_mask := by
  intro hlt
  have hrank : (⟨case_000084_rank.val, hlt⟩ : Fin numPairWords) = case_000084_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000084_rank.val, hlt⟩ case_000084_mask =
        case_000084_seq := by
    simpa [hrank] using case_000084_seqAtRank
  simp [SourceChecks, hseq, case_000084_support,
    checkTranslationConstraintSource, case_000084_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000084_rows :
    EqEqPosVarFirstRows case_000084_support case_000084_rank.val case_000084_mask := by
  intro hlt
  have hrank : (⟨case_000084_rank.val, hlt⟩ : Fin numPairWords) = case_000084_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000084_rank.val, hlt⟩ case_000084_mask =
        case_000084_seq := by
    simpa [hrank] using case_000084_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000084_rank.val, hlt⟩ case_000084_mask =
        case_000084_b := by
    simpa [hrank] using case_000084_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000084_support case_000084_rank.val hlt
          case_000084_mask = case_000084_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000084_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000084_support case_000084_rank.val hlt
          case_000084_mask = case_000084_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000084_secondLine_eq]
  have case_000084_rowFirst :
      EqEqPosRow (FirstLineAt case_000084_support case_000084_rank.val hlt case_000084_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000084_firstLine, EqEqPosRow]
  have case_000084_fixedSecond :
      FixedRow (SecondLineAt case_000084_support case_000084_rank.val hlt case_000084_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000084_secondLine, FixedRow]
  exact ⟨case_000084_rowFirst, case_000084_fixedSecond⟩

private theorem case_000084_existsRows :
    ExistsEqEqPosVarFirstRows case_000084_rank.val case_000084_mask :=
  ⟨case_000084_support, case_000084_sourceAgrees, case_000084_rows⟩

private theorem case_000084_covered :
    RowPropertyParametricCovered case_000084_rank.val case_000084_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000084_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000085_rank : Fin numPairWords := ⟨17, by decide⟩
private def case_000085_mask : SignMask := ⟨24, by decide⟩
private def case_000085_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000085_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000085_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000085_b : Vec3 Rat := { x := (-172/27), y := (-236/27), z := (-268/27) }
private def case_000085_firstLine : StrictLin2 := { a := -1, b := -1, c := (-209/43) }
private def case_000085_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000085_rankWord :
    rankPairWord? case_000085_word = some case_000085_rank := by
  decide

private theorem case_000085_unrank :
    unrankPairWord case_000085_rank = case_000085_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000085_word case_000085_rank).1
    case_000085_rankWord |>.symm

private theorem case_000085_seqChoice :
    translationChoiceSeq case_000085_word case_000085_mask = case_000085_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000085_seqAtRank :
    translationSeqAtRankMask case_000085_rank case_000085_mask = case_000085_seq := by
  rw [translationSeqAtRankMask, case_000085_unrank]
  exact case_000085_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000085_bAtRank :
    translationBAtRankMask case_000085_rank case_000085_mask = case_000085_b := by
  rw [translationBAtRankMask, case_000085_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000085_b, case_000085_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000085_firstLine_eq :
    case_000085_support.firstLine case_000085_seq case_000085_b = case_000085_firstLine := by
  norm_num [case_000085_firstLine, case_000085_support, case_000085_seq, case_000085_b,
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
private theorem case_000085_secondLine_eq :
    case_000085_support.secondLine case_000085_seq case_000085_b = case_000085_secondLine := by
  norm_num [case_000085_secondLine, case_000085_support, case_000085_seq, case_000085_b,
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
private theorem case_000085_sourceAgrees :
    SourceAgrees case_000085_support case_000085_rank.val case_000085_mask := by
  intro hlt
  have hrank : (⟨case_000085_rank.val, hlt⟩ : Fin numPairWords) = case_000085_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000085_rank.val, hlt⟩ case_000085_mask =
        case_000085_seq := by
    simpa [hrank] using case_000085_seqAtRank
  simp [SourceChecks, hseq, case_000085_support,
    checkTranslationConstraintSource, case_000085_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000085_rows :
    EqEqPosVarFirstRows case_000085_support case_000085_rank.val case_000085_mask := by
  intro hlt
  have hrank : (⟨case_000085_rank.val, hlt⟩ : Fin numPairWords) = case_000085_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000085_rank.val, hlt⟩ case_000085_mask =
        case_000085_seq := by
    simpa [hrank] using case_000085_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000085_rank.val, hlt⟩ case_000085_mask =
        case_000085_b := by
    simpa [hrank] using case_000085_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000085_support case_000085_rank.val hlt
          case_000085_mask = case_000085_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000085_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000085_support case_000085_rank.val hlt
          case_000085_mask = case_000085_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000085_secondLine_eq]
  have case_000085_rowFirst :
      EqEqPosRow (FirstLineAt case_000085_support case_000085_rank.val hlt case_000085_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000085_firstLine, EqEqPosRow]
  have case_000085_fixedSecond :
      FixedRow (SecondLineAt case_000085_support case_000085_rank.val hlt case_000085_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000085_secondLine, FixedRow]
  exact ⟨case_000085_rowFirst, case_000085_fixedSecond⟩

private theorem case_000085_existsRows :
    ExistsEqEqPosVarFirstRows case_000085_rank.val case_000085_mask :=
  ⟨case_000085_support, case_000085_sourceAgrees, case_000085_rows⟩

private theorem case_000085_covered :
    RowPropertyParametricCovered case_000085_rank.val case_000085_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000085_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000086_rank : Fin numPairWords := ⟨17, by decide⟩
private def case_000086_mask : SignMask := ⟨54, by decide⟩
private def case_000086_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000086_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000086_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000086_b : Vec3 Rat := { x := (-284/27), y := (-28/27), z := (316/27) }
private def case_000086_firstLine : StrictLin2 := { a := -1, b := 1, c := (-101/71) }
private def case_000086_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000086_rankWord :
    rankPairWord? case_000086_word = some case_000086_rank := by
  decide

private theorem case_000086_unrank :
    unrankPairWord case_000086_rank = case_000086_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000086_word case_000086_rank).1
    case_000086_rankWord |>.symm

private theorem case_000086_seqChoice :
    translationChoiceSeq case_000086_word case_000086_mask = case_000086_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000086_seqAtRank :
    translationSeqAtRankMask case_000086_rank case_000086_mask = case_000086_seq := by
  rw [translationSeqAtRankMask, case_000086_unrank]
  exact case_000086_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000086_bAtRank :
    translationBAtRankMask case_000086_rank case_000086_mask = case_000086_b := by
  rw [translationBAtRankMask, case_000086_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000086_b, case_000086_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000086_firstLine_eq :
    case_000086_support.firstLine case_000086_seq case_000086_b = case_000086_firstLine := by
  norm_num [case_000086_firstLine, case_000086_support, case_000086_seq, case_000086_b,
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
private theorem case_000086_secondLine_eq :
    case_000086_support.secondLine case_000086_seq case_000086_b = case_000086_secondLine := by
  norm_num [case_000086_secondLine, case_000086_support, case_000086_seq, case_000086_b,
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
private theorem case_000086_sourceAgrees :
    SourceAgrees case_000086_support case_000086_rank.val case_000086_mask := by
  intro hlt
  have hrank : (⟨case_000086_rank.val, hlt⟩ : Fin numPairWords) = case_000086_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000086_rank.val, hlt⟩ case_000086_mask =
        case_000086_seq := by
    simpa [hrank] using case_000086_seqAtRank
  simp [SourceChecks, hseq, case_000086_support,
    checkTranslationConstraintSource, case_000086_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000086_rows :
    OppOneMinusVarFirstRows case_000086_support case_000086_rank.val case_000086_mask := by
  intro hlt
  have hrank : (⟨case_000086_rank.val, hlt⟩ : Fin numPairWords) = case_000086_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000086_rank.val, hlt⟩ case_000086_mask =
        case_000086_seq := by
    simpa [hrank] using case_000086_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000086_rank.val, hlt⟩ case_000086_mask =
        case_000086_b := by
    simpa [hrank] using case_000086_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000086_support case_000086_rank.val hlt
          case_000086_mask = case_000086_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000086_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000086_support case_000086_rank.val hlt
          case_000086_mask = case_000086_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000086_secondLine_eq]
  have case_000086_rowFirst :
      OppPosRow (FirstLineAt case_000086_support case_000086_rank.val hlt case_000086_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000086_firstLine, OppPosRow]
  have case_000086_fixedSecond :
      FixedRow (SecondLineAt case_000086_support case_000086_rank.val hlt case_000086_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000086_secondLine, FixedRow]
  exact ⟨case_000086_rowFirst, case_000086_fixedSecond⟩

private theorem case_000086_existsRows :
    ExistsOppOneMinusVarFirstRows case_000086_rank.val case_000086_mask :=
  ⟨case_000086_support, case_000086_sourceAgrees, case_000086_rows⟩

private theorem case_000086_covered :
    RowPropertyParametricCovered case_000086_rank.val case_000086_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000086_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000087_rank : Fin numPairWords := ⟨17, by decide⟩
private def case_000087_mask : SignMask := ⟨61, by decide⟩
private def case_000087_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000087_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000087_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000087_b : Vec3 Rat := { x := (-428/27), y := (332/27), z := (-44/27) }
private def case_000087_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000087_secondLine : StrictLin2 := { a := (-321/6566), b := (321/6566), c := (-29/469) }

private theorem case_000087_rankWord :
    rankPairWord? case_000087_word = some case_000087_rank := by
  decide

private theorem case_000087_unrank :
    unrankPairWord case_000087_rank = case_000087_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000087_word case_000087_rank).1
    case_000087_rankWord |>.symm

private theorem case_000087_seqChoice :
    translationChoiceSeq case_000087_word case_000087_mask = case_000087_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000087_seqAtRank :
    translationSeqAtRankMask case_000087_rank case_000087_mask = case_000087_seq := by
  rw [translationSeqAtRankMask, case_000087_unrank]
  exact case_000087_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000087_bAtRank :
    translationBAtRankMask case_000087_rank case_000087_mask = case_000087_b := by
  rw [translationBAtRankMask, case_000087_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000087_b, case_000087_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000087_firstLine_eq :
    case_000087_support.firstLine case_000087_seq case_000087_b = case_000087_firstLine := by
  norm_num [case_000087_firstLine, case_000087_support, case_000087_seq, case_000087_b,
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
private theorem case_000087_secondLine_eq :
    case_000087_support.secondLine case_000087_seq case_000087_b = case_000087_secondLine := by
  norm_num [case_000087_secondLine, case_000087_support, case_000087_seq, case_000087_b,
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
private theorem case_000087_sourceAgrees :
    SourceAgrees case_000087_support case_000087_rank.val case_000087_mask := by
  intro hlt
  have hrank : (⟨case_000087_rank.val, hlt⟩ : Fin numPairWords) = case_000087_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000087_rank.val, hlt⟩ case_000087_mask =
        case_000087_seq := by
    simpa [hrank] using case_000087_seqAtRank
  simp [SourceChecks, hseq, case_000087_support,
    checkTranslationConstraintSource, case_000087_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000087_rows :
    OppOneMinusVarSecondRows case_000087_support case_000087_rank.val case_000087_mask := by
  intro hlt
  have hrank : (⟨case_000087_rank.val, hlt⟩ : Fin numPairWords) = case_000087_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000087_rank.val, hlt⟩ case_000087_mask =
        case_000087_seq := by
    simpa [hrank] using case_000087_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000087_rank.val, hlt⟩ case_000087_mask =
        case_000087_b := by
    simpa [hrank] using case_000087_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000087_support case_000087_rank.val hlt
          case_000087_mask = case_000087_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000087_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000087_support case_000087_rank.val hlt
          case_000087_mask = case_000087_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000087_secondLine_eq]
  have case_000087_fixedFirst :
      FixedRow (FirstLineAt case_000087_support case_000087_rank.val hlt case_000087_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000087_firstLine, FixedRow]
  have case_000087_rowSecond :
      OppPosRow (SecondLineAt case_000087_support case_000087_rank.val hlt case_000087_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000087_secondLine, OppPosRow]
  exact ⟨case_000087_fixedFirst, case_000087_rowSecond⟩

private theorem case_000087_existsRows :
    ExistsOppOneMinusVarSecondRows case_000087_rank.val case_000087_mask :=
  ⟨case_000087_support, case_000087_sourceAgrees, case_000087_rows⟩

private theorem case_000087_covered :
    RowPropertyParametricCovered case_000087_rank.val case_000087_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000087_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000088_rank : Fin numPairWords := ⟨17, by decide⟩
private def case_000088_mask : SignMask := ⟨63, by decide⟩
private def case_000088_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000088_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000088_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_000088_b : Vec3 Rat := { x := (-428/27), y := (332/27), z := (172/27) }
private def case_000088_firstLine : StrictLin2 := { a := (-107/233), b := (-107/233), c := (-459/233) }
private def case_000088_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000088_rankWord :
    rankPairWord? case_000088_word = some case_000088_rank := by
  decide

private theorem case_000088_unrank :
    unrankPairWord case_000088_rank = case_000088_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000088_word case_000088_rank).1
    case_000088_rankWord |>.symm

private theorem case_000088_seqChoice :
    translationChoiceSeq case_000088_word case_000088_mask = case_000088_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000088_seqAtRank :
    translationSeqAtRankMask case_000088_rank case_000088_mask = case_000088_seq := by
  rw [translationSeqAtRankMask, case_000088_unrank]
  exact case_000088_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000088_bAtRank :
    translationBAtRankMask case_000088_rank case_000088_mask = case_000088_b := by
  rw [translationBAtRankMask, case_000088_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000088_b, case_000088_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000088_firstLine_eq :
    case_000088_support.firstLine case_000088_seq case_000088_b = case_000088_firstLine := by
  norm_num [case_000088_firstLine, case_000088_support, case_000088_seq, case_000088_b,
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
private theorem case_000088_secondLine_eq :
    case_000088_support.secondLine case_000088_seq case_000088_b = case_000088_secondLine := by
  norm_num [case_000088_secondLine, case_000088_support, case_000088_seq, case_000088_b,
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
private theorem case_000088_sourceAgrees :
    SourceAgrees case_000088_support case_000088_rank.val case_000088_mask := by
  intro hlt
  have hrank : (⟨case_000088_rank.val, hlt⟩ : Fin numPairWords) = case_000088_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000088_rank.val, hlt⟩ case_000088_mask =
        case_000088_seq := by
    simpa [hrank] using case_000088_seqAtRank
  simp [SourceChecks, hseq, case_000088_support,
    checkTranslationConstraintSource, case_000088_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000088_rows :
    EqEqPosVarFirstRows case_000088_support case_000088_rank.val case_000088_mask := by
  intro hlt
  have hrank : (⟨case_000088_rank.val, hlt⟩ : Fin numPairWords) = case_000088_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000088_rank.val, hlt⟩ case_000088_mask =
        case_000088_seq := by
    simpa [hrank] using case_000088_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000088_rank.val, hlt⟩ case_000088_mask =
        case_000088_b := by
    simpa [hrank] using case_000088_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000088_support case_000088_rank.val hlt
          case_000088_mask = case_000088_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000088_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000088_support case_000088_rank.val hlt
          case_000088_mask = case_000088_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000088_secondLine_eq]
  have case_000088_rowFirst :
      EqEqPosRow (FirstLineAt case_000088_support case_000088_rank.val hlt case_000088_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000088_firstLine, EqEqPosRow]
  have case_000088_fixedSecond :
      FixedRow (SecondLineAt case_000088_support case_000088_rank.val hlt case_000088_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000088_secondLine, FixedRow]
  exact ⟨case_000088_rowFirst, case_000088_fixedSecond⟩

private theorem case_000088_existsRows :
    ExistsEqEqPosVarFirstRows case_000088_rank.val case_000088_mask :=
  ⟨case_000088_support, case_000088_sourceAgrees, case_000088_rows⟩

private theorem case_000088_covered :
    RowPropertyParametricCovered case_000088_rank.val case_000088_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000088_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000089_rank : Fin numPairWords := ⟨24, by decide⟩
private def case_000089_mask : SignMask := ⟨8, by decide⟩
private def case_000089_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000089_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000089_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000089_b : Vec3 Rat := { x := (-28/27), y := (-284/27), z := (-316/27) }
private def case_000089_firstLine : StrictLin2 := { a := -1, b := -1, c := (-293/7) }
private def case_000089_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000089_rankWord :
    rankPairWord? case_000089_word = some case_000089_rank := by
  decide

private theorem case_000089_unrank :
    unrankPairWord case_000089_rank = case_000089_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000089_word case_000089_rank).1
    case_000089_rankWord |>.symm

private theorem case_000089_seqChoice :
    translationChoiceSeq case_000089_word case_000089_mask = case_000089_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000089_seqAtRank :
    translationSeqAtRankMask case_000089_rank case_000089_mask = case_000089_seq := by
  rw [translationSeqAtRankMask, case_000089_unrank]
  exact case_000089_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000089_bAtRank :
    translationBAtRankMask case_000089_rank case_000089_mask = case_000089_b := by
  rw [translationBAtRankMask, case_000089_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000089_b, case_000089_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000089_firstLine_eq :
    case_000089_support.firstLine case_000089_seq case_000089_b = case_000089_firstLine := by
  norm_num [case_000089_firstLine, case_000089_support, case_000089_seq, case_000089_b,
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
private theorem case_000089_secondLine_eq :
    case_000089_support.secondLine case_000089_seq case_000089_b = case_000089_secondLine := by
  norm_num [case_000089_secondLine, case_000089_support, case_000089_seq, case_000089_b,
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
private theorem case_000089_sourceAgrees :
    SourceAgrees case_000089_support case_000089_rank.val case_000089_mask := by
  intro hlt
  have hrank : (⟨case_000089_rank.val, hlt⟩ : Fin numPairWords) = case_000089_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000089_rank.val, hlt⟩ case_000089_mask =
        case_000089_seq := by
    simpa [hrank] using case_000089_seqAtRank
  simp [SourceChecks, hseq, case_000089_support,
    checkTranslationConstraintSource, case_000089_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000089_rows :
    EqEqPosVarFirstRows case_000089_support case_000089_rank.val case_000089_mask := by
  intro hlt
  have hrank : (⟨case_000089_rank.val, hlt⟩ : Fin numPairWords) = case_000089_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000089_rank.val, hlt⟩ case_000089_mask =
        case_000089_seq := by
    simpa [hrank] using case_000089_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000089_rank.val, hlt⟩ case_000089_mask =
        case_000089_b := by
    simpa [hrank] using case_000089_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000089_support case_000089_rank.val hlt
          case_000089_mask = case_000089_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000089_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000089_support case_000089_rank.val hlt
          case_000089_mask = case_000089_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000089_secondLine_eq]
  have case_000089_rowFirst :
      EqEqPosRow (FirstLineAt case_000089_support case_000089_rank.val hlt case_000089_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000089_firstLine, EqEqPosRow]
  have case_000089_fixedSecond :
      FixedRow (SecondLineAt case_000089_support case_000089_rank.val hlt case_000089_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000089_secondLine, FixedRow]
  exact ⟨case_000089_rowFirst, case_000089_fixedSecond⟩

private theorem case_000089_existsRows :
    ExistsEqEqPosVarFirstRows case_000089_rank.val case_000089_mask :=
  ⟨case_000089_support, case_000089_sourceAgrees, case_000089_rows⟩

private theorem case_000089_covered :
    RowPropertyParametricCovered case_000089_rank.val case_000089_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000089_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000090_rank : Fin numPairWords := ⟨24, by decide⟩
private def case_000090_mask : SignMask := ⟨22, by decide⟩
private def case_000090_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000090_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000090_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000090_b : Vec3 Rat := { x := (-236/27), y := (-172/27), z := (268/27) }
private def case_000090_firstLine : StrictLin2 := { a := (-118/83), b := (-118/83), c := (-364/249) }
private def case_000090_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000090_rankWord :
    rankPairWord? case_000090_word = some case_000090_rank := by
  decide

private theorem case_000090_unrank :
    unrankPairWord case_000090_rank = case_000090_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000090_word case_000090_rank).1
    case_000090_rankWord |>.symm

private theorem case_000090_seqChoice :
    translationChoiceSeq case_000090_word case_000090_mask = case_000090_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000090_seqAtRank :
    translationSeqAtRankMask case_000090_rank case_000090_mask = case_000090_seq := by
  rw [translationSeqAtRankMask, case_000090_unrank]
  exact case_000090_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000090_bAtRank :
    translationBAtRankMask case_000090_rank case_000090_mask = case_000090_b := by
  rw [translationBAtRankMask, case_000090_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000090_b, case_000090_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000090_firstLine_eq :
    case_000090_support.firstLine case_000090_seq case_000090_b = case_000090_firstLine := by
  norm_num [case_000090_firstLine, case_000090_support, case_000090_seq, case_000090_b,
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
private theorem case_000090_secondLine_eq :
    case_000090_support.secondLine case_000090_seq case_000090_b = case_000090_secondLine := by
  norm_num [case_000090_secondLine, case_000090_support, case_000090_seq, case_000090_b,
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
private theorem case_000090_sourceAgrees :
    SourceAgrees case_000090_support case_000090_rank.val case_000090_mask := by
  intro hlt
  have hrank : (⟨case_000090_rank.val, hlt⟩ : Fin numPairWords) = case_000090_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000090_rank.val, hlt⟩ case_000090_mask =
        case_000090_seq := by
    simpa [hrank] using case_000090_seqAtRank
  simp [SourceChecks, hseq, case_000090_support,
    checkTranslationConstraintSource, case_000090_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000090_rows :
    EqEqPosVarFirstRows case_000090_support case_000090_rank.val case_000090_mask := by
  intro hlt
  have hrank : (⟨case_000090_rank.val, hlt⟩ : Fin numPairWords) = case_000090_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000090_rank.val, hlt⟩ case_000090_mask =
        case_000090_seq := by
    simpa [hrank] using case_000090_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000090_rank.val, hlt⟩ case_000090_mask =
        case_000090_b := by
    simpa [hrank] using case_000090_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000090_support case_000090_rank.val hlt
          case_000090_mask = case_000090_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000090_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000090_support case_000090_rank.val hlt
          case_000090_mask = case_000090_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000090_secondLine_eq]
  have case_000090_rowFirst :
      EqEqPosRow (FirstLineAt case_000090_support case_000090_rank.val hlt case_000090_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000090_firstLine, EqEqPosRow]
  have case_000090_fixedSecond :
      FixedRow (SecondLineAt case_000090_support case_000090_rank.val hlt case_000090_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000090_secondLine, FixedRow]
  exact ⟨case_000090_rowFirst, case_000090_fixedSecond⟩

private theorem case_000090_existsRows :
    ExistsEqEqPosVarFirstRows case_000090_rank.val case_000090_mask :=
  ⟨case_000090_support, case_000090_sourceAgrees, case_000090_rows⟩

private theorem case_000090_covered :
    RowPropertyParametricCovered case_000090_rank.val case_000090_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000090_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000091_rank : Fin numPairWords := ⟨24, by decide⟩
private def case_000091_mask : SignMask := ⟨24, by decide⟩
private def case_000091_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000091_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000091_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000091_b : Vec3 Rat := { x := (-236/27), y := (-172/27), z := (-236/27) }
private def case_000091_firstLine : StrictLin2 := { a := -1, b := -1, c := (-145/59) }
private def case_000091_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000091_rankWord :
    rankPairWord? case_000091_word = some case_000091_rank := by
  decide

private theorem case_000091_unrank :
    unrankPairWord case_000091_rank = case_000091_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000091_word case_000091_rank).1
    case_000091_rankWord |>.symm

private theorem case_000091_seqChoice :
    translationChoiceSeq case_000091_word case_000091_mask = case_000091_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000091_seqAtRank :
    translationSeqAtRankMask case_000091_rank case_000091_mask = case_000091_seq := by
  rw [translationSeqAtRankMask, case_000091_unrank]
  exact case_000091_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000091_bAtRank :
    translationBAtRankMask case_000091_rank case_000091_mask = case_000091_b := by
  rw [translationBAtRankMask, case_000091_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000091_b, case_000091_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000091_firstLine_eq :
    case_000091_support.firstLine case_000091_seq case_000091_b = case_000091_firstLine := by
  norm_num [case_000091_firstLine, case_000091_support, case_000091_seq, case_000091_b,
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
private theorem case_000091_secondLine_eq :
    case_000091_support.secondLine case_000091_seq case_000091_b = case_000091_secondLine := by
  norm_num [case_000091_secondLine, case_000091_support, case_000091_seq, case_000091_b,
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
private theorem case_000091_sourceAgrees :
    SourceAgrees case_000091_support case_000091_rank.val case_000091_mask := by
  intro hlt
  have hrank : (⟨case_000091_rank.val, hlt⟩ : Fin numPairWords) = case_000091_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000091_rank.val, hlt⟩ case_000091_mask =
        case_000091_seq := by
    simpa [hrank] using case_000091_seqAtRank
  simp [SourceChecks, hseq, case_000091_support,
    checkTranslationConstraintSource, case_000091_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000091_rows :
    EqEqPosVarFirstRows case_000091_support case_000091_rank.val case_000091_mask := by
  intro hlt
  have hrank : (⟨case_000091_rank.val, hlt⟩ : Fin numPairWords) = case_000091_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000091_rank.val, hlt⟩ case_000091_mask =
        case_000091_seq := by
    simpa [hrank] using case_000091_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000091_rank.val, hlt⟩ case_000091_mask =
        case_000091_b := by
    simpa [hrank] using case_000091_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000091_support case_000091_rank.val hlt
          case_000091_mask = case_000091_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000091_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000091_support case_000091_rank.val hlt
          case_000091_mask = case_000091_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000091_secondLine_eq]
  have case_000091_rowFirst :
      EqEqPosRow (FirstLineAt case_000091_support case_000091_rank.val hlt case_000091_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000091_firstLine, EqEqPosRow]
  have case_000091_fixedSecond :
      FixedRow (SecondLineAt case_000091_support case_000091_rank.val hlt case_000091_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000091_secondLine, FixedRow]
  exact ⟨case_000091_rowFirst, case_000091_fixedSecond⟩

private theorem case_000091_existsRows :
    ExistsEqEqPosVarFirstRows case_000091_rank.val case_000091_mask :=
  ⟨case_000091_support, case_000091_sourceAgrees, case_000091_rows⟩

private theorem case_000091_covered :
    RowPropertyParametricCovered case_000091_rank.val case_000091_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000091_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000092_rank : Fin numPairWords := ⟨24, by decide⟩
private def case_000092_mask : SignMask := ⟨28, by decide⟩
private def case_000092_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000092_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000092_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000092_b : Vec3 Rat := { x := (-380/27), y := (-28/27), z := (-92/27) }
private def case_000092_firstLine : StrictLin2 := { a := (19/13), b := (19/13), c := (-83/13) }
private def case_000092_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000092_rankWord :
    rankPairWord? case_000092_word = some case_000092_rank := by
  decide

private theorem case_000092_unrank :
    unrankPairWord case_000092_rank = case_000092_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000092_word case_000092_rank).1
    case_000092_rankWord |>.symm

private theorem case_000092_seqChoice :
    translationChoiceSeq case_000092_word case_000092_mask = case_000092_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000092_seqAtRank :
    translationSeqAtRankMask case_000092_rank case_000092_mask = case_000092_seq := by
  rw [translationSeqAtRankMask, case_000092_unrank]
  exact case_000092_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000092_bAtRank :
    translationBAtRankMask case_000092_rank case_000092_mask = case_000092_b := by
  rw [translationBAtRankMask, case_000092_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000092_b, case_000092_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000092_firstLine_eq :
    case_000092_support.firstLine case_000092_seq case_000092_b = case_000092_firstLine := by
  norm_num [case_000092_firstLine, case_000092_support, case_000092_seq, case_000092_b,
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
private theorem case_000092_secondLine_eq :
    case_000092_support.secondLine case_000092_seq case_000092_b = case_000092_secondLine := by
  norm_num [case_000092_secondLine, case_000092_support, case_000092_seq, case_000092_b,
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
private theorem case_000092_sourceAgrees :
    SourceAgrees case_000092_support case_000092_rank.val case_000092_mask := by
  intro hlt
  have hrank : (⟨case_000092_rank.val, hlt⟩ : Fin numPairWords) = case_000092_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000092_rank.val, hlt⟩ case_000092_mask =
        case_000092_seq := by
    simpa [hrank] using case_000092_seqAtRank
  simp [SourceChecks, hseq, case_000092_support,
    checkTranslationConstraintSource, case_000092_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000092_rows :
    EqEqNegVarFirstRows case_000092_support case_000092_rank.val case_000092_mask := by
  intro hlt
  have hrank : (⟨case_000092_rank.val, hlt⟩ : Fin numPairWords) = case_000092_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000092_rank.val, hlt⟩ case_000092_mask =
        case_000092_seq := by
    simpa [hrank] using case_000092_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000092_rank.val, hlt⟩ case_000092_mask =
        case_000092_b := by
    simpa [hrank] using case_000092_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000092_support case_000092_rank.val hlt
          case_000092_mask = case_000092_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000092_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000092_support case_000092_rank.val hlt
          case_000092_mask = case_000092_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000092_secondLine_eq]
  have case_000092_rowFirst :
      EqEqNegRow (FirstLineAt case_000092_support case_000092_rank.val hlt case_000092_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000092_firstLine, EqEqNegRow]
  have case_000092_fixedSecond :
      FixedRow (SecondLineAt case_000092_support case_000092_rank.val hlt case_000092_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000092_secondLine, FixedRow]
  exact ⟨case_000092_rowFirst, case_000092_fixedSecond⟩

private theorem case_000092_existsRows :
    ExistsEqEqNegVarFirstRows case_000092_rank.val case_000092_mask :=
  ⟨case_000092_support, case_000092_sourceAgrees, case_000092_rows⟩

private theorem case_000092_covered :
    RowPropertyParametricCovered case_000092_rank.val case_000092_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000092_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000093_rank : Fin numPairWords := ⟨24, by decide⟩
private def case_000093_mask : SignMask := ⟨30, by decide⟩
private def case_000093_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000093_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000093_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000093_b : Vec3 Rat := { x := (-380/27), y := (-28/27), z := (124/27) }
private def case_000093_firstLine : StrictLin2 := { a := (-190/119), b := (-190/119), c := (-1084/357) }
private def case_000093_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000093_rankWord :
    rankPairWord? case_000093_word = some case_000093_rank := by
  decide

private theorem case_000093_unrank :
    unrankPairWord case_000093_rank = case_000093_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000093_word case_000093_rank).1
    case_000093_rankWord |>.symm

private theorem case_000093_seqChoice :
    translationChoiceSeq case_000093_word case_000093_mask = case_000093_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000093_seqAtRank :
    translationSeqAtRankMask case_000093_rank case_000093_mask = case_000093_seq := by
  rw [translationSeqAtRankMask, case_000093_unrank]
  exact case_000093_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000093_bAtRank :
    translationBAtRankMask case_000093_rank case_000093_mask = case_000093_b := by
  rw [translationBAtRankMask, case_000093_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000093_b, case_000093_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000093_firstLine_eq :
    case_000093_support.firstLine case_000093_seq case_000093_b = case_000093_firstLine := by
  norm_num [case_000093_firstLine, case_000093_support, case_000093_seq, case_000093_b,
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
private theorem case_000093_secondLine_eq :
    case_000093_support.secondLine case_000093_seq case_000093_b = case_000093_secondLine := by
  norm_num [case_000093_secondLine, case_000093_support, case_000093_seq, case_000093_b,
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
private theorem case_000093_sourceAgrees :
    SourceAgrees case_000093_support case_000093_rank.val case_000093_mask := by
  intro hlt
  have hrank : (⟨case_000093_rank.val, hlt⟩ : Fin numPairWords) = case_000093_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000093_rank.val, hlt⟩ case_000093_mask =
        case_000093_seq := by
    simpa [hrank] using case_000093_seqAtRank
  simp [SourceChecks, hseq, case_000093_support,
    checkTranslationConstraintSource, case_000093_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000093_rows :
    EqEqPosVarFirstRows case_000093_support case_000093_rank.val case_000093_mask := by
  intro hlt
  have hrank : (⟨case_000093_rank.val, hlt⟩ : Fin numPairWords) = case_000093_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000093_rank.val, hlt⟩ case_000093_mask =
        case_000093_seq := by
    simpa [hrank] using case_000093_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000093_rank.val, hlt⟩ case_000093_mask =
        case_000093_b := by
    simpa [hrank] using case_000093_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000093_support case_000093_rank.val hlt
          case_000093_mask = case_000093_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000093_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000093_support case_000093_rank.val hlt
          case_000093_mask = case_000093_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000093_secondLine_eq]
  have case_000093_rowFirst :
      EqEqPosRow (FirstLineAt case_000093_support case_000093_rank.val hlt case_000093_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000093_firstLine, EqEqPosRow]
  have case_000093_fixedSecond :
      FixedRow (SecondLineAt case_000093_support case_000093_rank.val hlt case_000093_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000093_secondLine, FixedRow]
  exact ⟨case_000093_rowFirst, case_000093_fixedSecond⟩

private theorem case_000093_existsRows :
    ExistsEqEqPosVarFirstRows case_000093_rank.val case_000093_mask :=
  ⟨case_000093_support, case_000093_sourceAgrees, case_000093_rows⟩

private theorem case_000093_covered :
    RowPropertyParametricCovered case_000093_rank.val case_000093_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000093_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000094_rank : Fin numPairWords := ⟨24, by decide⟩
private def case_000094_mask : SignMask := ⟨61, by decide⟩
private def case_000094_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000094_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000094_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000094_b : Vec3 Rat := { x := (-332/27), y := (428/27), z := (-44/27) }
private def case_000094_firstLine : StrictLin2 := { a := 1, b := -1, c := (-153/83) }
private def case_000094_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000094_rankWord :
    rankPairWord? case_000094_word = some case_000094_rank := by
  decide

private theorem case_000094_unrank :
    unrankPairWord case_000094_rank = case_000094_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000094_word case_000094_rank).1
    case_000094_rankWord |>.symm

private theorem case_000094_seqChoice :
    translationChoiceSeq case_000094_word case_000094_mask = case_000094_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000094_seqAtRank :
    translationSeqAtRankMask case_000094_rank case_000094_mask = case_000094_seq := by
  rw [translationSeqAtRankMask, case_000094_unrank]
  exact case_000094_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000094_bAtRank :
    translationBAtRankMask case_000094_rank case_000094_mask = case_000094_b := by
  rw [translationBAtRankMask, case_000094_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000094_b, case_000094_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000094_firstLine_eq :
    case_000094_support.firstLine case_000094_seq case_000094_b = case_000094_firstLine := by
  norm_num [case_000094_firstLine, case_000094_support, case_000094_seq, case_000094_b,
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
private theorem case_000094_secondLine_eq :
    case_000094_support.secondLine case_000094_seq case_000094_b = case_000094_secondLine := by
  norm_num [case_000094_secondLine, case_000094_support, case_000094_seq, case_000094_b,
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
private theorem case_000094_sourceAgrees :
    SourceAgrees case_000094_support case_000094_rank.val case_000094_mask := by
  intro hlt
  have hrank : (⟨case_000094_rank.val, hlt⟩ : Fin numPairWords) = case_000094_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000094_rank.val, hlt⟩ case_000094_mask =
        case_000094_seq := by
    simpa [hrank] using case_000094_seqAtRank
  simp [SourceChecks, hseq, case_000094_support,
    checkTranslationConstraintSource, case_000094_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000094_rows :
    OppMinusOneVarFirstRows case_000094_support case_000094_rank.val case_000094_mask := by
  intro hlt
  have hrank : (⟨case_000094_rank.val, hlt⟩ : Fin numPairWords) = case_000094_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000094_rank.val, hlt⟩ case_000094_mask =
        case_000094_seq := by
    simpa [hrank] using case_000094_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000094_rank.val, hlt⟩ case_000094_mask =
        case_000094_b := by
    simpa [hrank] using case_000094_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000094_support case_000094_rank.val hlt
          case_000094_mask = case_000094_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000094_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000094_support case_000094_rank.val hlt
          case_000094_mask = case_000094_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000094_secondLine_eq]
  have case_000094_rowFirst :
      OppNegRow (FirstLineAt case_000094_support case_000094_rank.val hlt case_000094_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000094_firstLine, OppNegRow]
  have case_000094_fixedSecond :
      FixedRow (SecondLineAt case_000094_support case_000094_rank.val hlt case_000094_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000094_secondLine, FixedRow]
  exact ⟨case_000094_rowFirst, case_000094_fixedSecond⟩

private theorem case_000094_existsRows :
    ExistsOppMinusOneVarFirstRows case_000094_rank.val case_000094_mask :=
  ⟨case_000094_support, case_000094_sourceAgrees, case_000094_rows⟩

private theorem case_000094_covered :
    RowPropertyParametricCovered case_000094_rank.val case_000094_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000094_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000095_rank : Fin numPairWords := ⟨24, by decide⟩
private def case_000095_mask : SignMask := ⟨63, by decide⟩
private def case_000095_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
private def case_000095_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000095_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000095_b : Vec3 Rat := { x := (-332/27), y := (428/27), z := (172/27) }
private def case_000095_firstLine : StrictLin2 := { a := (-83/233), b := (-83/233), c := (-147/233) }
private def case_000095_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000095_rankWord :
    rankPairWord? case_000095_word = some case_000095_rank := by
  decide

private theorem case_000095_unrank :
    unrankPairWord case_000095_rank = case_000095_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000095_word case_000095_rank).1
    case_000095_rankWord |>.symm

private theorem case_000095_seqChoice :
    translationChoiceSeq case_000095_word case_000095_mask = case_000095_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000095_seqAtRank :
    translationSeqAtRankMask case_000095_rank case_000095_mask = case_000095_seq := by
  rw [translationSeqAtRankMask, case_000095_unrank]
  exact case_000095_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000095_bAtRank :
    translationBAtRankMask case_000095_rank case_000095_mask = case_000095_b := by
  rw [translationBAtRankMask, case_000095_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000095_b, case_000095_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000095_firstLine_eq :
    case_000095_support.firstLine case_000095_seq case_000095_b = case_000095_firstLine := by
  norm_num [case_000095_firstLine, case_000095_support, case_000095_seq, case_000095_b,
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
private theorem case_000095_secondLine_eq :
    case_000095_support.secondLine case_000095_seq case_000095_b = case_000095_secondLine := by
  norm_num [case_000095_secondLine, case_000095_support, case_000095_seq, case_000095_b,
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
private theorem case_000095_sourceAgrees :
    SourceAgrees case_000095_support case_000095_rank.val case_000095_mask := by
  intro hlt
  have hrank : (⟨case_000095_rank.val, hlt⟩ : Fin numPairWords) = case_000095_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000095_rank.val, hlt⟩ case_000095_mask =
        case_000095_seq := by
    simpa [hrank] using case_000095_seqAtRank
  simp [SourceChecks, hseq, case_000095_support,
    checkTranslationConstraintSource, case_000095_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000095_rows :
    EqEqPosVarFirstRows case_000095_support case_000095_rank.val case_000095_mask := by
  intro hlt
  have hrank : (⟨case_000095_rank.val, hlt⟩ : Fin numPairWords) = case_000095_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000095_rank.val, hlt⟩ case_000095_mask =
        case_000095_seq := by
    simpa [hrank] using case_000095_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000095_rank.val, hlt⟩ case_000095_mask =
        case_000095_b := by
    simpa [hrank] using case_000095_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000095_support case_000095_rank.val hlt
          case_000095_mask = case_000095_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000095_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000095_support case_000095_rank.val hlt
          case_000095_mask = case_000095_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000095_secondLine_eq]
  have case_000095_rowFirst :
      EqEqPosRow (FirstLineAt case_000095_support case_000095_rank.val hlt case_000095_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000095_firstLine, EqEqPosRow]
  have case_000095_fixedSecond :
      FixedRow (SecondLineAt case_000095_support case_000095_rank.val hlt case_000095_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000095_secondLine, FixedRow]
  exact ⟨case_000095_rowFirst, case_000095_fixedSecond⟩

private theorem case_000095_existsRows :
    ExistsEqEqPosVarFirstRows case_000095_rank.val case_000095_mask :=
  ⟨case_000095_support, case_000095_sourceAgrees, case_000095_rows⟩

private theorem case_000095_covered :
    RowPropertyParametricCovered case_000095_rank.val case_000095_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000095_existsRows

inductive Group002Covered : Nat -> SignMask -> Prop
  | case_000064 : Group002Covered case_000064_rank.val case_000064_mask
  | case_000065 : Group002Covered case_000065_rank.val case_000065_mask
  | case_000066 : Group002Covered case_000066_rank.val case_000066_mask
  | case_000067 : Group002Covered case_000067_rank.val case_000067_mask
  | case_000068 : Group002Covered case_000068_rank.val case_000068_mask
  | case_000069 : Group002Covered case_000069_rank.val case_000069_mask
  | case_000070 : Group002Covered case_000070_rank.val case_000070_mask
  | case_000071 : Group002Covered case_000071_rank.val case_000071_mask
  | case_000072 : Group002Covered case_000072_rank.val case_000072_mask
  | case_000073 : Group002Covered case_000073_rank.val case_000073_mask
  | case_000074 : Group002Covered case_000074_rank.val case_000074_mask
  | case_000075 : Group002Covered case_000075_rank.val case_000075_mask
  | case_000076 : Group002Covered case_000076_rank.val case_000076_mask
  | case_000077 : Group002Covered case_000077_rank.val case_000077_mask
  | case_000078 : Group002Covered case_000078_rank.val case_000078_mask
  | case_000079 : Group002Covered case_000079_rank.val case_000079_mask
  | case_000080 : Group002Covered case_000080_rank.val case_000080_mask
  | case_000081 : Group002Covered case_000081_rank.val case_000081_mask
  | case_000082 : Group002Covered case_000082_rank.val case_000082_mask
  | case_000083 : Group002Covered case_000083_rank.val case_000083_mask
  | case_000084 : Group002Covered case_000084_rank.val case_000084_mask
  | case_000085 : Group002Covered case_000085_rank.val case_000085_mask
  | case_000086 : Group002Covered case_000086_rank.val case_000086_mask
  | case_000087 : Group002Covered case_000087_rank.val case_000087_mask
  | case_000088 : Group002Covered case_000088_rank.val case_000088_mask
  | case_000089 : Group002Covered case_000089_rank.val case_000089_mask
  | case_000090 : Group002Covered case_000090_rank.val case_000090_mask
  | case_000091 : Group002Covered case_000091_rank.val case_000091_mask
  | case_000092 : Group002Covered case_000092_rank.val case_000092_mask
  | case_000093 : Group002Covered case_000093_rank.val case_000093_mask
  | case_000094 : Group002Covered case_000094_rank.val case_000094_mask
  | case_000095 : Group002Covered case_000095_rank.val case_000095_mask

theorem Group002GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group002Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000064 =>
      exact RowPropertyParametricCovered.kills case_000064_covered
  | case_000065 =>
      exact RowPropertyParametricCovered.kills case_000065_covered
  | case_000066 =>
      exact RowPropertyParametricCovered.kills case_000066_covered
  | case_000067 =>
      exact RowPropertyParametricCovered.kills case_000067_covered
  | case_000068 =>
      exact RowPropertyParametricCovered.kills case_000068_covered
  | case_000069 =>
      exact RowPropertyParametricCovered.kills case_000069_covered
  | case_000070 =>
      exact RowPropertyParametricCovered.kills case_000070_covered
  | case_000071 =>
      exact RowPropertyParametricCovered.kills case_000071_covered
  | case_000072 =>
      exact RowPropertyParametricCovered.kills case_000072_covered
  | case_000073 =>
      exact RowPropertyParametricCovered.kills case_000073_covered
  | case_000074 =>
      exact RowPropertyParametricCovered.kills case_000074_covered
  | case_000075 =>
      exact RowPropertyParametricCovered.kills case_000075_covered
  | case_000076 =>
      exact RowPropertyParametricCovered.kills case_000076_covered
  | case_000077 =>
      exact RowPropertyParametricCovered.kills case_000077_covered
  | case_000078 =>
      exact RowPropertyParametricCovered.kills case_000078_covered
  | case_000079 =>
      exact RowPropertyParametricCovered.kills case_000079_covered
  | case_000080 =>
      exact RowPropertyParametricCovered.kills case_000080_covered
  | case_000081 =>
      exact RowPropertyParametricCovered.kills case_000081_covered
  | case_000082 =>
      exact RowPropertyParametricCovered.kills case_000082_covered
  | case_000083 =>
      exact RowPropertyParametricCovered.kills case_000083_covered
  | case_000084 =>
      exact RowPropertyParametricCovered.kills case_000084_covered
  | case_000085 =>
      exact RowPropertyParametricCovered.kills case_000085_covered
  | case_000086 =>
      exact RowPropertyParametricCovered.kills case_000086_covered
  | case_000087 =>
      exact RowPropertyParametricCovered.kills case_000087_covered
  | case_000088 =>
      exact RowPropertyParametricCovered.kills case_000088_covered
  | case_000089 =>
      exact RowPropertyParametricCovered.kills case_000089_covered
  | case_000090 =>
      exact RowPropertyParametricCovered.kills case_000090_covered
  | case_000091 =>
      exact RowPropertyParametricCovered.kills case_000091_covered
  | case_000092 =>
      exact RowPropertyParametricCovered.kills case_000092_covered
  | case_000093 =>
      exact RowPropertyParametricCovered.kills case_000093_covered
  | case_000094 =>
      exact RowPropertyParametricCovered.kills case_000094_covered
  | case_000095 =>
      exact RowPropertyParametricCovered.kills case_000095_covered

theorem Group002_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group002
