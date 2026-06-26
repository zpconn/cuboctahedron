import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group044

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
private def case_001408_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_001408_mask : SignMask := ⟨18, by decide⟩
private def case_001408_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001408_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001408_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001408_b : Vec3 Rat := { x := (-284/27), y := (-316/27), z := (28/27) }
private def case_001408_firstLine : StrictLin2 := { a := -1, b := -1, c := (-73/71) }
private def case_001408_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001408_rankWord :
    rankPairWord? case_001408_word = some case_001408_rank := by
  decide

private theorem case_001408_unrank :
    unrankPairWord case_001408_rank = case_001408_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001408_word case_001408_rank).1
    case_001408_rankWord |>.symm

private theorem case_001408_seqChoice :
    translationChoiceSeq case_001408_word case_001408_mask = case_001408_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001408_seqAtRank :
    translationSeqAtRankMask case_001408_rank case_001408_mask = case_001408_seq := by
  rw [translationSeqAtRankMask, case_001408_unrank]
  exact case_001408_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001408_bAtRank :
    translationBAtRankMask case_001408_rank case_001408_mask = case_001408_b := by
  rw [translationBAtRankMask, case_001408_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001408_b, case_001408_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001408_firstLine_eq :
    case_001408_support.firstLine case_001408_seq case_001408_b = case_001408_firstLine := by
  norm_num [case_001408_firstLine, case_001408_support, case_001408_seq, case_001408_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001408_secondLine_eq :
    case_001408_support.secondLine case_001408_seq case_001408_b = case_001408_secondLine := by
  norm_num [case_001408_secondLine, case_001408_support, case_001408_seq, case_001408_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001408_sourceAgrees :
    SourceAgrees case_001408_support case_001408_rank.val case_001408_mask := by
  intro hlt
  have hrank : (⟨case_001408_rank.val, hlt⟩ : Fin numPairWords) = case_001408_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001408_rank.val, hlt⟩ case_001408_mask =
        case_001408_seq := by
    simpa [hrank] using case_001408_seqAtRank
  simp [SourceChecks, hseq, case_001408_support,
    checkTranslationConstraintSource, case_001408_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001408_rows :
    EqEqPosVarFirstRows case_001408_support case_001408_rank.val case_001408_mask := by
  intro hlt
  have hrank : (⟨case_001408_rank.val, hlt⟩ : Fin numPairWords) = case_001408_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001408_rank.val, hlt⟩ case_001408_mask =
        case_001408_seq := by
    simpa [hrank] using case_001408_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001408_rank.val, hlt⟩ case_001408_mask =
        case_001408_b := by
    simpa [hrank] using case_001408_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001408_support case_001408_rank.val hlt
          case_001408_mask = case_001408_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001408_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001408_support case_001408_rank.val hlt
          case_001408_mask = case_001408_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001408_secondLine_eq]
  have case_001408_rowFirst :
      EqEqPosRow (FirstLineAt case_001408_support case_001408_rank.val hlt case_001408_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001408_firstLine, EqEqPosRow]
  have case_001408_fixedSecond :
      FixedRow (SecondLineAt case_001408_support case_001408_rank.val hlt case_001408_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001408_secondLine, FixedRow]
  exact ⟨case_001408_rowFirst, case_001408_fixedSecond⟩

private theorem case_001408_existsRows :
    ExistsEqEqPosVarFirstRows case_001408_rank.val case_001408_mask :=
  ⟨case_001408_support, case_001408_sourceAgrees, case_001408_rows⟩

private theorem case_001408_covered :
    RowPropertyParametricCovered case_001408_rank.val case_001408_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001408_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001409_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_001409_mask : SignMask := ⟨22, by decide⟩
private def case_001409_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001409_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001409_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001409_b : Vec3 Rat := { x := (-172/27), y := (-236/27), z := (236/27) }
private def case_001409_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001409_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001409_rankWord :
    rankPairWord? case_001409_word = some case_001409_rank := by
  decide

private theorem case_001409_unrank :
    unrankPairWord case_001409_rank = case_001409_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001409_word case_001409_rank).1
    case_001409_rankWord |>.symm

private theorem case_001409_seqChoice :
    translationChoiceSeq case_001409_word case_001409_mask = case_001409_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001409_seqAtRank :
    translationSeqAtRankMask case_001409_rank case_001409_mask = case_001409_seq := by
  rw [translationSeqAtRankMask, case_001409_unrank]
  exact case_001409_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001409_bAtRank :
    translationBAtRankMask case_001409_rank case_001409_mask = case_001409_b := by
  rw [translationBAtRankMask, case_001409_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001409_b, case_001409_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001409_firstLine_eq :
    case_001409_support.firstLine case_001409_seq case_001409_b = case_001409_firstLine := by
  norm_num [case_001409_firstLine, case_001409_support, case_001409_seq, case_001409_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001409_secondLine_eq :
    case_001409_support.secondLine case_001409_seq case_001409_b = case_001409_secondLine := by
  norm_num [case_001409_secondLine, case_001409_support, case_001409_seq, case_001409_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001409_sourceAgrees :
    SourceAgrees case_001409_support case_001409_rank.val case_001409_mask := by
  intro hlt
  have hrank : (⟨case_001409_rank.val, hlt⟩ : Fin numPairWords) = case_001409_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001409_rank.val, hlt⟩ case_001409_mask =
        case_001409_seq := by
    simpa [hrank] using case_001409_seqAtRank
  simp [SourceChecks, hseq, case_001409_support,
    checkTranslationConstraintSource, case_001409_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001409_rows :
    EqEqPosVarFirstRows case_001409_support case_001409_rank.val case_001409_mask := by
  intro hlt
  have hrank : (⟨case_001409_rank.val, hlt⟩ : Fin numPairWords) = case_001409_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001409_rank.val, hlt⟩ case_001409_mask =
        case_001409_seq := by
    simpa [hrank] using case_001409_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001409_rank.val, hlt⟩ case_001409_mask =
        case_001409_b := by
    simpa [hrank] using case_001409_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001409_support case_001409_rank.val hlt
          case_001409_mask = case_001409_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001409_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001409_support case_001409_rank.val hlt
          case_001409_mask = case_001409_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001409_secondLine_eq]
  have case_001409_rowFirst :
      EqEqPosRow (FirstLineAt case_001409_support case_001409_rank.val hlt case_001409_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001409_firstLine, EqEqPosRow]
  have case_001409_fixedSecond :
      FixedRow (SecondLineAt case_001409_support case_001409_rank.val hlt case_001409_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001409_secondLine, FixedRow]
  exact ⟨case_001409_rowFirst, case_001409_fixedSecond⟩

private theorem case_001409_existsRows :
    ExistsEqEqPosVarFirstRows case_001409_rank.val case_001409_mask :=
  ⟨case_001409_support, case_001409_sourceAgrees, case_001409_rows⟩

private theorem case_001409_covered :
    RowPropertyParametricCovered case_001409_rank.val case_001409_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001409_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001410_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_001410_mask : SignMask := ⟨24, by decide⟩
private def case_001410_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001410_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001410_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001410_b : Vec3 Rat := { x := (-428/27), y := (-172/27), z := (-332/27) }
private def case_001410_firstLine : StrictLin2 := { a := -1, b := -1, c := (-145/107) }
private def case_001410_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001410_rankWord :
    rankPairWord? case_001410_word = some case_001410_rank := by
  decide

private theorem case_001410_unrank :
    unrankPairWord case_001410_rank = case_001410_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001410_word case_001410_rank).1
    case_001410_rankWord |>.symm

private theorem case_001410_seqChoice :
    translationChoiceSeq case_001410_word case_001410_mask = case_001410_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001410_seqAtRank :
    translationSeqAtRankMask case_001410_rank case_001410_mask = case_001410_seq := by
  rw [translationSeqAtRankMask, case_001410_unrank]
  exact case_001410_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001410_bAtRank :
    translationBAtRankMask case_001410_rank case_001410_mask = case_001410_b := by
  rw [translationBAtRankMask, case_001410_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001410_b, case_001410_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001410_firstLine_eq :
    case_001410_support.firstLine case_001410_seq case_001410_b = case_001410_firstLine := by
  norm_num [case_001410_firstLine, case_001410_support, case_001410_seq, case_001410_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001410_secondLine_eq :
    case_001410_support.secondLine case_001410_seq case_001410_b = case_001410_secondLine := by
  norm_num [case_001410_secondLine, case_001410_support, case_001410_seq, case_001410_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001410_sourceAgrees :
    SourceAgrees case_001410_support case_001410_rank.val case_001410_mask := by
  intro hlt
  have hrank : (⟨case_001410_rank.val, hlt⟩ : Fin numPairWords) = case_001410_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001410_rank.val, hlt⟩ case_001410_mask =
        case_001410_seq := by
    simpa [hrank] using case_001410_seqAtRank
  simp [SourceChecks, hseq, case_001410_support,
    checkTranslationConstraintSource, case_001410_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001410_rows :
    EqEqPosVarFirstRows case_001410_support case_001410_rank.val case_001410_mask := by
  intro hlt
  have hrank : (⟨case_001410_rank.val, hlt⟩ : Fin numPairWords) = case_001410_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001410_rank.val, hlt⟩ case_001410_mask =
        case_001410_seq := by
    simpa [hrank] using case_001410_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001410_rank.val, hlt⟩ case_001410_mask =
        case_001410_b := by
    simpa [hrank] using case_001410_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001410_support case_001410_rank.val hlt
          case_001410_mask = case_001410_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001410_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001410_support case_001410_rank.val hlt
          case_001410_mask = case_001410_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001410_secondLine_eq]
  have case_001410_rowFirst :
      EqEqPosRow (FirstLineAt case_001410_support case_001410_rank.val hlt case_001410_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001410_firstLine, EqEqPosRow]
  have case_001410_fixedSecond :
      FixedRow (SecondLineAt case_001410_support case_001410_rank.val hlt case_001410_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001410_secondLine, FixedRow]
  exact ⟨case_001410_rowFirst, case_001410_fixedSecond⟩

private theorem case_001410_existsRows :
    ExistsEqEqPosVarFirstRows case_001410_rank.val case_001410_mask :=
  ⟨case_001410_support, case_001410_sourceAgrees, case_001410_rows⟩

private theorem case_001410_covered :
    RowPropertyParametricCovered case_001410_rank.val case_001410_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001410_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001411_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_001411_mask : SignMask := ⟨25, by decide⟩
private def case_001411_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001411_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_001411_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001411_b : Vec3 Rat := { x := (-428/27), y := (44/27), z := (-332/27) }
private def case_001411_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001411_secondLine : StrictLin2 := { a := (-321/6566), b := (321/6566), c := (-579/3283) }

private theorem case_001411_rankWord :
    rankPairWord? case_001411_word = some case_001411_rank := by
  decide

private theorem case_001411_unrank :
    unrankPairWord case_001411_rank = case_001411_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001411_word case_001411_rank).1
    case_001411_rankWord |>.symm

private theorem case_001411_seqChoice :
    translationChoiceSeq case_001411_word case_001411_mask = case_001411_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001411_seqAtRank :
    translationSeqAtRankMask case_001411_rank case_001411_mask = case_001411_seq := by
  rw [translationSeqAtRankMask, case_001411_unrank]
  exact case_001411_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001411_bAtRank :
    translationBAtRankMask case_001411_rank case_001411_mask = case_001411_b := by
  rw [translationBAtRankMask, case_001411_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001411_b, case_001411_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001411_firstLine_eq :
    case_001411_support.firstLine case_001411_seq case_001411_b = case_001411_firstLine := by
  norm_num [case_001411_firstLine, case_001411_support, case_001411_seq, case_001411_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001411_secondLine_eq :
    case_001411_support.secondLine case_001411_seq case_001411_b = case_001411_secondLine := by
  norm_num [case_001411_secondLine, case_001411_support, case_001411_seq, case_001411_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001411_sourceAgrees :
    SourceAgrees case_001411_support case_001411_rank.val case_001411_mask := by
  intro hlt
  have hrank : (⟨case_001411_rank.val, hlt⟩ : Fin numPairWords) = case_001411_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001411_rank.val, hlt⟩ case_001411_mask =
        case_001411_seq := by
    simpa [hrank] using case_001411_seqAtRank
  simp [SourceChecks, hseq, case_001411_support,
    checkTranslationConstraintSource, case_001411_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001411_rows :
    OppOneMinusVarSecondRows case_001411_support case_001411_rank.val case_001411_mask := by
  intro hlt
  have hrank : (⟨case_001411_rank.val, hlt⟩ : Fin numPairWords) = case_001411_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001411_rank.val, hlt⟩ case_001411_mask =
        case_001411_seq := by
    simpa [hrank] using case_001411_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001411_rank.val, hlt⟩ case_001411_mask =
        case_001411_b := by
    simpa [hrank] using case_001411_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001411_support case_001411_rank.val hlt
          case_001411_mask = case_001411_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001411_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001411_support case_001411_rank.val hlt
          case_001411_mask = case_001411_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001411_secondLine_eq]
  have case_001411_fixedFirst :
      FixedRow (FirstLineAt case_001411_support case_001411_rank.val hlt case_001411_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001411_firstLine, FixedRow]
  have case_001411_rowSecond :
      OppPosRow (SecondLineAt case_001411_support case_001411_rank.val hlt case_001411_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001411_secondLine, OppPosRow]
  exact ⟨case_001411_fixedFirst, case_001411_rowSecond⟩

private theorem case_001411_existsRows :
    ExistsOppOneMinusVarSecondRows case_001411_rank.val case_001411_mask :=
  ⟨case_001411_support, case_001411_sourceAgrees, case_001411_rows⟩

private theorem case_001411_covered :
    RowPropertyParametricCovered case_001411_rank.val case_001411_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001411_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001412_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_001412_mask : SignMask := ⟨54, by decide⟩
private def case_001412_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001412_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001412_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001412_b : Vec3 Rat := { x := (-28/27), y := (-92/27), z := (380/27) }
private def case_001412_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001412_secondLine : StrictLin2 := { a := (-21/1258), b := (21/1258), c := (-316/629) }

private theorem case_001412_rankWord :
    rankPairWord? case_001412_word = some case_001412_rank := by
  decide

private theorem case_001412_unrank :
    unrankPairWord case_001412_rank = case_001412_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001412_word case_001412_rank).1
    case_001412_rankWord |>.symm

private theorem case_001412_seqChoice :
    translationChoiceSeq case_001412_word case_001412_mask = case_001412_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001412_seqAtRank :
    translationSeqAtRankMask case_001412_rank case_001412_mask = case_001412_seq := by
  rw [translationSeqAtRankMask, case_001412_unrank]
  exact case_001412_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001412_bAtRank :
    translationBAtRankMask case_001412_rank case_001412_mask = case_001412_b := by
  rw [translationBAtRankMask, case_001412_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001412_b, case_001412_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001412_firstLine_eq :
    case_001412_support.firstLine case_001412_seq case_001412_b = case_001412_firstLine := by
  norm_num [case_001412_firstLine, case_001412_support, case_001412_seq, case_001412_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001412_secondLine_eq :
    case_001412_support.secondLine case_001412_seq case_001412_b = case_001412_secondLine := by
  norm_num [case_001412_secondLine, case_001412_support, case_001412_seq, case_001412_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001412_sourceAgrees :
    SourceAgrees case_001412_support case_001412_rank.val case_001412_mask := by
  intro hlt
  have hrank : (⟨case_001412_rank.val, hlt⟩ : Fin numPairWords) = case_001412_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001412_rank.val, hlt⟩ case_001412_mask =
        case_001412_seq := by
    simpa [hrank] using case_001412_seqAtRank
  simp [SourceChecks, hseq, case_001412_support,
    checkTranslationConstraintSource, case_001412_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001412_rows :
    OppOneMinusVarSecondRows case_001412_support case_001412_rank.val case_001412_mask := by
  intro hlt
  have hrank : (⟨case_001412_rank.val, hlt⟩ : Fin numPairWords) = case_001412_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001412_rank.val, hlt⟩ case_001412_mask =
        case_001412_seq := by
    simpa [hrank] using case_001412_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001412_rank.val, hlt⟩ case_001412_mask =
        case_001412_b := by
    simpa [hrank] using case_001412_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001412_support case_001412_rank.val hlt
          case_001412_mask = case_001412_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001412_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001412_support case_001412_rank.val hlt
          case_001412_mask = case_001412_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001412_secondLine_eq]
  have case_001412_fixedFirst :
      FixedRow (FirstLineAt case_001412_support case_001412_rank.val hlt case_001412_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001412_firstLine, FixedRow]
  have case_001412_rowSecond :
      OppPosRow (SecondLineAt case_001412_support case_001412_rank.val hlt case_001412_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001412_secondLine, OppPosRow]
  exact ⟨case_001412_fixedFirst, case_001412_rowSecond⟩

private theorem case_001412_existsRows :
    ExistsOppOneMinusVarSecondRows case_001412_rank.val case_001412_mask :=
  ⟨case_001412_support, case_001412_sourceAgrees, case_001412_rows⟩

private theorem case_001412_covered :
    RowPropertyParametricCovered case_001412_rank.val case_001412_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001412_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001413_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_001413_mask : SignMask := ⟨55, by decide⟩
private def case_001413_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001413_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001413_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001413_b : Vec3 Rat := { x := (-28/27), y := (124/27), z := (380/27) }
private def case_001413_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001413_secondLine : StrictLin2 := { a := (-21/418), b := (21/418), c := (-181/209) }

private theorem case_001413_rankWord :
    rankPairWord? case_001413_word = some case_001413_rank := by
  decide

private theorem case_001413_unrank :
    unrankPairWord case_001413_rank = case_001413_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001413_word case_001413_rank).1
    case_001413_rankWord |>.symm

private theorem case_001413_seqChoice :
    translationChoiceSeq case_001413_word case_001413_mask = case_001413_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001413_seqAtRank :
    translationSeqAtRankMask case_001413_rank case_001413_mask = case_001413_seq := by
  rw [translationSeqAtRankMask, case_001413_unrank]
  exact case_001413_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001413_bAtRank :
    translationBAtRankMask case_001413_rank case_001413_mask = case_001413_b := by
  rw [translationBAtRankMask, case_001413_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001413_b, case_001413_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001413_firstLine_eq :
    case_001413_support.firstLine case_001413_seq case_001413_b = case_001413_firstLine := by
  norm_num [case_001413_firstLine, case_001413_support, case_001413_seq, case_001413_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001413_secondLine_eq :
    case_001413_support.secondLine case_001413_seq case_001413_b = case_001413_secondLine := by
  norm_num [case_001413_secondLine, case_001413_support, case_001413_seq, case_001413_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001413_sourceAgrees :
    SourceAgrees case_001413_support case_001413_rank.val case_001413_mask := by
  intro hlt
  have hrank : (⟨case_001413_rank.val, hlt⟩ : Fin numPairWords) = case_001413_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001413_rank.val, hlt⟩ case_001413_mask =
        case_001413_seq := by
    simpa [hrank] using case_001413_seqAtRank
  simp [SourceChecks, hseq, case_001413_support,
    checkTranslationConstraintSource, case_001413_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001413_rows :
    OppOneMinusVarSecondRows case_001413_support case_001413_rank.val case_001413_mask := by
  intro hlt
  have hrank : (⟨case_001413_rank.val, hlt⟩ : Fin numPairWords) = case_001413_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001413_rank.val, hlt⟩ case_001413_mask =
        case_001413_seq := by
    simpa [hrank] using case_001413_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001413_rank.val, hlt⟩ case_001413_mask =
        case_001413_b := by
    simpa [hrank] using case_001413_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001413_support case_001413_rank.val hlt
          case_001413_mask = case_001413_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001413_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001413_support case_001413_rank.val hlt
          case_001413_mask = case_001413_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001413_secondLine_eq]
  have case_001413_fixedFirst :
      FixedRow (FirstLineAt case_001413_support case_001413_rank.val hlt case_001413_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001413_firstLine, FixedRow]
  have case_001413_rowSecond :
      OppPosRow (SecondLineAt case_001413_support case_001413_rank.val hlt case_001413_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001413_secondLine, OppPosRow]
  exact ⟨case_001413_fixedFirst, case_001413_rowSecond⟩

private theorem case_001413_existsRows :
    ExistsOppOneMinusVarSecondRows case_001413_rank.val case_001413_mask :=
  ⟨case_001413_support, case_001413_sourceAgrees, case_001413_rows⟩

private theorem case_001413_covered :
    RowPropertyParametricCovered case_001413_rank.val case_001413_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001413_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001414_rank : Fin numPairWords := ⟨903, by decide⟩
private def case_001414_mask : SignMask := ⟨63, by decide⟩
private def case_001414_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001414_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001414_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001414_b : Vec3 Rat := { x := (-172/27), y := (268/27), z := (236/27) }
private def case_001414_firstLine : StrictLin2 := { a := (43/69), b := (-43/69), c := (-199/207) }
private def case_001414_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001414_rankWord :
    rankPairWord? case_001414_word = some case_001414_rank := by
  decide

private theorem case_001414_unrank :
    unrankPairWord case_001414_rank = case_001414_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001414_word case_001414_rank).1
    case_001414_rankWord |>.symm

private theorem case_001414_seqChoice :
    translationChoiceSeq case_001414_word case_001414_mask = case_001414_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001414_seqAtRank :
    translationSeqAtRankMask case_001414_rank case_001414_mask = case_001414_seq := by
  rw [translationSeqAtRankMask, case_001414_unrank]
  exact case_001414_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001414_bAtRank :
    translationBAtRankMask case_001414_rank case_001414_mask = case_001414_b := by
  rw [translationBAtRankMask, case_001414_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001414_b, case_001414_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001414_firstLine_eq :
    case_001414_support.firstLine case_001414_seq case_001414_b = case_001414_firstLine := by
  norm_num [case_001414_firstLine, case_001414_support, case_001414_seq, case_001414_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001414_secondLine_eq :
    case_001414_support.secondLine case_001414_seq case_001414_b = case_001414_secondLine := by
  norm_num [case_001414_secondLine, case_001414_support, case_001414_seq, case_001414_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001414_sourceAgrees :
    SourceAgrees case_001414_support case_001414_rank.val case_001414_mask := by
  intro hlt
  have hrank : (⟨case_001414_rank.val, hlt⟩ : Fin numPairWords) = case_001414_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001414_rank.val, hlt⟩ case_001414_mask =
        case_001414_seq := by
    simpa [hrank] using case_001414_seqAtRank
  simp [SourceChecks, hseq, case_001414_support,
    checkTranslationConstraintSource, case_001414_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001414_rows :
    OppMinusOneVarFirstRows case_001414_support case_001414_rank.val case_001414_mask := by
  intro hlt
  have hrank : (⟨case_001414_rank.val, hlt⟩ : Fin numPairWords) = case_001414_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001414_rank.val, hlt⟩ case_001414_mask =
        case_001414_seq := by
    simpa [hrank] using case_001414_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001414_rank.val, hlt⟩ case_001414_mask =
        case_001414_b := by
    simpa [hrank] using case_001414_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001414_support case_001414_rank.val hlt
          case_001414_mask = case_001414_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001414_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001414_support case_001414_rank.val hlt
          case_001414_mask = case_001414_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001414_secondLine_eq]
  have case_001414_rowFirst :
      OppNegRow (FirstLineAt case_001414_support case_001414_rank.val hlt case_001414_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001414_firstLine, OppNegRow]
  have case_001414_fixedSecond :
      FixedRow (SecondLineAt case_001414_support case_001414_rank.val hlt case_001414_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001414_secondLine, FixedRow]
  exact ⟨case_001414_rowFirst, case_001414_fixedSecond⟩

private theorem case_001414_existsRows :
    ExistsOppMinusOneVarFirstRows case_001414_rank.val case_001414_mask :=
  ⟨case_001414_support, case_001414_sourceAgrees, case_001414_rows⟩

private theorem case_001414_covered :
    RowPropertyParametricCovered case_001414_rank.val case_001414_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001414_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001415_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_001415_mask : SignMask := ⟨18, by decide⟩
private def case_001415_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001415_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001415_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_001415_b : Vec3 Rat := { x := (-236/27), y := (-364/27), z := (76/27) }
private def case_001415_firstLine : StrictLin2 := { a := -1, b := -1, c := (-85/59) }
private def case_001415_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001415_rankWord :
    rankPairWord? case_001415_word = some case_001415_rank := by
  decide

private theorem case_001415_unrank :
    unrankPairWord case_001415_rank = case_001415_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001415_word case_001415_rank).1
    case_001415_rankWord |>.symm

private theorem case_001415_seqChoice :
    translationChoiceSeq case_001415_word case_001415_mask = case_001415_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001415_seqAtRank :
    translationSeqAtRankMask case_001415_rank case_001415_mask = case_001415_seq := by
  rw [translationSeqAtRankMask, case_001415_unrank]
  exact case_001415_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001415_bAtRank :
    translationBAtRankMask case_001415_rank case_001415_mask = case_001415_b := by
  rw [translationBAtRankMask, case_001415_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001415_b, case_001415_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001415_firstLine_eq :
    case_001415_support.firstLine case_001415_seq case_001415_b = case_001415_firstLine := by
  norm_num [case_001415_firstLine, case_001415_support, case_001415_seq, case_001415_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001415_secondLine_eq :
    case_001415_support.secondLine case_001415_seq case_001415_b = case_001415_secondLine := by
  norm_num [case_001415_secondLine, case_001415_support, case_001415_seq, case_001415_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001415_sourceAgrees :
    SourceAgrees case_001415_support case_001415_rank.val case_001415_mask := by
  intro hlt
  have hrank : (⟨case_001415_rank.val, hlt⟩ : Fin numPairWords) = case_001415_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001415_rank.val, hlt⟩ case_001415_mask =
        case_001415_seq := by
    simpa [hrank] using case_001415_seqAtRank
  simp [SourceChecks, hseq, case_001415_support,
    checkTranslationConstraintSource, case_001415_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001415_rows :
    EqEqPosVarFirstRows case_001415_support case_001415_rank.val case_001415_mask := by
  intro hlt
  have hrank : (⟨case_001415_rank.val, hlt⟩ : Fin numPairWords) = case_001415_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001415_rank.val, hlt⟩ case_001415_mask =
        case_001415_seq := by
    simpa [hrank] using case_001415_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001415_rank.val, hlt⟩ case_001415_mask =
        case_001415_b := by
    simpa [hrank] using case_001415_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001415_support case_001415_rank.val hlt
          case_001415_mask = case_001415_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001415_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001415_support case_001415_rank.val hlt
          case_001415_mask = case_001415_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001415_secondLine_eq]
  have case_001415_rowFirst :
      EqEqPosRow (FirstLineAt case_001415_support case_001415_rank.val hlt case_001415_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001415_firstLine, EqEqPosRow]
  have case_001415_fixedSecond :
      FixedRow (SecondLineAt case_001415_support case_001415_rank.val hlt case_001415_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001415_secondLine, FixedRow]
  exact ⟨case_001415_rowFirst, case_001415_fixedSecond⟩

private theorem case_001415_existsRows :
    ExistsEqEqPosVarFirstRows case_001415_rank.val case_001415_mask :=
  ⟨case_001415_support, case_001415_sourceAgrees, case_001415_rows⟩

private theorem case_001415_covered :
    RowPropertyParametricCovered case_001415_rank.val case_001415_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001415_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001416_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_001416_mask : SignMask := ⟨22, by decide⟩
private def case_001416_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001416_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001416_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_001416_b : Vec3 Rat := { x := (-124/27), y := (-284/27), z := (284/27) }
private def case_001416_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001416_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001416_rankWord :
    rankPairWord? case_001416_word = some case_001416_rank := by
  decide

private theorem case_001416_unrank :
    unrankPairWord case_001416_rank = case_001416_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001416_word case_001416_rank).1
    case_001416_rankWord |>.symm

private theorem case_001416_seqChoice :
    translationChoiceSeq case_001416_word case_001416_mask = case_001416_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001416_seqAtRank :
    translationSeqAtRankMask case_001416_rank case_001416_mask = case_001416_seq := by
  rw [translationSeqAtRankMask, case_001416_unrank]
  exact case_001416_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001416_bAtRank :
    translationBAtRankMask case_001416_rank case_001416_mask = case_001416_b := by
  rw [translationBAtRankMask, case_001416_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001416_b, case_001416_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001416_firstLine_eq :
    case_001416_support.firstLine case_001416_seq case_001416_b = case_001416_firstLine := by
  norm_num [case_001416_firstLine, case_001416_support, case_001416_seq, case_001416_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001416_secondLine_eq :
    case_001416_support.secondLine case_001416_seq case_001416_b = case_001416_secondLine := by
  norm_num [case_001416_secondLine, case_001416_support, case_001416_seq, case_001416_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001416_sourceAgrees :
    SourceAgrees case_001416_support case_001416_rank.val case_001416_mask := by
  intro hlt
  have hrank : (⟨case_001416_rank.val, hlt⟩ : Fin numPairWords) = case_001416_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001416_rank.val, hlt⟩ case_001416_mask =
        case_001416_seq := by
    simpa [hrank] using case_001416_seqAtRank
  simp [SourceChecks, hseq, case_001416_support,
    checkTranslationConstraintSource, case_001416_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001416_rows :
    EqEqPosVarFirstRows case_001416_support case_001416_rank.val case_001416_mask := by
  intro hlt
  have hrank : (⟨case_001416_rank.val, hlt⟩ : Fin numPairWords) = case_001416_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001416_rank.val, hlt⟩ case_001416_mask =
        case_001416_seq := by
    simpa [hrank] using case_001416_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001416_rank.val, hlt⟩ case_001416_mask =
        case_001416_b := by
    simpa [hrank] using case_001416_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001416_support case_001416_rank.val hlt
          case_001416_mask = case_001416_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001416_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001416_support case_001416_rank.val hlt
          case_001416_mask = case_001416_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001416_secondLine_eq]
  have case_001416_rowFirst :
      EqEqPosRow (FirstLineAt case_001416_support case_001416_rank.val hlt case_001416_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001416_firstLine, EqEqPosRow]
  have case_001416_fixedSecond :
      FixedRow (SecondLineAt case_001416_support case_001416_rank.val hlt case_001416_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001416_secondLine, FixedRow]
  exact ⟨case_001416_rowFirst, case_001416_fixedSecond⟩

private theorem case_001416_existsRows :
    ExistsEqEqPosVarFirstRows case_001416_rank.val case_001416_mask :=
  ⟨case_001416_support, case_001416_sourceAgrees, case_001416_rows⟩

private theorem case_001416_covered :
    RowPropertyParametricCovered case_001416_rank.val case_001416_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001416_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001417_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_001417_mask : SignMask := ⟨24, by decide⟩
private def case_001417_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001417_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001417_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_001417_b : Vec3 Rat := { x := (-380/27), y := (-220/27), z := (-284/27) }
private def case_001417_firstLine : StrictLin2 := { a := -1, b := -1, c := (-157/95) }
private def case_001417_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001417_rankWord :
    rankPairWord? case_001417_word = some case_001417_rank := by
  decide

private theorem case_001417_unrank :
    unrankPairWord case_001417_rank = case_001417_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001417_word case_001417_rank).1
    case_001417_rankWord |>.symm

private theorem case_001417_seqChoice :
    translationChoiceSeq case_001417_word case_001417_mask = case_001417_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001417_seqAtRank :
    translationSeqAtRankMask case_001417_rank case_001417_mask = case_001417_seq := by
  rw [translationSeqAtRankMask, case_001417_unrank]
  exact case_001417_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001417_bAtRank :
    translationBAtRankMask case_001417_rank case_001417_mask = case_001417_b := by
  rw [translationBAtRankMask, case_001417_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001417_b, case_001417_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001417_firstLine_eq :
    case_001417_support.firstLine case_001417_seq case_001417_b = case_001417_firstLine := by
  norm_num [case_001417_firstLine, case_001417_support, case_001417_seq, case_001417_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001417_secondLine_eq :
    case_001417_support.secondLine case_001417_seq case_001417_b = case_001417_secondLine := by
  norm_num [case_001417_secondLine, case_001417_support, case_001417_seq, case_001417_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001417_sourceAgrees :
    SourceAgrees case_001417_support case_001417_rank.val case_001417_mask := by
  intro hlt
  have hrank : (⟨case_001417_rank.val, hlt⟩ : Fin numPairWords) = case_001417_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001417_rank.val, hlt⟩ case_001417_mask =
        case_001417_seq := by
    simpa [hrank] using case_001417_seqAtRank
  simp [SourceChecks, hseq, case_001417_support,
    checkTranslationConstraintSource, case_001417_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001417_rows :
    EqEqPosVarFirstRows case_001417_support case_001417_rank.val case_001417_mask := by
  intro hlt
  have hrank : (⟨case_001417_rank.val, hlt⟩ : Fin numPairWords) = case_001417_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001417_rank.val, hlt⟩ case_001417_mask =
        case_001417_seq := by
    simpa [hrank] using case_001417_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001417_rank.val, hlt⟩ case_001417_mask =
        case_001417_b := by
    simpa [hrank] using case_001417_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001417_support case_001417_rank.val hlt
          case_001417_mask = case_001417_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001417_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001417_support case_001417_rank.val hlt
          case_001417_mask = case_001417_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001417_secondLine_eq]
  have case_001417_rowFirst :
      EqEqPosRow (FirstLineAt case_001417_support case_001417_rank.val hlt case_001417_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001417_firstLine, EqEqPosRow]
  have case_001417_fixedSecond :
      FixedRow (SecondLineAt case_001417_support case_001417_rank.val hlt case_001417_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001417_secondLine, FixedRow]
  exact ⟨case_001417_rowFirst, case_001417_fixedSecond⟩

private theorem case_001417_existsRows :
    ExistsEqEqPosVarFirstRows case_001417_rank.val case_001417_mask :=
  ⟨case_001417_support, case_001417_sourceAgrees, case_001417_rows⟩

private theorem case_001417_covered :
    RowPropertyParametricCovered case_001417_rank.val case_001417_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001417_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001418_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_001418_mask : SignMask := ⟨41, by decide⟩
private def case_001418_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001418_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001418_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001418_b : Vec3 Rat := { x := (-92/27), y := (284/27), z := (-284/27) }
private def case_001418_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001418_secondLine : StrictLin2 := { a := (-27/284), b := (-27/284), c := (-27/142) }

private theorem case_001418_rankWord :
    rankPairWord? case_001418_word = some case_001418_rank := by
  decide

private theorem case_001418_unrank :
    unrankPairWord case_001418_rank = case_001418_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001418_word case_001418_rank).1
    case_001418_rankWord |>.symm

private theorem case_001418_seqChoice :
    translationChoiceSeq case_001418_word case_001418_mask = case_001418_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001418_seqAtRank :
    translationSeqAtRankMask case_001418_rank case_001418_mask = case_001418_seq := by
  rw [translationSeqAtRankMask, case_001418_unrank]
  exact case_001418_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001418_bAtRank :
    translationBAtRankMask case_001418_rank case_001418_mask = case_001418_b := by
  rw [translationBAtRankMask, case_001418_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001418_b, case_001418_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001418_firstLine_eq :
    case_001418_support.firstLine case_001418_seq case_001418_b = case_001418_firstLine := by
  norm_num [case_001418_firstLine, case_001418_support, case_001418_seq, case_001418_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001418_secondLine_eq :
    case_001418_support.secondLine case_001418_seq case_001418_b = case_001418_secondLine := by
  norm_num [case_001418_secondLine, case_001418_support, case_001418_seq, case_001418_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001418_sourceAgrees :
    SourceAgrees case_001418_support case_001418_rank.val case_001418_mask := by
  intro hlt
  have hrank : (⟨case_001418_rank.val, hlt⟩ : Fin numPairWords) = case_001418_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001418_rank.val, hlt⟩ case_001418_mask =
        case_001418_seq := by
    simpa [hrank] using case_001418_seqAtRank
  simp [SourceChecks, hseq, case_001418_support,
    checkTranslationConstraintSource, case_001418_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001418_rows :
    EqEqPosVarSecondRows case_001418_support case_001418_rank.val case_001418_mask := by
  intro hlt
  have hrank : (⟨case_001418_rank.val, hlt⟩ : Fin numPairWords) = case_001418_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001418_rank.val, hlt⟩ case_001418_mask =
        case_001418_seq := by
    simpa [hrank] using case_001418_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001418_rank.val, hlt⟩ case_001418_mask =
        case_001418_b := by
    simpa [hrank] using case_001418_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001418_support case_001418_rank.val hlt
          case_001418_mask = case_001418_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001418_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001418_support case_001418_rank.val hlt
          case_001418_mask = case_001418_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001418_secondLine_eq]
  have case_001418_fixedFirst :
      FixedRow (FirstLineAt case_001418_support case_001418_rank.val hlt case_001418_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001418_firstLine, FixedRow]
  have case_001418_rowSecond :
      EqEqPosRow (SecondLineAt case_001418_support case_001418_rank.val hlt case_001418_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001418_secondLine, EqEqPosRow]
  exact ⟨case_001418_fixedFirst, case_001418_rowSecond⟩

private theorem case_001418_existsRows :
    ExistsEqEqPosVarSecondRows case_001418_rank.val case_001418_mask :=
  ⟨case_001418_support, case_001418_sourceAgrees, case_001418_rows⟩

private theorem case_001418_covered :
    RowPropertyParametricCovered case_001418_rank.val case_001418_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001418_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001419_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_001419_mask : SignMask := ⟨54, by decide⟩
private def case_001419_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001419_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001419_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def case_001419_b : Vec3 Rat := { x := (-76/27), y := (-44/27), z := (332/27) }
private def case_001419_firstLine : StrictLin2 := { a := -1, b := 1, c := (-169/19) }
private def case_001419_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001419_rankWord :
    rankPairWord? case_001419_word = some case_001419_rank := by
  decide

private theorem case_001419_unrank :
    unrankPairWord case_001419_rank = case_001419_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001419_word case_001419_rank).1
    case_001419_rankWord |>.symm

private theorem case_001419_seqChoice :
    translationChoiceSeq case_001419_word case_001419_mask = case_001419_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001419_seqAtRank :
    translationSeqAtRankMask case_001419_rank case_001419_mask = case_001419_seq := by
  rw [translationSeqAtRankMask, case_001419_unrank]
  exact case_001419_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001419_bAtRank :
    translationBAtRankMask case_001419_rank case_001419_mask = case_001419_b := by
  rw [translationBAtRankMask, case_001419_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001419_b, case_001419_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001419_firstLine_eq :
    case_001419_support.firstLine case_001419_seq case_001419_b = case_001419_firstLine := by
  norm_num [case_001419_firstLine, case_001419_support, case_001419_seq, case_001419_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001419_secondLine_eq :
    case_001419_support.secondLine case_001419_seq case_001419_b = case_001419_secondLine := by
  norm_num [case_001419_secondLine, case_001419_support, case_001419_seq, case_001419_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001419_sourceAgrees :
    SourceAgrees case_001419_support case_001419_rank.val case_001419_mask := by
  intro hlt
  have hrank : (⟨case_001419_rank.val, hlt⟩ : Fin numPairWords) = case_001419_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001419_rank.val, hlt⟩ case_001419_mask =
        case_001419_seq := by
    simpa [hrank] using case_001419_seqAtRank
  simp [SourceChecks, hseq, case_001419_support,
    checkTranslationConstraintSource, case_001419_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001419_rows :
    OppOneMinusVarFirstRows case_001419_support case_001419_rank.val case_001419_mask := by
  intro hlt
  have hrank : (⟨case_001419_rank.val, hlt⟩ : Fin numPairWords) = case_001419_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001419_rank.val, hlt⟩ case_001419_mask =
        case_001419_seq := by
    simpa [hrank] using case_001419_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001419_rank.val, hlt⟩ case_001419_mask =
        case_001419_b := by
    simpa [hrank] using case_001419_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001419_support case_001419_rank.val hlt
          case_001419_mask = case_001419_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001419_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001419_support case_001419_rank.val hlt
          case_001419_mask = case_001419_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001419_secondLine_eq]
  have case_001419_rowFirst :
      OppPosRow (FirstLineAt case_001419_support case_001419_rank.val hlt case_001419_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001419_firstLine, OppPosRow]
  have case_001419_fixedSecond :
      FixedRow (SecondLineAt case_001419_support case_001419_rank.val hlt case_001419_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001419_secondLine, FixedRow]
  exact ⟨case_001419_rowFirst, case_001419_fixedSecond⟩

private theorem case_001419_existsRows :
    ExistsOppOneMinusVarFirstRows case_001419_rank.val case_001419_mask :=
  ⟨case_001419_support, case_001419_sourceAgrees, case_001419_rows⟩

private theorem case_001419_covered :
    RowPropertyParametricCovered case_001419_rank.val case_001419_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001419_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001420_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_001420_mask : SignMask := ⟨55, by decide⟩
private def case_001420_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001420_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001420_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def case_001420_b : Vec3 Rat := { x := (-76/27), y := (172/27), z := (332/27) }
private def case_001420_firstLine : StrictLin2 := { a := -1, b := 1, c := (-61/19) }
private def case_001420_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001420_rankWord :
    rankPairWord? case_001420_word = some case_001420_rank := by
  decide

private theorem case_001420_unrank :
    unrankPairWord case_001420_rank = case_001420_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001420_word case_001420_rank).1
    case_001420_rankWord |>.symm

private theorem case_001420_seqChoice :
    translationChoiceSeq case_001420_word case_001420_mask = case_001420_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001420_seqAtRank :
    translationSeqAtRankMask case_001420_rank case_001420_mask = case_001420_seq := by
  rw [translationSeqAtRankMask, case_001420_unrank]
  exact case_001420_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001420_bAtRank :
    translationBAtRankMask case_001420_rank case_001420_mask = case_001420_b := by
  rw [translationBAtRankMask, case_001420_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001420_b, case_001420_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001420_firstLine_eq :
    case_001420_support.firstLine case_001420_seq case_001420_b = case_001420_firstLine := by
  norm_num [case_001420_firstLine, case_001420_support, case_001420_seq, case_001420_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001420_secondLine_eq :
    case_001420_support.secondLine case_001420_seq case_001420_b = case_001420_secondLine := by
  norm_num [case_001420_secondLine, case_001420_support, case_001420_seq, case_001420_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001420_sourceAgrees :
    SourceAgrees case_001420_support case_001420_rank.val case_001420_mask := by
  intro hlt
  have hrank : (⟨case_001420_rank.val, hlt⟩ : Fin numPairWords) = case_001420_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001420_rank.val, hlt⟩ case_001420_mask =
        case_001420_seq := by
    simpa [hrank] using case_001420_seqAtRank
  simp [SourceChecks, hseq, case_001420_support,
    checkTranslationConstraintSource, case_001420_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001420_rows :
    OppOneMinusVarFirstRows case_001420_support case_001420_rank.val case_001420_mask := by
  intro hlt
  have hrank : (⟨case_001420_rank.val, hlt⟩ : Fin numPairWords) = case_001420_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001420_rank.val, hlt⟩ case_001420_mask =
        case_001420_seq := by
    simpa [hrank] using case_001420_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001420_rank.val, hlt⟩ case_001420_mask =
        case_001420_b := by
    simpa [hrank] using case_001420_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001420_support case_001420_rank.val hlt
          case_001420_mask = case_001420_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001420_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001420_support case_001420_rank.val hlt
          case_001420_mask = case_001420_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001420_secondLine_eq]
  have case_001420_rowFirst :
      OppPosRow (FirstLineAt case_001420_support case_001420_rank.val hlt case_001420_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001420_firstLine, OppPosRow]
  have case_001420_fixedSecond :
      FixedRow (SecondLineAt case_001420_support case_001420_rank.val hlt case_001420_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001420_secondLine, FixedRow]
  exact ⟨case_001420_rowFirst, case_001420_fixedSecond⟩

private theorem case_001420_existsRows :
    ExistsOppOneMinusVarFirstRows case_001420_rank.val case_001420_mask :=
  ⟨case_001420_support, case_001420_sourceAgrees, case_001420_rows⟩

private theorem case_001420_covered :
    RowPropertyParametricCovered case_001420_rank.val case_001420_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001420_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001421_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_001421_mask : SignMask := ⟨57, by decide⟩
private def case_001421_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001421_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001421_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001421_b : Vec3 Rat := { x := (-332/27), y := (236/27), z := (-236/27) }
private def case_001421_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001421_secondLine : StrictLin2 := { a := (-27/236), b := (-27/236), c := (-27/118) }

private theorem case_001421_rankWord :
    rankPairWord? case_001421_word = some case_001421_rank := by
  decide

private theorem case_001421_unrank :
    unrankPairWord case_001421_rank = case_001421_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001421_word case_001421_rank).1
    case_001421_rankWord |>.symm

private theorem case_001421_seqChoice :
    translationChoiceSeq case_001421_word case_001421_mask = case_001421_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001421_seqAtRank :
    translationSeqAtRankMask case_001421_rank case_001421_mask = case_001421_seq := by
  rw [translationSeqAtRankMask, case_001421_unrank]
  exact case_001421_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001421_bAtRank :
    translationBAtRankMask case_001421_rank case_001421_mask = case_001421_b := by
  rw [translationBAtRankMask, case_001421_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001421_b, case_001421_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001421_firstLine_eq :
    case_001421_support.firstLine case_001421_seq case_001421_b = case_001421_firstLine := by
  norm_num [case_001421_firstLine, case_001421_support, case_001421_seq, case_001421_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001421_secondLine_eq :
    case_001421_support.secondLine case_001421_seq case_001421_b = case_001421_secondLine := by
  norm_num [case_001421_secondLine, case_001421_support, case_001421_seq, case_001421_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001421_sourceAgrees :
    SourceAgrees case_001421_support case_001421_rank.val case_001421_mask := by
  intro hlt
  have hrank : (⟨case_001421_rank.val, hlt⟩ : Fin numPairWords) = case_001421_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001421_rank.val, hlt⟩ case_001421_mask =
        case_001421_seq := by
    simpa [hrank] using case_001421_seqAtRank
  simp [SourceChecks, hseq, case_001421_support,
    checkTranslationConstraintSource, case_001421_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001421_rows :
    EqEqPosVarSecondRows case_001421_support case_001421_rank.val case_001421_mask := by
  intro hlt
  have hrank : (⟨case_001421_rank.val, hlt⟩ : Fin numPairWords) = case_001421_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001421_rank.val, hlt⟩ case_001421_mask =
        case_001421_seq := by
    simpa [hrank] using case_001421_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001421_rank.val, hlt⟩ case_001421_mask =
        case_001421_b := by
    simpa [hrank] using case_001421_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001421_support case_001421_rank.val hlt
          case_001421_mask = case_001421_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001421_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001421_support case_001421_rank.val hlt
          case_001421_mask = case_001421_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001421_secondLine_eq]
  have case_001421_fixedFirst :
      FixedRow (FirstLineAt case_001421_support case_001421_rank.val hlt case_001421_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001421_firstLine, FixedRow]
  have case_001421_rowSecond :
      EqEqPosRow (SecondLineAt case_001421_support case_001421_rank.val hlt case_001421_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001421_secondLine, EqEqPosRow]
  exact ⟨case_001421_fixedFirst, case_001421_rowSecond⟩

private theorem case_001421_existsRows :
    ExistsEqEqPosVarSecondRows case_001421_rank.val case_001421_mask :=
  ⟨case_001421_support, case_001421_sourceAgrees, case_001421_rows⟩

private theorem case_001421_covered :
    RowPropertyParametricCovered case_001421_rank.val case_001421_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001421_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001422_rank : Fin numPairWords := ⟨905, by decide⟩
private def case_001422_mask : SignMask := ⟨63, by decide⟩
private def case_001422_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001422_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001422_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001422_b : Vec3 Rat := { x := (-220/27), y := (316/27), z := (188/27) }
private def case_001422_firstLine : StrictLin2 := { a := (55/81), b := (-55/81), c := (-209/81) }
private def case_001422_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001422_rankWord :
    rankPairWord? case_001422_word = some case_001422_rank := by
  decide

private theorem case_001422_unrank :
    unrankPairWord case_001422_rank = case_001422_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001422_word case_001422_rank).1
    case_001422_rankWord |>.symm

private theorem case_001422_seqChoice :
    translationChoiceSeq case_001422_word case_001422_mask = case_001422_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001422_seqAtRank :
    translationSeqAtRankMask case_001422_rank case_001422_mask = case_001422_seq := by
  rw [translationSeqAtRankMask, case_001422_unrank]
  exact case_001422_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001422_bAtRank :
    translationBAtRankMask case_001422_rank case_001422_mask = case_001422_b := by
  rw [translationBAtRankMask, case_001422_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001422_b, case_001422_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001422_firstLine_eq :
    case_001422_support.firstLine case_001422_seq case_001422_b = case_001422_firstLine := by
  norm_num [case_001422_firstLine, case_001422_support, case_001422_seq, case_001422_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001422_secondLine_eq :
    case_001422_support.secondLine case_001422_seq case_001422_b = case_001422_secondLine := by
  norm_num [case_001422_secondLine, case_001422_support, case_001422_seq, case_001422_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001422_sourceAgrees :
    SourceAgrees case_001422_support case_001422_rank.val case_001422_mask := by
  intro hlt
  have hrank : (⟨case_001422_rank.val, hlt⟩ : Fin numPairWords) = case_001422_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001422_rank.val, hlt⟩ case_001422_mask =
        case_001422_seq := by
    simpa [hrank] using case_001422_seqAtRank
  simp [SourceChecks, hseq, case_001422_support,
    checkTranslationConstraintSource, case_001422_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001422_rows :
    OppMinusOneVarFirstRows case_001422_support case_001422_rank.val case_001422_mask := by
  intro hlt
  have hrank : (⟨case_001422_rank.val, hlt⟩ : Fin numPairWords) = case_001422_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001422_rank.val, hlt⟩ case_001422_mask =
        case_001422_seq := by
    simpa [hrank] using case_001422_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001422_rank.val, hlt⟩ case_001422_mask =
        case_001422_b := by
    simpa [hrank] using case_001422_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001422_support case_001422_rank.val hlt
          case_001422_mask = case_001422_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001422_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001422_support case_001422_rank.val hlt
          case_001422_mask = case_001422_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001422_secondLine_eq]
  have case_001422_rowFirst :
      OppNegRow (FirstLineAt case_001422_support case_001422_rank.val hlt case_001422_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001422_firstLine, OppNegRow]
  have case_001422_fixedSecond :
      FixedRow (SecondLineAt case_001422_support case_001422_rank.val hlt case_001422_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001422_secondLine, FixedRow]
  exact ⟨case_001422_rowFirst, case_001422_fixedSecond⟩

private theorem case_001422_existsRows :
    ExistsOppMinusOneVarFirstRows case_001422_rank.val case_001422_mask :=
  ⟨case_001422_support, case_001422_sourceAgrees, case_001422_rows⟩

private theorem case_001422_covered :
    RowPropertyParametricCovered case_001422_rank.val case_001422_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001422_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001423_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_001423_mask : SignMask := ⟨9, by decide⟩
private def case_001423_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001423_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001423_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_001423_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-116/9) }
private def case_001423_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_001423_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001423_rankWord :
    rankPairWord? case_001423_word = some case_001423_rank := by
  decide

private theorem case_001423_unrank :
    unrankPairWord case_001423_rank = case_001423_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001423_word case_001423_rank).1
    case_001423_rankWord |>.symm

private theorem case_001423_seqChoice :
    translationChoiceSeq case_001423_word case_001423_mask = case_001423_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001423_seqAtRank :
    translationSeqAtRankMask case_001423_rank case_001423_mask = case_001423_seq := by
  rw [translationSeqAtRankMask, case_001423_unrank]
  exact case_001423_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001423_bAtRank :
    translationBAtRankMask case_001423_rank case_001423_mask = case_001423_b := by
  rw [translationBAtRankMask, case_001423_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001423_b, case_001423_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001423_firstLine_eq :
    case_001423_support.firstLine case_001423_seq case_001423_b = case_001423_firstLine := by
  norm_num [case_001423_firstLine, case_001423_support, case_001423_seq, case_001423_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001423_secondLine_eq :
    case_001423_support.secondLine case_001423_seq case_001423_b = case_001423_secondLine := by
  norm_num [case_001423_secondLine, case_001423_support, case_001423_seq, case_001423_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001423_sourceAgrees :
    SourceAgrees case_001423_support case_001423_rank.val case_001423_mask := by
  intro hlt
  have hrank : (⟨case_001423_rank.val, hlt⟩ : Fin numPairWords) = case_001423_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001423_rank.val, hlt⟩ case_001423_mask =
        case_001423_seq := by
    simpa [hrank] using case_001423_seqAtRank
  simp [SourceChecks, hseq, case_001423_support,
    checkTranslationConstraintSource, case_001423_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001423_rows :
    EqEqPosVarFirstRows case_001423_support case_001423_rank.val case_001423_mask := by
  intro hlt
  have hrank : (⟨case_001423_rank.val, hlt⟩ : Fin numPairWords) = case_001423_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001423_rank.val, hlt⟩ case_001423_mask =
        case_001423_seq := by
    simpa [hrank] using case_001423_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001423_rank.val, hlt⟩ case_001423_mask =
        case_001423_b := by
    simpa [hrank] using case_001423_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001423_support case_001423_rank.val hlt
          case_001423_mask = case_001423_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001423_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001423_support case_001423_rank.val hlt
          case_001423_mask = case_001423_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001423_secondLine_eq]
  have case_001423_rowFirst :
      EqEqPosRow (FirstLineAt case_001423_support case_001423_rank.val hlt case_001423_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001423_firstLine, EqEqPosRow]
  have case_001423_fixedSecond :
      FixedRow (SecondLineAt case_001423_support case_001423_rank.val hlt case_001423_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001423_secondLine, FixedRow]
  exact ⟨case_001423_rowFirst, case_001423_fixedSecond⟩

private theorem case_001423_existsRows :
    ExistsEqEqPosVarFirstRows case_001423_rank.val case_001423_mask :=
  ⟨case_001423_support, case_001423_sourceAgrees, case_001423_rows⟩

private theorem case_001423_covered :
    RowPropertyParametricCovered case_001423_rank.val case_001423_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001423_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001424_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_001424_mask : SignMask := ⟨16, by decide⟩
private def case_001424_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001424_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001424_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_001424_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-52/9) }
private def case_001424_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_001424_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001424_rankWord :
    rankPairWord? case_001424_word = some case_001424_rank := by
  decide

private theorem case_001424_unrank :
    unrankPairWord case_001424_rank = case_001424_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001424_word case_001424_rank).1
    case_001424_rankWord |>.symm

private theorem case_001424_seqChoice :
    translationChoiceSeq case_001424_word case_001424_mask = case_001424_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001424_seqAtRank :
    translationSeqAtRankMask case_001424_rank case_001424_mask = case_001424_seq := by
  rw [translationSeqAtRankMask, case_001424_unrank]
  exact case_001424_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001424_bAtRank :
    translationBAtRankMask case_001424_rank case_001424_mask = case_001424_b := by
  rw [translationBAtRankMask, case_001424_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001424_b, case_001424_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001424_firstLine_eq :
    case_001424_support.firstLine case_001424_seq case_001424_b = case_001424_firstLine := by
  norm_num [case_001424_firstLine, case_001424_support, case_001424_seq, case_001424_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001424_secondLine_eq :
    case_001424_support.secondLine case_001424_seq case_001424_b = case_001424_secondLine := by
  norm_num [case_001424_secondLine, case_001424_support, case_001424_seq, case_001424_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001424_sourceAgrees :
    SourceAgrees case_001424_support case_001424_rank.val case_001424_mask := by
  intro hlt
  have hrank : (⟨case_001424_rank.val, hlt⟩ : Fin numPairWords) = case_001424_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001424_rank.val, hlt⟩ case_001424_mask =
        case_001424_seq := by
    simpa [hrank] using case_001424_seqAtRank
  simp [SourceChecks, hseq, case_001424_support,
    checkTranslationConstraintSource, case_001424_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001424_rows :
    EqEqPosVarFirstRows case_001424_support case_001424_rank.val case_001424_mask := by
  intro hlt
  have hrank : (⟨case_001424_rank.val, hlt⟩ : Fin numPairWords) = case_001424_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001424_rank.val, hlt⟩ case_001424_mask =
        case_001424_seq := by
    simpa [hrank] using case_001424_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001424_rank.val, hlt⟩ case_001424_mask =
        case_001424_b := by
    simpa [hrank] using case_001424_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001424_support case_001424_rank.val hlt
          case_001424_mask = case_001424_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001424_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001424_support case_001424_rank.val hlt
          case_001424_mask = case_001424_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001424_secondLine_eq]
  have case_001424_rowFirst :
      EqEqPosRow (FirstLineAt case_001424_support case_001424_rank.val hlt case_001424_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001424_firstLine, EqEqPosRow]
  have case_001424_fixedSecond :
      FixedRow (SecondLineAt case_001424_support case_001424_rank.val hlt case_001424_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001424_secondLine, FixedRow]
  exact ⟨case_001424_rowFirst, case_001424_fixedSecond⟩

private theorem case_001424_existsRows :
    ExistsEqEqPosVarFirstRows case_001424_rank.val case_001424_mask :=
  ⟨case_001424_support, case_001424_sourceAgrees, case_001424_rows⟩

private theorem case_001424_covered :
    RowPropertyParametricCovered case_001424_rank.val case_001424_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001424_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001425_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_001425_mask : SignMask := ⟨18, by decide⟩
private def case_001425_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001425_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001425_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_001425_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (20/9) }
private def case_001425_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/13) }
private def case_001425_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001425_rankWord :
    rankPairWord? case_001425_word = some case_001425_rank := by
  decide

private theorem case_001425_unrank :
    unrankPairWord case_001425_rank = case_001425_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001425_word case_001425_rank).1
    case_001425_rankWord |>.symm

private theorem case_001425_seqChoice :
    translationChoiceSeq case_001425_word case_001425_mask = case_001425_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001425_seqAtRank :
    translationSeqAtRankMask case_001425_rank case_001425_mask = case_001425_seq := by
  rw [translationSeqAtRankMask, case_001425_unrank]
  exact case_001425_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001425_bAtRank :
    translationBAtRankMask case_001425_rank case_001425_mask = case_001425_b := by
  rw [translationBAtRankMask, case_001425_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001425_b, case_001425_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001425_firstLine_eq :
    case_001425_support.firstLine case_001425_seq case_001425_b = case_001425_firstLine := by
  norm_num [case_001425_firstLine, case_001425_support, case_001425_seq, case_001425_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001425_secondLine_eq :
    case_001425_support.secondLine case_001425_seq case_001425_b = case_001425_secondLine := by
  norm_num [case_001425_secondLine, case_001425_support, case_001425_seq, case_001425_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001425_sourceAgrees :
    SourceAgrees case_001425_support case_001425_rank.val case_001425_mask := by
  intro hlt
  have hrank : (⟨case_001425_rank.val, hlt⟩ : Fin numPairWords) = case_001425_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001425_rank.val, hlt⟩ case_001425_mask =
        case_001425_seq := by
    simpa [hrank] using case_001425_seqAtRank
  simp [SourceChecks, hseq, case_001425_support,
    checkTranslationConstraintSource, case_001425_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001425_rows :
    EqEqPosVarFirstRows case_001425_support case_001425_rank.val case_001425_mask := by
  intro hlt
  have hrank : (⟨case_001425_rank.val, hlt⟩ : Fin numPairWords) = case_001425_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001425_rank.val, hlt⟩ case_001425_mask =
        case_001425_seq := by
    simpa [hrank] using case_001425_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001425_rank.val, hlt⟩ case_001425_mask =
        case_001425_b := by
    simpa [hrank] using case_001425_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001425_support case_001425_rank.val hlt
          case_001425_mask = case_001425_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001425_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001425_support case_001425_rank.val hlt
          case_001425_mask = case_001425_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001425_secondLine_eq]
  have case_001425_rowFirst :
      EqEqPosRow (FirstLineAt case_001425_support case_001425_rank.val hlt case_001425_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001425_firstLine, EqEqPosRow]
  have case_001425_fixedSecond :
      FixedRow (SecondLineAt case_001425_support case_001425_rank.val hlt case_001425_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001425_secondLine, FixedRow]
  exact ⟨case_001425_rowFirst, case_001425_fixedSecond⟩

private theorem case_001425_existsRows :
    ExistsEqEqPosVarFirstRows case_001425_rank.val case_001425_mask :=
  ⟨case_001425_support, case_001425_sourceAgrees, case_001425_rows⟩

private theorem case_001425_covered :
    RowPropertyParametricCovered case_001425_rank.val case_001425_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001425_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001426_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_001426_mask : SignMask := ⟨22, by decide⟩
private def case_001426_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001426_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001426_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_001426_b : Vec3 Rat := { x := (-44/27), y := (-268/27), z := (268/27) }
private def case_001426_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001426_secondLine : StrictLin2 := { a := (-9/34), b := (-9/34), c := (-15/17) }

private theorem case_001426_rankWord :
    rankPairWord? case_001426_word = some case_001426_rank := by
  decide

private theorem case_001426_unrank :
    unrankPairWord case_001426_rank = case_001426_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001426_word case_001426_rank).1
    case_001426_rankWord |>.symm

private theorem case_001426_seqChoice :
    translationChoiceSeq case_001426_word case_001426_mask = case_001426_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001426_seqAtRank :
    translationSeqAtRankMask case_001426_rank case_001426_mask = case_001426_seq := by
  rw [translationSeqAtRankMask, case_001426_unrank]
  exact case_001426_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001426_bAtRank :
    translationBAtRankMask case_001426_rank case_001426_mask = case_001426_b := by
  rw [translationBAtRankMask, case_001426_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001426_b, case_001426_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001426_firstLine_eq :
    case_001426_support.firstLine case_001426_seq case_001426_b = case_001426_firstLine := by
  norm_num [case_001426_firstLine, case_001426_support, case_001426_seq, case_001426_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001426_secondLine_eq :
    case_001426_support.secondLine case_001426_seq case_001426_b = case_001426_secondLine := by
  norm_num [case_001426_secondLine, case_001426_support, case_001426_seq, case_001426_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001426_sourceAgrees :
    SourceAgrees case_001426_support case_001426_rank.val case_001426_mask := by
  intro hlt
  have hrank : (⟨case_001426_rank.val, hlt⟩ : Fin numPairWords) = case_001426_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001426_rank.val, hlt⟩ case_001426_mask =
        case_001426_seq := by
    simpa [hrank] using case_001426_seqAtRank
  simp [SourceChecks, hseq, case_001426_support,
    checkTranslationConstraintSource, case_001426_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001426_rows :
    EqEqPosVarSecondRows case_001426_support case_001426_rank.val case_001426_mask := by
  intro hlt
  have hrank : (⟨case_001426_rank.val, hlt⟩ : Fin numPairWords) = case_001426_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001426_rank.val, hlt⟩ case_001426_mask =
        case_001426_seq := by
    simpa [hrank] using case_001426_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001426_rank.val, hlt⟩ case_001426_mask =
        case_001426_b := by
    simpa [hrank] using case_001426_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001426_support case_001426_rank.val hlt
          case_001426_mask = case_001426_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001426_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001426_support case_001426_rank.val hlt
          case_001426_mask = case_001426_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001426_secondLine_eq]
  have case_001426_fixedFirst :
      FixedRow (FirstLineAt case_001426_support case_001426_rank.val hlt case_001426_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001426_firstLine, FixedRow]
  have case_001426_rowSecond :
      EqEqPosRow (SecondLineAt case_001426_support case_001426_rank.val hlt case_001426_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001426_secondLine, EqEqPosRow]
  exact ⟨case_001426_fixedFirst, case_001426_rowSecond⟩

private theorem case_001426_existsRows :
    ExistsEqEqPosVarSecondRows case_001426_rank.val case_001426_mask :=
  ⟨case_001426_support, case_001426_sourceAgrees, case_001426_rows⟩

private theorem case_001426_covered :
    RowPropertyParametricCovered case_001426_rank.val case_001426_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001426_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001427_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_001427_mask : SignMask := ⟨24, by decide⟩
private def case_001427_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001427_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001427_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_001427_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-100/9) }
private def case_001427_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_001427_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001427_rankWord :
    rankPairWord? case_001427_word = some case_001427_rank := by
  decide

private theorem case_001427_unrank :
    unrankPairWord case_001427_rank = case_001427_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001427_word case_001427_rank).1
    case_001427_rankWord |>.symm

private theorem case_001427_seqChoice :
    translationChoiceSeq case_001427_word case_001427_mask = case_001427_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001427_seqAtRank :
    translationSeqAtRankMask case_001427_rank case_001427_mask = case_001427_seq := by
  rw [translationSeqAtRankMask, case_001427_unrank]
  exact case_001427_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001427_bAtRank :
    translationBAtRankMask case_001427_rank case_001427_mask = case_001427_b := by
  rw [translationBAtRankMask, case_001427_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001427_b, case_001427_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001427_firstLine_eq :
    case_001427_support.firstLine case_001427_seq case_001427_b = case_001427_firstLine := by
  norm_num [case_001427_firstLine, case_001427_support, case_001427_seq, case_001427_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001427_secondLine_eq :
    case_001427_support.secondLine case_001427_seq case_001427_b = case_001427_secondLine := by
  norm_num [case_001427_secondLine, case_001427_support, case_001427_seq, case_001427_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001427_sourceAgrees :
    SourceAgrees case_001427_support case_001427_rank.val case_001427_mask := by
  intro hlt
  have hrank : (⟨case_001427_rank.val, hlt⟩ : Fin numPairWords) = case_001427_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001427_rank.val, hlt⟩ case_001427_mask =
        case_001427_seq := by
    simpa [hrank] using case_001427_seqAtRank
  simp [SourceChecks, hseq, case_001427_support,
    checkTranslationConstraintSource, case_001427_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001427_rows :
    EqEqPosVarFirstRows case_001427_support case_001427_rank.val case_001427_mask := by
  intro hlt
  have hrank : (⟨case_001427_rank.val, hlt⟩ : Fin numPairWords) = case_001427_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001427_rank.val, hlt⟩ case_001427_mask =
        case_001427_seq := by
    simpa [hrank] using case_001427_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001427_rank.val, hlt⟩ case_001427_mask =
        case_001427_b := by
    simpa [hrank] using case_001427_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001427_support case_001427_rank.val hlt
          case_001427_mask = case_001427_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001427_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001427_support case_001427_rank.val hlt
          case_001427_mask = case_001427_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001427_secondLine_eq]
  have case_001427_rowFirst :
      EqEqPosRow (FirstLineAt case_001427_support case_001427_rank.val hlt case_001427_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001427_firstLine, EqEqPosRow]
  have case_001427_fixedSecond :
      FixedRow (SecondLineAt case_001427_support case_001427_rank.val hlt case_001427_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001427_secondLine, FixedRow]
  exact ⟨case_001427_rowFirst, case_001427_fixedSecond⟩

private theorem case_001427_existsRows :
    ExistsEqEqPosVarFirstRows case_001427_rank.val case_001427_mask :=
  ⟨case_001427_support, case_001427_sourceAgrees, case_001427_rows⟩

private theorem case_001427_covered :
    RowPropertyParametricCovered case_001427_rank.val case_001427_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001427_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001428_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_001428_mask : SignMask := ⟨45, by decide⟩
private def case_001428_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001428_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_001428_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_001428_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-20/9) }
private def case_001428_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001428_secondLine : StrictLin2 := { a := (-5/26), b := (5/26), c := (-12/13) }

private theorem case_001428_rankWord :
    rankPairWord? case_001428_word = some case_001428_rank := by
  decide

private theorem case_001428_unrank :
    unrankPairWord case_001428_rank = case_001428_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001428_word case_001428_rank).1
    case_001428_rankWord |>.symm

private theorem case_001428_seqChoice :
    translationChoiceSeq case_001428_word case_001428_mask = case_001428_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001428_seqAtRank :
    translationSeqAtRankMask case_001428_rank case_001428_mask = case_001428_seq := by
  rw [translationSeqAtRankMask, case_001428_unrank]
  exact case_001428_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001428_bAtRank :
    translationBAtRankMask case_001428_rank case_001428_mask = case_001428_b := by
  rw [translationBAtRankMask, case_001428_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001428_b, case_001428_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001428_firstLine_eq :
    case_001428_support.firstLine case_001428_seq case_001428_b = case_001428_firstLine := by
  norm_num [case_001428_firstLine, case_001428_support, case_001428_seq, case_001428_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001428_secondLine_eq :
    case_001428_support.secondLine case_001428_seq case_001428_b = case_001428_secondLine := by
  norm_num [case_001428_secondLine, case_001428_support, case_001428_seq, case_001428_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001428_sourceAgrees :
    SourceAgrees case_001428_support case_001428_rank.val case_001428_mask := by
  intro hlt
  have hrank : (⟨case_001428_rank.val, hlt⟩ : Fin numPairWords) = case_001428_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001428_rank.val, hlt⟩ case_001428_mask =
        case_001428_seq := by
    simpa [hrank] using case_001428_seqAtRank
  simp [SourceChecks, hseq, case_001428_support,
    checkTranslationConstraintSource, case_001428_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001428_rows :
    OppOneMinusVarSecondRows case_001428_support case_001428_rank.val case_001428_mask := by
  intro hlt
  have hrank : (⟨case_001428_rank.val, hlt⟩ : Fin numPairWords) = case_001428_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001428_rank.val, hlt⟩ case_001428_mask =
        case_001428_seq := by
    simpa [hrank] using case_001428_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001428_rank.val, hlt⟩ case_001428_mask =
        case_001428_b := by
    simpa [hrank] using case_001428_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001428_support case_001428_rank.val hlt
          case_001428_mask = case_001428_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001428_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001428_support case_001428_rank.val hlt
          case_001428_mask = case_001428_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001428_secondLine_eq]
  have case_001428_fixedFirst :
      FixedRow (FirstLineAt case_001428_support case_001428_rank.val hlt case_001428_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001428_firstLine, FixedRow]
  have case_001428_rowSecond :
      OppPosRow (SecondLineAt case_001428_support case_001428_rank.val hlt case_001428_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001428_secondLine, OppPosRow]
  exact ⟨case_001428_fixedFirst, case_001428_rowSecond⟩

private theorem case_001428_existsRows :
    ExistsOppOneMinusVarSecondRows case_001428_rank.val case_001428_mask :=
  ⟨case_001428_support, case_001428_sourceAgrees, case_001428_rows⟩

private theorem case_001428_covered :
    RowPropertyParametricCovered case_001428_rank.val case_001428_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001428_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001429_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_001429_mask : SignMask := ⟨50, by decide⟩
private def case_001429_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001429_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001429_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_001429_b : Vec3 Rat := { x := (-268/27), y := (-140/27), z := (140/27) }
private def case_001429_firstLine : StrictLin2 := { a := -1, b := 1, c := (-73/67) }
private def case_001429_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001429_rankWord :
    rankPairWord? case_001429_word = some case_001429_rank := by
  decide

private theorem case_001429_unrank :
    unrankPairWord case_001429_rank = case_001429_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001429_word case_001429_rank).1
    case_001429_rankWord |>.symm

private theorem case_001429_seqChoice :
    translationChoiceSeq case_001429_word case_001429_mask = case_001429_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001429_seqAtRank :
    translationSeqAtRankMask case_001429_rank case_001429_mask = case_001429_seq := by
  rw [translationSeqAtRankMask, case_001429_unrank]
  exact case_001429_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001429_bAtRank :
    translationBAtRankMask case_001429_rank case_001429_mask = case_001429_b := by
  rw [translationBAtRankMask, case_001429_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001429_b, case_001429_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001429_firstLine_eq :
    case_001429_support.firstLine case_001429_seq case_001429_b = case_001429_firstLine := by
  norm_num [case_001429_firstLine, case_001429_support, case_001429_seq, case_001429_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001429_secondLine_eq :
    case_001429_support.secondLine case_001429_seq case_001429_b = case_001429_secondLine := by
  norm_num [case_001429_secondLine, case_001429_support, case_001429_seq, case_001429_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001429_sourceAgrees :
    SourceAgrees case_001429_support case_001429_rank.val case_001429_mask := by
  intro hlt
  have hrank : (⟨case_001429_rank.val, hlt⟩ : Fin numPairWords) = case_001429_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001429_rank.val, hlt⟩ case_001429_mask =
        case_001429_seq := by
    simpa [hrank] using case_001429_seqAtRank
  simp [SourceChecks, hseq, case_001429_support,
    checkTranslationConstraintSource, case_001429_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001429_rows :
    OppOneMinusVarFirstRows case_001429_support case_001429_rank.val case_001429_mask := by
  intro hlt
  have hrank : (⟨case_001429_rank.val, hlt⟩ : Fin numPairWords) = case_001429_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001429_rank.val, hlt⟩ case_001429_mask =
        case_001429_seq := by
    simpa [hrank] using case_001429_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001429_rank.val, hlt⟩ case_001429_mask =
        case_001429_b := by
    simpa [hrank] using case_001429_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001429_support case_001429_rank.val hlt
          case_001429_mask = case_001429_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001429_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001429_support case_001429_rank.val hlt
          case_001429_mask = case_001429_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001429_secondLine_eq]
  have case_001429_rowFirst :
      OppPosRow (FirstLineAt case_001429_support case_001429_rank.val hlt case_001429_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001429_firstLine, OppPosRow]
  have case_001429_fixedSecond :
      FixedRow (SecondLineAt case_001429_support case_001429_rank.val hlt case_001429_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001429_secondLine, FixedRow]
  exact ⟨case_001429_rowFirst, case_001429_fixedSecond⟩

private theorem case_001429_existsRows :
    ExistsOppOneMinusVarFirstRows case_001429_rank.val case_001429_mask :=
  ⟨case_001429_support, case_001429_sourceAgrees, case_001429_rows⟩

private theorem case_001429_covered :
    RowPropertyParametricCovered case_001429_rank.val case_001429_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001429_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001430_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_001430_mask : SignMask := ⟨54, by decide⟩
private def case_001430_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001430_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001430_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_001430_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (116/9) }
private def case_001430_firstLine : StrictLin2 := { a := -1, b := 1, c := (-55/13) }
private def case_001430_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001430_rankWord :
    rankPairWord? case_001430_word = some case_001430_rank := by
  decide

private theorem case_001430_unrank :
    unrankPairWord case_001430_rank = case_001430_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001430_word case_001430_rank).1
    case_001430_rankWord |>.symm

private theorem case_001430_seqChoice :
    translationChoiceSeq case_001430_word case_001430_mask = case_001430_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001430_seqAtRank :
    translationSeqAtRankMask case_001430_rank case_001430_mask = case_001430_seq := by
  rw [translationSeqAtRankMask, case_001430_unrank]
  exact case_001430_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001430_bAtRank :
    translationBAtRankMask case_001430_rank case_001430_mask = case_001430_b := by
  rw [translationBAtRankMask, case_001430_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001430_b, case_001430_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001430_firstLine_eq :
    case_001430_support.firstLine case_001430_seq case_001430_b = case_001430_firstLine := by
  norm_num [case_001430_firstLine, case_001430_support, case_001430_seq, case_001430_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001430_secondLine_eq :
    case_001430_support.secondLine case_001430_seq case_001430_b = case_001430_secondLine := by
  norm_num [case_001430_secondLine, case_001430_support, case_001430_seq, case_001430_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001430_sourceAgrees :
    SourceAgrees case_001430_support case_001430_rank.val case_001430_mask := by
  intro hlt
  have hrank : (⟨case_001430_rank.val, hlt⟩ : Fin numPairWords) = case_001430_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001430_rank.val, hlt⟩ case_001430_mask =
        case_001430_seq := by
    simpa [hrank] using case_001430_seqAtRank
  simp [SourceChecks, hseq, case_001430_support,
    checkTranslationConstraintSource, case_001430_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001430_rows :
    OppOneMinusVarFirstRows case_001430_support case_001430_rank.val case_001430_mask := by
  intro hlt
  have hrank : (⟨case_001430_rank.val, hlt⟩ : Fin numPairWords) = case_001430_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001430_rank.val, hlt⟩ case_001430_mask =
        case_001430_seq := by
    simpa [hrank] using case_001430_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001430_rank.val, hlt⟩ case_001430_mask =
        case_001430_b := by
    simpa [hrank] using case_001430_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001430_support case_001430_rank.val hlt
          case_001430_mask = case_001430_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001430_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001430_support case_001430_rank.val hlt
          case_001430_mask = case_001430_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001430_secondLine_eq]
  have case_001430_rowFirst :
      OppPosRow (FirstLineAt case_001430_support case_001430_rank.val hlt case_001430_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001430_firstLine, OppPosRow]
  have case_001430_fixedSecond :
      FixedRow (SecondLineAt case_001430_support case_001430_rank.val hlt case_001430_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001430_secondLine, FixedRow]
  exact ⟨case_001430_rowFirst, case_001430_fixedSecond⟩

private theorem case_001430_existsRows :
    ExistsOppOneMinusVarFirstRows case_001430_rank.val case_001430_mask :=
  ⟨case_001430_support, case_001430_sourceAgrees, case_001430_rows⟩

private theorem case_001430_covered :
    RowPropertyParametricCovered case_001430_rank.val case_001430_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001430_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001431_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_001431_mask : SignMask := ⟨55, by decide⟩
private def case_001431_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001431_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001431_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_001431_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (116/9) }
private def case_001431_firstLine : StrictLin2 := { a := -1, b := 1, c := (-19/13) }
private def case_001431_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001431_rankWord :
    rankPairWord? case_001431_word = some case_001431_rank := by
  decide

private theorem case_001431_unrank :
    unrankPairWord case_001431_rank = case_001431_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001431_word case_001431_rank).1
    case_001431_rankWord |>.symm

private theorem case_001431_seqChoice :
    translationChoiceSeq case_001431_word case_001431_mask = case_001431_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001431_seqAtRank :
    translationSeqAtRankMask case_001431_rank case_001431_mask = case_001431_seq := by
  rw [translationSeqAtRankMask, case_001431_unrank]
  exact case_001431_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001431_bAtRank :
    translationBAtRankMask case_001431_rank case_001431_mask = case_001431_b := by
  rw [translationBAtRankMask, case_001431_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001431_b, case_001431_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001431_firstLine_eq :
    case_001431_support.firstLine case_001431_seq case_001431_b = case_001431_firstLine := by
  norm_num [case_001431_firstLine, case_001431_support, case_001431_seq, case_001431_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001431_secondLine_eq :
    case_001431_support.secondLine case_001431_seq case_001431_b = case_001431_secondLine := by
  norm_num [case_001431_secondLine, case_001431_support, case_001431_seq, case_001431_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001431_sourceAgrees :
    SourceAgrees case_001431_support case_001431_rank.val case_001431_mask := by
  intro hlt
  have hrank : (⟨case_001431_rank.val, hlt⟩ : Fin numPairWords) = case_001431_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001431_rank.val, hlt⟩ case_001431_mask =
        case_001431_seq := by
    simpa [hrank] using case_001431_seqAtRank
  simp [SourceChecks, hseq, case_001431_support,
    checkTranslationConstraintSource, case_001431_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001431_rows :
    OppOneMinusVarFirstRows case_001431_support case_001431_rank.val case_001431_mask := by
  intro hlt
  have hrank : (⟨case_001431_rank.val, hlt⟩ : Fin numPairWords) = case_001431_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001431_rank.val, hlt⟩ case_001431_mask =
        case_001431_seq := by
    simpa [hrank] using case_001431_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001431_rank.val, hlt⟩ case_001431_mask =
        case_001431_b := by
    simpa [hrank] using case_001431_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001431_support case_001431_rank.val hlt
          case_001431_mask = case_001431_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001431_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001431_support case_001431_rank.val hlt
          case_001431_mask = case_001431_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001431_secondLine_eq]
  have case_001431_rowFirst :
      OppPosRow (FirstLineAt case_001431_support case_001431_rank.val hlt case_001431_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001431_firstLine, OppPosRow]
  have case_001431_fixedSecond :
      FixedRow (SecondLineAt case_001431_support case_001431_rank.val hlt case_001431_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001431_secondLine, FixedRow]
  exact ⟨case_001431_rowFirst, case_001431_fixedSecond⟩

private theorem case_001431_existsRows :
    ExistsOppOneMinusVarFirstRows case_001431_rank.val case_001431_mask :=
  ⟨case_001431_support, case_001431_sourceAgrees, case_001431_rows⟩

private theorem case_001431_covered :
    RowPropertyParametricCovered case_001431_rank.val case_001431_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001431_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001432_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_001432_mask : SignMask := ⟨57, by decide⟩
private def case_001432_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001432_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001432_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_001432_b : Vec3 Rat := { x := (-412/27), y := (220/27), z := (-220/27) }
private def case_001432_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001432_secondLine : StrictLin2 := { a := (-27/220), b := (-27/220), c := (-27/110) }

private theorem case_001432_rankWord :
    rankPairWord? case_001432_word = some case_001432_rank := by
  decide

private theorem case_001432_unrank :
    unrankPairWord case_001432_rank = case_001432_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001432_word case_001432_rank).1
    case_001432_rankWord |>.symm

private theorem case_001432_seqChoice :
    translationChoiceSeq case_001432_word case_001432_mask = case_001432_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001432_seqAtRank :
    translationSeqAtRankMask case_001432_rank case_001432_mask = case_001432_seq := by
  rw [translationSeqAtRankMask, case_001432_unrank]
  exact case_001432_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001432_bAtRank :
    translationBAtRankMask case_001432_rank case_001432_mask = case_001432_b := by
  rw [translationBAtRankMask, case_001432_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001432_b, case_001432_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001432_firstLine_eq :
    case_001432_support.firstLine case_001432_seq case_001432_b = case_001432_firstLine := by
  norm_num [case_001432_firstLine, case_001432_support, case_001432_seq, case_001432_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001432_secondLine_eq :
    case_001432_support.secondLine case_001432_seq case_001432_b = case_001432_secondLine := by
  norm_num [case_001432_secondLine, case_001432_support, case_001432_seq, case_001432_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001432_sourceAgrees :
    SourceAgrees case_001432_support case_001432_rank.val case_001432_mask := by
  intro hlt
  have hrank : (⟨case_001432_rank.val, hlt⟩ : Fin numPairWords) = case_001432_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001432_rank.val, hlt⟩ case_001432_mask =
        case_001432_seq := by
    simpa [hrank] using case_001432_seqAtRank
  simp [SourceChecks, hseq, case_001432_support,
    checkTranslationConstraintSource, case_001432_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001432_rows :
    EqEqPosVarSecondRows case_001432_support case_001432_rank.val case_001432_mask := by
  intro hlt
  have hrank : (⟨case_001432_rank.val, hlt⟩ : Fin numPairWords) = case_001432_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001432_rank.val, hlt⟩ case_001432_mask =
        case_001432_seq := by
    simpa [hrank] using case_001432_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001432_rank.val, hlt⟩ case_001432_mask =
        case_001432_b := by
    simpa [hrank] using case_001432_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001432_support case_001432_rank.val hlt
          case_001432_mask = case_001432_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001432_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001432_support case_001432_rank.val hlt
          case_001432_mask = case_001432_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001432_secondLine_eq]
  have case_001432_fixedFirst :
      FixedRow (FirstLineAt case_001432_support case_001432_rank.val hlt case_001432_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001432_firstLine, FixedRow]
  have case_001432_rowSecond :
      EqEqPosRow (SecondLineAt case_001432_support case_001432_rank.val hlt case_001432_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001432_secondLine, EqEqPosRow]
  exact ⟨case_001432_fixedFirst, case_001432_rowSecond⟩

private theorem case_001432_existsRows :
    ExistsEqEqPosVarSecondRows case_001432_rank.val case_001432_mask :=
  ⟨case_001432_support, case_001432_sourceAgrees, case_001432_rows⟩

private theorem case_001432_covered :
    RowPropertyParametricCovered case_001432_rank.val case_001432_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001432_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_001433_rank : Fin numPairWords := ⟨911, by decide⟩
private def case_001433_mask : SignMask := ⟨63, by decide⟩
private def case_001433_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001433_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_001433_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_001433_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (68/9) }
private def case_001433_firstLine : StrictLin2 := { a := 1, b := 1, c := (-59/25) }
private def case_001433_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_001433_rankWord :
    rankPairWord? case_001433_word = some case_001433_rank := by
  decide

private theorem case_001433_unrank :
    unrankPairWord case_001433_rank = case_001433_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001433_word case_001433_rank).1
    case_001433_rankWord |>.symm

private theorem case_001433_seqChoice :
    translationChoiceSeq case_001433_word case_001433_mask = case_001433_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001433_seqAtRank :
    translationSeqAtRankMask case_001433_rank case_001433_mask = case_001433_seq := by
  rw [translationSeqAtRankMask, case_001433_unrank]
  exact case_001433_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001433_bAtRank :
    translationBAtRankMask case_001433_rank case_001433_mask = case_001433_b := by
  rw [translationBAtRankMask, case_001433_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001433_b, case_001433_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001433_firstLine_eq :
    case_001433_support.firstLine case_001433_seq case_001433_b = case_001433_firstLine := by
  norm_num [case_001433_firstLine, case_001433_support, case_001433_seq, case_001433_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001433_secondLine_eq :
    case_001433_support.secondLine case_001433_seq case_001433_b = case_001433_secondLine := by
  norm_num [case_001433_secondLine, case_001433_support, case_001433_seq, case_001433_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001433_sourceAgrees :
    SourceAgrees case_001433_support case_001433_rank.val case_001433_mask := by
  intro hlt
  have hrank : (⟨case_001433_rank.val, hlt⟩ : Fin numPairWords) = case_001433_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001433_rank.val, hlt⟩ case_001433_mask =
        case_001433_seq := by
    simpa [hrank] using case_001433_seqAtRank
  simp [SourceChecks, hseq, case_001433_support,
    checkTranslationConstraintSource, case_001433_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001433_rows :
    EqEqNegVarFirstRows case_001433_support case_001433_rank.val case_001433_mask := by
  intro hlt
  have hrank : (⟨case_001433_rank.val, hlt⟩ : Fin numPairWords) = case_001433_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001433_rank.val, hlt⟩ case_001433_mask =
        case_001433_seq := by
    simpa [hrank] using case_001433_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001433_rank.val, hlt⟩ case_001433_mask =
        case_001433_b := by
    simpa [hrank] using case_001433_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001433_support case_001433_rank.val hlt
          case_001433_mask = case_001433_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001433_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001433_support case_001433_rank.val hlt
          case_001433_mask = case_001433_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001433_secondLine_eq]
  have case_001433_rowFirst :
      EqEqNegRow (FirstLineAt case_001433_support case_001433_rank.val hlt case_001433_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001433_firstLine, EqEqNegRow]
  have case_001433_fixedSecond :
      FixedRow (SecondLineAt case_001433_support case_001433_rank.val hlt case_001433_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001433_secondLine, FixedRow]
  exact ⟨case_001433_rowFirst, case_001433_fixedSecond⟩

private theorem case_001433_existsRows :
    ExistsEqEqNegVarFirstRows case_001433_rank.val case_001433_mask :=
  ⟨case_001433_support, case_001433_sourceAgrees, case_001433_rows⟩

private theorem case_001433_covered :
    RowPropertyParametricCovered case_001433_rank.val case_001433_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_001433_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001434_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_001434_mask : SignMask := ⟨16, by decide⟩
private def case_001434_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001434_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001434_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_001434_b : Vec3 Rat := { x := (-356/81), y := (-964/81), z := (-260/81) }
private def case_001434_firstLine : StrictLin2 := { a := -1, b := -1, c := (-523/89) }
private def case_001434_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001434_rankWord :
    rankPairWord? case_001434_word = some case_001434_rank := by
  decide

private theorem case_001434_unrank :
    unrankPairWord case_001434_rank = case_001434_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001434_word case_001434_rank).1
    case_001434_rankWord |>.symm

private theorem case_001434_seqChoice :
    translationChoiceSeq case_001434_word case_001434_mask = case_001434_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001434_seqAtRank :
    translationSeqAtRankMask case_001434_rank case_001434_mask = case_001434_seq := by
  rw [translationSeqAtRankMask, case_001434_unrank]
  exact case_001434_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001434_bAtRank :
    translationBAtRankMask case_001434_rank case_001434_mask = case_001434_b := by
  rw [translationBAtRankMask, case_001434_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001434_b, case_001434_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001434_firstLine_eq :
    case_001434_support.firstLine case_001434_seq case_001434_b = case_001434_firstLine := by
  norm_num [case_001434_firstLine, case_001434_support, case_001434_seq, case_001434_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001434_secondLine_eq :
    case_001434_support.secondLine case_001434_seq case_001434_b = case_001434_secondLine := by
  norm_num [case_001434_secondLine, case_001434_support, case_001434_seq, case_001434_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001434_sourceAgrees :
    SourceAgrees case_001434_support case_001434_rank.val case_001434_mask := by
  intro hlt
  have hrank : (⟨case_001434_rank.val, hlt⟩ : Fin numPairWords) = case_001434_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001434_rank.val, hlt⟩ case_001434_mask =
        case_001434_seq := by
    simpa [hrank] using case_001434_seqAtRank
  simp [SourceChecks, hseq, case_001434_support,
    checkTranslationConstraintSource, case_001434_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001434_rows :
    EqEqPosVarFirstRows case_001434_support case_001434_rank.val case_001434_mask := by
  intro hlt
  have hrank : (⟨case_001434_rank.val, hlt⟩ : Fin numPairWords) = case_001434_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001434_rank.val, hlt⟩ case_001434_mask =
        case_001434_seq := by
    simpa [hrank] using case_001434_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001434_rank.val, hlt⟩ case_001434_mask =
        case_001434_b := by
    simpa [hrank] using case_001434_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001434_support case_001434_rank.val hlt
          case_001434_mask = case_001434_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001434_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001434_support case_001434_rank.val hlt
          case_001434_mask = case_001434_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001434_secondLine_eq]
  have case_001434_rowFirst :
      EqEqPosRow (FirstLineAt case_001434_support case_001434_rank.val hlt case_001434_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001434_firstLine, EqEqPosRow]
  have case_001434_fixedSecond :
      FixedRow (SecondLineAt case_001434_support case_001434_rank.val hlt case_001434_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001434_secondLine, FixedRow]
  exact ⟨case_001434_rowFirst, case_001434_fixedSecond⟩

private theorem case_001434_existsRows :
    ExistsEqEqPosVarFirstRows case_001434_rank.val case_001434_mask :=
  ⟨case_001434_support, case_001434_sourceAgrees, case_001434_rows⟩

private theorem case_001434_covered :
    RowPropertyParametricCovered case_001434_rank.val case_001434_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001434_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001435_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_001435_mask : SignMask := ⟨18, by decide⟩
private def case_001435_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001435_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001435_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_001435_b : Vec3 Rat := { x := (-356/81), y := (-964/81), z := (388/81) }
private def case_001435_firstLine : StrictLin2 := { a := -1, b := -1, c := (-199/89) }
private def case_001435_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001435_rankWord :
    rankPairWord? case_001435_word = some case_001435_rank := by
  decide

private theorem case_001435_unrank :
    unrankPairWord case_001435_rank = case_001435_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001435_word case_001435_rank).1
    case_001435_rankWord |>.symm

private theorem case_001435_seqChoice :
    translationChoiceSeq case_001435_word case_001435_mask = case_001435_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001435_seqAtRank :
    translationSeqAtRankMask case_001435_rank case_001435_mask = case_001435_seq := by
  rw [translationSeqAtRankMask, case_001435_unrank]
  exact case_001435_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001435_bAtRank :
    translationBAtRankMask case_001435_rank case_001435_mask = case_001435_b := by
  rw [translationBAtRankMask, case_001435_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001435_b, case_001435_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001435_firstLine_eq :
    case_001435_support.firstLine case_001435_seq case_001435_b = case_001435_firstLine := by
  norm_num [case_001435_firstLine, case_001435_support, case_001435_seq, case_001435_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001435_secondLine_eq :
    case_001435_support.secondLine case_001435_seq case_001435_b = case_001435_secondLine := by
  norm_num [case_001435_secondLine, case_001435_support, case_001435_seq, case_001435_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001435_sourceAgrees :
    SourceAgrees case_001435_support case_001435_rank.val case_001435_mask := by
  intro hlt
  have hrank : (⟨case_001435_rank.val, hlt⟩ : Fin numPairWords) = case_001435_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001435_rank.val, hlt⟩ case_001435_mask =
        case_001435_seq := by
    simpa [hrank] using case_001435_seqAtRank
  simp [SourceChecks, hseq, case_001435_support,
    checkTranslationConstraintSource, case_001435_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001435_rows :
    EqEqPosVarFirstRows case_001435_support case_001435_rank.val case_001435_mask := by
  intro hlt
  have hrank : (⟨case_001435_rank.val, hlt⟩ : Fin numPairWords) = case_001435_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001435_rank.val, hlt⟩ case_001435_mask =
        case_001435_seq := by
    simpa [hrank] using case_001435_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001435_rank.val, hlt⟩ case_001435_mask =
        case_001435_b := by
    simpa [hrank] using case_001435_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001435_support case_001435_rank.val hlt
          case_001435_mask = case_001435_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001435_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001435_support case_001435_rank.val hlt
          case_001435_mask = case_001435_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001435_secondLine_eq]
  have case_001435_rowFirst :
      EqEqPosRow (FirstLineAt case_001435_support case_001435_rank.val hlt case_001435_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001435_firstLine, EqEqPosRow]
  have case_001435_fixedSecond :
      FixedRow (SecondLineAt case_001435_support case_001435_rank.val hlt case_001435_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001435_secondLine, FixedRow]
  exact ⟨case_001435_rowFirst, case_001435_fixedSecond⟩

private theorem case_001435_existsRows :
    ExistsEqEqPosVarFirstRows case_001435_rank.val case_001435_mask :=
  ⟨case_001435_support, case_001435_sourceAgrees, case_001435_rows⟩

private theorem case_001435_covered :
    RowPropertyParametricCovered case_001435_rank.val case_001435_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001435_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001436_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_001436_mask : SignMask := ⟨22, by decide⟩
private def case_001436_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001436_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001436_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_001436_b : Vec3 Rat := { x := (-20/81), y := (-724/81), z := (1012/81) }
private def case_001436_firstLine : StrictLin2 := { a := -1, b := 1, c := (-863/5) }
private def case_001436_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001436_rankWord :
    rankPairWord? case_001436_word = some case_001436_rank := by
  decide

private theorem case_001436_unrank :
    unrankPairWord case_001436_rank = case_001436_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001436_word case_001436_rank).1
    case_001436_rankWord |>.symm

private theorem case_001436_seqChoice :
    translationChoiceSeq case_001436_word case_001436_mask = case_001436_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001436_seqAtRank :
    translationSeqAtRankMask case_001436_rank case_001436_mask = case_001436_seq := by
  rw [translationSeqAtRankMask, case_001436_unrank]
  exact case_001436_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001436_bAtRank :
    translationBAtRankMask case_001436_rank case_001436_mask = case_001436_b := by
  rw [translationBAtRankMask, case_001436_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001436_b, case_001436_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001436_firstLine_eq :
    case_001436_support.firstLine case_001436_seq case_001436_b = case_001436_firstLine := by
  norm_num [case_001436_firstLine, case_001436_support, case_001436_seq, case_001436_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001436_secondLine_eq :
    case_001436_support.secondLine case_001436_seq case_001436_b = case_001436_secondLine := by
  norm_num [case_001436_secondLine, case_001436_support, case_001436_seq, case_001436_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001436_sourceAgrees :
    SourceAgrees case_001436_support case_001436_rank.val case_001436_mask := by
  intro hlt
  have hrank : (⟨case_001436_rank.val, hlt⟩ : Fin numPairWords) = case_001436_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001436_rank.val, hlt⟩ case_001436_mask =
        case_001436_seq := by
    simpa [hrank] using case_001436_seqAtRank
  simp [SourceChecks, hseq, case_001436_support,
    checkTranslationConstraintSource, case_001436_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001436_rows :
    OppOneMinusVarFirstRows case_001436_support case_001436_rank.val case_001436_mask := by
  intro hlt
  have hrank : (⟨case_001436_rank.val, hlt⟩ : Fin numPairWords) = case_001436_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001436_rank.val, hlt⟩ case_001436_mask =
        case_001436_seq := by
    simpa [hrank] using case_001436_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001436_rank.val, hlt⟩ case_001436_mask =
        case_001436_b := by
    simpa [hrank] using case_001436_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001436_support case_001436_rank.val hlt
          case_001436_mask = case_001436_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001436_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001436_support case_001436_rank.val hlt
          case_001436_mask = case_001436_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001436_secondLine_eq]
  have case_001436_rowFirst :
      OppPosRow (FirstLineAt case_001436_support case_001436_rank.val hlt case_001436_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001436_firstLine, OppPosRow]
  have case_001436_fixedSecond :
      FixedRow (SecondLineAt case_001436_support case_001436_rank.val hlt case_001436_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001436_secondLine, FixedRow]
  exact ⟨case_001436_rowFirst, case_001436_fixedSecond⟩

private theorem case_001436_existsRows :
    ExistsOppOneMinusVarFirstRows case_001436_rank.val case_001436_mask :=
  ⟨case_001436_support, case_001436_sourceAgrees, case_001436_rows⟩

private theorem case_001436_covered :
    RowPropertyParametricCovered case_001436_rank.val case_001436_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001436_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001437_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_001437_mask : SignMask := ⟨54, by decide⟩
private def case_001437_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001437_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001437_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_001437_b : Vec3 Rat := { x := (-580/81), y := (-260/81), z := (836/81) }
private def case_001437_firstLine : StrictLin2 := { a := -1, b := 1, c := (-403/145) }
private def case_001437_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001437_rankWord :
    rankPairWord? case_001437_word = some case_001437_rank := by
  decide

private theorem case_001437_unrank :
    unrankPairWord case_001437_rank = case_001437_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001437_word case_001437_rank).1
    case_001437_rankWord |>.symm

private theorem case_001437_seqChoice :
    translationChoiceSeq case_001437_word case_001437_mask = case_001437_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001437_seqAtRank :
    translationSeqAtRankMask case_001437_rank case_001437_mask = case_001437_seq := by
  rw [translationSeqAtRankMask, case_001437_unrank]
  exact case_001437_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001437_bAtRank :
    translationBAtRankMask case_001437_rank case_001437_mask = case_001437_b := by
  rw [translationBAtRankMask, case_001437_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001437_b, case_001437_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001437_firstLine_eq :
    case_001437_support.firstLine case_001437_seq case_001437_b = case_001437_firstLine := by
  norm_num [case_001437_firstLine, case_001437_support, case_001437_seq, case_001437_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001437_secondLine_eq :
    case_001437_support.secondLine case_001437_seq case_001437_b = case_001437_secondLine := by
  norm_num [case_001437_secondLine, case_001437_support, case_001437_seq, case_001437_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001437_sourceAgrees :
    SourceAgrees case_001437_support case_001437_rank.val case_001437_mask := by
  intro hlt
  have hrank : (⟨case_001437_rank.val, hlt⟩ : Fin numPairWords) = case_001437_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001437_rank.val, hlt⟩ case_001437_mask =
        case_001437_seq := by
    simpa [hrank] using case_001437_seqAtRank
  simp [SourceChecks, hseq, case_001437_support,
    checkTranslationConstraintSource, case_001437_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001437_rows :
    OppOneMinusVarFirstRows case_001437_support case_001437_rank.val case_001437_mask := by
  intro hlt
  have hrank : (⟨case_001437_rank.val, hlt⟩ : Fin numPairWords) = case_001437_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001437_rank.val, hlt⟩ case_001437_mask =
        case_001437_seq := by
    simpa [hrank] using case_001437_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001437_rank.val, hlt⟩ case_001437_mask =
        case_001437_b := by
    simpa [hrank] using case_001437_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001437_support case_001437_rank.val hlt
          case_001437_mask = case_001437_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001437_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001437_support case_001437_rank.val hlt
          case_001437_mask = case_001437_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001437_secondLine_eq]
  have case_001437_rowFirst :
      OppPosRow (FirstLineAt case_001437_support case_001437_rank.val hlt case_001437_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001437_firstLine, OppPosRow]
  have case_001437_fixedSecond :
      FixedRow (SecondLineAt case_001437_support case_001437_rank.val hlt case_001437_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001437_secondLine, FixedRow]
  exact ⟨case_001437_rowFirst, case_001437_fixedSecond⟩

private theorem case_001437_existsRows :
    ExistsOppOneMinusVarFirstRows case_001437_rank.val case_001437_mask :=
  ⟨case_001437_support, case_001437_sourceAgrees, case_001437_rows⟩

private theorem case_001437_covered :
    RowPropertyParametricCovered case_001437_rank.val case_001437_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001437_existsRows

/-- Bounded row-property quotient case `axis_a_only|rowProperty=0ef1248979a51a72226ced64e0cd085ba836f78524dfad98ea5b8d5c95f5fa61`. -/
private def case_001438_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_001438_mask : SignMask := ⟨56, by decide⟩
private def case_001438_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001438_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def case_001438_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_001438_b : Vec3 Rat := { x := (-1348/81), y := (-68/81), z := (-868/81) }
private def case_001438_firstLine : StrictLin2 := { a := (337/17), b := 0, c := (-943/17) }
private def case_001438_secondLine : StrictLin2 := { a := (-81/68), b := 0, c := (24543/22916) }

private theorem case_001438_rankWord :
    rankPairWord? case_001438_word = some case_001438_rank := by
  decide

private theorem case_001438_unrank :
    unrankPairWord case_001438_rank = case_001438_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001438_word case_001438_rank).1
    case_001438_rankWord |>.symm

private theorem case_001438_seqChoice :
    translationChoiceSeq case_001438_word case_001438_mask = case_001438_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001438_seqAtRank :
    translationSeqAtRankMask case_001438_rank case_001438_mask = case_001438_seq := by
  rw [translationSeqAtRankMask, case_001438_unrank]
  exact case_001438_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001438_bAtRank :
    translationBAtRankMask case_001438_rank case_001438_mask = case_001438_b := by
  rw [translationBAtRankMask, case_001438_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001438_b, case_001438_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001438_firstLine_eq :
    case_001438_support.firstLine case_001438_seq case_001438_b = case_001438_firstLine := by
  norm_num [case_001438_firstLine, case_001438_support, case_001438_seq, case_001438_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001438_secondLine_eq :
    case_001438_support.secondLine case_001438_seq case_001438_b = case_001438_secondLine := by
  norm_num [case_001438_secondLine, case_001438_support, case_001438_seq, case_001438_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001438_sourceAgrees :
    SourceAgrees case_001438_support case_001438_rank.val case_001438_mask := by
  intro hlt
  have hrank : (⟨case_001438_rank.val, hlt⟩ : Fin numPairWords) = case_001438_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001438_rank.val, hlt⟩ case_001438_mask =
        case_001438_seq := by
    simpa [hrank] using case_001438_seqAtRank
  simp [SourceChecks, hseq, case_001438_support,
    checkTranslationConstraintSource, case_001438_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001438_rows :
    AxisAOnlyRows case_001438_support case_001438_rank.val case_001438_mask := by
  intro hlt
  have hrank : (⟨case_001438_rank.val, hlt⟩ : Fin numPairWords) = case_001438_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001438_rank.val, hlt⟩ case_001438_mask =
        case_001438_seq := by
    simpa [hrank] using case_001438_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001438_rank.val, hlt⟩ case_001438_mask =
        case_001438_b := by
    simpa [hrank] using case_001438_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001438_support case_001438_rank.val hlt
          case_001438_mask = case_001438_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001438_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001438_support case_001438_rank.val hlt
          case_001438_mask = case_001438_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001438_secondLine_eq]
  have case_001438_firstBZero :
      (FirstLineAt case_001438_support case_001438_rank.val hlt case_001438_mask).b = 0 := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001438_firstLine]
  have case_001438_secondBZero :
      (SecondLineAt case_001438_support case_001438_rank.val hlt case_001438_mask).b = 0 := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001438_secondLine]
  have case_001438_aProductNeg :
      (FirstLineAt case_001438_support case_001438_rank.val hlt case_001438_mask).a *
          (SecondLineAt case_001438_support case_001438_rank.val hlt case_001438_mask).a < 0 := by
    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]
    norm_num [case_001438_firstLine, case_001438_secondLine]
  have case_001438_weightedCNonpos :
      (SupportPair.multipliersAt case_001438_support
          case_001438_rank.val hlt case_001438_mask).1 *
          (FirstLineAt case_001438_support case_001438_rank.val hlt case_001438_mask).c +
        (SupportPair.multipliersAt case_001438_support
          case_001438_rank.val hlt case_001438_mask).2 *
          (SecondLineAt case_001438_support case_001438_rank.val hlt case_001438_mask).c <= 0 := by
    rw [
SupportPair.multipliersAt, hseq, hb,
      TwoSourceFarkasSupport.multipliers, case_001438_firstLine_eq,
      case_001438_secondLine_eq, FirstLineAt, SecondLineAt, hfirst, hsecond
    ]
    norm_num [
case_001438_firstLine, case_001438_secondLine,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative
    ]
  exact ⟨case_001438_firstBZero, case_001438_secondBZero,
    case_001438_aProductNeg, case_001438_weightedCNonpos⟩

private theorem case_001438_existsRows :
    ExistsAxisAOnlyRows case_001438_rank.val case_001438_mask :=
  ⟨case_001438_support, case_001438_sourceAgrees, case_001438_rows⟩

private theorem case_001438_covered :
    RowPropertyParametricCovered case_001438_rank.val case_001438_mask :=
  RowPropertyParametricCovered.axisAOnly case_001438_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001439_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_001439_mask : SignMask := ⟨57, by decide⟩
private def case_001439_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001439_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_001439_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_001439_b : Vec3 Rat := { x := (-1348/81), y := (580/81), z := (-868/81) }
private def case_001439_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001439_secondLine : StrictLin2 := { a := (-1011/22834), b := (1011/22834), c := (-1329/11417) }

private theorem case_001439_rankWord :
    rankPairWord? case_001439_word = some case_001439_rank := by
  decide

private theorem case_001439_unrank :
    unrankPairWord case_001439_rank = case_001439_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001439_word case_001439_rank).1
    case_001439_rankWord |>.symm

private theorem case_001439_seqChoice :
    translationChoiceSeq case_001439_word case_001439_mask = case_001439_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001439_seqAtRank :
    translationSeqAtRankMask case_001439_rank case_001439_mask = case_001439_seq := by
  rw [translationSeqAtRankMask, case_001439_unrank]
  exact case_001439_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001439_bAtRank :
    translationBAtRankMask case_001439_rank case_001439_mask = case_001439_b := by
  rw [translationBAtRankMask, case_001439_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001439_b, case_001439_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001439_firstLine_eq :
    case_001439_support.firstLine case_001439_seq case_001439_b = case_001439_firstLine := by
  norm_num [case_001439_firstLine, case_001439_support, case_001439_seq, case_001439_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001439_secondLine_eq :
    case_001439_support.secondLine case_001439_seq case_001439_b = case_001439_secondLine := by
  norm_num [case_001439_secondLine, case_001439_support, case_001439_seq, case_001439_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001439_sourceAgrees :
    SourceAgrees case_001439_support case_001439_rank.val case_001439_mask := by
  intro hlt
  have hrank : (⟨case_001439_rank.val, hlt⟩ : Fin numPairWords) = case_001439_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001439_rank.val, hlt⟩ case_001439_mask =
        case_001439_seq := by
    simpa [hrank] using case_001439_seqAtRank
  simp [SourceChecks, hseq, case_001439_support,
    checkTranslationConstraintSource, case_001439_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001439_rows :
    OppOneMinusVarSecondRows case_001439_support case_001439_rank.val case_001439_mask := by
  intro hlt
  have hrank : (⟨case_001439_rank.val, hlt⟩ : Fin numPairWords) = case_001439_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001439_rank.val, hlt⟩ case_001439_mask =
        case_001439_seq := by
    simpa [hrank] using case_001439_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001439_rank.val, hlt⟩ case_001439_mask =
        case_001439_b := by
    simpa [hrank] using case_001439_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001439_support case_001439_rank.val hlt
          case_001439_mask = case_001439_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001439_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001439_support case_001439_rank.val hlt
          case_001439_mask = case_001439_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001439_secondLine_eq]
  have case_001439_fixedFirst :
      FixedRow (FirstLineAt case_001439_support case_001439_rank.val hlt case_001439_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001439_firstLine, FixedRow]
  have case_001439_rowSecond :
      OppPosRow (SecondLineAt case_001439_support case_001439_rank.val hlt case_001439_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001439_secondLine, OppPosRow]
  exact ⟨case_001439_fixedFirst, case_001439_rowSecond⟩

private theorem case_001439_existsRows :
    ExistsOppOneMinusVarSecondRows case_001439_rank.val case_001439_mask :=
  ⟨case_001439_support, case_001439_sourceAgrees, case_001439_rows⟩

private theorem case_001439_covered :
    RowPropertyParametricCovered case_001439_rank.val case_001439_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001439_existsRows

inductive Group044Covered : Nat -> SignMask -> Prop
  | case_001408 : Group044Covered case_001408_rank.val case_001408_mask
  | case_001409 : Group044Covered case_001409_rank.val case_001409_mask
  | case_001410 : Group044Covered case_001410_rank.val case_001410_mask
  | case_001411 : Group044Covered case_001411_rank.val case_001411_mask
  | case_001412 : Group044Covered case_001412_rank.val case_001412_mask
  | case_001413 : Group044Covered case_001413_rank.val case_001413_mask
  | case_001414 : Group044Covered case_001414_rank.val case_001414_mask
  | case_001415 : Group044Covered case_001415_rank.val case_001415_mask
  | case_001416 : Group044Covered case_001416_rank.val case_001416_mask
  | case_001417 : Group044Covered case_001417_rank.val case_001417_mask
  | case_001418 : Group044Covered case_001418_rank.val case_001418_mask
  | case_001419 : Group044Covered case_001419_rank.val case_001419_mask
  | case_001420 : Group044Covered case_001420_rank.val case_001420_mask
  | case_001421 : Group044Covered case_001421_rank.val case_001421_mask
  | case_001422 : Group044Covered case_001422_rank.val case_001422_mask
  | case_001423 : Group044Covered case_001423_rank.val case_001423_mask
  | case_001424 : Group044Covered case_001424_rank.val case_001424_mask
  | case_001425 : Group044Covered case_001425_rank.val case_001425_mask
  | case_001426 : Group044Covered case_001426_rank.val case_001426_mask
  | case_001427 : Group044Covered case_001427_rank.val case_001427_mask
  | case_001428 : Group044Covered case_001428_rank.val case_001428_mask
  | case_001429 : Group044Covered case_001429_rank.val case_001429_mask
  | case_001430 : Group044Covered case_001430_rank.val case_001430_mask
  | case_001431 : Group044Covered case_001431_rank.val case_001431_mask
  | case_001432 : Group044Covered case_001432_rank.val case_001432_mask
  | case_001433 : Group044Covered case_001433_rank.val case_001433_mask
  | case_001434 : Group044Covered case_001434_rank.val case_001434_mask
  | case_001435 : Group044Covered case_001435_rank.val case_001435_mask
  | case_001436 : Group044Covered case_001436_rank.val case_001436_mask
  | case_001437 : Group044Covered case_001437_rank.val case_001437_mask
  | case_001438 : Group044Covered case_001438_rank.val case_001438_mask
  | case_001439 : Group044Covered case_001439_rank.val case_001439_mask

theorem Group044GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group044Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001408 =>
      exact RowPropertyParametricCovered.kills case_001408_covered
  | case_001409 =>
      exact RowPropertyParametricCovered.kills case_001409_covered
  | case_001410 =>
      exact RowPropertyParametricCovered.kills case_001410_covered
  | case_001411 =>
      exact RowPropertyParametricCovered.kills case_001411_covered
  | case_001412 =>
      exact RowPropertyParametricCovered.kills case_001412_covered
  | case_001413 =>
      exact RowPropertyParametricCovered.kills case_001413_covered
  | case_001414 =>
      exact RowPropertyParametricCovered.kills case_001414_covered
  | case_001415 =>
      exact RowPropertyParametricCovered.kills case_001415_covered
  | case_001416 =>
      exact RowPropertyParametricCovered.kills case_001416_covered
  | case_001417 =>
      exact RowPropertyParametricCovered.kills case_001417_covered
  | case_001418 =>
      exact RowPropertyParametricCovered.kills case_001418_covered
  | case_001419 =>
      exact RowPropertyParametricCovered.kills case_001419_covered
  | case_001420 =>
      exact RowPropertyParametricCovered.kills case_001420_covered
  | case_001421 =>
      exact RowPropertyParametricCovered.kills case_001421_covered
  | case_001422 =>
      exact RowPropertyParametricCovered.kills case_001422_covered
  | case_001423 =>
      exact RowPropertyParametricCovered.kills case_001423_covered
  | case_001424 =>
      exact RowPropertyParametricCovered.kills case_001424_covered
  | case_001425 =>
      exact RowPropertyParametricCovered.kills case_001425_covered
  | case_001426 =>
      exact RowPropertyParametricCovered.kills case_001426_covered
  | case_001427 =>
      exact RowPropertyParametricCovered.kills case_001427_covered
  | case_001428 =>
      exact RowPropertyParametricCovered.kills case_001428_covered
  | case_001429 =>
      exact RowPropertyParametricCovered.kills case_001429_covered
  | case_001430 =>
      exact RowPropertyParametricCovered.kills case_001430_covered
  | case_001431 =>
      exact RowPropertyParametricCovered.kills case_001431_covered
  | case_001432 =>
      exact RowPropertyParametricCovered.kills case_001432_covered
  | case_001433 =>
      exact RowPropertyParametricCovered.kills case_001433_covered
  | case_001434 =>
      exact RowPropertyParametricCovered.kills case_001434_covered
  | case_001435 =>
      exact RowPropertyParametricCovered.kills case_001435_covered
  | case_001436 =>
      exact RowPropertyParametricCovered.kills case_001436_covered
  | case_001437 =>
      exact RowPropertyParametricCovered.kills case_001437_covered
  | case_001438 =>
      exact RowPropertyParametricCovered.kills case_001438_covered
  | case_001439 =>
      exact RowPropertyParametricCovered.kills case_001439_covered

theorem Group044_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group044
