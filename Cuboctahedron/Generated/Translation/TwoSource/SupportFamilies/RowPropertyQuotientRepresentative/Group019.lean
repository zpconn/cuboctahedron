import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group019

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
private def case_000608_rank : Fin numPairWords := ⟨369, by decide⟩
private def case_000608_mask : SignMask := ⟨13, by decide⟩
private def case_000608_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000608_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000608_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000608_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000608_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000608_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000608_rankWord :
    rankPairWord? case_000608_word = some case_000608_rank := by
  decide

private theorem case_000608_unrank :
    unrankPairWord case_000608_rank = case_000608_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000608_word case_000608_rank).1
    case_000608_rankWord |>.symm

private theorem case_000608_seqChoice :
    translationChoiceSeq case_000608_word case_000608_mask = case_000608_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000608_seqAtRank :
    translationSeqAtRankMask case_000608_rank case_000608_mask = case_000608_seq := by
  rw [translationSeqAtRankMask, case_000608_unrank]
  exact case_000608_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000608_bAtRank :
    translationBAtRankMask case_000608_rank case_000608_mask = case_000608_b := by
  rw [translationBAtRankMask, case_000608_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000608_b, case_000608_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000608_firstLine_eq :
    case_000608_support.firstLine case_000608_seq case_000608_b = case_000608_firstLine := by
  norm_num [case_000608_firstLine, case_000608_support, case_000608_seq, case_000608_b,
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
private theorem case_000608_secondLine_eq :
    case_000608_support.secondLine case_000608_seq case_000608_b = case_000608_secondLine := by
  norm_num [case_000608_secondLine, case_000608_support, case_000608_seq, case_000608_b,
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
private theorem case_000608_sourceAgrees :
    SourceAgrees case_000608_support case_000608_rank.val case_000608_mask := by
  intro hlt
  have hrank : (⟨case_000608_rank.val, hlt⟩ : Fin numPairWords) = case_000608_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000608_rank.val, hlt⟩ case_000608_mask =
        case_000608_seq := by
    simpa [hrank] using case_000608_seqAtRank
  simp [SourceChecks, hseq, case_000608_support,
    checkTranslationConstraintSource, case_000608_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000608_rows :
    EqEqPosVarSecondRows case_000608_support case_000608_rank.val case_000608_mask := by
  intro hlt
  have hrank : (⟨case_000608_rank.val, hlt⟩ : Fin numPairWords) = case_000608_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000608_rank.val, hlt⟩ case_000608_mask =
        case_000608_seq := by
    simpa [hrank] using case_000608_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000608_rank.val, hlt⟩ case_000608_mask =
        case_000608_b := by
    simpa [hrank] using case_000608_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000608_support case_000608_rank.val hlt
          case_000608_mask = case_000608_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000608_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000608_support case_000608_rank.val hlt
          case_000608_mask = case_000608_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000608_secondLine_eq]
  have case_000608_fixedFirst :
      FixedRow (FirstLineAt case_000608_support case_000608_rank.val hlt case_000608_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000608_firstLine, FixedRow]
  have case_000608_rowSecond :
      EqEqPosRow (SecondLineAt case_000608_support case_000608_rank.val hlt case_000608_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000608_secondLine, EqEqPosRow]
  exact ⟨case_000608_fixedFirst, case_000608_rowSecond⟩

private theorem case_000608_existsRows :
    ExistsEqEqPosVarSecondRows case_000608_rank.val case_000608_mask :=
  ⟨case_000608_support, case_000608_sourceAgrees, case_000608_rows⟩

private theorem case_000608_covered :
    RowPropertyParametricCovered case_000608_rank.val case_000608_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000608_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000609_rank : Fin numPairWords := ⟨369, by decide⟩
private def case_000609_mask : SignMask := ⟨18, by decide⟩
private def case_000609_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000609_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000609_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000609_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000609_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000609_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000609_rankWord :
    rankPairWord? case_000609_word = some case_000609_rank := by
  decide

private theorem case_000609_unrank :
    unrankPairWord case_000609_rank = case_000609_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000609_word case_000609_rank).1
    case_000609_rankWord |>.symm

private theorem case_000609_seqChoice :
    translationChoiceSeq case_000609_word case_000609_mask = case_000609_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000609_seqAtRank :
    translationSeqAtRankMask case_000609_rank case_000609_mask = case_000609_seq := by
  rw [translationSeqAtRankMask, case_000609_unrank]
  exact case_000609_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000609_bAtRank :
    translationBAtRankMask case_000609_rank case_000609_mask = case_000609_b := by
  rw [translationBAtRankMask, case_000609_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000609_b, case_000609_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000609_firstLine_eq :
    case_000609_support.firstLine case_000609_seq case_000609_b = case_000609_firstLine := by
  norm_num [case_000609_firstLine, case_000609_support, case_000609_seq, case_000609_b,
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
private theorem case_000609_secondLine_eq :
    case_000609_support.secondLine case_000609_seq case_000609_b = case_000609_secondLine := by
  norm_num [case_000609_secondLine, case_000609_support, case_000609_seq, case_000609_b,
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
private theorem case_000609_sourceAgrees :
    SourceAgrees case_000609_support case_000609_rank.val case_000609_mask := by
  intro hlt
  have hrank : (⟨case_000609_rank.val, hlt⟩ : Fin numPairWords) = case_000609_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000609_rank.val, hlt⟩ case_000609_mask =
        case_000609_seq := by
    simpa [hrank] using case_000609_seqAtRank
  simp [SourceChecks, hseq, case_000609_support,
    checkTranslationConstraintSource, case_000609_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000609_rows :
    EqEqPosVarFirstRows case_000609_support case_000609_rank.val case_000609_mask := by
  intro hlt
  have hrank : (⟨case_000609_rank.val, hlt⟩ : Fin numPairWords) = case_000609_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000609_rank.val, hlt⟩ case_000609_mask =
        case_000609_seq := by
    simpa [hrank] using case_000609_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000609_rank.val, hlt⟩ case_000609_mask =
        case_000609_b := by
    simpa [hrank] using case_000609_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000609_support case_000609_rank.val hlt
          case_000609_mask = case_000609_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000609_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000609_support case_000609_rank.val hlt
          case_000609_mask = case_000609_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000609_secondLine_eq]
  have case_000609_rowFirst :
      EqEqPosRow (FirstLineAt case_000609_support case_000609_rank.val hlt case_000609_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000609_firstLine, EqEqPosRow]
  have case_000609_fixedSecond :
      FixedRow (SecondLineAt case_000609_support case_000609_rank.val hlt case_000609_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000609_secondLine, FixedRow]
  exact ⟨case_000609_rowFirst, case_000609_fixedSecond⟩

private theorem case_000609_existsRows :
    ExistsEqEqPosVarFirstRows case_000609_rank.val case_000609_mask :=
  ⟨case_000609_support, case_000609_sourceAgrees, case_000609_rows⟩

private theorem case_000609_covered :
    RowPropertyParametricCovered case_000609_rank.val case_000609_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000609_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000610_rank : Fin numPairWords := ⟨369, by decide⟩
private def case_000610_mask : SignMask := ⟨22, by decide⟩
private def case_000610_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000610_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000610_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000610_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000610_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000610_secondLine : StrictLin2 := { a := (-3/14), b := (-3/14), c := (-5/7) }

private theorem case_000610_rankWord :
    rankPairWord? case_000610_word = some case_000610_rank := by
  decide

private theorem case_000610_unrank :
    unrankPairWord case_000610_rank = case_000610_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000610_word case_000610_rank).1
    case_000610_rankWord |>.symm

private theorem case_000610_seqChoice :
    translationChoiceSeq case_000610_word case_000610_mask = case_000610_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000610_seqAtRank :
    translationSeqAtRankMask case_000610_rank case_000610_mask = case_000610_seq := by
  rw [translationSeqAtRankMask, case_000610_unrank]
  exact case_000610_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000610_bAtRank :
    translationBAtRankMask case_000610_rank case_000610_mask = case_000610_b := by
  rw [translationBAtRankMask, case_000610_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000610_b, case_000610_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000610_firstLine_eq :
    case_000610_support.firstLine case_000610_seq case_000610_b = case_000610_firstLine := by
  norm_num [case_000610_firstLine, case_000610_support, case_000610_seq, case_000610_b,
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
private theorem case_000610_secondLine_eq :
    case_000610_support.secondLine case_000610_seq case_000610_b = case_000610_secondLine := by
  norm_num [case_000610_secondLine, case_000610_support, case_000610_seq, case_000610_b,
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
private theorem case_000610_sourceAgrees :
    SourceAgrees case_000610_support case_000610_rank.val case_000610_mask := by
  intro hlt
  have hrank : (⟨case_000610_rank.val, hlt⟩ : Fin numPairWords) = case_000610_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000610_rank.val, hlt⟩ case_000610_mask =
        case_000610_seq := by
    simpa [hrank] using case_000610_seqAtRank
  simp [SourceChecks, hseq, case_000610_support,
    checkTranslationConstraintSource, case_000610_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000610_rows :
    EqEqPosVarSecondRows case_000610_support case_000610_rank.val case_000610_mask := by
  intro hlt
  have hrank : (⟨case_000610_rank.val, hlt⟩ : Fin numPairWords) = case_000610_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000610_rank.val, hlt⟩ case_000610_mask =
        case_000610_seq := by
    simpa [hrank] using case_000610_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000610_rank.val, hlt⟩ case_000610_mask =
        case_000610_b := by
    simpa [hrank] using case_000610_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000610_support case_000610_rank.val hlt
          case_000610_mask = case_000610_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000610_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000610_support case_000610_rank.val hlt
          case_000610_mask = case_000610_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000610_secondLine_eq]
  have case_000610_fixedFirst :
      FixedRow (FirstLineAt case_000610_support case_000610_rank.val hlt case_000610_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000610_firstLine, FixedRow]
  have case_000610_rowSecond :
      EqEqPosRow (SecondLineAt case_000610_support case_000610_rank.val hlt case_000610_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000610_secondLine, EqEqPosRow]
  exact ⟨case_000610_fixedFirst, case_000610_rowSecond⟩

private theorem case_000610_existsRows :
    ExistsEqEqPosVarSecondRows case_000610_rank.val case_000610_mask :=
  ⟨case_000610_support, case_000610_sourceAgrees, case_000610_rows⟩

private theorem case_000610_covered :
    RowPropertyParametricCovered case_000610_rank.val case_000610_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000610_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000611_rank : Fin numPairWords := ⟨369, by decide⟩
private def case_000611_mask : SignMask := ⟨24, by decide⟩
private def case_000611_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000611_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000611_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000611_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-116/9) }
private def case_000611_firstLine : StrictLin2 := { a := -1, b := -1, c := (-103/13) }
private def case_000611_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000611_rankWord :
    rankPairWord? case_000611_word = some case_000611_rank := by
  decide

private theorem case_000611_unrank :
    unrankPairWord case_000611_rank = case_000611_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000611_word case_000611_rank).1
    case_000611_rankWord |>.symm

private theorem case_000611_seqChoice :
    translationChoiceSeq case_000611_word case_000611_mask = case_000611_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000611_seqAtRank :
    translationSeqAtRankMask case_000611_rank case_000611_mask = case_000611_seq := by
  rw [translationSeqAtRankMask, case_000611_unrank]
  exact case_000611_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000611_bAtRank :
    translationBAtRankMask case_000611_rank case_000611_mask = case_000611_b := by
  rw [translationBAtRankMask, case_000611_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000611_b, case_000611_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000611_firstLine_eq :
    case_000611_support.firstLine case_000611_seq case_000611_b = case_000611_firstLine := by
  norm_num [case_000611_firstLine, case_000611_support, case_000611_seq, case_000611_b,
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
private theorem case_000611_secondLine_eq :
    case_000611_support.secondLine case_000611_seq case_000611_b = case_000611_secondLine := by
  norm_num [case_000611_secondLine, case_000611_support, case_000611_seq, case_000611_b,
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
private theorem case_000611_sourceAgrees :
    SourceAgrees case_000611_support case_000611_rank.val case_000611_mask := by
  intro hlt
  have hrank : (⟨case_000611_rank.val, hlt⟩ : Fin numPairWords) = case_000611_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000611_rank.val, hlt⟩ case_000611_mask =
        case_000611_seq := by
    simpa [hrank] using case_000611_seqAtRank
  simp [SourceChecks, hseq, case_000611_support,
    checkTranslationConstraintSource, case_000611_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000611_rows :
    EqEqPosVarFirstRows case_000611_support case_000611_rank.val case_000611_mask := by
  intro hlt
  have hrank : (⟨case_000611_rank.val, hlt⟩ : Fin numPairWords) = case_000611_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000611_rank.val, hlt⟩ case_000611_mask =
        case_000611_seq := by
    simpa [hrank] using case_000611_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000611_rank.val, hlt⟩ case_000611_mask =
        case_000611_b := by
    simpa [hrank] using case_000611_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000611_support case_000611_rank.val hlt
          case_000611_mask = case_000611_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000611_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000611_support case_000611_rank.val hlt
          case_000611_mask = case_000611_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000611_secondLine_eq]
  have case_000611_rowFirst :
      EqEqPosRow (FirstLineAt case_000611_support case_000611_rank.val hlt case_000611_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000611_firstLine, EqEqPosRow]
  have case_000611_fixedSecond :
      FixedRow (SecondLineAt case_000611_support case_000611_rank.val hlt case_000611_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000611_secondLine, FixedRow]
  exact ⟨case_000611_rowFirst, case_000611_fixedSecond⟩

private theorem case_000611_existsRows :
    ExistsEqEqPosVarFirstRows case_000611_rank.val case_000611_mask :=
  ⟨case_000611_support, case_000611_sourceAgrees, case_000611_rows⟩

private theorem case_000611_covered :
    RowPropertyParametricCovered case_000611_rank.val case_000611_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000611_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000612_rank : Fin numPairWords := ⟨369, by decide⟩
private def case_000612_mask : SignMask := ⟨29, by decide⟩
private def case_000612_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000612_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000612_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000612_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (-68/9) }
private def case_000612_firstLine : StrictLin2 := { a := (-25/9), b := (-25/9), c := (-89/9) }
private def case_000612_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000612_rankWord :
    rankPairWord? case_000612_word = some case_000612_rank := by
  decide

private theorem case_000612_unrank :
    unrankPairWord case_000612_rank = case_000612_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000612_word case_000612_rank).1
    case_000612_rankWord |>.symm

private theorem case_000612_seqChoice :
    translationChoiceSeq case_000612_word case_000612_mask = case_000612_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000612_seqAtRank :
    translationSeqAtRankMask case_000612_rank case_000612_mask = case_000612_seq := by
  rw [translationSeqAtRankMask, case_000612_unrank]
  exact case_000612_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000612_bAtRank :
    translationBAtRankMask case_000612_rank case_000612_mask = case_000612_b := by
  rw [translationBAtRankMask, case_000612_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000612_b, case_000612_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000612_firstLine_eq :
    case_000612_support.firstLine case_000612_seq case_000612_b = case_000612_firstLine := by
  norm_num [case_000612_firstLine, case_000612_support, case_000612_seq, case_000612_b,
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
private theorem case_000612_secondLine_eq :
    case_000612_support.secondLine case_000612_seq case_000612_b = case_000612_secondLine := by
  norm_num [case_000612_secondLine, case_000612_support, case_000612_seq, case_000612_b,
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
private theorem case_000612_sourceAgrees :
    SourceAgrees case_000612_support case_000612_rank.val case_000612_mask := by
  intro hlt
  have hrank : (⟨case_000612_rank.val, hlt⟩ : Fin numPairWords) = case_000612_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000612_rank.val, hlt⟩ case_000612_mask =
        case_000612_seq := by
    simpa [hrank] using case_000612_seqAtRank
  simp [SourceChecks, hseq, case_000612_support,
    checkTranslationConstraintSource, case_000612_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000612_rows :
    EqEqPosVarFirstRows case_000612_support case_000612_rank.val case_000612_mask := by
  intro hlt
  have hrank : (⟨case_000612_rank.val, hlt⟩ : Fin numPairWords) = case_000612_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000612_rank.val, hlt⟩ case_000612_mask =
        case_000612_seq := by
    simpa [hrank] using case_000612_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000612_rank.val, hlt⟩ case_000612_mask =
        case_000612_b := by
    simpa [hrank] using case_000612_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000612_support case_000612_rank.val hlt
          case_000612_mask = case_000612_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000612_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000612_support case_000612_rank.val hlt
          case_000612_mask = case_000612_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000612_secondLine_eq]
  have case_000612_rowFirst :
      EqEqPosRow (FirstLineAt case_000612_support case_000612_rank.val hlt case_000612_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000612_firstLine, EqEqPosRow]
  have case_000612_fixedSecond :
      FixedRow (SecondLineAt case_000612_support case_000612_rank.val hlt case_000612_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000612_secondLine, FixedRow]
  exact ⟨case_000612_rowFirst, case_000612_fixedSecond⟩

private theorem case_000612_existsRows :
    ExistsEqEqPosVarFirstRows case_000612_rank.val case_000612_mask :=
  ⟨case_000612_support, case_000612_sourceAgrees, case_000612_rows⟩

private theorem case_000612_covered :
    RowPropertyParametricCovered case_000612_rank.val case_000612_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000612_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000613_rank : Fin numPairWords := ⟨369, by decide⟩
private def case_000613_mask : SignMask := ⟨30, by decide⟩
private def case_000613_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000613_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000613_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000613_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (4/9) }
private def case_000613_firstLine : StrictLin2 := { a := (-25/9), b := (-25/9), c := (-89/9) }
private def case_000613_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000613_rankWord :
    rankPairWord? case_000613_word = some case_000613_rank := by
  decide

private theorem case_000613_unrank :
    unrankPairWord case_000613_rank = case_000613_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000613_word case_000613_rank).1
    case_000613_rankWord |>.symm

private theorem case_000613_seqChoice :
    translationChoiceSeq case_000613_word case_000613_mask = case_000613_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000613_seqAtRank :
    translationSeqAtRankMask case_000613_rank case_000613_mask = case_000613_seq := by
  rw [translationSeqAtRankMask, case_000613_unrank]
  exact case_000613_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000613_bAtRank :
    translationBAtRankMask case_000613_rank case_000613_mask = case_000613_b := by
  rw [translationBAtRankMask, case_000613_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000613_b, case_000613_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000613_firstLine_eq :
    case_000613_support.firstLine case_000613_seq case_000613_b = case_000613_firstLine := by
  norm_num [case_000613_firstLine, case_000613_support, case_000613_seq, case_000613_b,
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
private theorem case_000613_secondLine_eq :
    case_000613_support.secondLine case_000613_seq case_000613_b = case_000613_secondLine := by
  norm_num [case_000613_secondLine, case_000613_support, case_000613_seq, case_000613_b,
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
private theorem case_000613_sourceAgrees :
    SourceAgrees case_000613_support case_000613_rank.val case_000613_mask := by
  intro hlt
  have hrank : (⟨case_000613_rank.val, hlt⟩ : Fin numPairWords) = case_000613_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000613_rank.val, hlt⟩ case_000613_mask =
        case_000613_seq := by
    simpa [hrank] using case_000613_seqAtRank
  simp [SourceChecks, hseq, case_000613_support,
    checkTranslationConstraintSource, case_000613_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000613_rows :
    EqEqPosVarFirstRows case_000613_support case_000613_rank.val case_000613_mask := by
  intro hlt
  have hrank : (⟨case_000613_rank.val, hlt⟩ : Fin numPairWords) = case_000613_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000613_rank.val, hlt⟩ case_000613_mask =
        case_000613_seq := by
    simpa [hrank] using case_000613_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000613_rank.val, hlt⟩ case_000613_mask =
        case_000613_b := by
    simpa [hrank] using case_000613_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000613_support case_000613_rank.val hlt
          case_000613_mask = case_000613_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000613_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000613_support case_000613_rank.val hlt
          case_000613_mask = case_000613_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000613_secondLine_eq]
  have case_000613_rowFirst :
      EqEqPosRow (FirstLineAt case_000613_support case_000613_rank.val hlt case_000613_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000613_firstLine, EqEqPosRow]
  have case_000613_fixedSecond :
      FixedRow (SecondLineAt case_000613_support case_000613_rank.val hlt case_000613_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000613_secondLine, FixedRow]
  exact ⟨case_000613_rowFirst, case_000613_fixedSecond⟩

private theorem case_000613_existsRows :
    ExistsEqEqPosVarFirstRows case_000613_rank.val case_000613_mask :=
  ⟨case_000613_support, case_000613_sourceAgrees, case_000613_rows⟩

private theorem case_000613_covered :
    RowPropertyParametricCovered case_000613_rank.val case_000613_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000613_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000614_rank : Fin numPairWords := ⟨369, by decide⟩
private def case_000614_mask : SignMask := ⟨31, by decide⟩
private def case_000614_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000614_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000614_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000614_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (4/9) }
private def case_000614_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000614_secondLine : StrictLin2 := { a := (-25/138), b := (-25/138), c := (-136/207) }

private theorem case_000614_rankWord :
    rankPairWord? case_000614_word = some case_000614_rank := by
  decide

private theorem case_000614_unrank :
    unrankPairWord case_000614_rank = case_000614_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000614_word case_000614_rank).1
    case_000614_rankWord |>.symm

private theorem case_000614_seqChoice :
    translationChoiceSeq case_000614_word case_000614_mask = case_000614_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000614_seqAtRank :
    translationSeqAtRankMask case_000614_rank case_000614_mask = case_000614_seq := by
  rw [translationSeqAtRankMask, case_000614_unrank]
  exact case_000614_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000614_bAtRank :
    translationBAtRankMask case_000614_rank case_000614_mask = case_000614_b := by
  rw [translationBAtRankMask, case_000614_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000614_b, case_000614_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000614_firstLine_eq :
    case_000614_support.firstLine case_000614_seq case_000614_b = case_000614_firstLine := by
  norm_num [case_000614_firstLine, case_000614_support, case_000614_seq, case_000614_b,
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
private theorem case_000614_secondLine_eq :
    case_000614_support.secondLine case_000614_seq case_000614_b = case_000614_secondLine := by
  norm_num [case_000614_secondLine, case_000614_support, case_000614_seq, case_000614_b,
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
private theorem case_000614_sourceAgrees :
    SourceAgrees case_000614_support case_000614_rank.val case_000614_mask := by
  intro hlt
  have hrank : (⟨case_000614_rank.val, hlt⟩ : Fin numPairWords) = case_000614_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000614_rank.val, hlt⟩ case_000614_mask =
        case_000614_seq := by
    simpa [hrank] using case_000614_seqAtRank
  simp [SourceChecks, hseq, case_000614_support,
    checkTranslationConstraintSource, case_000614_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000614_rows :
    EqEqPosVarSecondRows case_000614_support case_000614_rank.val case_000614_mask := by
  intro hlt
  have hrank : (⟨case_000614_rank.val, hlt⟩ : Fin numPairWords) = case_000614_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000614_rank.val, hlt⟩ case_000614_mask =
        case_000614_seq := by
    simpa [hrank] using case_000614_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000614_rank.val, hlt⟩ case_000614_mask =
        case_000614_b := by
    simpa [hrank] using case_000614_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000614_support case_000614_rank.val hlt
          case_000614_mask = case_000614_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000614_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000614_support case_000614_rank.val hlt
          case_000614_mask = case_000614_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000614_secondLine_eq]
  have case_000614_fixedFirst :
      FixedRow (FirstLineAt case_000614_support case_000614_rank.val hlt case_000614_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000614_firstLine, FixedRow]
  have case_000614_rowSecond :
      EqEqPosRow (SecondLineAt case_000614_support case_000614_rank.val hlt case_000614_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000614_secondLine, EqEqPosRow]
  exact ⟨case_000614_fixedFirst, case_000614_rowSecond⟩

private theorem case_000614_existsRows :
    ExistsEqEqPosVarSecondRows case_000614_rank.val case_000614_mask :=
  ⟨case_000614_support, case_000614_sourceAgrees, case_000614_rows⟩

private theorem case_000614_covered :
    RowPropertyParametricCovered case_000614_rank.val case_000614_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000614_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000615_rank : Fin numPairWords := ⟨369, by decide⟩
private def case_000615_mask : SignMask := ⟨39, by decide⟩
private def case_000615_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000615_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000615_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000615_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (116/9) }
private def case_000615_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000615_secondLine : StrictLin2 := { a := (-9/116), b := (9/116), c := (-9/58) }

private theorem case_000615_rankWord :
    rankPairWord? case_000615_word = some case_000615_rank := by
  decide

private theorem case_000615_unrank :
    unrankPairWord case_000615_rank = case_000615_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000615_word case_000615_rank).1
    case_000615_rankWord |>.symm

private theorem case_000615_seqChoice :
    translationChoiceSeq case_000615_word case_000615_mask = case_000615_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000615_seqAtRank :
    translationSeqAtRankMask case_000615_rank case_000615_mask = case_000615_seq := by
  rw [translationSeqAtRankMask, case_000615_unrank]
  exact case_000615_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000615_bAtRank :
    translationBAtRankMask case_000615_rank case_000615_mask = case_000615_b := by
  rw [translationBAtRankMask, case_000615_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000615_b, case_000615_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000615_firstLine_eq :
    case_000615_support.firstLine case_000615_seq case_000615_b = case_000615_firstLine := by
  norm_num [case_000615_firstLine, case_000615_support, case_000615_seq, case_000615_b,
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
private theorem case_000615_secondLine_eq :
    case_000615_support.secondLine case_000615_seq case_000615_b = case_000615_secondLine := by
  norm_num [case_000615_secondLine, case_000615_support, case_000615_seq, case_000615_b,
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
private theorem case_000615_sourceAgrees :
    SourceAgrees case_000615_support case_000615_rank.val case_000615_mask := by
  intro hlt
  have hrank : (⟨case_000615_rank.val, hlt⟩ : Fin numPairWords) = case_000615_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000615_rank.val, hlt⟩ case_000615_mask =
        case_000615_seq := by
    simpa [hrank] using case_000615_seqAtRank
  simp [SourceChecks, hseq, case_000615_support,
    checkTranslationConstraintSource, case_000615_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000615_rows :
    OppOneMinusVarSecondRows case_000615_support case_000615_rank.val case_000615_mask := by
  intro hlt
  have hrank : (⟨case_000615_rank.val, hlt⟩ : Fin numPairWords) = case_000615_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000615_rank.val, hlt⟩ case_000615_mask =
        case_000615_seq := by
    simpa [hrank] using case_000615_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000615_rank.val, hlt⟩ case_000615_mask =
        case_000615_b := by
    simpa [hrank] using case_000615_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000615_support case_000615_rank.val hlt
          case_000615_mask = case_000615_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000615_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000615_support case_000615_rank.val hlt
          case_000615_mask = case_000615_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000615_secondLine_eq]
  have case_000615_fixedFirst :
      FixedRow (FirstLineAt case_000615_support case_000615_rank.val hlt case_000615_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000615_firstLine, FixedRow]
  have case_000615_rowSecond :
      OppPosRow (SecondLineAt case_000615_support case_000615_rank.val hlt case_000615_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000615_secondLine, OppPosRow]
  exact ⟨case_000615_fixedFirst, case_000615_rowSecond⟩

private theorem case_000615_existsRows :
    ExistsOppOneMinusVarSecondRows case_000615_rank.val case_000615_mask :=
  ⟨case_000615_support, case_000615_sourceAgrees, case_000615_rows⟩

private theorem case_000615_covered :
    RowPropertyParametricCovered case_000615_rank.val case_000615_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000615_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000616_rank : Fin numPairWords := ⟨369, by decide⟩
private def case_000616_mask : SignMask := ⟨45, by decide⟩
private def case_000616_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000616_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000616_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000616_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000616_firstLine : StrictLin2 := { a := 1, b := -1, c := (-25/3) }
private def case_000616_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000616_rankWord :
    rankPairWord? case_000616_word = some case_000616_rank := by
  decide

private theorem case_000616_unrank :
    unrankPairWord case_000616_rank = case_000616_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000616_word case_000616_rank).1
    case_000616_rankWord |>.symm

private theorem case_000616_seqChoice :
    translationChoiceSeq case_000616_word case_000616_mask = case_000616_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000616_seqAtRank :
    translationSeqAtRankMask case_000616_rank case_000616_mask = case_000616_seq := by
  rw [translationSeqAtRankMask, case_000616_unrank]
  exact case_000616_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000616_bAtRank :
    translationBAtRankMask case_000616_rank case_000616_mask = case_000616_b := by
  rw [translationBAtRankMask, case_000616_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000616_b, case_000616_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000616_firstLine_eq :
    case_000616_support.firstLine case_000616_seq case_000616_b = case_000616_firstLine := by
  norm_num [case_000616_firstLine, case_000616_support, case_000616_seq, case_000616_b,
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
private theorem case_000616_secondLine_eq :
    case_000616_support.secondLine case_000616_seq case_000616_b = case_000616_secondLine := by
  norm_num [case_000616_secondLine, case_000616_support, case_000616_seq, case_000616_b,
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
private theorem case_000616_sourceAgrees :
    SourceAgrees case_000616_support case_000616_rank.val case_000616_mask := by
  intro hlt
  have hrank : (⟨case_000616_rank.val, hlt⟩ : Fin numPairWords) = case_000616_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000616_rank.val, hlt⟩ case_000616_mask =
        case_000616_seq := by
    simpa [hrank] using case_000616_seqAtRank
  simp [SourceChecks, hseq, case_000616_support,
    checkTranslationConstraintSource, case_000616_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000616_rows :
    OppMinusOneVarFirstRows case_000616_support case_000616_rank.val case_000616_mask := by
  intro hlt
  have hrank : (⟨case_000616_rank.val, hlt⟩ : Fin numPairWords) = case_000616_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000616_rank.val, hlt⟩ case_000616_mask =
        case_000616_seq := by
    simpa [hrank] using case_000616_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000616_rank.val, hlt⟩ case_000616_mask =
        case_000616_b := by
    simpa [hrank] using case_000616_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000616_support case_000616_rank.val hlt
          case_000616_mask = case_000616_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000616_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000616_support case_000616_rank.val hlt
          case_000616_mask = case_000616_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000616_secondLine_eq]
  have case_000616_rowFirst :
      OppNegRow (FirstLineAt case_000616_support case_000616_rank.val hlt case_000616_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000616_firstLine, OppNegRow]
  have case_000616_fixedSecond :
      FixedRow (SecondLineAt case_000616_support case_000616_rank.val hlt case_000616_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000616_secondLine, FixedRow]
  exact ⟨case_000616_rowFirst, case_000616_fixedSecond⟩

private theorem case_000616_existsRows :
    ExistsOppMinusOneVarFirstRows case_000616_rank.val case_000616_mask :=
  ⟨case_000616_support, case_000616_sourceAgrees, case_000616_rows⟩

private theorem case_000616_covered :
    RowPropertyParametricCovered case_000616_rank.val case_000616_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000616_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000617_rank : Fin numPairWords := ⟨369, by decide⟩
private def case_000617_mask : SignMask := ⟨54, by decide⟩
private def case_000617_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000617_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000617_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000617_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000617_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_000617_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000617_rankWord :
    rankPairWord? case_000617_word = some case_000617_rank := by
  decide

private theorem case_000617_unrank :
    unrankPairWord case_000617_rank = case_000617_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000617_word case_000617_rank).1
    case_000617_rankWord |>.symm

private theorem case_000617_seqChoice :
    translationChoiceSeq case_000617_word case_000617_mask = case_000617_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000617_seqAtRank :
    translationSeqAtRankMask case_000617_rank case_000617_mask = case_000617_seq := by
  rw [translationSeqAtRankMask, case_000617_unrank]
  exact case_000617_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000617_bAtRank :
    translationBAtRankMask case_000617_rank case_000617_mask = case_000617_b := by
  rw [translationBAtRankMask, case_000617_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000617_b, case_000617_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000617_firstLine_eq :
    case_000617_support.firstLine case_000617_seq case_000617_b = case_000617_firstLine := by
  norm_num [case_000617_firstLine, case_000617_support, case_000617_seq, case_000617_b,
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
private theorem case_000617_secondLine_eq :
    case_000617_support.secondLine case_000617_seq case_000617_b = case_000617_secondLine := by
  norm_num [case_000617_secondLine, case_000617_support, case_000617_seq, case_000617_b,
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
private theorem case_000617_sourceAgrees :
    SourceAgrees case_000617_support case_000617_rank.val case_000617_mask := by
  intro hlt
  have hrank : (⟨case_000617_rank.val, hlt⟩ : Fin numPairWords) = case_000617_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000617_rank.val, hlt⟩ case_000617_mask =
        case_000617_seq := by
    simpa [hrank] using case_000617_seqAtRank
  simp [SourceChecks, hseq, case_000617_support,
    checkTranslationConstraintSource, case_000617_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000617_rows :
    OppOneMinusVarFirstRows case_000617_support case_000617_rank.val case_000617_mask := by
  intro hlt
  have hrank : (⟨case_000617_rank.val, hlt⟩ : Fin numPairWords) = case_000617_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000617_rank.val, hlt⟩ case_000617_mask =
        case_000617_seq := by
    simpa [hrank] using case_000617_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000617_rank.val, hlt⟩ case_000617_mask =
        case_000617_b := by
    simpa [hrank] using case_000617_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000617_support case_000617_rank.val hlt
          case_000617_mask = case_000617_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000617_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000617_support case_000617_rank.val hlt
          case_000617_mask = case_000617_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000617_secondLine_eq]
  have case_000617_rowFirst :
      OppPosRow (FirstLineAt case_000617_support case_000617_rank.val hlt case_000617_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000617_firstLine, OppPosRow]
  have case_000617_fixedSecond :
      FixedRow (SecondLineAt case_000617_support case_000617_rank.val hlt case_000617_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000617_secondLine, FixedRow]
  exact ⟨case_000617_rowFirst, case_000617_fixedSecond⟩

private theorem case_000617_existsRows :
    ExistsOppOneMinusVarFirstRows case_000617_rank.val case_000617_mask :=
  ⟨case_000617_support, case_000617_sourceAgrees, case_000617_rows⟩

private theorem case_000617_covered :
    RowPropertyParametricCovered case_000617_rank.val case_000617_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000617_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000618_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000618_mask : SignMask := ⟨7, by decide⟩
private def case_000618_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000618_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000618_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000618_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000618_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000618_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000618_rankWord :
    rankPairWord? case_000618_word = some case_000618_rank := by
  decide

private theorem case_000618_unrank :
    unrankPairWord case_000618_rank = case_000618_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000618_word case_000618_rank).1
    case_000618_rankWord |>.symm

private theorem case_000618_seqChoice :
    translationChoiceSeq case_000618_word case_000618_mask = case_000618_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000618_seqAtRank :
    translationSeqAtRankMask case_000618_rank case_000618_mask = case_000618_seq := by
  rw [translationSeqAtRankMask, case_000618_unrank]
  exact case_000618_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000618_bAtRank :
    translationBAtRankMask case_000618_rank case_000618_mask = case_000618_b := by
  rw [translationBAtRankMask, case_000618_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000618_b, case_000618_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000618_firstLine_eq :
    case_000618_support.firstLine case_000618_seq case_000618_b = case_000618_firstLine := by
  norm_num [case_000618_firstLine, case_000618_support, case_000618_seq, case_000618_b,
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
private theorem case_000618_secondLine_eq :
    case_000618_support.secondLine case_000618_seq case_000618_b = case_000618_secondLine := by
  norm_num [case_000618_secondLine, case_000618_support, case_000618_seq, case_000618_b,
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
private theorem case_000618_sourceAgrees :
    SourceAgrees case_000618_support case_000618_rank.val case_000618_mask := by
  intro hlt
  have hrank : (⟨case_000618_rank.val, hlt⟩ : Fin numPairWords) = case_000618_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000618_rank.val, hlt⟩ case_000618_mask =
        case_000618_seq := by
    simpa [hrank] using case_000618_seqAtRank
  simp [SourceChecks, hseq, case_000618_support,
    checkTranslationConstraintSource, case_000618_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000618_rows :
    EqEqPosVarFirstRows case_000618_support case_000618_rank.val case_000618_mask := by
  intro hlt
  have hrank : (⟨case_000618_rank.val, hlt⟩ : Fin numPairWords) = case_000618_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000618_rank.val, hlt⟩ case_000618_mask =
        case_000618_seq := by
    simpa [hrank] using case_000618_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000618_rank.val, hlt⟩ case_000618_mask =
        case_000618_b := by
    simpa [hrank] using case_000618_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000618_support case_000618_rank.val hlt
          case_000618_mask = case_000618_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000618_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000618_support case_000618_rank.val hlt
          case_000618_mask = case_000618_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000618_secondLine_eq]
  have case_000618_rowFirst :
      EqEqPosRow (FirstLineAt case_000618_support case_000618_rank.val hlt case_000618_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000618_firstLine, EqEqPosRow]
  have case_000618_fixedSecond :
      FixedRow (SecondLineAt case_000618_support case_000618_rank.val hlt case_000618_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000618_secondLine, FixedRow]
  exact ⟨case_000618_rowFirst, case_000618_fixedSecond⟩

private theorem case_000618_existsRows :
    ExistsEqEqPosVarFirstRows case_000618_rank.val case_000618_mask :=
  ⟨case_000618_support, case_000618_sourceAgrees, case_000618_rows⟩

private theorem case_000618_covered :
    RowPropertyParametricCovered case_000618_rank.val case_000618_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000618_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000619_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000619_mask : SignMask := ⟨9, by decide⟩
private def case_000619_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000619_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000619_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000619_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000619_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000619_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000619_rankWord :
    rankPairWord? case_000619_word = some case_000619_rank := by
  decide

private theorem case_000619_unrank :
    unrankPairWord case_000619_rank = case_000619_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000619_word case_000619_rank).1
    case_000619_rankWord |>.symm

private theorem case_000619_seqChoice :
    translationChoiceSeq case_000619_word case_000619_mask = case_000619_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000619_seqAtRank :
    translationSeqAtRankMask case_000619_rank case_000619_mask = case_000619_seq := by
  rw [translationSeqAtRankMask, case_000619_unrank]
  exact case_000619_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000619_bAtRank :
    translationBAtRankMask case_000619_rank case_000619_mask = case_000619_b := by
  rw [translationBAtRankMask, case_000619_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000619_b, case_000619_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000619_firstLine_eq :
    case_000619_support.firstLine case_000619_seq case_000619_b = case_000619_firstLine := by
  norm_num [case_000619_firstLine, case_000619_support, case_000619_seq, case_000619_b,
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
private theorem case_000619_secondLine_eq :
    case_000619_support.secondLine case_000619_seq case_000619_b = case_000619_secondLine := by
  norm_num [case_000619_secondLine, case_000619_support, case_000619_seq, case_000619_b,
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
private theorem case_000619_sourceAgrees :
    SourceAgrees case_000619_support case_000619_rank.val case_000619_mask := by
  intro hlt
  have hrank : (⟨case_000619_rank.val, hlt⟩ : Fin numPairWords) = case_000619_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000619_rank.val, hlt⟩ case_000619_mask =
        case_000619_seq := by
    simpa [hrank] using case_000619_seqAtRank
  simp [SourceChecks, hseq, case_000619_support,
    checkTranslationConstraintSource, case_000619_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000619_rows :
    EqEqPosVarFirstRows case_000619_support case_000619_rank.val case_000619_mask := by
  intro hlt
  have hrank : (⟨case_000619_rank.val, hlt⟩ : Fin numPairWords) = case_000619_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000619_rank.val, hlt⟩ case_000619_mask =
        case_000619_seq := by
    simpa [hrank] using case_000619_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000619_rank.val, hlt⟩ case_000619_mask =
        case_000619_b := by
    simpa [hrank] using case_000619_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000619_support case_000619_rank.val hlt
          case_000619_mask = case_000619_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000619_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000619_support case_000619_rank.val hlt
          case_000619_mask = case_000619_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000619_secondLine_eq]
  have case_000619_rowFirst :
      EqEqPosRow (FirstLineAt case_000619_support case_000619_rank.val hlt case_000619_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000619_firstLine, EqEqPosRow]
  have case_000619_fixedSecond :
      FixedRow (SecondLineAt case_000619_support case_000619_rank.val hlt case_000619_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000619_secondLine, FixedRow]
  exact ⟨case_000619_rowFirst, case_000619_fixedSecond⟩

private theorem case_000619_existsRows :
    ExistsEqEqPosVarFirstRows case_000619_rank.val case_000619_mask :=
  ⟨case_000619_support, case_000619_sourceAgrees, case_000619_rows⟩

private theorem case_000619_covered :
    RowPropertyParametricCovered case_000619_rank.val case_000619_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000619_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000620_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000620_mask : SignMask := ⟨13, by decide⟩
private def case_000620_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000620_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000620_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000620_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000620_firstLine : StrictLin2 := { a := 1, b := -1, c := (-59/25) }
private def case_000620_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000620_rankWord :
    rankPairWord? case_000620_word = some case_000620_rank := by
  decide

private theorem case_000620_unrank :
    unrankPairWord case_000620_rank = case_000620_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000620_word case_000620_rank).1
    case_000620_rankWord |>.symm

private theorem case_000620_seqChoice :
    translationChoiceSeq case_000620_word case_000620_mask = case_000620_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000620_seqAtRank :
    translationSeqAtRankMask case_000620_rank case_000620_mask = case_000620_seq := by
  rw [translationSeqAtRankMask, case_000620_unrank]
  exact case_000620_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000620_bAtRank :
    translationBAtRankMask case_000620_rank case_000620_mask = case_000620_b := by
  rw [translationBAtRankMask, case_000620_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000620_b, case_000620_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000620_firstLine_eq :
    case_000620_support.firstLine case_000620_seq case_000620_b = case_000620_firstLine := by
  norm_num [case_000620_firstLine, case_000620_support, case_000620_seq, case_000620_b,
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
private theorem case_000620_secondLine_eq :
    case_000620_support.secondLine case_000620_seq case_000620_b = case_000620_secondLine := by
  norm_num [case_000620_secondLine, case_000620_support, case_000620_seq, case_000620_b,
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
private theorem case_000620_sourceAgrees :
    SourceAgrees case_000620_support case_000620_rank.val case_000620_mask := by
  intro hlt
  have hrank : (⟨case_000620_rank.val, hlt⟩ : Fin numPairWords) = case_000620_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000620_rank.val, hlt⟩ case_000620_mask =
        case_000620_seq := by
    simpa [hrank] using case_000620_seqAtRank
  simp [SourceChecks, hseq, case_000620_support,
    checkTranslationConstraintSource, case_000620_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000620_rows :
    OppMinusOneVarFirstRows case_000620_support case_000620_rank.val case_000620_mask := by
  intro hlt
  have hrank : (⟨case_000620_rank.val, hlt⟩ : Fin numPairWords) = case_000620_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000620_rank.val, hlt⟩ case_000620_mask =
        case_000620_seq := by
    simpa [hrank] using case_000620_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000620_rank.val, hlt⟩ case_000620_mask =
        case_000620_b := by
    simpa [hrank] using case_000620_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000620_support case_000620_rank.val hlt
          case_000620_mask = case_000620_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000620_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000620_support case_000620_rank.val hlt
          case_000620_mask = case_000620_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000620_secondLine_eq]
  have case_000620_rowFirst :
      OppNegRow (FirstLineAt case_000620_support case_000620_rank.val hlt case_000620_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000620_firstLine, OppNegRow]
  have case_000620_fixedSecond :
      FixedRow (SecondLineAt case_000620_support case_000620_rank.val hlt case_000620_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000620_secondLine, FixedRow]
  exact ⟨case_000620_rowFirst, case_000620_fixedSecond⟩

private theorem case_000620_existsRows :
    ExistsOppMinusOneVarFirstRows case_000620_rank.val case_000620_mask :=
  ⟨case_000620_support, case_000620_sourceAgrees, case_000620_rows⟩

private theorem case_000620_covered :
    RowPropertyParametricCovered case_000620_rank.val case_000620_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000620_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000621_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000621_mask : SignMask := ⟨15, by decide⟩
private def case_000621_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000621_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000621_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000621_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (4/9) }
private def case_000621_firstLine : StrictLin2 := { a := (-25/51), b := (-25/51), c := (-121/51) }
private def case_000621_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000621_rankWord :
    rankPairWord? case_000621_word = some case_000621_rank := by
  decide

private theorem case_000621_unrank :
    unrankPairWord case_000621_rank = case_000621_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000621_word case_000621_rank).1
    case_000621_rankWord |>.symm

private theorem case_000621_seqChoice :
    translationChoiceSeq case_000621_word case_000621_mask = case_000621_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000621_seqAtRank :
    translationSeqAtRankMask case_000621_rank case_000621_mask = case_000621_seq := by
  rw [translationSeqAtRankMask, case_000621_unrank]
  exact case_000621_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000621_bAtRank :
    translationBAtRankMask case_000621_rank case_000621_mask = case_000621_b := by
  rw [translationBAtRankMask, case_000621_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000621_b, case_000621_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000621_firstLine_eq :
    case_000621_support.firstLine case_000621_seq case_000621_b = case_000621_firstLine := by
  norm_num [case_000621_firstLine, case_000621_support, case_000621_seq, case_000621_b,
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
private theorem case_000621_secondLine_eq :
    case_000621_support.secondLine case_000621_seq case_000621_b = case_000621_secondLine := by
  norm_num [case_000621_secondLine, case_000621_support, case_000621_seq, case_000621_b,
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
private theorem case_000621_sourceAgrees :
    SourceAgrees case_000621_support case_000621_rank.val case_000621_mask := by
  intro hlt
  have hrank : (⟨case_000621_rank.val, hlt⟩ : Fin numPairWords) = case_000621_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000621_rank.val, hlt⟩ case_000621_mask =
        case_000621_seq := by
    simpa [hrank] using case_000621_seqAtRank
  simp [SourceChecks, hseq, case_000621_support,
    checkTranslationConstraintSource, case_000621_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000621_rows :
    EqEqPosVarFirstRows case_000621_support case_000621_rank.val case_000621_mask := by
  intro hlt
  have hrank : (⟨case_000621_rank.val, hlt⟩ : Fin numPairWords) = case_000621_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000621_rank.val, hlt⟩ case_000621_mask =
        case_000621_seq := by
    simpa [hrank] using case_000621_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000621_rank.val, hlt⟩ case_000621_mask =
        case_000621_b := by
    simpa [hrank] using case_000621_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000621_support case_000621_rank.val hlt
          case_000621_mask = case_000621_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000621_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000621_support case_000621_rank.val hlt
          case_000621_mask = case_000621_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000621_secondLine_eq]
  have case_000621_rowFirst :
      EqEqPosRow (FirstLineAt case_000621_support case_000621_rank.val hlt case_000621_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000621_firstLine, EqEqPosRow]
  have case_000621_fixedSecond :
      FixedRow (SecondLineAt case_000621_support case_000621_rank.val hlt case_000621_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000621_secondLine, FixedRow]
  exact ⟨case_000621_rowFirst, case_000621_fixedSecond⟩

private theorem case_000621_existsRows :
    ExistsEqEqPosVarFirstRows case_000621_rank.val case_000621_mask :=
  ⟨case_000621_support, case_000621_sourceAgrees, case_000621_rows⟩

private theorem case_000621_covered :
    RowPropertyParametricCovered case_000621_rank.val case_000621_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000621_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000622_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000622_mask : SignMask := ⟨18, by decide⟩
private def case_000622_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000622_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000622_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000622_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000622_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000622_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000622_rankWord :
    rankPairWord? case_000622_word = some case_000622_rank := by
  decide

private theorem case_000622_unrank :
    unrankPairWord case_000622_rank = case_000622_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000622_word case_000622_rank).1
    case_000622_rankWord |>.symm

private theorem case_000622_seqChoice :
    translationChoiceSeq case_000622_word case_000622_mask = case_000622_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000622_seqAtRank :
    translationSeqAtRankMask case_000622_rank case_000622_mask = case_000622_seq := by
  rw [translationSeqAtRankMask, case_000622_unrank]
  exact case_000622_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000622_bAtRank :
    translationBAtRankMask case_000622_rank case_000622_mask = case_000622_b := by
  rw [translationBAtRankMask, case_000622_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000622_b, case_000622_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000622_firstLine_eq :
    case_000622_support.firstLine case_000622_seq case_000622_b = case_000622_firstLine := by
  norm_num [case_000622_firstLine, case_000622_support, case_000622_seq, case_000622_b,
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
private theorem case_000622_secondLine_eq :
    case_000622_support.secondLine case_000622_seq case_000622_b = case_000622_secondLine := by
  norm_num [case_000622_secondLine, case_000622_support, case_000622_seq, case_000622_b,
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
private theorem case_000622_sourceAgrees :
    SourceAgrees case_000622_support case_000622_rank.val case_000622_mask := by
  intro hlt
  have hrank : (⟨case_000622_rank.val, hlt⟩ : Fin numPairWords) = case_000622_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000622_rank.val, hlt⟩ case_000622_mask =
        case_000622_seq := by
    simpa [hrank] using case_000622_seqAtRank
  simp [SourceChecks, hseq, case_000622_support,
    checkTranslationConstraintSource, case_000622_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000622_rows :
    EqEqPosVarFirstRows case_000622_support case_000622_rank.val case_000622_mask := by
  intro hlt
  have hrank : (⟨case_000622_rank.val, hlt⟩ : Fin numPairWords) = case_000622_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000622_rank.val, hlt⟩ case_000622_mask =
        case_000622_seq := by
    simpa [hrank] using case_000622_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000622_rank.val, hlt⟩ case_000622_mask =
        case_000622_b := by
    simpa [hrank] using case_000622_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000622_support case_000622_rank.val hlt
          case_000622_mask = case_000622_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000622_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000622_support case_000622_rank.val hlt
          case_000622_mask = case_000622_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000622_secondLine_eq]
  have case_000622_rowFirst :
      EqEqPosRow (FirstLineAt case_000622_support case_000622_rank.val hlt case_000622_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000622_firstLine, EqEqPosRow]
  have case_000622_fixedSecond :
      FixedRow (SecondLineAt case_000622_support case_000622_rank.val hlt case_000622_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000622_secondLine, FixedRow]
  exact ⟨case_000622_rowFirst, case_000622_fixedSecond⟩

private theorem case_000622_existsRows :
    ExistsEqEqPosVarFirstRows case_000622_rank.val case_000622_mask :=
  ⟨case_000622_support, case_000622_sourceAgrees, case_000622_rows⟩

private theorem case_000622_covered :
    RowPropertyParametricCovered case_000622_rank.val case_000622_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000622_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000623_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000623_mask : SignMask := ⟨22, by decide⟩
private def case_000623_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000623_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000623_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000623_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000623_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_000623_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000623_rankWord :
    rankPairWord? case_000623_word = some case_000623_rank := by
  decide

private theorem case_000623_unrank :
    unrankPairWord case_000623_rank = case_000623_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000623_word case_000623_rank).1
    case_000623_rankWord |>.symm

private theorem case_000623_seqChoice :
    translationChoiceSeq case_000623_word case_000623_mask = case_000623_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000623_seqAtRank :
    translationSeqAtRankMask case_000623_rank case_000623_mask = case_000623_seq := by
  rw [translationSeqAtRankMask, case_000623_unrank]
  exact case_000623_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000623_bAtRank :
    translationBAtRankMask case_000623_rank case_000623_mask = case_000623_b := by
  rw [translationBAtRankMask, case_000623_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000623_b, case_000623_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000623_firstLine_eq :
    case_000623_support.firstLine case_000623_seq case_000623_b = case_000623_firstLine := by
  norm_num [case_000623_firstLine, case_000623_support, case_000623_seq, case_000623_b,
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
private theorem case_000623_secondLine_eq :
    case_000623_support.secondLine case_000623_seq case_000623_b = case_000623_secondLine := by
  norm_num [case_000623_secondLine, case_000623_support, case_000623_seq, case_000623_b,
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
private theorem case_000623_sourceAgrees :
    SourceAgrees case_000623_support case_000623_rank.val case_000623_mask := by
  intro hlt
  have hrank : (⟨case_000623_rank.val, hlt⟩ : Fin numPairWords) = case_000623_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000623_rank.val, hlt⟩ case_000623_mask =
        case_000623_seq := by
    simpa [hrank] using case_000623_seqAtRank
  simp [SourceChecks, hseq, case_000623_support,
    checkTranslationConstraintSource, case_000623_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000623_rows :
    OppOneMinusVarFirstRows case_000623_support case_000623_rank.val case_000623_mask := by
  intro hlt
  have hrank : (⟨case_000623_rank.val, hlt⟩ : Fin numPairWords) = case_000623_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000623_rank.val, hlt⟩ case_000623_mask =
        case_000623_seq := by
    simpa [hrank] using case_000623_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000623_rank.val, hlt⟩ case_000623_mask =
        case_000623_b := by
    simpa [hrank] using case_000623_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000623_support case_000623_rank.val hlt
          case_000623_mask = case_000623_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000623_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000623_support case_000623_rank.val hlt
          case_000623_mask = case_000623_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000623_secondLine_eq]
  have case_000623_rowFirst :
      OppPosRow (FirstLineAt case_000623_support case_000623_rank.val hlt case_000623_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000623_firstLine, OppPosRow]
  have case_000623_fixedSecond :
      FixedRow (SecondLineAt case_000623_support case_000623_rank.val hlt case_000623_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000623_secondLine, FixedRow]
  exact ⟨case_000623_rowFirst, case_000623_fixedSecond⟩

private theorem case_000623_existsRows :
    ExistsOppOneMinusVarFirstRows case_000623_rank.val case_000623_mask :=
  ⟨case_000623_support, case_000623_sourceAgrees, case_000623_rows⟩

private theorem case_000623_covered :
    RowPropertyParametricCovered case_000623_rank.val case_000623_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000623_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000624_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000624_mask : SignMask := ⟨23, by decide⟩
private def case_000624_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000624_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000624_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000624_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (100/9) }
private def case_000624_firstLine : StrictLin2 := { a := (-25/51), b := (-25/51), c := (-121/51) }
private def case_000624_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000624_rankWord :
    rankPairWord? case_000624_word = some case_000624_rank := by
  decide

private theorem case_000624_unrank :
    unrankPairWord case_000624_rank = case_000624_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000624_word case_000624_rank).1
    case_000624_rankWord |>.symm

private theorem case_000624_seqChoice :
    translationChoiceSeq case_000624_word case_000624_mask = case_000624_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000624_seqAtRank :
    translationSeqAtRankMask case_000624_rank case_000624_mask = case_000624_seq := by
  rw [translationSeqAtRankMask, case_000624_unrank]
  exact case_000624_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000624_bAtRank :
    translationBAtRankMask case_000624_rank case_000624_mask = case_000624_b := by
  rw [translationBAtRankMask, case_000624_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000624_b, case_000624_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000624_firstLine_eq :
    case_000624_support.firstLine case_000624_seq case_000624_b = case_000624_firstLine := by
  norm_num [case_000624_firstLine, case_000624_support, case_000624_seq, case_000624_b,
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
private theorem case_000624_secondLine_eq :
    case_000624_support.secondLine case_000624_seq case_000624_b = case_000624_secondLine := by
  norm_num [case_000624_secondLine, case_000624_support, case_000624_seq, case_000624_b,
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
private theorem case_000624_sourceAgrees :
    SourceAgrees case_000624_support case_000624_rank.val case_000624_mask := by
  intro hlt
  have hrank : (⟨case_000624_rank.val, hlt⟩ : Fin numPairWords) = case_000624_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000624_rank.val, hlt⟩ case_000624_mask =
        case_000624_seq := by
    simpa [hrank] using case_000624_seqAtRank
  simp [SourceChecks, hseq, case_000624_support,
    checkTranslationConstraintSource, case_000624_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000624_rows :
    EqEqPosVarFirstRows case_000624_support case_000624_rank.val case_000624_mask := by
  intro hlt
  have hrank : (⟨case_000624_rank.val, hlt⟩ : Fin numPairWords) = case_000624_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000624_rank.val, hlt⟩ case_000624_mask =
        case_000624_seq := by
    simpa [hrank] using case_000624_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000624_rank.val, hlt⟩ case_000624_mask =
        case_000624_b := by
    simpa [hrank] using case_000624_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000624_support case_000624_rank.val hlt
          case_000624_mask = case_000624_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000624_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000624_support case_000624_rank.val hlt
          case_000624_mask = case_000624_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000624_secondLine_eq]
  have case_000624_rowFirst :
      EqEqPosRow (FirstLineAt case_000624_support case_000624_rank.val hlt case_000624_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000624_firstLine, EqEqPosRow]
  have case_000624_fixedSecond :
      FixedRow (SecondLineAt case_000624_support case_000624_rank.val hlt case_000624_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000624_secondLine, FixedRow]
  exact ⟨case_000624_rowFirst, case_000624_fixedSecond⟩

private theorem case_000624_existsRows :
    ExistsEqEqPosVarFirstRows case_000624_rank.val case_000624_mask :=
  ⟨case_000624_support, case_000624_sourceAgrees, case_000624_rows⟩

private theorem case_000624_covered :
    RowPropertyParametricCovered case_000624_rank.val case_000624_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000624_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000625_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000625_mask : SignMask := ⟨24, by decide⟩
private def case_000625_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000625_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000625_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000625_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000625_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000625_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000625_rankWord :
    rankPairWord? case_000625_word = some case_000625_rank := by
  decide

private theorem case_000625_unrank :
    unrankPairWord case_000625_rank = case_000625_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000625_word case_000625_rank).1
    case_000625_rankWord |>.symm

private theorem case_000625_seqChoice :
    translationChoiceSeq case_000625_word case_000625_mask = case_000625_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000625_seqAtRank :
    translationSeqAtRankMask case_000625_rank case_000625_mask = case_000625_seq := by
  rw [translationSeqAtRankMask, case_000625_unrank]
  exact case_000625_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000625_bAtRank :
    translationBAtRankMask case_000625_rank case_000625_mask = case_000625_b := by
  rw [translationBAtRankMask, case_000625_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000625_b, case_000625_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000625_firstLine_eq :
    case_000625_support.firstLine case_000625_seq case_000625_b = case_000625_firstLine := by
  norm_num [case_000625_firstLine, case_000625_support, case_000625_seq, case_000625_b,
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
private theorem case_000625_secondLine_eq :
    case_000625_support.secondLine case_000625_seq case_000625_b = case_000625_secondLine := by
  norm_num [case_000625_secondLine, case_000625_support, case_000625_seq, case_000625_b,
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
private theorem case_000625_sourceAgrees :
    SourceAgrees case_000625_support case_000625_rank.val case_000625_mask := by
  intro hlt
  have hrank : (⟨case_000625_rank.val, hlt⟩ : Fin numPairWords) = case_000625_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000625_rank.val, hlt⟩ case_000625_mask =
        case_000625_seq := by
    simpa [hrank] using case_000625_seqAtRank
  simp [SourceChecks, hseq, case_000625_support,
    checkTranslationConstraintSource, case_000625_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000625_rows :
    EqEqPosVarFirstRows case_000625_support case_000625_rank.val case_000625_mask := by
  intro hlt
  have hrank : (⟨case_000625_rank.val, hlt⟩ : Fin numPairWords) = case_000625_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000625_rank.val, hlt⟩ case_000625_mask =
        case_000625_seq := by
    simpa [hrank] using case_000625_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000625_rank.val, hlt⟩ case_000625_mask =
        case_000625_b := by
    simpa [hrank] using case_000625_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000625_support case_000625_rank.val hlt
          case_000625_mask = case_000625_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000625_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000625_support case_000625_rank.val hlt
          case_000625_mask = case_000625_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000625_secondLine_eq]
  have case_000625_rowFirst :
      EqEqPosRow (FirstLineAt case_000625_support case_000625_rank.val hlt case_000625_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000625_firstLine, EqEqPosRow]
  have case_000625_fixedSecond :
      FixedRow (SecondLineAt case_000625_support case_000625_rank.val hlt case_000625_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000625_secondLine, FixedRow]
  exact ⟨case_000625_rowFirst, case_000625_fixedSecond⟩

private theorem case_000625_existsRows :
    ExistsEqEqPosVarFirstRows case_000625_rank.val case_000625_mask :=
  ⟨case_000625_support, case_000625_sourceAgrees, case_000625_rows⟩

private theorem case_000625_covered :
    RowPropertyParametricCovered case_000625_rank.val case_000625_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000625_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000626_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000626_mask : SignMask := ⟨28, by decide⟩
private def case_000626_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000626_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000626_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000626_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000626_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000626_secondLine : StrictLin2 := { a := (9/52), b := (-9/52), c := (-9/26) }

private theorem case_000626_rankWord :
    rankPairWord? case_000626_word = some case_000626_rank := by
  decide

private theorem case_000626_unrank :
    unrankPairWord case_000626_rank = case_000626_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000626_word case_000626_rank).1
    case_000626_rankWord |>.symm

private theorem case_000626_seqChoice :
    translationChoiceSeq case_000626_word case_000626_mask = case_000626_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000626_seqAtRank :
    translationSeqAtRankMask case_000626_rank case_000626_mask = case_000626_seq := by
  rw [translationSeqAtRankMask, case_000626_unrank]
  exact case_000626_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000626_bAtRank :
    translationBAtRankMask case_000626_rank case_000626_mask = case_000626_b := by
  rw [translationBAtRankMask, case_000626_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000626_b, case_000626_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000626_firstLine_eq :
    case_000626_support.firstLine case_000626_seq case_000626_b = case_000626_firstLine := by
  norm_num [case_000626_firstLine, case_000626_support, case_000626_seq, case_000626_b,
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
private theorem case_000626_secondLine_eq :
    case_000626_support.secondLine case_000626_seq case_000626_b = case_000626_secondLine := by
  norm_num [case_000626_secondLine, case_000626_support, case_000626_seq, case_000626_b,
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
private theorem case_000626_sourceAgrees :
    SourceAgrees case_000626_support case_000626_rank.val case_000626_mask := by
  intro hlt
  have hrank : (⟨case_000626_rank.val, hlt⟩ : Fin numPairWords) = case_000626_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000626_rank.val, hlt⟩ case_000626_mask =
        case_000626_seq := by
    simpa [hrank] using case_000626_seqAtRank
  simp [SourceChecks, hseq, case_000626_support,
    checkTranslationConstraintSource, case_000626_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000626_rows :
    OppMinusOneVarSecondRows case_000626_support case_000626_rank.val case_000626_mask := by
  intro hlt
  have hrank : (⟨case_000626_rank.val, hlt⟩ : Fin numPairWords) = case_000626_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000626_rank.val, hlt⟩ case_000626_mask =
        case_000626_seq := by
    simpa [hrank] using case_000626_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000626_rank.val, hlt⟩ case_000626_mask =
        case_000626_b := by
    simpa [hrank] using case_000626_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000626_support case_000626_rank.val hlt
          case_000626_mask = case_000626_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000626_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000626_support case_000626_rank.val hlt
          case_000626_mask = case_000626_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000626_secondLine_eq]
  have case_000626_fixedFirst :
      FixedRow (FirstLineAt case_000626_support case_000626_rank.val hlt case_000626_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000626_firstLine, FixedRow]
  have case_000626_rowSecond :
      OppNegRow (SecondLineAt case_000626_support case_000626_rank.val hlt case_000626_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000626_secondLine, OppNegRow]
  exact ⟨case_000626_fixedFirst, case_000626_rowSecond⟩

private theorem case_000626_existsRows :
    ExistsOppMinusOneVarSecondRows case_000626_rank.val case_000626_mask :=
  ⟨case_000626_support, case_000626_sourceAgrees, case_000626_rows⟩

private theorem case_000626_covered :
    RowPropertyParametricCovered case_000626_rank.val case_000626_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000626_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000627_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000627_mask : SignMask := ⟨31, by decide⟩
private def case_000627_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000627_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000627_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000627_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000627_firstLine : StrictLin2 := { a := (-29/39), b := (-29/39), c := (-17/3) }
private def case_000627_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000627_rankWord :
    rankPairWord? case_000627_word = some case_000627_rank := by
  decide

private theorem case_000627_unrank :
    unrankPairWord case_000627_rank = case_000627_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000627_word case_000627_rank).1
    case_000627_rankWord |>.symm

private theorem case_000627_seqChoice :
    translationChoiceSeq case_000627_word case_000627_mask = case_000627_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000627_seqAtRank :
    translationSeqAtRankMask case_000627_rank case_000627_mask = case_000627_seq := by
  rw [translationSeqAtRankMask, case_000627_unrank]
  exact case_000627_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000627_bAtRank :
    translationBAtRankMask case_000627_rank case_000627_mask = case_000627_b := by
  rw [translationBAtRankMask, case_000627_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000627_b, case_000627_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000627_firstLine_eq :
    case_000627_support.firstLine case_000627_seq case_000627_b = case_000627_firstLine := by
  norm_num [case_000627_firstLine, case_000627_support, case_000627_seq, case_000627_b,
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
private theorem case_000627_secondLine_eq :
    case_000627_support.secondLine case_000627_seq case_000627_b = case_000627_secondLine := by
  norm_num [case_000627_secondLine, case_000627_support, case_000627_seq, case_000627_b,
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
private theorem case_000627_sourceAgrees :
    SourceAgrees case_000627_support case_000627_rank.val case_000627_mask := by
  intro hlt
  have hrank : (⟨case_000627_rank.val, hlt⟩ : Fin numPairWords) = case_000627_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000627_rank.val, hlt⟩ case_000627_mask =
        case_000627_seq := by
    simpa [hrank] using case_000627_seqAtRank
  simp [SourceChecks, hseq, case_000627_support,
    checkTranslationConstraintSource, case_000627_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000627_rows :
    EqEqPosVarFirstRows case_000627_support case_000627_rank.val case_000627_mask := by
  intro hlt
  have hrank : (⟨case_000627_rank.val, hlt⟩ : Fin numPairWords) = case_000627_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000627_rank.val, hlt⟩ case_000627_mask =
        case_000627_seq := by
    simpa [hrank] using case_000627_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000627_rank.val, hlt⟩ case_000627_mask =
        case_000627_b := by
    simpa [hrank] using case_000627_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000627_support case_000627_rank.val hlt
          case_000627_mask = case_000627_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000627_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000627_support case_000627_rank.val hlt
          case_000627_mask = case_000627_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000627_secondLine_eq]
  have case_000627_rowFirst :
      EqEqPosRow (FirstLineAt case_000627_support case_000627_rank.val hlt case_000627_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000627_firstLine, EqEqPosRow]
  have case_000627_fixedSecond :
      FixedRow (SecondLineAt case_000627_support case_000627_rank.val hlt case_000627_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000627_secondLine, FixedRow]
  exact ⟨case_000627_rowFirst, case_000627_fixedSecond⟩

private theorem case_000627_existsRows :
    ExistsEqEqPosVarFirstRows case_000627_rank.val case_000627_mask :=
  ⟨case_000627_support, case_000627_sourceAgrees, case_000627_rows⟩

private theorem case_000627_covered :
    RowPropertyParametricCovered case_000627_rank.val case_000627_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000627_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000628_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000628_mask : SignMask := ⟨39, by decide⟩
private def case_000628_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000628_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000628_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000628_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (100/9) }
private def case_000628_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000628_secondLine : StrictLin2 := { a := (-1/170), b := (-1/170), c := (-24/85) }

private theorem case_000628_rankWord :
    rankPairWord? case_000628_word = some case_000628_rank := by
  decide

private theorem case_000628_unrank :
    unrankPairWord case_000628_rank = case_000628_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000628_word case_000628_rank).1
    case_000628_rankWord |>.symm

private theorem case_000628_seqChoice :
    translationChoiceSeq case_000628_word case_000628_mask = case_000628_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000628_seqAtRank :
    translationSeqAtRankMask case_000628_rank case_000628_mask = case_000628_seq := by
  rw [translationSeqAtRankMask, case_000628_unrank]
  exact case_000628_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000628_bAtRank :
    translationBAtRankMask case_000628_rank case_000628_mask = case_000628_b := by
  rw [translationBAtRankMask, case_000628_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000628_b, case_000628_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000628_firstLine_eq :
    case_000628_support.firstLine case_000628_seq case_000628_b = case_000628_firstLine := by
  norm_num [case_000628_firstLine, case_000628_support, case_000628_seq, case_000628_b,
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
private theorem case_000628_secondLine_eq :
    case_000628_support.secondLine case_000628_seq case_000628_b = case_000628_secondLine := by
  norm_num [case_000628_secondLine, case_000628_support, case_000628_seq, case_000628_b,
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
private theorem case_000628_sourceAgrees :
    SourceAgrees case_000628_support case_000628_rank.val case_000628_mask := by
  intro hlt
  have hrank : (⟨case_000628_rank.val, hlt⟩ : Fin numPairWords) = case_000628_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000628_rank.val, hlt⟩ case_000628_mask =
        case_000628_seq := by
    simpa [hrank] using case_000628_seqAtRank
  simp [SourceChecks, hseq, case_000628_support,
    checkTranslationConstraintSource, case_000628_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000628_rows :
    EqEqPosVarSecondRows case_000628_support case_000628_rank.val case_000628_mask := by
  intro hlt
  have hrank : (⟨case_000628_rank.val, hlt⟩ : Fin numPairWords) = case_000628_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000628_rank.val, hlt⟩ case_000628_mask =
        case_000628_seq := by
    simpa [hrank] using case_000628_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000628_rank.val, hlt⟩ case_000628_mask =
        case_000628_b := by
    simpa [hrank] using case_000628_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000628_support case_000628_rank.val hlt
          case_000628_mask = case_000628_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000628_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000628_support case_000628_rank.val hlt
          case_000628_mask = case_000628_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000628_secondLine_eq]
  have case_000628_fixedFirst :
      FixedRow (FirstLineAt case_000628_support case_000628_rank.val hlt case_000628_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000628_firstLine, FixedRow]
  have case_000628_rowSecond :
      EqEqPosRow (SecondLineAt case_000628_support case_000628_rank.val hlt case_000628_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000628_secondLine, EqEqPosRow]
  exact ⟨case_000628_fixedFirst, case_000628_rowSecond⟩

private theorem case_000628_existsRows :
    ExistsEqEqPosVarSecondRows case_000628_rank.val case_000628_mask :=
  ⟨case_000628_support, case_000628_sourceAgrees, case_000628_rows⟩

private theorem case_000628_covered :
    RowPropertyParametricCovered case_000628_rank.val case_000628_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000628_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000629_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000629_mask : SignMask := ⟨47, by decide⟩
private def case_000629_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000629_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000629_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000629_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000629_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000629_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_000629_rankWord :
    rankPairWord? case_000629_word = some case_000629_rank := by
  decide

private theorem case_000629_unrank :
    unrankPairWord case_000629_rank = case_000629_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000629_word case_000629_rank).1
    case_000629_rankWord |>.symm

private theorem case_000629_seqChoice :
    translationChoiceSeq case_000629_word case_000629_mask = case_000629_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000629_seqAtRank :
    translationSeqAtRankMask case_000629_rank case_000629_mask = case_000629_seq := by
  rw [translationSeqAtRankMask, case_000629_unrank]
  exact case_000629_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000629_bAtRank :
    translationBAtRankMask case_000629_rank case_000629_mask = case_000629_b := by
  rw [translationBAtRankMask, case_000629_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000629_b, case_000629_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000629_firstLine_eq :
    case_000629_support.firstLine case_000629_seq case_000629_b = case_000629_firstLine := by
  norm_num [case_000629_firstLine, case_000629_support, case_000629_seq, case_000629_b,
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
private theorem case_000629_secondLine_eq :
    case_000629_support.secondLine case_000629_seq case_000629_b = case_000629_secondLine := by
  norm_num [case_000629_secondLine, case_000629_support, case_000629_seq, case_000629_b,
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
private theorem case_000629_sourceAgrees :
    SourceAgrees case_000629_support case_000629_rank.val case_000629_mask := by
  intro hlt
  have hrank : (⟨case_000629_rank.val, hlt⟩ : Fin numPairWords) = case_000629_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000629_rank.val, hlt⟩ case_000629_mask =
        case_000629_seq := by
    simpa [hrank] using case_000629_seqAtRank
  simp [SourceChecks, hseq, case_000629_support,
    checkTranslationConstraintSource, case_000629_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000629_rows :
    EqEqPosVarSecondRows case_000629_support case_000629_rank.val case_000629_mask := by
  intro hlt
  have hrank : (⟨case_000629_rank.val, hlt⟩ : Fin numPairWords) = case_000629_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000629_rank.val, hlt⟩ case_000629_mask =
        case_000629_seq := by
    simpa [hrank] using case_000629_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000629_rank.val, hlt⟩ case_000629_mask =
        case_000629_b := by
    simpa [hrank] using case_000629_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000629_support case_000629_rank.val hlt
          case_000629_mask = case_000629_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000629_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000629_support case_000629_rank.val hlt
          case_000629_mask = case_000629_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000629_secondLine_eq]
  have case_000629_fixedFirst :
      FixedRow (FirstLineAt case_000629_support case_000629_rank.val hlt case_000629_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000629_firstLine, FixedRow]
  have case_000629_rowSecond :
      EqEqPosRow (SecondLineAt case_000629_support case_000629_rank.val hlt case_000629_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000629_secondLine, EqEqPosRow]
  exact ⟨case_000629_fixedFirst, case_000629_rowSecond⟩

private theorem case_000629_existsRows :
    ExistsEqEqPosVarSecondRows case_000629_rank.val case_000629_mask :=
  ⟨case_000629_support, case_000629_sourceAgrees, case_000629_rows⟩

private theorem case_000629_covered :
    RowPropertyParametricCovered case_000629_rank.val case_000629_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000629_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000630_rank : Fin numPairWords := ⟨371, by decide⟩
private def case_000630_mask : SignMask := ⟨55, by decide⟩
private def case_000630_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000630_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000630_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000630_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000630_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000630_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_000630_rankWord :
    rankPairWord? case_000630_word = some case_000630_rank := by
  decide

private theorem case_000630_unrank :
    unrankPairWord case_000630_rank = case_000630_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000630_word case_000630_rank).1
    case_000630_rankWord |>.symm

private theorem case_000630_seqChoice :
    translationChoiceSeq case_000630_word case_000630_mask = case_000630_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000630_seqAtRank :
    translationSeqAtRankMask case_000630_rank case_000630_mask = case_000630_seq := by
  rw [translationSeqAtRankMask, case_000630_unrank]
  exact case_000630_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000630_bAtRank :
    translationBAtRankMask case_000630_rank case_000630_mask = case_000630_b := by
  rw [translationBAtRankMask, case_000630_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000630_b, case_000630_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000630_firstLine_eq :
    case_000630_support.firstLine case_000630_seq case_000630_b = case_000630_firstLine := by
  norm_num [case_000630_firstLine, case_000630_support, case_000630_seq, case_000630_b,
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
private theorem case_000630_secondLine_eq :
    case_000630_support.secondLine case_000630_seq case_000630_b = case_000630_secondLine := by
  norm_num [case_000630_secondLine, case_000630_support, case_000630_seq, case_000630_b,
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
private theorem case_000630_sourceAgrees :
    SourceAgrees case_000630_support case_000630_rank.val case_000630_mask := by
  intro hlt
  have hrank : (⟨case_000630_rank.val, hlt⟩ : Fin numPairWords) = case_000630_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000630_rank.val, hlt⟩ case_000630_mask =
        case_000630_seq := by
    simpa [hrank] using case_000630_seqAtRank
  simp [SourceChecks, hseq, case_000630_support,
    checkTranslationConstraintSource, case_000630_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000630_rows :
    EqEqPosVarSecondRows case_000630_support case_000630_rank.val case_000630_mask := by
  intro hlt
  have hrank : (⟨case_000630_rank.val, hlt⟩ : Fin numPairWords) = case_000630_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000630_rank.val, hlt⟩ case_000630_mask =
        case_000630_seq := by
    simpa [hrank] using case_000630_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000630_rank.val, hlt⟩ case_000630_mask =
        case_000630_b := by
    simpa [hrank] using case_000630_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000630_support case_000630_rank.val hlt
          case_000630_mask = case_000630_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000630_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000630_support case_000630_rank.val hlt
          case_000630_mask = case_000630_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000630_secondLine_eq]
  have case_000630_fixedFirst :
      FixedRow (FirstLineAt case_000630_support case_000630_rank.val hlt case_000630_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000630_firstLine, FixedRow]
  have case_000630_rowSecond :
      EqEqPosRow (SecondLineAt case_000630_support case_000630_rank.val hlt case_000630_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000630_secondLine, EqEqPosRow]
  exact ⟨case_000630_fixedFirst, case_000630_rowSecond⟩

private theorem case_000630_existsRows :
    ExistsEqEqPosVarSecondRows case_000630_rank.val case_000630_mask :=
  ⟨case_000630_support, case_000630_sourceAgrees, case_000630_rows⟩

private theorem case_000630_covered :
    RowPropertyParametricCovered case_000630_rank.val case_000630_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000630_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000631_rank : Fin numPairWords := ⟨377, by decide⟩
private def case_000631_mask : SignMask := ⟨7, by decide⟩
private def case_000631_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000631_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000631_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000631_b : Vec3 Rat := { x := (-236/27), y := (236/27), z := (332/27) }
private def case_000631_firstLine : StrictLin2 := { a := 1, b := 1, c := (-225/59) }
private def case_000631_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000631_rankWord :
    rankPairWord? case_000631_word = some case_000631_rank := by
  decide

private theorem case_000631_unrank :
    unrankPairWord case_000631_rank = case_000631_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000631_word case_000631_rank).1
    case_000631_rankWord |>.symm

private theorem case_000631_seqChoice :
    translationChoiceSeq case_000631_word case_000631_mask = case_000631_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000631_seqAtRank :
    translationSeqAtRankMask case_000631_rank case_000631_mask = case_000631_seq := by
  rw [translationSeqAtRankMask, case_000631_unrank]
  exact case_000631_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000631_bAtRank :
    translationBAtRankMask case_000631_rank case_000631_mask = case_000631_b := by
  rw [translationBAtRankMask, case_000631_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000631_b, case_000631_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000631_firstLine_eq :
    case_000631_support.firstLine case_000631_seq case_000631_b = case_000631_firstLine := by
  norm_num [case_000631_firstLine, case_000631_support, case_000631_seq, case_000631_b,
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
private theorem case_000631_secondLine_eq :
    case_000631_support.secondLine case_000631_seq case_000631_b = case_000631_secondLine := by
  norm_num [case_000631_secondLine, case_000631_support, case_000631_seq, case_000631_b,
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
private theorem case_000631_sourceAgrees :
    SourceAgrees case_000631_support case_000631_rank.val case_000631_mask := by
  intro hlt
  have hrank : (⟨case_000631_rank.val, hlt⟩ : Fin numPairWords) = case_000631_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000631_rank.val, hlt⟩ case_000631_mask =
        case_000631_seq := by
    simpa [hrank] using case_000631_seqAtRank
  simp [SourceChecks, hseq, case_000631_support,
    checkTranslationConstraintSource, case_000631_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000631_rows :
    EqEqNegVarFirstRows case_000631_support case_000631_rank.val case_000631_mask := by
  intro hlt
  have hrank : (⟨case_000631_rank.val, hlt⟩ : Fin numPairWords) = case_000631_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000631_rank.val, hlt⟩ case_000631_mask =
        case_000631_seq := by
    simpa [hrank] using case_000631_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000631_rank.val, hlt⟩ case_000631_mask =
        case_000631_b := by
    simpa [hrank] using case_000631_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000631_support case_000631_rank.val hlt
          case_000631_mask = case_000631_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000631_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000631_support case_000631_rank.val hlt
          case_000631_mask = case_000631_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000631_secondLine_eq]
  have case_000631_rowFirst :
      EqEqNegRow (FirstLineAt case_000631_support case_000631_rank.val hlt case_000631_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000631_firstLine, EqEqNegRow]
  have case_000631_fixedSecond :
      FixedRow (SecondLineAt case_000631_support case_000631_rank.val hlt case_000631_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000631_secondLine, FixedRow]
  exact ⟨case_000631_rowFirst, case_000631_fixedSecond⟩

private theorem case_000631_existsRows :
    ExistsEqEqNegVarFirstRows case_000631_rank.val case_000631_mask :=
  ⟨case_000631_support, case_000631_sourceAgrees, case_000631_rows⟩

private theorem case_000631_covered :
    RowPropertyParametricCovered case_000631_rank.val case_000631_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000631_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000632_rank : Fin numPairWords := ⟨377, by decide⟩
private def case_000632_mask : SignMask := ⟨13, by decide⟩
private def case_000632_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000632_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000632_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000632_b : Vec3 Rat := { x := (-284/27), y := (284/27), z := (-124/27) }
private def case_000632_firstLine : StrictLin2 := { a := 1, b := -1, c := (-133/71) }
private def case_000632_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000632_rankWord :
    rankPairWord? case_000632_word = some case_000632_rank := by
  decide

private theorem case_000632_unrank :
    unrankPairWord case_000632_rank = case_000632_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000632_word case_000632_rank).1
    case_000632_rankWord |>.symm

private theorem case_000632_seqChoice :
    translationChoiceSeq case_000632_word case_000632_mask = case_000632_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000632_seqAtRank :
    translationSeqAtRankMask case_000632_rank case_000632_mask = case_000632_seq := by
  rw [translationSeqAtRankMask, case_000632_unrank]
  exact case_000632_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000632_bAtRank :
    translationBAtRankMask case_000632_rank case_000632_mask = case_000632_b := by
  rw [translationBAtRankMask, case_000632_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000632_b, case_000632_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000632_firstLine_eq :
    case_000632_support.firstLine case_000632_seq case_000632_b = case_000632_firstLine := by
  norm_num [case_000632_firstLine, case_000632_support, case_000632_seq, case_000632_b,
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
private theorem case_000632_secondLine_eq :
    case_000632_support.secondLine case_000632_seq case_000632_b = case_000632_secondLine := by
  norm_num [case_000632_secondLine, case_000632_support, case_000632_seq, case_000632_b,
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
private theorem case_000632_sourceAgrees :
    SourceAgrees case_000632_support case_000632_rank.val case_000632_mask := by
  intro hlt
  have hrank : (⟨case_000632_rank.val, hlt⟩ : Fin numPairWords) = case_000632_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000632_rank.val, hlt⟩ case_000632_mask =
        case_000632_seq := by
    simpa [hrank] using case_000632_seqAtRank
  simp [SourceChecks, hseq, case_000632_support,
    checkTranslationConstraintSource, case_000632_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000632_rows :
    OppMinusOneVarFirstRows case_000632_support case_000632_rank.val case_000632_mask := by
  intro hlt
  have hrank : (⟨case_000632_rank.val, hlt⟩ : Fin numPairWords) = case_000632_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000632_rank.val, hlt⟩ case_000632_mask =
        case_000632_seq := by
    simpa [hrank] using case_000632_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000632_rank.val, hlt⟩ case_000632_mask =
        case_000632_b := by
    simpa [hrank] using case_000632_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000632_support case_000632_rank.val hlt
          case_000632_mask = case_000632_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000632_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000632_support case_000632_rank.val hlt
          case_000632_mask = case_000632_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000632_secondLine_eq]
  have case_000632_rowFirst :
      OppNegRow (FirstLineAt case_000632_support case_000632_rank.val hlt case_000632_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000632_firstLine, OppNegRow]
  have case_000632_fixedSecond :
      FixedRow (SecondLineAt case_000632_support case_000632_rank.val hlt case_000632_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000632_secondLine, FixedRow]
  exact ⟨case_000632_rowFirst, case_000632_fixedSecond⟩

private theorem case_000632_existsRows :
    ExistsOppMinusOneVarFirstRows case_000632_rank.val case_000632_mask :=
  ⟨case_000632_support, case_000632_sourceAgrees, case_000632_rows⟩

private theorem case_000632_covered :
    RowPropertyParametricCovered case_000632_rank.val case_000632_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000632_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000633_rank : Fin numPairWords := ⟨377, by decide⟩
private def case_000633_mask : SignMask := ⟨15, by decide⟩
private def case_000633_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000633_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000633_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000633_b : Vec3 Rat := { x := (-284/27), y := (284/27), z := (92/27) }
private def case_000633_firstLine : StrictLin2 := { a := (-71/165), b := (-71/165), c := (-263/165) }
private def case_000633_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000633_rankWord :
    rankPairWord? case_000633_word = some case_000633_rank := by
  decide

private theorem case_000633_unrank :
    unrankPairWord case_000633_rank = case_000633_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000633_word case_000633_rank).1
    case_000633_rankWord |>.symm

private theorem case_000633_seqChoice :
    translationChoiceSeq case_000633_word case_000633_mask = case_000633_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000633_seqAtRank :
    translationSeqAtRankMask case_000633_rank case_000633_mask = case_000633_seq := by
  rw [translationSeqAtRankMask, case_000633_unrank]
  exact case_000633_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000633_bAtRank :
    translationBAtRankMask case_000633_rank case_000633_mask = case_000633_b := by
  rw [translationBAtRankMask, case_000633_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000633_b, case_000633_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000633_firstLine_eq :
    case_000633_support.firstLine case_000633_seq case_000633_b = case_000633_firstLine := by
  norm_num [case_000633_firstLine, case_000633_support, case_000633_seq, case_000633_b,
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
private theorem case_000633_secondLine_eq :
    case_000633_support.secondLine case_000633_seq case_000633_b = case_000633_secondLine := by
  norm_num [case_000633_secondLine, case_000633_support, case_000633_seq, case_000633_b,
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
private theorem case_000633_sourceAgrees :
    SourceAgrees case_000633_support case_000633_rank.val case_000633_mask := by
  intro hlt
  have hrank : (⟨case_000633_rank.val, hlt⟩ : Fin numPairWords) = case_000633_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000633_rank.val, hlt⟩ case_000633_mask =
        case_000633_seq := by
    simpa [hrank] using case_000633_seqAtRank
  simp [SourceChecks, hseq, case_000633_support,
    checkTranslationConstraintSource, case_000633_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000633_rows :
    EqEqPosVarFirstRows case_000633_support case_000633_rank.val case_000633_mask := by
  intro hlt
  have hrank : (⟨case_000633_rank.val, hlt⟩ : Fin numPairWords) = case_000633_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000633_rank.val, hlt⟩ case_000633_mask =
        case_000633_seq := by
    simpa [hrank] using case_000633_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000633_rank.val, hlt⟩ case_000633_mask =
        case_000633_b := by
    simpa [hrank] using case_000633_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000633_support case_000633_rank.val hlt
          case_000633_mask = case_000633_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000633_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000633_support case_000633_rank.val hlt
          case_000633_mask = case_000633_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000633_secondLine_eq]
  have case_000633_rowFirst :
      EqEqPosRow (FirstLineAt case_000633_support case_000633_rank.val hlt case_000633_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000633_firstLine, EqEqPosRow]
  have case_000633_fixedSecond :
      FixedRow (SecondLineAt case_000633_support case_000633_rank.val hlt case_000633_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000633_secondLine, FixedRow]
  exact ⟨case_000633_rowFirst, case_000633_fixedSecond⟩

private theorem case_000633_existsRows :
    ExistsEqEqPosVarFirstRows case_000633_rank.val case_000633_mask :=
  ⟨case_000633_support, case_000633_sourceAgrees, case_000633_rows⟩

private theorem case_000633_covered :
    RowPropertyParametricCovered case_000633_rank.val case_000633_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000633_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000634_rank : Fin numPairWords := ⟨377, by decide⟩
private def case_000634_mask : SignMask := ⟨22, by decide⟩
private def case_000634_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000634_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000634_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000634_b : Vec3 Rat := { x := (-284/27), y := (-220/27), z := (380/27) }
private def case_000634_firstLine : StrictLin2 := { a := -1, b := 1, c := (-229/71) }
private def case_000634_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000634_rankWord :
    rankPairWord? case_000634_word = some case_000634_rank := by
  decide

private theorem case_000634_unrank :
    unrankPairWord case_000634_rank = case_000634_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000634_word case_000634_rank).1
    case_000634_rankWord |>.symm

private theorem case_000634_seqChoice :
    translationChoiceSeq case_000634_word case_000634_mask = case_000634_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000634_seqAtRank :
    translationSeqAtRankMask case_000634_rank case_000634_mask = case_000634_seq := by
  rw [translationSeqAtRankMask, case_000634_unrank]
  exact case_000634_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000634_bAtRank :
    translationBAtRankMask case_000634_rank case_000634_mask = case_000634_b := by
  rw [translationBAtRankMask, case_000634_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000634_b, case_000634_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000634_firstLine_eq :
    case_000634_support.firstLine case_000634_seq case_000634_b = case_000634_firstLine := by
  norm_num [case_000634_firstLine, case_000634_support, case_000634_seq, case_000634_b,
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
private theorem case_000634_secondLine_eq :
    case_000634_support.secondLine case_000634_seq case_000634_b = case_000634_secondLine := by
  norm_num [case_000634_secondLine, case_000634_support, case_000634_seq, case_000634_b,
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
private theorem case_000634_sourceAgrees :
    SourceAgrees case_000634_support case_000634_rank.val case_000634_mask := by
  intro hlt
  have hrank : (⟨case_000634_rank.val, hlt⟩ : Fin numPairWords) = case_000634_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000634_rank.val, hlt⟩ case_000634_mask =
        case_000634_seq := by
    simpa [hrank] using case_000634_seqAtRank
  simp [SourceChecks, hseq, case_000634_support,
    checkTranslationConstraintSource, case_000634_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000634_rows :
    OppOneMinusVarFirstRows case_000634_support case_000634_rank.val case_000634_mask := by
  intro hlt
  have hrank : (⟨case_000634_rank.val, hlt⟩ : Fin numPairWords) = case_000634_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000634_rank.val, hlt⟩ case_000634_mask =
        case_000634_seq := by
    simpa [hrank] using case_000634_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000634_rank.val, hlt⟩ case_000634_mask =
        case_000634_b := by
    simpa [hrank] using case_000634_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000634_support case_000634_rank.val hlt
          case_000634_mask = case_000634_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000634_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000634_support case_000634_rank.val hlt
          case_000634_mask = case_000634_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000634_secondLine_eq]
  have case_000634_rowFirst :
      OppPosRow (FirstLineAt case_000634_support case_000634_rank.val hlt case_000634_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000634_firstLine, OppPosRow]
  have case_000634_fixedSecond :
      FixedRow (SecondLineAt case_000634_support case_000634_rank.val hlt case_000634_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000634_secondLine, FixedRow]
  exact ⟨case_000634_rowFirst, case_000634_fixedSecond⟩

private theorem case_000634_existsRows :
    ExistsOppOneMinusVarFirstRows case_000634_rank.val case_000634_mask :=
  ⟨case_000634_support, case_000634_sourceAgrees, case_000634_rows⟩

private theorem case_000634_covered :
    RowPropertyParametricCovered case_000634_rank.val case_000634_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000634_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000635_rank : Fin numPairWords := ⟨377, by decide⟩
private def case_000635_mask : SignMask := ⟨24, by decide⟩
private def case_000635_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000635_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000635_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000635_b : Vec3 Rat := { x := (-188/27), y := (-316/27), z := (-220/27) }
private def case_000635_firstLine : StrictLin2 := { a := -1, b := -1, c := (-221/47) }
private def case_000635_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000635_rankWord :
    rankPairWord? case_000635_word = some case_000635_rank := by
  decide

private theorem case_000635_unrank :
    unrankPairWord case_000635_rank = case_000635_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000635_word case_000635_rank).1
    case_000635_rankWord |>.symm

private theorem case_000635_seqChoice :
    translationChoiceSeq case_000635_word case_000635_mask = case_000635_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000635_seqAtRank :
    translationSeqAtRankMask case_000635_rank case_000635_mask = case_000635_seq := by
  rw [translationSeqAtRankMask, case_000635_unrank]
  exact case_000635_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000635_bAtRank :
    translationBAtRankMask case_000635_rank case_000635_mask = case_000635_b := by
  rw [translationBAtRankMask, case_000635_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000635_b, case_000635_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000635_firstLine_eq :
    case_000635_support.firstLine case_000635_seq case_000635_b = case_000635_firstLine := by
  norm_num [case_000635_firstLine, case_000635_support, case_000635_seq, case_000635_b,
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
private theorem case_000635_secondLine_eq :
    case_000635_support.secondLine case_000635_seq case_000635_b = case_000635_secondLine := by
  norm_num [case_000635_secondLine, case_000635_support, case_000635_seq, case_000635_b,
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
private theorem case_000635_sourceAgrees :
    SourceAgrees case_000635_support case_000635_rank.val case_000635_mask := by
  intro hlt
  have hrank : (⟨case_000635_rank.val, hlt⟩ : Fin numPairWords) = case_000635_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000635_rank.val, hlt⟩ case_000635_mask =
        case_000635_seq := by
    simpa [hrank] using case_000635_seqAtRank
  simp [SourceChecks, hseq, case_000635_support,
    checkTranslationConstraintSource, case_000635_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000635_rows :
    EqEqPosVarFirstRows case_000635_support case_000635_rank.val case_000635_mask := by
  intro hlt
  have hrank : (⟨case_000635_rank.val, hlt⟩ : Fin numPairWords) = case_000635_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000635_rank.val, hlt⟩ case_000635_mask =
        case_000635_seq := by
    simpa [hrank] using case_000635_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000635_rank.val, hlt⟩ case_000635_mask =
        case_000635_b := by
    simpa [hrank] using case_000635_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000635_support case_000635_rank.val hlt
          case_000635_mask = case_000635_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000635_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000635_support case_000635_rank.val hlt
          case_000635_mask = case_000635_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000635_secondLine_eq]
  have case_000635_rowFirst :
      EqEqPosRow (FirstLineAt case_000635_support case_000635_rank.val hlt case_000635_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000635_firstLine, EqEqPosRow]
  have case_000635_fixedSecond :
      FixedRow (SecondLineAt case_000635_support case_000635_rank.val hlt case_000635_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000635_secondLine, FixedRow]
  exact ⟨case_000635_rowFirst, case_000635_fixedSecond⟩

private theorem case_000635_existsRows :
    ExistsEqEqPosVarFirstRows case_000635_rank.val case_000635_mask :=
  ⟨case_000635_support, case_000635_sourceAgrees, case_000635_rows⟩

private theorem case_000635_covered :
    RowPropertyParametricCovered case_000635_rank.val case_000635_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000635_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000636_rank : Fin numPairWords := ⟨377, by decide⟩
private def case_000636_mask : SignMask := ⟨28, by decide⟩
private def case_000636_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000636_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000636_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000636_b : Vec3 Rat := { x := (-332/27), y := (-172/27), z := (-76/27) }
private def case_000636_firstLine : StrictLin2 := { a := (83/21), b := (83/21), c := (-97/7) }
private def case_000636_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000636_rankWord :
    rankPairWord? case_000636_word = some case_000636_rank := by
  decide

private theorem case_000636_unrank :
    unrankPairWord case_000636_rank = case_000636_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000636_word case_000636_rank).1
    case_000636_rankWord |>.symm

private theorem case_000636_seqChoice :
    translationChoiceSeq case_000636_word case_000636_mask = case_000636_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000636_seqAtRank :
    translationSeqAtRankMask case_000636_rank case_000636_mask = case_000636_seq := by
  rw [translationSeqAtRankMask, case_000636_unrank]
  exact case_000636_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000636_bAtRank :
    translationBAtRankMask case_000636_rank case_000636_mask = case_000636_b := by
  rw [translationBAtRankMask, case_000636_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000636_b, case_000636_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000636_firstLine_eq :
    case_000636_support.firstLine case_000636_seq case_000636_b = case_000636_firstLine := by
  norm_num [case_000636_firstLine, case_000636_support, case_000636_seq, case_000636_b,
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
private theorem case_000636_secondLine_eq :
    case_000636_support.secondLine case_000636_seq case_000636_b = case_000636_secondLine := by
  norm_num [case_000636_secondLine, case_000636_support, case_000636_seq, case_000636_b,
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
private theorem case_000636_sourceAgrees :
    SourceAgrees case_000636_support case_000636_rank.val case_000636_mask := by
  intro hlt
  have hrank : (⟨case_000636_rank.val, hlt⟩ : Fin numPairWords) = case_000636_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000636_rank.val, hlt⟩ case_000636_mask =
        case_000636_seq := by
    simpa [hrank] using case_000636_seqAtRank
  simp [SourceChecks, hseq, case_000636_support,
    checkTranslationConstraintSource, case_000636_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000636_rows :
    EqEqNegVarFirstRows case_000636_support case_000636_rank.val case_000636_mask := by
  intro hlt
  have hrank : (⟨case_000636_rank.val, hlt⟩ : Fin numPairWords) = case_000636_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000636_rank.val, hlt⟩ case_000636_mask =
        case_000636_seq := by
    simpa [hrank] using case_000636_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000636_rank.val, hlt⟩ case_000636_mask =
        case_000636_b := by
    simpa [hrank] using case_000636_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000636_support case_000636_rank.val hlt
          case_000636_mask = case_000636_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000636_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000636_support case_000636_rank.val hlt
          case_000636_mask = case_000636_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000636_secondLine_eq]
  have case_000636_rowFirst :
      EqEqNegRow (FirstLineAt case_000636_support case_000636_rank.val hlt case_000636_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000636_firstLine, EqEqNegRow]
  have case_000636_fixedSecond :
      FixedRow (SecondLineAt case_000636_support case_000636_rank.val hlt case_000636_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000636_secondLine, FixedRow]
  exact ⟨case_000636_rowFirst, case_000636_fixedSecond⟩

private theorem case_000636_existsRows :
    ExistsEqEqNegVarFirstRows case_000636_rank.val case_000636_mask :=
  ⟨case_000636_support, case_000636_sourceAgrees, case_000636_rows⟩

private theorem case_000636_covered :
    RowPropertyParametricCovered case_000636_rank.val case_000636_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000636_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000637_rank : Fin numPairWords := ⟨377, by decide⟩
private def case_000637_mask : SignMask := ⟨29, by decide⟩
private def case_000637_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000637_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000637_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000637_b : Vec3 Rat := { x := (-332/27), y := (44/27), z := (-76/27) }
private def case_000637_firstLine : StrictLin2 := { a := (-83/75), b := (-83/75), c := (-23/15) }
private def case_000637_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000637_rankWord :
    rankPairWord? case_000637_word = some case_000637_rank := by
  decide

private theorem case_000637_unrank :
    unrankPairWord case_000637_rank = case_000637_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000637_word case_000637_rank).1
    case_000637_rankWord |>.symm

private theorem case_000637_seqChoice :
    translationChoiceSeq case_000637_word case_000637_mask = case_000637_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000637_seqAtRank :
    translationSeqAtRankMask case_000637_rank case_000637_mask = case_000637_seq := by
  rw [translationSeqAtRankMask, case_000637_unrank]
  exact case_000637_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000637_bAtRank :
    translationBAtRankMask case_000637_rank case_000637_mask = case_000637_b := by
  rw [translationBAtRankMask, case_000637_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000637_b, case_000637_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000637_firstLine_eq :
    case_000637_support.firstLine case_000637_seq case_000637_b = case_000637_firstLine := by
  norm_num [case_000637_firstLine, case_000637_support, case_000637_seq, case_000637_b,
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
private theorem case_000637_secondLine_eq :
    case_000637_support.secondLine case_000637_seq case_000637_b = case_000637_secondLine := by
  norm_num [case_000637_secondLine, case_000637_support, case_000637_seq, case_000637_b,
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
private theorem case_000637_sourceAgrees :
    SourceAgrees case_000637_support case_000637_rank.val case_000637_mask := by
  intro hlt
  have hrank : (⟨case_000637_rank.val, hlt⟩ : Fin numPairWords) = case_000637_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000637_rank.val, hlt⟩ case_000637_mask =
        case_000637_seq := by
    simpa [hrank] using case_000637_seqAtRank
  simp [SourceChecks, hseq, case_000637_support,
    checkTranslationConstraintSource, case_000637_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000637_rows :
    EqEqPosVarFirstRows case_000637_support case_000637_rank.val case_000637_mask := by
  intro hlt
  have hrank : (⟨case_000637_rank.val, hlt⟩ : Fin numPairWords) = case_000637_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000637_rank.val, hlt⟩ case_000637_mask =
        case_000637_seq := by
    simpa [hrank] using case_000637_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000637_rank.val, hlt⟩ case_000637_mask =
        case_000637_b := by
    simpa [hrank] using case_000637_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000637_support case_000637_rank.val hlt
          case_000637_mask = case_000637_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000637_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000637_support case_000637_rank.val hlt
          case_000637_mask = case_000637_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000637_secondLine_eq]
  have case_000637_rowFirst :
      EqEqPosRow (FirstLineAt case_000637_support case_000637_rank.val hlt case_000637_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000637_firstLine, EqEqPosRow]
  have case_000637_fixedSecond :
      FixedRow (SecondLineAt case_000637_support case_000637_rank.val hlt case_000637_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000637_secondLine, FixedRow]
  exact ⟨case_000637_rowFirst, case_000637_fixedSecond⟩

private theorem case_000637_existsRows :
    ExistsEqEqPosVarFirstRows case_000637_rank.val case_000637_mask :=
  ⟨case_000637_support, case_000637_sourceAgrees, case_000637_rows⟩

private theorem case_000637_covered :
    RowPropertyParametricCovered case_000637_rank.val case_000637_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000637_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000638_rank : Fin numPairWords := ⟨377, by decide⟩
private def case_000638_mask : SignMask := ⟨45, by decide⟩
private def case_000638_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000638_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000638_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000638_b : Vec3 Rat := { x := (-76/27), y := (364/27), z := (-236/27) }
private def case_000638_firstLine : StrictLin2 := { a := 1, b := -1, c := (-281/19) }
private def case_000638_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000638_rankWord :
    rankPairWord? case_000638_word = some case_000638_rank := by
  decide

private theorem case_000638_unrank :
    unrankPairWord case_000638_rank = case_000638_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000638_word case_000638_rank).1
    case_000638_rankWord |>.symm

private theorem case_000638_seqChoice :
    translationChoiceSeq case_000638_word case_000638_mask = case_000638_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000638_seqAtRank :
    translationSeqAtRankMask case_000638_rank case_000638_mask = case_000638_seq := by
  rw [translationSeqAtRankMask, case_000638_unrank]
  exact case_000638_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000638_bAtRank :
    translationBAtRankMask case_000638_rank case_000638_mask = case_000638_b := by
  rw [translationBAtRankMask, case_000638_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000638_b, case_000638_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000638_firstLine_eq :
    case_000638_support.firstLine case_000638_seq case_000638_b = case_000638_firstLine := by
  norm_num [case_000638_firstLine, case_000638_support, case_000638_seq, case_000638_b,
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
private theorem case_000638_secondLine_eq :
    case_000638_support.secondLine case_000638_seq case_000638_b = case_000638_secondLine := by
  norm_num [case_000638_secondLine, case_000638_support, case_000638_seq, case_000638_b,
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
private theorem case_000638_sourceAgrees :
    SourceAgrees case_000638_support case_000638_rank.val case_000638_mask := by
  intro hlt
  have hrank : (⟨case_000638_rank.val, hlt⟩ : Fin numPairWords) = case_000638_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000638_rank.val, hlt⟩ case_000638_mask =
        case_000638_seq := by
    simpa [hrank] using case_000638_seqAtRank
  simp [SourceChecks, hseq, case_000638_support,
    checkTranslationConstraintSource, case_000638_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000638_rows :
    OppMinusOneVarFirstRows case_000638_support case_000638_rank.val case_000638_mask := by
  intro hlt
  have hrank : (⟨case_000638_rank.val, hlt⟩ : Fin numPairWords) = case_000638_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000638_rank.val, hlt⟩ case_000638_mask =
        case_000638_seq := by
    simpa [hrank] using case_000638_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000638_rank.val, hlt⟩ case_000638_mask =
        case_000638_b := by
    simpa [hrank] using case_000638_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000638_support case_000638_rank.val hlt
          case_000638_mask = case_000638_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000638_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000638_support case_000638_rank.val hlt
          case_000638_mask = case_000638_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000638_secondLine_eq]
  have case_000638_rowFirst :
      OppNegRow (FirstLineAt case_000638_support case_000638_rank.val hlt case_000638_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000638_firstLine, OppNegRow]
  have case_000638_fixedSecond :
      FixedRow (SecondLineAt case_000638_support case_000638_rank.val hlt case_000638_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000638_secondLine, FixedRow]
  exact ⟨case_000638_rowFirst, case_000638_fixedSecond⟩

private theorem case_000638_existsRows :
    ExistsOppMinusOneVarFirstRows case_000638_rank.val case_000638_mask :=
  ⟨case_000638_support, case_000638_sourceAgrees, case_000638_rows⟩

private theorem case_000638_covered :
    RowPropertyParametricCovered case_000638_rank.val case_000638_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000638_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000639_rank : Fin numPairWords := ⟨384, by decide⟩
private def case_000639_mask : SignMask := ⟨7, by decide⟩
private def case_000639_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000639_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000639_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000639_b : Vec3 Rat := { x := (-332/27), y := (236/27), z := (236/27) }
private def case_000639_firstLine : StrictLin2 := { a := (-83/201), b := (-83/201), c := (-275/201) }
private def case_000639_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000639_rankWord :
    rankPairWord? case_000639_word = some case_000639_rank := by
  decide

private theorem case_000639_unrank :
    unrankPairWord case_000639_rank = case_000639_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000639_word case_000639_rank).1
    case_000639_rankWord |>.symm

private theorem case_000639_seqChoice :
    translationChoiceSeq case_000639_word case_000639_mask = case_000639_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000639_seqAtRank :
    translationSeqAtRankMask case_000639_rank case_000639_mask = case_000639_seq := by
  rw [translationSeqAtRankMask, case_000639_unrank]
  exact case_000639_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000639_bAtRank :
    translationBAtRankMask case_000639_rank case_000639_mask = case_000639_b := by
  rw [translationBAtRankMask, case_000639_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000639_b, case_000639_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000639_firstLine_eq :
    case_000639_support.firstLine case_000639_seq case_000639_b = case_000639_firstLine := by
  norm_num [case_000639_firstLine, case_000639_support, case_000639_seq, case_000639_b,
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
private theorem case_000639_secondLine_eq :
    case_000639_support.secondLine case_000639_seq case_000639_b = case_000639_secondLine := by
  norm_num [case_000639_secondLine, case_000639_support, case_000639_seq, case_000639_b,
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
private theorem case_000639_sourceAgrees :
    SourceAgrees case_000639_support case_000639_rank.val case_000639_mask := by
  intro hlt
  have hrank : (⟨case_000639_rank.val, hlt⟩ : Fin numPairWords) = case_000639_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000639_rank.val, hlt⟩ case_000639_mask =
        case_000639_seq := by
    simpa [hrank] using case_000639_seqAtRank
  simp [SourceChecks, hseq, case_000639_support,
    checkTranslationConstraintSource, case_000639_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000639_rows :
    EqEqPosVarFirstRows case_000639_support case_000639_rank.val case_000639_mask := by
  intro hlt
  have hrank : (⟨case_000639_rank.val, hlt⟩ : Fin numPairWords) = case_000639_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000639_rank.val, hlt⟩ case_000639_mask =
        case_000639_seq := by
    simpa [hrank] using case_000639_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000639_rank.val, hlt⟩ case_000639_mask =
        case_000639_b := by
    simpa [hrank] using case_000639_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000639_support case_000639_rank.val hlt
          case_000639_mask = case_000639_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000639_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000639_support case_000639_rank.val hlt
          case_000639_mask = case_000639_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000639_secondLine_eq]
  have case_000639_rowFirst :
      EqEqPosRow (FirstLineAt case_000639_support case_000639_rank.val hlt case_000639_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000639_firstLine, EqEqPosRow]
  have case_000639_fixedSecond :
      FixedRow (SecondLineAt case_000639_support case_000639_rank.val hlt case_000639_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000639_secondLine, FixedRow]
  exact ⟨case_000639_rowFirst, case_000639_fixedSecond⟩

private theorem case_000639_existsRows :
    ExistsEqEqPosVarFirstRows case_000639_rank.val case_000639_mask :=
  ⟨case_000639_support, case_000639_sourceAgrees, case_000639_rows⟩

private theorem case_000639_covered :
    RowPropertyParametricCovered case_000639_rank.val case_000639_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000639_existsRows

inductive Group019Covered : Nat -> SignMask -> Prop
  | case_000608 : Group019Covered case_000608_rank.val case_000608_mask
  | case_000609 : Group019Covered case_000609_rank.val case_000609_mask
  | case_000610 : Group019Covered case_000610_rank.val case_000610_mask
  | case_000611 : Group019Covered case_000611_rank.val case_000611_mask
  | case_000612 : Group019Covered case_000612_rank.val case_000612_mask
  | case_000613 : Group019Covered case_000613_rank.val case_000613_mask
  | case_000614 : Group019Covered case_000614_rank.val case_000614_mask
  | case_000615 : Group019Covered case_000615_rank.val case_000615_mask
  | case_000616 : Group019Covered case_000616_rank.val case_000616_mask
  | case_000617 : Group019Covered case_000617_rank.val case_000617_mask
  | case_000618 : Group019Covered case_000618_rank.val case_000618_mask
  | case_000619 : Group019Covered case_000619_rank.val case_000619_mask
  | case_000620 : Group019Covered case_000620_rank.val case_000620_mask
  | case_000621 : Group019Covered case_000621_rank.val case_000621_mask
  | case_000622 : Group019Covered case_000622_rank.val case_000622_mask
  | case_000623 : Group019Covered case_000623_rank.val case_000623_mask
  | case_000624 : Group019Covered case_000624_rank.val case_000624_mask
  | case_000625 : Group019Covered case_000625_rank.val case_000625_mask
  | case_000626 : Group019Covered case_000626_rank.val case_000626_mask
  | case_000627 : Group019Covered case_000627_rank.val case_000627_mask
  | case_000628 : Group019Covered case_000628_rank.val case_000628_mask
  | case_000629 : Group019Covered case_000629_rank.val case_000629_mask
  | case_000630 : Group019Covered case_000630_rank.val case_000630_mask
  | case_000631 : Group019Covered case_000631_rank.val case_000631_mask
  | case_000632 : Group019Covered case_000632_rank.val case_000632_mask
  | case_000633 : Group019Covered case_000633_rank.val case_000633_mask
  | case_000634 : Group019Covered case_000634_rank.val case_000634_mask
  | case_000635 : Group019Covered case_000635_rank.val case_000635_mask
  | case_000636 : Group019Covered case_000636_rank.val case_000636_mask
  | case_000637 : Group019Covered case_000637_rank.val case_000637_mask
  | case_000638 : Group019Covered case_000638_rank.val case_000638_mask
  | case_000639 : Group019Covered case_000639_rank.val case_000639_mask

theorem Group019GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group019Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000608 =>
      exact RowPropertyParametricCovered.kills case_000608_covered
  | case_000609 =>
      exact RowPropertyParametricCovered.kills case_000609_covered
  | case_000610 =>
      exact RowPropertyParametricCovered.kills case_000610_covered
  | case_000611 =>
      exact RowPropertyParametricCovered.kills case_000611_covered
  | case_000612 =>
      exact RowPropertyParametricCovered.kills case_000612_covered
  | case_000613 =>
      exact RowPropertyParametricCovered.kills case_000613_covered
  | case_000614 =>
      exact RowPropertyParametricCovered.kills case_000614_covered
  | case_000615 =>
      exact RowPropertyParametricCovered.kills case_000615_covered
  | case_000616 =>
      exact RowPropertyParametricCovered.kills case_000616_covered
  | case_000617 =>
      exact RowPropertyParametricCovered.kills case_000617_covered
  | case_000618 =>
      exact RowPropertyParametricCovered.kills case_000618_covered
  | case_000619 =>
      exact RowPropertyParametricCovered.kills case_000619_covered
  | case_000620 =>
      exact RowPropertyParametricCovered.kills case_000620_covered
  | case_000621 =>
      exact RowPropertyParametricCovered.kills case_000621_covered
  | case_000622 =>
      exact RowPropertyParametricCovered.kills case_000622_covered
  | case_000623 =>
      exact RowPropertyParametricCovered.kills case_000623_covered
  | case_000624 =>
      exact RowPropertyParametricCovered.kills case_000624_covered
  | case_000625 =>
      exact RowPropertyParametricCovered.kills case_000625_covered
  | case_000626 =>
      exact RowPropertyParametricCovered.kills case_000626_covered
  | case_000627 =>
      exact RowPropertyParametricCovered.kills case_000627_covered
  | case_000628 =>
      exact RowPropertyParametricCovered.kills case_000628_covered
  | case_000629 =>
      exact RowPropertyParametricCovered.kills case_000629_covered
  | case_000630 =>
      exact RowPropertyParametricCovered.kills case_000630_covered
  | case_000631 =>
      exact RowPropertyParametricCovered.kills case_000631_covered
  | case_000632 =>
      exact RowPropertyParametricCovered.kills case_000632_covered
  | case_000633 =>
      exact RowPropertyParametricCovered.kills case_000633_covered
  | case_000634 =>
      exact RowPropertyParametricCovered.kills case_000634_covered
  | case_000635 =>
      exact RowPropertyParametricCovered.kills case_000635_covered
  | case_000636 =>
      exact RowPropertyParametricCovered.kills case_000636_covered
  | case_000637 =>
      exact RowPropertyParametricCovered.kills case_000637_covered
  | case_000638 =>
      exact RowPropertyParametricCovered.kills case_000638_covered
  | case_000639 =>
      exact RowPropertyParametricCovered.kills case_000639_covered

theorem Group019_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group019
