import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group020

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
private def case_000640_rank : Fin numPairWords := ⟨384, by decide⟩
private def case_000640_mask : SignMask := ⟨8, by decide⟩
private def case_000640_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000640_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000640_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000640_b : Vec3 Rat := { x := (-76/27), y := (-44/27), z := (-332/27) }
private def case_000640_firstLine : StrictLin2 := { a := -1, b := -1, c := (-169/19) }
private def case_000640_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000640_rankWord :
    rankPairWord? case_000640_word = some case_000640_rank := by
  decide

private theorem case_000640_unrank :
    unrankPairWord case_000640_rank = case_000640_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000640_word case_000640_rank).1
    case_000640_rankWord |>.symm

private theorem case_000640_seqChoice :
    translationChoiceSeq case_000640_word case_000640_mask = case_000640_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000640_seqAtRank :
    translationSeqAtRankMask case_000640_rank case_000640_mask = case_000640_seq := by
  rw [translationSeqAtRankMask, case_000640_unrank]
  exact case_000640_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000640_bAtRank :
    translationBAtRankMask case_000640_rank case_000640_mask = case_000640_b := by
  rw [translationBAtRankMask, case_000640_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000640_b, case_000640_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000640_firstLine_eq :
    case_000640_support.firstLine case_000640_seq case_000640_b = case_000640_firstLine := by
  norm_num [case_000640_firstLine, case_000640_support, case_000640_seq, case_000640_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000640_secondLine_eq :
    case_000640_support.secondLine case_000640_seq case_000640_b = case_000640_secondLine := by
  norm_num [case_000640_secondLine, case_000640_support, case_000640_seq, case_000640_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000640_sourceAgrees :
    SourceAgrees case_000640_support case_000640_rank.val case_000640_mask := by
  intro hlt
  have hrank : (⟨case_000640_rank.val, hlt⟩ : Fin numPairWords) = case_000640_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000640_rank.val, hlt⟩ case_000640_mask =
        case_000640_seq := by
    simpa [hrank] using case_000640_seqAtRank
  simp [SourceChecks, hseq, case_000640_support,
    checkTranslationConstraintSource, case_000640_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000640_rows :
    EqEqPosVarFirstRows case_000640_support case_000640_rank.val case_000640_mask := by
  intro hlt
  have hrank : (⟨case_000640_rank.val, hlt⟩ : Fin numPairWords) = case_000640_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000640_rank.val, hlt⟩ case_000640_mask =
        case_000640_seq := by
    simpa [hrank] using case_000640_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000640_rank.val, hlt⟩ case_000640_mask =
        case_000640_b := by
    simpa [hrank] using case_000640_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000640_support case_000640_rank.val hlt
          case_000640_mask = case_000640_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000640_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000640_support case_000640_rank.val hlt
          case_000640_mask = case_000640_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000640_secondLine_eq]
  have case_000640_rowFirst :
      EqEqPosRow (FirstLineAt case_000640_support case_000640_rank.val hlt case_000640_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000640_firstLine, EqEqPosRow]
  have case_000640_fixedSecond :
      FixedRow (SecondLineAt case_000640_support case_000640_rank.val hlt case_000640_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000640_secondLine, FixedRow]
  exact ⟨case_000640_rowFirst, case_000640_fixedSecond⟩

private theorem case_000640_existsRows :
    ExistsEqEqPosVarFirstRows case_000640_rank.val case_000640_mask :=
  ⟨case_000640_support, case_000640_sourceAgrees, case_000640_rows⟩

private theorem case_000640_covered :
    RowPropertyParametricCovered case_000640_rank.val case_000640_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000640_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000641_rank : Fin numPairWords := ⟨384, by decide⟩
private def case_000641_mask : SignMask := ⟨9, by decide⟩
private def case_000641_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000641_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000641_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000641_b : Vec3 Rat := { x := (-76/27), y := (172/27), z := (-332/27) }
private def case_000641_firstLine : StrictLin2 := { a := -1, b := -1, c := (-61/19) }
private def case_000641_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000641_rankWord :
    rankPairWord? case_000641_word = some case_000641_rank := by
  decide

private theorem case_000641_unrank :
    unrankPairWord case_000641_rank = case_000641_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000641_word case_000641_rank).1
    case_000641_rankWord |>.symm

private theorem case_000641_seqChoice :
    translationChoiceSeq case_000641_word case_000641_mask = case_000641_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000641_seqAtRank :
    translationSeqAtRankMask case_000641_rank case_000641_mask = case_000641_seq := by
  rw [translationSeqAtRankMask, case_000641_unrank]
  exact case_000641_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000641_bAtRank :
    translationBAtRankMask case_000641_rank case_000641_mask = case_000641_b := by
  rw [translationBAtRankMask, case_000641_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000641_b, case_000641_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000641_firstLine_eq :
    case_000641_support.firstLine case_000641_seq case_000641_b = case_000641_firstLine := by
  norm_num [case_000641_firstLine, case_000641_support, case_000641_seq, case_000641_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000641_secondLine_eq :
    case_000641_support.secondLine case_000641_seq case_000641_b = case_000641_secondLine := by
  norm_num [case_000641_secondLine, case_000641_support, case_000641_seq, case_000641_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000641_sourceAgrees :
    SourceAgrees case_000641_support case_000641_rank.val case_000641_mask := by
  intro hlt
  have hrank : (⟨case_000641_rank.val, hlt⟩ : Fin numPairWords) = case_000641_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000641_rank.val, hlt⟩ case_000641_mask =
        case_000641_seq := by
    simpa [hrank] using case_000641_seqAtRank
  simp [SourceChecks, hseq, case_000641_support,
    checkTranslationConstraintSource, case_000641_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000641_rows :
    EqEqPosVarFirstRows case_000641_support case_000641_rank.val case_000641_mask := by
  intro hlt
  have hrank : (⟨case_000641_rank.val, hlt⟩ : Fin numPairWords) = case_000641_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000641_rank.val, hlt⟩ case_000641_mask =
        case_000641_seq := by
    simpa [hrank] using case_000641_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000641_rank.val, hlt⟩ case_000641_mask =
        case_000641_b := by
    simpa [hrank] using case_000641_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000641_support case_000641_rank.val hlt
          case_000641_mask = case_000641_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000641_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000641_support case_000641_rank.val hlt
          case_000641_mask = case_000641_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000641_secondLine_eq]
  have case_000641_rowFirst :
      EqEqPosRow (FirstLineAt case_000641_support case_000641_rank.val hlt case_000641_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000641_firstLine, EqEqPosRow]
  have case_000641_fixedSecond :
      FixedRow (SecondLineAt case_000641_support case_000641_rank.val hlt case_000641_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000641_secondLine, FixedRow]
  exact ⟨case_000641_rowFirst, case_000641_fixedSecond⟩

private theorem case_000641_existsRows :
    ExistsEqEqPosVarFirstRows case_000641_rank.val case_000641_mask :=
  ⟨case_000641_support, case_000641_sourceAgrees, case_000641_rows⟩

private theorem case_000641_covered :
    RowPropertyParametricCovered case_000641_rank.val case_000641_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000641_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000642_rank : Fin numPairWords := ⟨384, by decide⟩
private def case_000642_mask : SignMask := ⟨13, by decide⟩
private def case_000642_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000642_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000642_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000642_b : Vec3 Rat := { x := (-220/27), y := (316/27), z := (-188/27) }
private def case_000642_firstLine : StrictLin2 := { a := (-55/81), b := (-55/81), c := (-145/81) }
private def case_000642_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000642_rankWord :
    rankPairWord? case_000642_word = some case_000642_rank := by
  decide

private theorem case_000642_unrank :
    unrankPairWord case_000642_rank = case_000642_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000642_word case_000642_rank).1
    case_000642_rankWord |>.symm

private theorem case_000642_seqChoice :
    translationChoiceSeq case_000642_word case_000642_mask = case_000642_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000642_seqAtRank :
    translationSeqAtRankMask case_000642_rank case_000642_mask = case_000642_seq := by
  rw [translationSeqAtRankMask, case_000642_unrank]
  exact case_000642_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000642_bAtRank :
    translationBAtRankMask case_000642_rank case_000642_mask = case_000642_b := by
  rw [translationBAtRankMask, case_000642_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000642_b, case_000642_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000642_firstLine_eq :
    case_000642_support.firstLine case_000642_seq case_000642_b = case_000642_firstLine := by
  norm_num [case_000642_firstLine, case_000642_support, case_000642_seq, case_000642_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000642_secondLine_eq :
    case_000642_support.secondLine case_000642_seq case_000642_b = case_000642_secondLine := by
  norm_num [case_000642_secondLine, case_000642_support, case_000642_seq, case_000642_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000642_sourceAgrees :
    SourceAgrees case_000642_support case_000642_rank.val case_000642_mask := by
  intro hlt
  have hrank : (⟨case_000642_rank.val, hlt⟩ : Fin numPairWords) = case_000642_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000642_rank.val, hlt⟩ case_000642_mask =
        case_000642_seq := by
    simpa [hrank] using case_000642_seqAtRank
  simp [SourceChecks, hseq, case_000642_support,
    checkTranslationConstraintSource, case_000642_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000642_rows :
    EqEqPosVarFirstRows case_000642_support case_000642_rank.val case_000642_mask := by
  intro hlt
  have hrank : (⟨case_000642_rank.val, hlt⟩ : Fin numPairWords) = case_000642_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000642_rank.val, hlt⟩ case_000642_mask =
        case_000642_seq := by
    simpa [hrank] using case_000642_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000642_rank.val, hlt⟩ case_000642_mask =
        case_000642_b := by
    simpa [hrank] using case_000642_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000642_support case_000642_rank.val hlt
          case_000642_mask = case_000642_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000642_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000642_support case_000642_rank.val hlt
          case_000642_mask = case_000642_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000642_secondLine_eq]
  have case_000642_rowFirst :
      EqEqPosRow (FirstLineAt case_000642_support case_000642_rank.val hlt case_000642_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000642_firstLine, EqEqPosRow]
  have case_000642_fixedSecond :
      FixedRow (SecondLineAt case_000642_support case_000642_rank.val hlt case_000642_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000642_secondLine, FixedRow]
  exact ⟨case_000642_rowFirst, case_000642_fixedSecond⟩

private theorem case_000642_existsRows :
    ExistsEqEqPosVarFirstRows case_000642_rank.val case_000642_mask :=
  ⟨case_000642_support, case_000642_sourceAgrees, case_000642_rows⟩

private theorem case_000642_covered :
    RowPropertyParametricCovered case_000642_rank.val case_000642_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000642_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000643_rank : Fin numPairWords := ⟨384, by decide⟩
private def case_000643_mask : SignMask := ⟨16, by decide⟩
private def case_000643_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000643_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000643_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000643_b : Vec3 Rat := { x := (-236/27), y := (-364/27), z := (-76/27) }
private def case_000643_firstLine : StrictLin2 := { a := -1, b := -1, c := (-161/59) }
private def case_000643_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000643_rankWord :
    rankPairWord? case_000643_word = some case_000643_rank := by
  decide

private theorem case_000643_unrank :
    unrankPairWord case_000643_rank = case_000643_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000643_word case_000643_rank).1
    case_000643_rankWord |>.symm

private theorem case_000643_seqChoice :
    translationChoiceSeq case_000643_word case_000643_mask = case_000643_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000643_seqAtRank :
    translationSeqAtRankMask case_000643_rank case_000643_mask = case_000643_seq := by
  rw [translationSeqAtRankMask, case_000643_unrank]
  exact case_000643_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000643_bAtRank :
    translationBAtRankMask case_000643_rank case_000643_mask = case_000643_b := by
  rw [translationBAtRankMask, case_000643_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000643_b, case_000643_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000643_firstLine_eq :
    case_000643_support.firstLine case_000643_seq case_000643_b = case_000643_firstLine := by
  norm_num [case_000643_firstLine, case_000643_support, case_000643_seq, case_000643_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000643_secondLine_eq :
    case_000643_support.secondLine case_000643_seq case_000643_b = case_000643_secondLine := by
  norm_num [case_000643_secondLine, case_000643_support, case_000643_seq, case_000643_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000643_sourceAgrees :
    SourceAgrees case_000643_support case_000643_rank.val case_000643_mask := by
  intro hlt
  have hrank : (⟨case_000643_rank.val, hlt⟩ : Fin numPairWords) = case_000643_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000643_rank.val, hlt⟩ case_000643_mask =
        case_000643_seq := by
    simpa [hrank] using case_000643_seqAtRank
  simp [SourceChecks, hseq, case_000643_support,
    checkTranslationConstraintSource, case_000643_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000643_rows :
    EqEqPosVarFirstRows case_000643_support case_000643_rank.val case_000643_mask := by
  intro hlt
  have hrank : (⟨case_000643_rank.val, hlt⟩ : Fin numPairWords) = case_000643_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000643_rank.val, hlt⟩ case_000643_mask =
        case_000643_seq := by
    simpa [hrank] using case_000643_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000643_rank.val, hlt⟩ case_000643_mask =
        case_000643_b := by
    simpa [hrank] using case_000643_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000643_support case_000643_rank.val hlt
          case_000643_mask = case_000643_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000643_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000643_support case_000643_rank.val hlt
          case_000643_mask = case_000643_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000643_secondLine_eq]
  have case_000643_rowFirst :
      EqEqPosRow (FirstLineAt case_000643_support case_000643_rank.val hlt case_000643_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000643_firstLine, EqEqPosRow]
  have case_000643_fixedSecond :
      FixedRow (SecondLineAt case_000643_support case_000643_rank.val hlt case_000643_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000643_secondLine, FixedRow]
  exact ⟨case_000643_rowFirst, case_000643_fixedSecond⟩

private theorem case_000643_existsRows :
    ExistsEqEqPosVarFirstRows case_000643_rank.val case_000643_mask :=
  ⟨case_000643_support, case_000643_sourceAgrees, case_000643_rows⟩

private theorem case_000643_covered :
    RowPropertyParametricCovered case_000643_rank.val case_000643_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000643_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000644_rank : Fin numPairWords := ⟨384, by decide⟩
private def case_000644_mask : SignMask := ⟨22, by decide⟩
private def case_000644_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000644_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000644_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000644_b : Vec3 Rat := { x := (-380/27), y := (-220/27), z := (284/27) }
private def case_000644_firstLine : StrictLin2 := { a := -1, b := 1, c := (-157/95) }
private def case_000644_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000644_rankWord :
    rankPairWord? case_000644_word = some case_000644_rank := by
  decide

private theorem case_000644_unrank :
    unrankPairWord case_000644_rank = case_000644_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000644_word case_000644_rank).1
    case_000644_rankWord |>.symm

private theorem case_000644_seqChoice :
    translationChoiceSeq case_000644_word case_000644_mask = case_000644_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000644_seqAtRank :
    translationSeqAtRankMask case_000644_rank case_000644_mask = case_000644_seq := by
  rw [translationSeqAtRankMask, case_000644_unrank]
  exact case_000644_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000644_bAtRank :
    translationBAtRankMask case_000644_rank case_000644_mask = case_000644_b := by
  rw [translationBAtRankMask, case_000644_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000644_b, case_000644_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000644_firstLine_eq :
    case_000644_support.firstLine case_000644_seq case_000644_b = case_000644_firstLine := by
  norm_num [case_000644_firstLine, case_000644_support, case_000644_seq, case_000644_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000644_secondLine_eq :
    case_000644_support.secondLine case_000644_seq case_000644_b = case_000644_secondLine := by
  norm_num [case_000644_secondLine, case_000644_support, case_000644_seq, case_000644_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000644_sourceAgrees :
    SourceAgrees case_000644_support case_000644_rank.val case_000644_mask := by
  intro hlt
  have hrank : (⟨case_000644_rank.val, hlt⟩ : Fin numPairWords) = case_000644_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000644_rank.val, hlt⟩ case_000644_mask =
        case_000644_seq := by
    simpa [hrank] using case_000644_seqAtRank
  simp [SourceChecks, hseq, case_000644_support,
    checkTranslationConstraintSource, case_000644_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000644_rows :
    OppOneMinusVarFirstRows case_000644_support case_000644_rank.val case_000644_mask := by
  intro hlt
  have hrank : (⟨case_000644_rank.val, hlt⟩ : Fin numPairWords) = case_000644_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000644_rank.val, hlt⟩ case_000644_mask =
        case_000644_seq := by
    simpa [hrank] using case_000644_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000644_rank.val, hlt⟩ case_000644_mask =
        case_000644_b := by
    simpa [hrank] using case_000644_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000644_support case_000644_rank.val hlt
          case_000644_mask = case_000644_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000644_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000644_support case_000644_rank.val hlt
          case_000644_mask = case_000644_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000644_secondLine_eq]
  have case_000644_rowFirst :
      OppPosRow (FirstLineAt case_000644_support case_000644_rank.val hlt case_000644_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000644_firstLine, OppPosRow]
  have case_000644_fixedSecond :
      FixedRow (SecondLineAt case_000644_support case_000644_rank.val hlt case_000644_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000644_secondLine, FixedRow]
  exact ⟨case_000644_rowFirst, case_000644_fixedSecond⟩

private theorem case_000644_existsRows :
    ExistsOppOneMinusVarFirstRows case_000644_rank.val case_000644_mask :=
  ⟨case_000644_support, case_000644_sourceAgrees, case_000644_rows⟩

private theorem case_000644_covered :
    RowPropertyParametricCovered case_000644_rank.val case_000644_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000644_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000645_rank : Fin numPairWords := ⟨384, by decide⟩
private def case_000645_mask : SignMask := ⟨24, by decide⟩
private def case_000645_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000645_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000645_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000645_b : Vec3 Rat := { x := (-124/27), y := (-284/27), z := (-284/27) }
private def case_000645_firstLine : StrictLin2 := { a := -1, b := -1, c := (-253/31) }
private def case_000645_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000645_rankWord :
    rankPairWord? case_000645_word = some case_000645_rank := by
  decide

private theorem case_000645_unrank :
    unrankPairWord case_000645_rank = case_000645_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000645_word case_000645_rank).1
    case_000645_rankWord |>.symm

private theorem case_000645_seqChoice :
    translationChoiceSeq case_000645_word case_000645_mask = case_000645_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000645_seqAtRank :
    translationSeqAtRankMask case_000645_rank case_000645_mask = case_000645_seq := by
  rw [translationSeqAtRankMask, case_000645_unrank]
  exact case_000645_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000645_bAtRank :
    translationBAtRankMask case_000645_rank case_000645_mask = case_000645_b := by
  rw [translationBAtRankMask, case_000645_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000645_b, case_000645_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000645_firstLine_eq :
    case_000645_support.firstLine case_000645_seq case_000645_b = case_000645_firstLine := by
  norm_num [case_000645_firstLine, case_000645_support, case_000645_seq, case_000645_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000645_secondLine_eq :
    case_000645_support.secondLine case_000645_seq case_000645_b = case_000645_secondLine := by
  norm_num [case_000645_secondLine, case_000645_support, case_000645_seq, case_000645_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000645_sourceAgrees :
    SourceAgrees case_000645_support case_000645_rank.val case_000645_mask := by
  intro hlt
  have hrank : (⟨case_000645_rank.val, hlt⟩ : Fin numPairWords) = case_000645_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000645_rank.val, hlt⟩ case_000645_mask =
        case_000645_seq := by
    simpa [hrank] using case_000645_seqAtRank
  simp [SourceChecks, hseq, case_000645_support,
    checkTranslationConstraintSource, case_000645_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000645_rows :
    EqEqPosVarFirstRows case_000645_support case_000645_rank.val case_000645_mask := by
  intro hlt
  have hrank : (⟨case_000645_rank.val, hlt⟩ : Fin numPairWords) = case_000645_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000645_rank.val, hlt⟩ case_000645_mask =
        case_000645_seq := by
    simpa [hrank] using case_000645_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000645_rank.val, hlt⟩ case_000645_mask =
        case_000645_b := by
    simpa [hrank] using case_000645_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000645_support case_000645_rank.val hlt
          case_000645_mask = case_000645_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000645_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000645_support case_000645_rank.val hlt
          case_000645_mask = case_000645_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000645_secondLine_eq]
  have case_000645_rowFirst :
      EqEqPosRow (FirstLineAt case_000645_support case_000645_rank.val hlt case_000645_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000645_firstLine, EqEqPosRow]
  have case_000645_fixedSecond :
      FixedRow (SecondLineAt case_000645_support case_000645_rank.val hlt case_000645_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000645_secondLine, FixedRow]
  exact ⟨case_000645_rowFirst, case_000645_fixedSecond⟩

private theorem case_000645_existsRows :
    ExistsEqEqPosVarFirstRows case_000645_rank.val case_000645_mask :=
  ⟨case_000645_support, case_000645_sourceAgrees, case_000645_rows⟩

private theorem case_000645_covered :
    RowPropertyParametricCovered case_000645_rank.val case_000645_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000645_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000646_rank : Fin numPairWords := ⟨384, by decide⟩
private def case_000646_mask : SignMask := ⟨39, by decide⟩
private def case_000646_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000646_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000646_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000646_b : Vec3 Rat := { x := (-92/27), y := (284/27), z := (284/27) }
private def case_000646_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000646_secondLine : StrictLin2 := { a := (-23/110), b := (-23/110), c := (-48/55) }

private theorem case_000646_rankWord :
    rankPairWord? case_000646_word = some case_000646_rank := by
  decide

private theorem case_000646_unrank :
    unrankPairWord case_000646_rank = case_000646_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000646_word case_000646_rank).1
    case_000646_rankWord |>.symm

private theorem case_000646_seqChoice :
    translationChoiceSeq case_000646_word case_000646_mask = case_000646_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000646_seqAtRank :
    translationSeqAtRankMask case_000646_rank case_000646_mask = case_000646_seq := by
  rw [translationSeqAtRankMask, case_000646_unrank]
  exact case_000646_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000646_bAtRank :
    translationBAtRankMask case_000646_rank case_000646_mask = case_000646_b := by
  rw [translationBAtRankMask, case_000646_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000646_b, case_000646_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000646_firstLine_eq :
    case_000646_support.firstLine case_000646_seq case_000646_b = case_000646_firstLine := by
  norm_num [case_000646_firstLine, case_000646_support, case_000646_seq, case_000646_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000646_secondLine_eq :
    case_000646_support.secondLine case_000646_seq case_000646_b = case_000646_secondLine := by
  norm_num [case_000646_secondLine, case_000646_support, case_000646_seq, case_000646_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000646_sourceAgrees :
    SourceAgrees case_000646_support case_000646_rank.val case_000646_mask := by
  intro hlt
  have hrank : (⟨case_000646_rank.val, hlt⟩ : Fin numPairWords) = case_000646_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000646_rank.val, hlt⟩ case_000646_mask =
        case_000646_seq := by
    simpa [hrank] using case_000646_seqAtRank
  simp [SourceChecks, hseq, case_000646_support,
    checkTranslationConstraintSource, case_000646_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000646_rows :
    EqEqPosVarSecondRows case_000646_support case_000646_rank.val case_000646_mask := by
  intro hlt
  have hrank : (⟨case_000646_rank.val, hlt⟩ : Fin numPairWords) = case_000646_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000646_rank.val, hlt⟩ case_000646_mask =
        case_000646_seq := by
    simpa [hrank] using case_000646_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000646_rank.val, hlt⟩ case_000646_mask =
        case_000646_b := by
    simpa [hrank] using case_000646_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000646_support case_000646_rank.val hlt
          case_000646_mask = case_000646_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000646_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000646_support case_000646_rank.val hlt
          case_000646_mask = case_000646_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000646_secondLine_eq]
  have case_000646_fixedFirst :
      FixedRow (FirstLineAt case_000646_support case_000646_rank.val hlt case_000646_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000646_firstLine, FixedRow]
  have case_000646_rowSecond :
      EqEqPosRow (SecondLineAt case_000646_support case_000646_rank.val hlt case_000646_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000646_secondLine, EqEqPosRow]
  exact ⟨case_000646_fixedFirst, case_000646_rowSecond⟩

private theorem case_000646_existsRows :
    ExistsEqEqPosVarSecondRows case_000646_rank.val case_000646_mask :=
  ⟨case_000646_support, case_000646_sourceAgrees, case_000646_rows⟩

private theorem case_000646_covered :
    RowPropertyParametricCovered case_000646_rank.val case_000646_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000646_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000647_rank : Fin numPairWords := ⟨387, by decide⟩
private def case_000647_mask : SignMask := ⟨8, by decide⟩
private def case_000647_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000647_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000647_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000647_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (-100/9) }
private def case_000647_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/17) }
private def case_000647_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000647_rankWord :
    rankPairWord? case_000647_word = some case_000647_rank := by
  decide

private theorem case_000647_unrank :
    unrankPairWord case_000647_rank = case_000647_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000647_word case_000647_rank).1
    case_000647_rankWord |>.symm

private theorem case_000647_seqChoice :
    translationChoiceSeq case_000647_word case_000647_mask = case_000647_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000647_seqAtRank :
    translationSeqAtRankMask case_000647_rank case_000647_mask = case_000647_seq := by
  rw [translationSeqAtRankMask, case_000647_unrank]
  exact case_000647_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000647_bAtRank :
    translationBAtRankMask case_000647_rank case_000647_mask = case_000647_b := by
  rw [translationBAtRankMask, case_000647_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000647_b, case_000647_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000647_firstLine_eq :
    case_000647_support.firstLine case_000647_seq case_000647_b = case_000647_firstLine := by
  norm_num [case_000647_firstLine, case_000647_support, case_000647_seq, case_000647_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000647_secondLine_eq :
    case_000647_support.secondLine case_000647_seq case_000647_b = case_000647_secondLine := by
  norm_num [case_000647_secondLine, case_000647_support, case_000647_seq, case_000647_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000647_sourceAgrees :
    SourceAgrees case_000647_support case_000647_rank.val case_000647_mask := by
  intro hlt
  have hrank : (⟨case_000647_rank.val, hlt⟩ : Fin numPairWords) = case_000647_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000647_rank.val, hlt⟩ case_000647_mask =
        case_000647_seq := by
    simpa [hrank] using case_000647_seqAtRank
  simp [SourceChecks, hseq, case_000647_support,
    checkTranslationConstraintSource, case_000647_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000647_rows :
    EqEqPosVarFirstRows case_000647_support case_000647_rank.val case_000647_mask := by
  intro hlt
  have hrank : (⟨case_000647_rank.val, hlt⟩ : Fin numPairWords) = case_000647_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000647_rank.val, hlt⟩ case_000647_mask =
        case_000647_seq := by
    simpa [hrank] using case_000647_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000647_rank.val, hlt⟩ case_000647_mask =
        case_000647_b := by
    simpa [hrank] using case_000647_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000647_support case_000647_rank.val hlt
          case_000647_mask = case_000647_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000647_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000647_support case_000647_rank.val hlt
          case_000647_mask = case_000647_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000647_secondLine_eq]
  have case_000647_rowFirst :
      EqEqPosRow (FirstLineAt case_000647_support case_000647_rank.val hlt case_000647_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000647_firstLine, EqEqPosRow]
  have case_000647_fixedSecond :
      FixedRow (SecondLineAt case_000647_support case_000647_rank.val hlt case_000647_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000647_secondLine, FixedRow]
  exact ⟨case_000647_rowFirst, case_000647_fixedSecond⟩

private theorem case_000647_existsRows :
    ExistsEqEqPosVarFirstRows case_000647_rank.val case_000647_mask :=
  ⟨case_000647_support, case_000647_sourceAgrees, case_000647_rows⟩

private theorem case_000647_covered :
    RowPropertyParametricCovered case_000647_rank.val case_000647_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000647_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000648_rank : Fin numPairWords := ⟨387, by decide⟩
private def case_000648_mask : SignMask := ⟨13, by decide⟩
private def case_000648_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000648_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000648_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000648_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (-52/9) }
private def case_000648_firstLine : StrictLin2 := { a := (-29/43), b := (-29/43), c := (-241/129) }
private def case_000648_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000648_rankWord :
    rankPairWord? case_000648_word = some case_000648_rank := by
  decide

private theorem case_000648_unrank :
    unrankPairWord case_000648_rank = case_000648_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000648_word case_000648_rank).1
    case_000648_rankWord |>.symm

private theorem case_000648_seqChoice :
    translationChoiceSeq case_000648_word case_000648_mask = case_000648_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000648_seqAtRank :
    translationSeqAtRankMask case_000648_rank case_000648_mask = case_000648_seq := by
  rw [translationSeqAtRankMask, case_000648_unrank]
  exact case_000648_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000648_bAtRank :
    translationBAtRankMask case_000648_rank case_000648_mask = case_000648_b := by
  rw [translationBAtRankMask, case_000648_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000648_b, case_000648_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000648_firstLine_eq :
    case_000648_support.firstLine case_000648_seq case_000648_b = case_000648_firstLine := by
  norm_num [case_000648_firstLine, case_000648_support, case_000648_seq, case_000648_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000648_secondLine_eq :
    case_000648_support.secondLine case_000648_seq case_000648_b = case_000648_secondLine := by
  norm_num [case_000648_secondLine, case_000648_support, case_000648_seq, case_000648_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000648_sourceAgrees :
    SourceAgrees case_000648_support case_000648_rank.val case_000648_mask := by
  intro hlt
  have hrank : (⟨case_000648_rank.val, hlt⟩ : Fin numPairWords) = case_000648_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000648_rank.val, hlt⟩ case_000648_mask =
        case_000648_seq := by
    simpa [hrank] using case_000648_seqAtRank
  simp [SourceChecks, hseq, case_000648_support,
    checkTranslationConstraintSource, case_000648_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000648_rows :
    EqEqPosVarFirstRows case_000648_support case_000648_rank.val case_000648_mask := by
  intro hlt
  have hrank : (⟨case_000648_rank.val, hlt⟩ : Fin numPairWords) = case_000648_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000648_rank.val, hlt⟩ case_000648_mask =
        case_000648_seq := by
    simpa [hrank] using case_000648_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000648_rank.val, hlt⟩ case_000648_mask =
        case_000648_b := by
    simpa [hrank] using case_000648_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000648_support case_000648_rank.val hlt
          case_000648_mask = case_000648_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000648_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000648_support case_000648_rank.val hlt
          case_000648_mask = case_000648_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000648_secondLine_eq]
  have case_000648_rowFirst :
      EqEqPosRow (FirstLineAt case_000648_support case_000648_rank.val hlt case_000648_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000648_firstLine, EqEqPosRow]
  have case_000648_fixedSecond :
      FixedRow (SecondLineAt case_000648_support case_000648_rank.val hlt case_000648_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000648_secondLine, FixedRow]
  exact ⟨case_000648_rowFirst, case_000648_fixedSecond⟩

private theorem case_000648_existsRows :
    ExistsEqEqPosVarFirstRows case_000648_rank.val case_000648_mask :=
  ⟨case_000648_support, case_000648_sourceAgrees, case_000648_rows⟩

private theorem case_000648_covered :
    RowPropertyParametricCovered case_000648_rank.val case_000648_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000648_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000649_rank : Fin numPairWords := ⟨387, by decide⟩
private def case_000649_mask : SignMask := ⟨15, by decide⟩
private def case_000649_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000649_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000649_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000649_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (20/9) }
private def case_000649_firstLine : StrictLin2 := { a := (-29/63), b := (-29/63), c := (-125/63) }
private def case_000649_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000649_rankWord :
    rankPairWord? case_000649_word = some case_000649_rank := by
  decide

private theorem case_000649_unrank :
    unrankPairWord case_000649_rank = case_000649_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000649_word case_000649_rank).1
    case_000649_rankWord |>.symm

private theorem case_000649_seqChoice :
    translationChoiceSeq case_000649_word case_000649_mask = case_000649_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000649_seqAtRank :
    translationSeqAtRankMask case_000649_rank case_000649_mask = case_000649_seq := by
  rw [translationSeqAtRankMask, case_000649_unrank]
  exact case_000649_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000649_bAtRank :
    translationBAtRankMask case_000649_rank case_000649_mask = case_000649_b := by
  rw [translationBAtRankMask, case_000649_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000649_b, case_000649_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000649_firstLine_eq :
    case_000649_support.firstLine case_000649_seq case_000649_b = case_000649_firstLine := by
  norm_num [case_000649_firstLine, case_000649_support, case_000649_seq, case_000649_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000649_secondLine_eq :
    case_000649_support.secondLine case_000649_seq case_000649_b = case_000649_secondLine := by
  norm_num [case_000649_secondLine, case_000649_support, case_000649_seq, case_000649_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000649_sourceAgrees :
    SourceAgrees case_000649_support case_000649_rank.val case_000649_mask := by
  intro hlt
  have hrank : (⟨case_000649_rank.val, hlt⟩ : Fin numPairWords) = case_000649_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000649_rank.val, hlt⟩ case_000649_mask =
        case_000649_seq := by
    simpa [hrank] using case_000649_seqAtRank
  simp [SourceChecks, hseq, case_000649_support,
    checkTranslationConstraintSource, case_000649_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000649_rows :
    EqEqPosVarFirstRows case_000649_support case_000649_rank.val case_000649_mask := by
  intro hlt
  have hrank : (⟨case_000649_rank.val, hlt⟩ : Fin numPairWords) = case_000649_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000649_rank.val, hlt⟩ case_000649_mask =
        case_000649_seq := by
    simpa [hrank] using case_000649_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000649_rank.val, hlt⟩ case_000649_mask =
        case_000649_b := by
    simpa [hrank] using case_000649_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000649_support case_000649_rank.val hlt
          case_000649_mask = case_000649_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000649_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000649_support case_000649_rank.val hlt
          case_000649_mask = case_000649_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000649_secondLine_eq]
  have case_000649_rowFirst :
      EqEqPosRow (FirstLineAt case_000649_support case_000649_rank.val hlt case_000649_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000649_firstLine, EqEqPosRow]
  have case_000649_fixedSecond :
      FixedRow (SecondLineAt case_000649_support case_000649_rank.val hlt case_000649_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000649_secondLine, FixedRow]
  exact ⟨case_000649_rowFirst, case_000649_fixedSecond⟩

private theorem case_000649_existsRows :
    ExistsEqEqPosVarFirstRows case_000649_rank.val case_000649_mask :=
  ⟨case_000649_support, case_000649_sourceAgrees, case_000649_rows⟩

private theorem case_000649_covered :
    RowPropertyParametricCovered case_000649_rank.val case_000649_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000649_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000650_rank : Fin numPairWords := ⟨387, by decide⟩
private def case_000650_mask : SignMask := ⟨16, by decide⟩
private def case_000650_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000650_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000650_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000650_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000650_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000650_secondLine : StrictLin2 := { a := (-27/638), b := (-27/638), c := (-12/29) }

private theorem case_000650_rankWord :
    rankPairWord? case_000650_word = some case_000650_rank := by
  decide

private theorem case_000650_unrank :
    unrankPairWord case_000650_rank = case_000650_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000650_word case_000650_rank).1
    case_000650_rankWord |>.symm

private theorem case_000650_seqChoice :
    translationChoiceSeq case_000650_word case_000650_mask = case_000650_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000650_seqAtRank :
    translationSeqAtRankMask case_000650_rank case_000650_mask = case_000650_seq := by
  rw [translationSeqAtRankMask, case_000650_unrank]
  exact case_000650_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000650_bAtRank :
    translationBAtRankMask case_000650_rank case_000650_mask = case_000650_b := by
  rw [translationBAtRankMask, case_000650_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000650_b, case_000650_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000650_firstLine_eq :
    case_000650_support.firstLine case_000650_seq case_000650_b = case_000650_firstLine := by
  norm_num [case_000650_firstLine, case_000650_support, case_000650_seq, case_000650_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000650_secondLine_eq :
    case_000650_support.secondLine case_000650_seq case_000650_b = case_000650_secondLine := by
  norm_num [case_000650_secondLine, case_000650_support, case_000650_seq, case_000650_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000650_sourceAgrees :
    SourceAgrees case_000650_support case_000650_rank.val case_000650_mask := by
  intro hlt
  have hrank : (⟨case_000650_rank.val, hlt⟩ : Fin numPairWords) = case_000650_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000650_rank.val, hlt⟩ case_000650_mask =
        case_000650_seq := by
    simpa [hrank] using case_000650_seqAtRank
  simp [SourceChecks, hseq, case_000650_support,
    checkTranslationConstraintSource, case_000650_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000650_rows :
    EqEqPosVarSecondRows case_000650_support case_000650_rank.val case_000650_mask := by
  intro hlt
  have hrank : (⟨case_000650_rank.val, hlt⟩ : Fin numPairWords) = case_000650_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000650_rank.val, hlt⟩ case_000650_mask =
        case_000650_seq := by
    simpa [hrank] using case_000650_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000650_rank.val, hlt⟩ case_000650_mask =
        case_000650_b := by
    simpa [hrank] using case_000650_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000650_support case_000650_rank.val hlt
          case_000650_mask = case_000650_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000650_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000650_support case_000650_rank.val hlt
          case_000650_mask = case_000650_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000650_secondLine_eq]
  have case_000650_fixedFirst :
      FixedRow (FirstLineAt case_000650_support case_000650_rank.val hlt case_000650_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000650_firstLine, FixedRow]
  have case_000650_rowSecond :
      EqEqPosRow (SecondLineAt case_000650_support case_000650_rank.val hlt case_000650_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000650_secondLine, EqEqPosRow]
  exact ⟨case_000650_fixedFirst, case_000650_rowSecond⟩

private theorem case_000650_existsRows :
    ExistsEqEqPosVarSecondRows case_000650_rank.val case_000650_mask :=
  ⟨case_000650_support, case_000650_sourceAgrees, case_000650_rows⟩

private theorem case_000650_covered :
    RowPropertyParametricCovered case_000650_rank.val case_000650_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000650_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000651_rank : Fin numPairWords := ⟨387, by decide⟩
private def case_000651_mask : SignMask := ⟨18, by decide⟩
private def case_000651_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000651_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000651_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000651_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000651_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000651_secondLine : StrictLin2 := { a := (-27/230), b := (-27/230), c := (-87/115) }

private theorem case_000651_rankWord :
    rankPairWord? case_000651_word = some case_000651_rank := by
  decide

private theorem case_000651_unrank :
    unrankPairWord case_000651_rank = case_000651_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000651_word case_000651_rank).1
    case_000651_rankWord |>.symm

private theorem case_000651_seqChoice :
    translationChoiceSeq case_000651_word case_000651_mask = case_000651_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000651_seqAtRank :
    translationSeqAtRankMask case_000651_rank case_000651_mask = case_000651_seq := by
  rw [translationSeqAtRankMask, case_000651_unrank]
  exact case_000651_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000651_bAtRank :
    translationBAtRankMask case_000651_rank case_000651_mask = case_000651_b := by
  rw [translationBAtRankMask, case_000651_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000651_b, case_000651_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000651_firstLine_eq :
    case_000651_support.firstLine case_000651_seq case_000651_b = case_000651_firstLine := by
  norm_num [case_000651_firstLine, case_000651_support, case_000651_seq, case_000651_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000651_secondLine_eq :
    case_000651_support.secondLine case_000651_seq case_000651_b = case_000651_secondLine := by
  norm_num [case_000651_secondLine, case_000651_support, case_000651_seq, case_000651_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000651_sourceAgrees :
    SourceAgrees case_000651_support case_000651_rank.val case_000651_mask := by
  intro hlt
  have hrank : (⟨case_000651_rank.val, hlt⟩ : Fin numPairWords) = case_000651_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000651_rank.val, hlt⟩ case_000651_mask =
        case_000651_seq := by
    simpa [hrank] using case_000651_seqAtRank
  simp [SourceChecks, hseq, case_000651_support,
    checkTranslationConstraintSource, case_000651_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000651_rows :
    EqEqPosVarSecondRows case_000651_support case_000651_rank.val case_000651_mask := by
  intro hlt
  have hrank : (⟨case_000651_rank.val, hlt⟩ : Fin numPairWords) = case_000651_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000651_rank.val, hlt⟩ case_000651_mask =
        case_000651_seq := by
    simpa [hrank] using case_000651_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000651_rank.val, hlt⟩ case_000651_mask =
        case_000651_b := by
    simpa [hrank] using case_000651_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000651_support case_000651_rank.val hlt
          case_000651_mask = case_000651_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000651_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000651_support case_000651_rank.val hlt
          case_000651_mask = case_000651_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000651_secondLine_eq]
  have case_000651_fixedFirst :
      FixedRow (FirstLineAt case_000651_support case_000651_rank.val hlt case_000651_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000651_firstLine, FixedRow]
  have case_000651_rowSecond :
      EqEqPosRow (SecondLineAt case_000651_support case_000651_rank.val hlt case_000651_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000651_secondLine, EqEqPosRow]
  exact ⟨case_000651_fixedFirst, case_000651_rowSecond⟩

private theorem case_000651_existsRows :
    ExistsEqEqPosVarSecondRows case_000651_rank.val case_000651_mask :=
  ⟨case_000651_support, case_000651_sourceAgrees, case_000651_rows⟩

private theorem case_000651_covered :
    RowPropertyParametricCovered case_000651_rank.val case_000651_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000651_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000652_rank : Fin numPairWords := ⟨387, by decide⟩
private def case_000652_mask : SignMask := ⟨22, by decide⟩
private def case_000652_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000652_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000652_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000652_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000652_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000652_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000652_rankWord :
    rankPairWord? case_000652_word = some case_000652_rank := by
  decide

private theorem case_000652_unrank :
    unrankPairWord case_000652_rank = case_000652_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000652_word case_000652_rank).1
    case_000652_rankWord |>.symm

private theorem case_000652_seqChoice :
    translationChoiceSeq case_000652_word case_000652_mask = case_000652_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000652_seqAtRank :
    translationSeqAtRankMask case_000652_rank case_000652_mask = case_000652_seq := by
  rw [translationSeqAtRankMask, case_000652_unrank]
  exact case_000652_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000652_bAtRank :
    translationBAtRankMask case_000652_rank case_000652_mask = case_000652_b := by
  rw [translationBAtRankMask, case_000652_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000652_b, case_000652_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000652_firstLine_eq :
    case_000652_support.firstLine case_000652_seq case_000652_b = case_000652_firstLine := by
  norm_num [case_000652_firstLine, case_000652_support, case_000652_seq, case_000652_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000652_secondLine_eq :
    case_000652_support.secondLine case_000652_seq case_000652_b = case_000652_secondLine := by
  norm_num [case_000652_secondLine, case_000652_support, case_000652_seq, case_000652_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000652_sourceAgrees :
    SourceAgrees case_000652_support case_000652_rank.val case_000652_mask := by
  intro hlt
  have hrank : (⟨case_000652_rank.val, hlt⟩ : Fin numPairWords) = case_000652_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000652_rank.val, hlt⟩ case_000652_mask =
        case_000652_seq := by
    simpa [hrank] using case_000652_seqAtRank
  simp [SourceChecks, hseq, case_000652_support,
    checkTranslationConstraintSource, case_000652_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000652_rows :
    EqEqPosVarFirstRows case_000652_support case_000652_rank.val case_000652_mask := by
  intro hlt
  have hrank : (⟨case_000652_rank.val, hlt⟩ : Fin numPairWords) = case_000652_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000652_rank.val, hlt⟩ case_000652_mask =
        case_000652_seq := by
    simpa [hrank] using case_000652_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000652_rank.val, hlt⟩ case_000652_mask =
        case_000652_b := by
    simpa [hrank] using case_000652_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000652_support case_000652_rank.val hlt
          case_000652_mask = case_000652_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000652_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000652_support case_000652_rank.val hlt
          case_000652_mask = case_000652_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000652_secondLine_eq]
  have case_000652_rowFirst :
      EqEqPosRow (FirstLineAt case_000652_support case_000652_rank.val hlt case_000652_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000652_firstLine, EqEqPosRow]
  have case_000652_fixedSecond :
      FixedRow (SecondLineAt case_000652_support case_000652_rank.val hlt case_000652_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000652_secondLine, FixedRow]
  exact ⟨case_000652_rowFirst, case_000652_fixedSecond⟩

private theorem case_000652_existsRows :
    ExistsEqEqPosVarFirstRows case_000652_rank.val case_000652_mask :=
  ⟨case_000652_support, case_000652_sourceAgrees, case_000652_rows⟩

private theorem case_000652_covered :
    RowPropertyParametricCovered case_000652_rank.val case_000652_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000652_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000653_rank : Fin numPairWords := ⟨387, by decide⟩
private def case_000653_mask : SignMask := ⟨24, by decide⟩
private def case_000653_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000653_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000653_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000653_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000653_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000653_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000653_rankWord :
    rankPairWord? case_000653_word = some case_000653_rank := by
  decide

private theorem case_000653_unrank :
    unrankPairWord case_000653_rank = case_000653_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000653_word case_000653_rank).1
    case_000653_rankWord |>.symm

private theorem case_000653_seqChoice :
    translationChoiceSeq case_000653_word case_000653_mask = case_000653_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000653_seqAtRank :
    translationSeqAtRankMask case_000653_rank case_000653_mask = case_000653_seq := by
  rw [translationSeqAtRankMask, case_000653_unrank]
  exact case_000653_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000653_bAtRank :
    translationBAtRankMask case_000653_rank case_000653_mask = case_000653_b := by
  rw [translationBAtRankMask, case_000653_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000653_b, case_000653_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000653_firstLine_eq :
    case_000653_support.firstLine case_000653_seq case_000653_b = case_000653_firstLine := by
  norm_num [case_000653_firstLine, case_000653_support, case_000653_seq, case_000653_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000653_secondLine_eq :
    case_000653_support.secondLine case_000653_seq case_000653_b = case_000653_secondLine := by
  norm_num [case_000653_secondLine, case_000653_support, case_000653_seq, case_000653_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000653_sourceAgrees :
    SourceAgrees case_000653_support case_000653_rank.val case_000653_mask := by
  intro hlt
  have hrank : (⟨case_000653_rank.val, hlt⟩ : Fin numPairWords) = case_000653_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000653_rank.val, hlt⟩ case_000653_mask =
        case_000653_seq := by
    simpa [hrank] using case_000653_seqAtRank
  simp [SourceChecks, hseq, case_000653_support,
    checkTranslationConstraintSource, case_000653_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000653_rows :
    EqEqPosVarFirstRows case_000653_support case_000653_rank.val case_000653_mask := by
  intro hlt
  have hrank : (⟨case_000653_rank.val, hlt⟩ : Fin numPairWords) = case_000653_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000653_rank.val, hlt⟩ case_000653_mask =
        case_000653_seq := by
    simpa [hrank] using case_000653_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000653_rank.val, hlt⟩ case_000653_mask =
        case_000653_b := by
    simpa [hrank] using case_000653_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000653_support case_000653_rank.val hlt
          case_000653_mask = case_000653_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000653_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000653_support case_000653_rank.val hlt
          case_000653_mask = case_000653_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000653_secondLine_eq]
  have case_000653_rowFirst :
      EqEqPosRow (FirstLineAt case_000653_support case_000653_rank.val hlt case_000653_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000653_firstLine, EqEqPosRow]
  have case_000653_fixedSecond :
      FixedRow (SecondLineAt case_000653_support case_000653_rank.val hlt case_000653_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000653_secondLine, FixedRow]
  exact ⟨case_000653_rowFirst, case_000653_fixedSecond⟩

private theorem case_000653_existsRows :
    ExistsEqEqPosVarFirstRows case_000653_rank.val case_000653_mask :=
  ⟨case_000653_support, case_000653_sourceAgrees, case_000653_rows⟩

private theorem case_000653_covered :
    RowPropertyParametricCovered case_000653_rank.val case_000653_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000653_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000654_rank : Fin numPairWords := ⟨387, by decide⟩
private def case_000654_mask : SignMask := ⟨28, by decide⟩
private def case_000654_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000654_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000654_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000654_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000654_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000654_secondLine : StrictLin2 := { a := (1/4), b := (-1/4), c := (-1/2) }

private theorem case_000654_rankWord :
    rankPairWord? case_000654_word = some case_000654_rank := by
  decide

private theorem case_000654_unrank :
    unrankPairWord case_000654_rank = case_000654_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000654_word case_000654_rank).1
    case_000654_rankWord |>.symm

private theorem case_000654_seqChoice :
    translationChoiceSeq case_000654_word case_000654_mask = case_000654_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000654_seqAtRank :
    translationSeqAtRankMask case_000654_rank case_000654_mask = case_000654_seq := by
  rw [translationSeqAtRankMask, case_000654_unrank]
  exact case_000654_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000654_bAtRank :
    translationBAtRankMask case_000654_rank case_000654_mask = case_000654_b := by
  rw [translationBAtRankMask, case_000654_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000654_b, case_000654_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000654_firstLine_eq :
    case_000654_support.firstLine case_000654_seq case_000654_b = case_000654_firstLine := by
  norm_num [case_000654_firstLine, case_000654_support, case_000654_seq, case_000654_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000654_secondLine_eq :
    case_000654_support.secondLine case_000654_seq case_000654_b = case_000654_secondLine := by
  norm_num [case_000654_secondLine, case_000654_support, case_000654_seq, case_000654_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000654_sourceAgrees :
    SourceAgrees case_000654_support case_000654_rank.val case_000654_mask := by
  intro hlt
  have hrank : (⟨case_000654_rank.val, hlt⟩ : Fin numPairWords) = case_000654_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000654_rank.val, hlt⟩ case_000654_mask =
        case_000654_seq := by
    simpa [hrank] using case_000654_seqAtRank
  simp [SourceChecks, hseq, case_000654_support,
    checkTranslationConstraintSource, case_000654_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000654_rows :
    OppMinusOneVarSecondRows case_000654_support case_000654_rank.val case_000654_mask := by
  intro hlt
  have hrank : (⟨case_000654_rank.val, hlt⟩ : Fin numPairWords) = case_000654_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000654_rank.val, hlt⟩ case_000654_mask =
        case_000654_seq := by
    simpa [hrank] using case_000654_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000654_rank.val, hlt⟩ case_000654_mask =
        case_000654_b := by
    simpa [hrank] using case_000654_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000654_support case_000654_rank.val hlt
          case_000654_mask = case_000654_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000654_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000654_support case_000654_rank.val hlt
          case_000654_mask = case_000654_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000654_secondLine_eq]
  have case_000654_fixedFirst :
      FixedRow (FirstLineAt case_000654_support case_000654_rank.val hlt case_000654_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000654_firstLine, FixedRow]
  have case_000654_rowSecond :
      OppNegRow (SecondLineAt case_000654_support case_000654_rank.val hlt case_000654_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000654_secondLine, OppNegRow]
  exact ⟨case_000654_fixedFirst, case_000654_rowSecond⟩

private theorem case_000654_existsRows :
    ExistsOppMinusOneVarSecondRows case_000654_rank.val case_000654_mask :=
  ⟨case_000654_support, case_000654_sourceAgrees, case_000654_rows⟩

private theorem case_000654_covered :
    RowPropertyParametricCovered case_000654_rank.val case_000654_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000654_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000655_rank : Fin numPairWords := ⟨387, by decide⟩
private def case_000655_mask : SignMask := ⟨30, by decide⟩
private def case_000655_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000655_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000655_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000655_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000655_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000655_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000655_rankWord :
    rankPairWord? case_000655_word = some case_000655_rank := by
  decide

private theorem case_000655_unrank :
    unrankPairWord case_000655_rank = case_000655_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000655_word case_000655_rank).1
    case_000655_rankWord |>.symm

private theorem case_000655_seqChoice :
    translationChoiceSeq case_000655_word case_000655_mask = case_000655_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000655_seqAtRank :
    translationSeqAtRankMask case_000655_rank case_000655_mask = case_000655_seq := by
  rw [translationSeqAtRankMask, case_000655_unrank]
  exact case_000655_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000655_bAtRank :
    translationBAtRankMask case_000655_rank case_000655_mask = case_000655_b := by
  rw [translationBAtRankMask, case_000655_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000655_b, case_000655_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000655_firstLine_eq :
    case_000655_support.firstLine case_000655_seq case_000655_b = case_000655_firstLine := by
  norm_num [case_000655_firstLine, case_000655_support, case_000655_seq, case_000655_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000655_secondLine_eq :
    case_000655_support.secondLine case_000655_seq case_000655_b = case_000655_secondLine := by
  norm_num [case_000655_secondLine, case_000655_support, case_000655_seq, case_000655_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000655_sourceAgrees :
    SourceAgrees case_000655_support case_000655_rank.val case_000655_mask := by
  intro hlt
  have hrank : (⟨case_000655_rank.val, hlt⟩ : Fin numPairWords) = case_000655_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000655_rank.val, hlt⟩ case_000655_mask =
        case_000655_seq := by
    simpa [hrank] using case_000655_seqAtRank
  simp [SourceChecks, hseq, case_000655_support,
    checkTranslationConstraintSource, case_000655_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000655_rows :
    EqEqPosVarFirstRows case_000655_support case_000655_rank.val case_000655_mask := by
  intro hlt
  have hrank : (⟨case_000655_rank.val, hlt⟩ : Fin numPairWords) = case_000655_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000655_rank.val, hlt⟩ case_000655_mask =
        case_000655_seq := by
    simpa [hrank] using case_000655_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000655_rank.val, hlt⟩ case_000655_mask =
        case_000655_b := by
    simpa [hrank] using case_000655_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000655_support case_000655_rank.val hlt
          case_000655_mask = case_000655_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000655_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000655_support case_000655_rank.val hlt
          case_000655_mask = case_000655_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000655_secondLine_eq]
  have case_000655_rowFirst :
      EqEqPosRow (FirstLineAt case_000655_support case_000655_rank.val hlt case_000655_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000655_firstLine, EqEqPosRow]
  have case_000655_fixedSecond :
      FixedRow (SecondLineAt case_000655_support case_000655_rank.val hlt case_000655_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000655_secondLine, FixedRow]
  exact ⟨case_000655_rowFirst, case_000655_fixedSecond⟩

private theorem case_000655_existsRows :
    ExistsEqEqPosVarFirstRows case_000655_rank.val case_000655_mask :=
  ⟨case_000655_support, case_000655_sourceAgrees, case_000655_rows⟩

private theorem case_000655_covered :
    RowPropertyParametricCovered case_000655_rank.val case_000655_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000655_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000656_rank : Fin numPairWords := ⟨387, by decide⟩
private def case_000656_mask : SignMask := ⟨54, by decide⟩
private def case_000656_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000656_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000656_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000656_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (100/9) }
private def case_000656_firstLine : StrictLin2 := { a := -1, b := 1, c := -83 }
private def case_000656_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000656_rankWord :
    rankPairWord? case_000656_word = some case_000656_rank := by
  decide

private theorem case_000656_unrank :
    unrankPairWord case_000656_rank = case_000656_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000656_word case_000656_rank).1
    case_000656_rankWord |>.symm

private theorem case_000656_seqChoice :
    translationChoiceSeq case_000656_word case_000656_mask = case_000656_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000656_seqAtRank :
    translationSeqAtRankMask case_000656_rank case_000656_mask = case_000656_seq := by
  rw [translationSeqAtRankMask, case_000656_unrank]
  exact case_000656_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000656_bAtRank :
    translationBAtRankMask case_000656_rank case_000656_mask = case_000656_b := by
  rw [translationBAtRankMask, case_000656_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000656_b, case_000656_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000656_firstLine_eq :
    case_000656_support.firstLine case_000656_seq case_000656_b = case_000656_firstLine := by
  norm_num [case_000656_firstLine, case_000656_support, case_000656_seq, case_000656_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000656_secondLine_eq :
    case_000656_support.secondLine case_000656_seq case_000656_b = case_000656_secondLine := by
  norm_num [case_000656_secondLine, case_000656_support, case_000656_seq, case_000656_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000656_sourceAgrees :
    SourceAgrees case_000656_support case_000656_rank.val case_000656_mask := by
  intro hlt
  have hrank : (⟨case_000656_rank.val, hlt⟩ : Fin numPairWords) = case_000656_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000656_rank.val, hlt⟩ case_000656_mask =
        case_000656_seq := by
    simpa [hrank] using case_000656_seqAtRank
  simp [SourceChecks, hseq, case_000656_support,
    checkTranslationConstraintSource, case_000656_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000656_rows :
    OppOneMinusVarFirstRows case_000656_support case_000656_rank.val case_000656_mask := by
  intro hlt
  have hrank : (⟨case_000656_rank.val, hlt⟩ : Fin numPairWords) = case_000656_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000656_rank.val, hlt⟩ case_000656_mask =
        case_000656_seq := by
    simpa [hrank] using case_000656_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000656_rank.val, hlt⟩ case_000656_mask =
        case_000656_b := by
    simpa [hrank] using case_000656_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000656_support case_000656_rank.val hlt
          case_000656_mask = case_000656_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000656_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000656_support case_000656_rank.val hlt
          case_000656_mask = case_000656_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000656_secondLine_eq]
  have case_000656_rowFirst :
      OppPosRow (FirstLineAt case_000656_support case_000656_rank.val hlt case_000656_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000656_firstLine, OppPosRow]
  have case_000656_fixedSecond :
      FixedRow (SecondLineAt case_000656_support case_000656_rank.val hlt case_000656_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000656_secondLine, FixedRow]
  exact ⟨case_000656_rowFirst, case_000656_fixedSecond⟩

private theorem case_000656_existsRows :
    ExistsOppOneMinusVarFirstRows case_000656_rank.val case_000656_mask :=
  ⟨case_000656_support, case_000656_sourceAgrees, case_000656_rows⟩

private theorem case_000656_covered :
    RowPropertyParametricCovered case_000656_rank.val case_000656_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000656_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000657_rank : Fin numPairWords := ⟨387, by decide⟩
private def case_000657_mask : SignMask := ⟨55, by decide⟩
private def case_000657_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d11m], by decide⟩
private def case_000657_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000657_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000657_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (100/9) }
private def case_000657_firstLine : StrictLin2 := { a := -1, b := 1, c := -47 }
private def case_000657_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000657_rankWord :
    rankPairWord? case_000657_word = some case_000657_rank := by
  decide

private theorem case_000657_unrank :
    unrankPairWord case_000657_rank = case_000657_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000657_word case_000657_rank).1
    case_000657_rankWord |>.symm

private theorem case_000657_seqChoice :
    translationChoiceSeq case_000657_word case_000657_mask = case_000657_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000657_seqAtRank :
    translationSeqAtRankMask case_000657_rank case_000657_mask = case_000657_seq := by
  rw [translationSeqAtRankMask, case_000657_unrank]
  exact case_000657_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000657_bAtRank :
    translationBAtRankMask case_000657_rank case_000657_mask = case_000657_b := by
  rw [translationBAtRankMask, case_000657_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000657_b, case_000657_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000657_firstLine_eq :
    case_000657_support.firstLine case_000657_seq case_000657_b = case_000657_firstLine := by
  norm_num [case_000657_firstLine, case_000657_support, case_000657_seq, case_000657_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000657_secondLine_eq :
    case_000657_support.secondLine case_000657_seq case_000657_b = case_000657_secondLine := by
  norm_num [case_000657_secondLine, case_000657_support, case_000657_seq, case_000657_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000657_sourceAgrees :
    SourceAgrees case_000657_support case_000657_rank.val case_000657_mask := by
  intro hlt
  have hrank : (⟨case_000657_rank.val, hlt⟩ : Fin numPairWords) = case_000657_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000657_rank.val, hlt⟩ case_000657_mask =
        case_000657_seq := by
    simpa [hrank] using case_000657_seqAtRank
  simp [SourceChecks, hseq, case_000657_support,
    checkTranslationConstraintSource, case_000657_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000657_rows :
    OppOneMinusVarFirstRows case_000657_support case_000657_rank.val case_000657_mask := by
  intro hlt
  have hrank : (⟨case_000657_rank.val, hlt⟩ : Fin numPairWords) = case_000657_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000657_rank.val, hlt⟩ case_000657_mask =
        case_000657_seq := by
    simpa [hrank] using case_000657_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000657_rank.val, hlt⟩ case_000657_mask =
        case_000657_b := by
    simpa [hrank] using case_000657_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000657_support case_000657_rank.val hlt
          case_000657_mask = case_000657_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000657_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000657_support case_000657_rank.val hlt
          case_000657_mask = case_000657_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000657_secondLine_eq]
  have case_000657_rowFirst :
      OppPosRow (FirstLineAt case_000657_support case_000657_rank.val hlt case_000657_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000657_firstLine, OppPosRow]
  have case_000657_fixedSecond :
      FixedRow (SecondLineAt case_000657_support case_000657_rank.val hlt case_000657_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000657_secondLine, FixedRow]
  exact ⟨case_000657_rowFirst, case_000657_fixedSecond⟩

private theorem case_000657_existsRows :
    ExistsOppOneMinusVarFirstRows case_000657_rank.val case_000657_mask :=
  ⟨case_000657_support, case_000657_sourceAgrees, case_000657_rows⟩

private theorem case_000657_covered :
    RowPropertyParametricCovered case_000657_rank.val case_000657_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000657_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000658_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000658_mask : SignMask := ⟨7, by decide⟩
private def case_000658_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000658_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000658_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000658_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000658_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000658_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000658_rankWord :
    rankPairWord? case_000658_word = some case_000658_rank := by
  decide

private theorem case_000658_unrank :
    unrankPairWord case_000658_rank = case_000658_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000658_word case_000658_rank).1
    case_000658_rankWord |>.symm

private theorem case_000658_seqChoice :
    translationChoiceSeq case_000658_word case_000658_mask = case_000658_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000658_seqAtRank :
    translationSeqAtRankMask case_000658_rank case_000658_mask = case_000658_seq := by
  rw [translationSeqAtRankMask, case_000658_unrank]
  exact case_000658_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000658_bAtRank :
    translationBAtRankMask case_000658_rank case_000658_mask = case_000658_b := by
  rw [translationBAtRankMask, case_000658_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000658_b, case_000658_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000658_firstLine_eq :
    case_000658_support.firstLine case_000658_seq case_000658_b = case_000658_firstLine := by
  norm_num [case_000658_firstLine, case_000658_support, case_000658_seq, case_000658_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000658_secondLine_eq :
    case_000658_support.secondLine case_000658_seq case_000658_b = case_000658_secondLine := by
  norm_num [case_000658_secondLine, case_000658_support, case_000658_seq, case_000658_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000658_sourceAgrees :
    SourceAgrees case_000658_support case_000658_rank.val case_000658_mask := by
  intro hlt
  have hrank : (⟨case_000658_rank.val, hlt⟩ : Fin numPairWords) = case_000658_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000658_rank.val, hlt⟩ case_000658_mask =
        case_000658_seq := by
    simpa [hrank] using case_000658_seqAtRank
  simp [SourceChecks, hseq, case_000658_support,
    checkTranslationConstraintSource, case_000658_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000658_rows :
    EqEqPosVarFirstRows case_000658_support case_000658_rank.val case_000658_mask := by
  intro hlt
  have hrank : (⟨case_000658_rank.val, hlt⟩ : Fin numPairWords) = case_000658_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000658_rank.val, hlt⟩ case_000658_mask =
        case_000658_seq := by
    simpa [hrank] using case_000658_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000658_rank.val, hlt⟩ case_000658_mask =
        case_000658_b := by
    simpa [hrank] using case_000658_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000658_support case_000658_rank.val hlt
          case_000658_mask = case_000658_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000658_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000658_support case_000658_rank.val hlt
          case_000658_mask = case_000658_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000658_secondLine_eq]
  have case_000658_rowFirst :
      EqEqPosRow (FirstLineAt case_000658_support case_000658_rank.val hlt case_000658_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000658_firstLine, EqEqPosRow]
  have case_000658_fixedSecond :
      FixedRow (SecondLineAt case_000658_support case_000658_rank.val hlt case_000658_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000658_secondLine, FixedRow]
  exact ⟨case_000658_rowFirst, case_000658_fixedSecond⟩

private theorem case_000658_existsRows :
    ExistsEqEqPosVarFirstRows case_000658_rank.val case_000658_mask :=
  ⟨case_000658_support, case_000658_sourceAgrees, case_000658_rows⟩

private theorem case_000658_covered :
    RowPropertyParametricCovered case_000658_rank.val case_000658_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000658_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000659_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000659_mask : SignMask := ⟨9, by decide⟩
private def case_000659_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000659_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000659_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000659_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000659_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000659_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000659_rankWord :
    rankPairWord? case_000659_word = some case_000659_rank := by
  decide

private theorem case_000659_unrank :
    unrankPairWord case_000659_rank = case_000659_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000659_word case_000659_rank).1
    case_000659_rankWord |>.symm

private theorem case_000659_seqChoice :
    translationChoiceSeq case_000659_word case_000659_mask = case_000659_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000659_seqAtRank :
    translationSeqAtRankMask case_000659_rank case_000659_mask = case_000659_seq := by
  rw [translationSeqAtRankMask, case_000659_unrank]
  exact case_000659_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000659_bAtRank :
    translationBAtRankMask case_000659_rank case_000659_mask = case_000659_b := by
  rw [translationBAtRankMask, case_000659_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000659_b, case_000659_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000659_firstLine_eq :
    case_000659_support.firstLine case_000659_seq case_000659_b = case_000659_firstLine := by
  norm_num [case_000659_firstLine, case_000659_support, case_000659_seq, case_000659_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000659_secondLine_eq :
    case_000659_support.secondLine case_000659_seq case_000659_b = case_000659_secondLine := by
  norm_num [case_000659_secondLine, case_000659_support, case_000659_seq, case_000659_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000659_sourceAgrees :
    SourceAgrees case_000659_support case_000659_rank.val case_000659_mask := by
  intro hlt
  have hrank : (⟨case_000659_rank.val, hlt⟩ : Fin numPairWords) = case_000659_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000659_rank.val, hlt⟩ case_000659_mask =
        case_000659_seq := by
    simpa [hrank] using case_000659_seqAtRank
  simp [SourceChecks, hseq, case_000659_support,
    checkTranslationConstraintSource, case_000659_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000659_rows :
    EqEqPosVarFirstRows case_000659_support case_000659_rank.val case_000659_mask := by
  intro hlt
  have hrank : (⟨case_000659_rank.val, hlt⟩ : Fin numPairWords) = case_000659_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000659_rank.val, hlt⟩ case_000659_mask =
        case_000659_seq := by
    simpa [hrank] using case_000659_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000659_rank.val, hlt⟩ case_000659_mask =
        case_000659_b := by
    simpa [hrank] using case_000659_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000659_support case_000659_rank.val hlt
          case_000659_mask = case_000659_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000659_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000659_support case_000659_rank.val hlt
          case_000659_mask = case_000659_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000659_secondLine_eq]
  have case_000659_rowFirst :
      EqEqPosRow (FirstLineAt case_000659_support case_000659_rank.val hlt case_000659_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000659_firstLine, EqEqPosRow]
  have case_000659_fixedSecond :
      FixedRow (SecondLineAt case_000659_support case_000659_rank.val hlt case_000659_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000659_secondLine, FixedRow]
  exact ⟨case_000659_rowFirst, case_000659_fixedSecond⟩

private theorem case_000659_existsRows :
    ExistsEqEqPosVarFirstRows case_000659_rank.val case_000659_mask :=
  ⟨case_000659_support, case_000659_sourceAgrees, case_000659_rows⟩

private theorem case_000659_covered :
    RowPropertyParametricCovered case_000659_rank.val case_000659_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000659_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000660_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000660_mask : SignMask := ⟨13, by decide⟩
private def case_000660_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000660_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000660_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000660_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000660_firstLine : StrictLin2 := { a := (-25/39), b := (-25/39), c := (-95/39) }
private def case_000660_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000660_rankWord :
    rankPairWord? case_000660_word = some case_000660_rank := by
  decide

private theorem case_000660_unrank :
    unrankPairWord case_000660_rank = case_000660_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000660_word case_000660_rank).1
    case_000660_rankWord |>.symm

private theorem case_000660_seqChoice :
    translationChoiceSeq case_000660_word case_000660_mask = case_000660_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000660_seqAtRank :
    translationSeqAtRankMask case_000660_rank case_000660_mask = case_000660_seq := by
  rw [translationSeqAtRankMask, case_000660_unrank]
  exact case_000660_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000660_bAtRank :
    translationBAtRankMask case_000660_rank case_000660_mask = case_000660_b := by
  rw [translationBAtRankMask, case_000660_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000660_b, case_000660_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000660_firstLine_eq :
    case_000660_support.firstLine case_000660_seq case_000660_b = case_000660_firstLine := by
  norm_num [case_000660_firstLine, case_000660_support, case_000660_seq, case_000660_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000660_secondLine_eq :
    case_000660_support.secondLine case_000660_seq case_000660_b = case_000660_secondLine := by
  norm_num [case_000660_secondLine, case_000660_support, case_000660_seq, case_000660_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000660_sourceAgrees :
    SourceAgrees case_000660_support case_000660_rank.val case_000660_mask := by
  intro hlt
  have hrank : (⟨case_000660_rank.val, hlt⟩ : Fin numPairWords) = case_000660_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000660_rank.val, hlt⟩ case_000660_mask =
        case_000660_seq := by
    simpa [hrank] using case_000660_seqAtRank
  simp [SourceChecks, hseq, case_000660_support,
    checkTranslationConstraintSource, case_000660_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000660_rows :
    EqEqPosVarFirstRows case_000660_support case_000660_rank.val case_000660_mask := by
  intro hlt
  have hrank : (⟨case_000660_rank.val, hlt⟩ : Fin numPairWords) = case_000660_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000660_rank.val, hlt⟩ case_000660_mask =
        case_000660_seq := by
    simpa [hrank] using case_000660_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000660_rank.val, hlt⟩ case_000660_mask =
        case_000660_b := by
    simpa [hrank] using case_000660_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000660_support case_000660_rank.val hlt
          case_000660_mask = case_000660_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000660_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000660_support case_000660_rank.val hlt
          case_000660_mask = case_000660_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000660_secondLine_eq]
  have case_000660_rowFirst :
      EqEqPosRow (FirstLineAt case_000660_support case_000660_rank.val hlt case_000660_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000660_firstLine, EqEqPosRow]
  have case_000660_fixedSecond :
      FixedRow (SecondLineAt case_000660_support case_000660_rank.val hlt case_000660_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000660_secondLine, FixedRow]
  exact ⟨case_000660_rowFirst, case_000660_fixedSecond⟩

private theorem case_000660_existsRows :
    ExistsEqEqPosVarFirstRows case_000660_rank.val case_000660_mask :=
  ⟨case_000660_support, case_000660_sourceAgrees, case_000660_rows⟩

private theorem case_000660_covered :
    RowPropertyParametricCovered case_000660_rank.val case_000660_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000660_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000661_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000661_mask : SignMask := ⟨15, by decide⟩
private def case_000661_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000661_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000661_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000661_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (4/9) }
private def case_000661_firstLine : StrictLin2 := { a := (-25/51), b := (-25/51), c := (-121/51) }
private def case_000661_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000661_rankWord :
    rankPairWord? case_000661_word = some case_000661_rank := by
  decide

private theorem case_000661_unrank :
    unrankPairWord case_000661_rank = case_000661_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000661_word case_000661_rank).1
    case_000661_rankWord |>.symm

private theorem case_000661_seqChoice :
    translationChoiceSeq case_000661_word case_000661_mask = case_000661_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000661_seqAtRank :
    translationSeqAtRankMask case_000661_rank case_000661_mask = case_000661_seq := by
  rw [translationSeqAtRankMask, case_000661_unrank]
  exact case_000661_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000661_bAtRank :
    translationBAtRankMask case_000661_rank case_000661_mask = case_000661_b := by
  rw [translationBAtRankMask, case_000661_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000661_b, case_000661_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000661_firstLine_eq :
    case_000661_support.firstLine case_000661_seq case_000661_b = case_000661_firstLine := by
  norm_num [case_000661_firstLine, case_000661_support, case_000661_seq, case_000661_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000661_secondLine_eq :
    case_000661_support.secondLine case_000661_seq case_000661_b = case_000661_secondLine := by
  norm_num [case_000661_secondLine, case_000661_support, case_000661_seq, case_000661_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000661_sourceAgrees :
    SourceAgrees case_000661_support case_000661_rank.val case_000661_mask := by
  intro hlt
  have hrank : (⟨case_000661_rank.val, hlt⟩ : Fin numPairWords) = case_000661_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000661_rank.val, hlt⟩ case_000661_mask =
        case_000661_seq := by
    simpa [hrank] using case_000661_seqAtRank
  simp [SourceChecks, hseq, case_000661_support,
    checkTranslationConstraintSource, case_000661_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000661_rows :
    EqEqPosVarFirstRows case_000661_support case_000661_rank.val case_000661_mask := by
  intro hlt
  have hrank : (⟨case_000661_rank.val, hlt⟩ : Fin numPairWords) = case_000661_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000661_rank.val, hlt⟩ case_000661_mask =
        case_000661_seq := by
    simpa [hrank] using case_000661_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000661_rank.val, hlt⟩ case_000661_mask =
        case_000661_b := by
    simpa [hrank] using case_000661_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000661_support case_000661_rank.val hlt
          case_000661_mask = case_000661_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000661_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000661_support case_000661_rank.val hlt
          case_000661_mask = case_000661_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000661_secondLine_eq]
  have case_000661_rowFirst :
      EqEqPosRow (FirstLineAt case_000661_support case_000661_rank.val hlt case_000661_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000661_firstLine, EqEqPosRow]
  have case_000661_fixedSecond :
      FixedRow (SecondLineAt case_000661_support case_000661_rank.val hlt case_000661_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000661_secondLine, FixedRow]
  exact ⟨case_000661_rowFirst, case_000661_fixedSecond⟩

private theorem case_000661_existsRows :
    ExistsEqEqPosVarFirstRows case_000661_rank.val case_000661_mask :=
  ⟨case_000661_support, case_000661_sourceAgrees, case_000661_rows⟩

private theorem case_000661_covered :
    RowPropertyParametricCovered case_000661_rank.val case_000661_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000661_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000662_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000662_mask : SignMask := ⟨18, by decide⟩
private def case_000662_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000662_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000662_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tppp
private def case_000662_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000662_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000662_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000662_rankWord :
    rankPairWord? case_000662_word = some case_000662_rank := by
  decide

private theorem case_000662_unrank :
    unrankPairWord case_000662_rank = case_000662_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000662_word case_000662_rank).1
    case_000662_rankWord |>.symm

private theorem case_000662_seqChoice :
    translationChoiceSeq case_000662_word case_000662_mask = case_000662_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000662_seqAtRank :
    translationSeqAtRankMask case_000662_rank case_000662_mask = case_000662_seq := by
  rw [translationSeqAtRankMask, case_000662_unrank]
  exact case_000662_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000662_bAtRank :
    translationBAtRankMask case_000662_rank case_000662_mask = case_000662_b := by
  rw [translationBAtRankMask, case_000662_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000662_b, case_000662_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000662_firstLine_eq :
    case_000662_support.firstLine case_000662_seq case_000662_b = case_000662_firstLine := by
  norm_num [case_000662_firstLine, case_000662_support, case_000662_seq, case_000662_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000662_secondLine_eq :
    case_000662_support.secondLine case_000662_seq case_000662_b = case_000662_secondLine := by
  norm_num [case_000662_secondLine, case_000662_support, case_000662_seq, case_000662_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000662_sourceAgrees :
    SourceAgrees case_000662_support case_000662_rank.val case_000662_mask := by
  intro hlt
  have hrank : (⟨case_000662_rank.val, hlt⟩ : Fin numPairWords) = case_000662_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000662_rank.val, hlt⟩ case_000662_mask =
        case_000662_seq := by
    simpa [hrank] using case_000662_seqAtRank
  simp [SourceChecks, hseq, case_000662_support,
    checkTranslationConstraintSource, case_000662_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000662_rows :
    EqEqPosVarFirstRows case_000662_support case_000662_rank.val case_000662_mask := by
  intro hlt
  have hrank : (⟨case_000662_rank.val, hlt⟩ : Fin numPairWords) = case_000662_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000662_rank.val, hlt⟩ case_000662_mask =
        case_000662_seq := by
    simpa [hrank] using case_000662_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000662_rank.val, hlt⟩ case_000662_mask =
        case_000662_b := by
    simpa [hrank] using case_000662_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000662_support case_000662_rank.val hlt
          case_000662_mask = case_000662_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000662_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000662_support case_000662_rank.val hlt
          case_000662_mask = case_000662_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000662_secondLine_eq]
  have case_000662_rowFirst :
      EqEqPosRow (FirstLineAt case_000662_support case_000662_rank.val hlt case_000662_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000662_firstLine, EqEqPosRow]
  have case_000662_fixedSecond :
      FixedRow (SecondLineAt case_000662_support case_000662_rank.val hlt case_000662_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000662_secondLine, FixedRow]
  exact ⟨case_000662_rowFirst, case_000662_fixedSecond⟩

private theorem case_000662_existsRows :
    ExistsEqEqPosVarFirstRows case_000662_rank.val case_000662_mask :=
  ⟨case_000662_support, case_000662_sourceAgrees, case_000662_rows⟩

private theorem case_000662_covered :
    RowPropertyParametricCovered case_000662_rank.val case_000662_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000662_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000663_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000663_mask : SignMask := ⟨22, by decide⟩
private def case_000663_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000663_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000663_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000663_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000663_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_000663_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000663_rankWord :
    rankPairWord? case_000663_word = some case_000663_rank := by
  decide

private theorem case_000663_unrank :
    unrankPairWord case_000663_rank = case_000663_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000663_word case_000663_rank).1
    case_000663_rankWord |>.symm

private theorem case_000663_seqChoice :
    translationChoiceSeq case_000663_word case_000663_mask = case_000663_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000663_seqAtRank :
    translationSeqAtRankMask case_000663_rank case_000663_mask = case_000663_seq := by
  rw [translationSeqAtRankMask, case_000663_unrank]
  exact case_000663_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000663_bAtRank :
    translationBAtRankMask case_000663_rank case_000663_mask = case_000663_b := by
  rw [translationBAtRankMask, case_000663_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000663_b, case_000663_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000663_firstLine_eq :
    case_000663_support.firstLine case_000663_seq case_000663_b = case_000663_firstLine := by
  norm_num [case_000663_firstLine, case_000663_support, case_000663_seq, case_000663_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000663_secondLine_eq :
    case_000663_support.secondLine case_000663_seq case_000663_b = case_000663_secondLine := by
  norm_num [case_000663_secondLine, case_000663_support, case_000663_seq, case_000663_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000663_sourceAgrees :
    SourceAgrees case_000663_support case_000663_rank.val case_000663_mask := by
  intro hlt
  have hrank : (⟨case_000663_rank.val, hlt⟩ : Fin numPairWords) = case_000663_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000663_rank.val, hlt⟩ case_000663_mask =
        case_000663_seq := by
    simpa [hrank] using case_000663_seqAtRank
  simp [SourceChecks, hseq, case_000663_support,
    checkTranslationConstraintSource, case_000663_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000663_rows :
    OppOneMinusVarFirstRows case_000663_support case_000663_rank.val case_000663_mask := by
  intro hlt
  have hrank : (⟨case_000663_rank.val, hlt⟩ : Fin numPairWords) = case_000663_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000663_rank.val, hlt⟩ case_000663_mask =
        case_000663_seq := by
    simpa [hrank] using case_000663_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000663_rank.val, hlt⟩ case_000663_mask =
        case_000663_b := by
    simpa [hrank] using case_000663_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000663_support case_000663_rank.val hlt
          case_000663_mask = case_000663_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000663_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000663_support case_000663_rank.val hlt
          case_000663_mask = case_000663_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000663_secondLine_eq]
  have case_000663_rowFirst :
      OppPosRow (FirstLineAt case_000663_support case_000663_rank.val hlt case_000663_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000663_firstLine, OppPosRow]
  have case_000663_fixedSecond :
      FixedRow (SecondLineAt case_000663_support case_000663_rank.val hlt case_000663_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000663_secondLine, FixedRow]
  exact ⟨case_000663_rowFirst, case_000663_fixedSecond⟩

private theorem case_000663_existsRows :
    ExistsOppOneMinusVarFirstRows case_000663_rank.val case_000663_mask :=
  ⟨case_000663_support, case_000663_sourceAgrees, case_000663_rows⟩

private theorem case_000663_covered :
    RowPropertyParametricCovered case_000663_rank.val case_000663_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000663_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000664_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000664_mask : SignMask := ⟨23, by decide⟩
private def case_000664_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000664_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000664_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000664_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (100/9) }
private def case_000664_firstLine : StrictLin2 := { a := (-25/51), b := (-25/51), c := (-121/51) }
private def case_000664_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000664_rankWord :
    rankPairWord? case_000664_word = some case_000664_rank := by
  decide

private theorem case_000664_unrank :
    unrankPairWord case_000664_rank = case_000664_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000664_word case_000664_rank).1
    case_000664_rankWord |>.symm

private theorem case_000664_seqChoice :
    translationChoiceSeq case_000664_word case_000664_mask = case_000664_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000664_seqAtRank :
    translationSeqAtRankMask case_000664_rank case_000664_mask = case_000664_seq := by
  rw [translationSeqAtRankMask, case_000664_unrank]
  exact case_000664_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000664_bAtRank :
    translationBAtRankMask case_000664_rank case_000664_mask = case_000664_b := by
  rw [translationBAtRankMask, case_000664_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000664_b, case_000664_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000664_firstLine_eq :
    case_000664_support.firstLine case_000664_seq case_000664_b = case_000664_firstLine := by
  norm_num [case_000664_firstLine, case_000664_support, case_000664_seq, case_000664_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000664_secondLine_eq :
    case_000664_support.secondLine case_000664_seq case_000664_b = case_000664_secondLine := by
  norm_num [case_000664_secondLine, case_000664_support, case_000664_seq, case_000664_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000664_sourceAgrees :
    SourceAgrees case_000664_support case_000664_rank.val case_000664_mask := by
  intro hlt
  have hrank : (⟨case_000664_rank.val, hlt⟩ : Fin numPairWords) = case_000664_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000664_rank.val, hlt⟩ case_000664_mask =
        case_000664_seq := by
    simpa [hrank] using case_000664_seqAtRank
  simp [SourceChecks, hseq, case_000664_support,
    checkTranslationConstraintSource, case_000664_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000664_rows :
    EqEqPosVarFirstRows case_000664_support case_000664_rank.val case_000664_mask := by
  intro hlt
  have hrank : (⟨case_000664_rank.val, hlt⟩ : Fin numPairWords) = case_000664_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000664_rank.val, hlt⟩ case_000664_mask =
        case_000664_seq := by
    simpa [hrank] using case_000664_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000664_rank.val, hlt⟩ case_000664_mask =
        case_000664_b := by
    simpa [hrank] using case_000664_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000664_support case_000664_rank.val hlt
          case_000664_mask = case_000664_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000664_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000664_support case_000664_rank.val hlt
          case_000664_mask = case_000664_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000664_secondLine_eq]
  have case_000664_rowFirst :
      EqEqPosRow (FirstLineAt case_000664_support case_000664_rank.val hlt case_000664_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000664_firstLine, EqEqPosRow]
  have case_000664_fixedSecond :
      FixedRow (SecondLineAt case_000664_support case_000664_rank.val hlt case_000664_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000664_secondLine, FixedRow]
  exact ⟨case_000664_rowFirst, case_000664_fixedSecond⟩

private theorem case_000664_existsRows :
    ExistsEqEqPosVarFirstRows case_000664_rank.val case_000664_mask :=
  ⟨case_000664_support, case_000664_sourceAgrees, case_000664_rows⟩

private theorem case_000664_covered :
    RowPropertyParametricCovered case_000664_rank.val case_000664_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000664_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000665_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000665_mask : SignMask := ⟨24, by decide⟩
private def case_000665_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000665_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000665_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000665_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000665_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000665_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000665_rankWord :
    rankPairWord? case_000665_word = some case_000665_rank := by
  decide

private theorem case_000665_unrank :
    unrankPairWord case_000665_rank = case_000665_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000665_word case_000665_rank).1
    case_000665_rankWord |>.symm

private theorem case_000665_seqChoice :
    translationChoiceSeq case_000665_word case_000665_mask = case_000665_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000665_seqAtRank :
    translationSeqAtRankMask case_000665_rank case_000665_mask = case_000665_seq := by
  rw [translationSeqAtRankMask, case_000665_unrank]
  exact case_000665_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000665_bAtRank :
    translationBAtRankMask case_000665_rank case_000665_mask = case_000665_b := by
  rw [translationBAtRankMask, case_000665_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000665_b, case_000665_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000665_firstLine_eq :
    case_000665_support.firstLine case_000665_seq case_000665_b = case_000665_firstLine := by
  norm_num [case_000665_firstLine, case_000665_support, case_000665_seq, case_000665_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000665_secondLine_eq :
    case_000665_support.secondLine case_000665_seq case_000665_b = case_000665_secondLine := by
  norm_num [case_000665_secondLine, case_000665_support, case_000665_seq, case_000665_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000665_sourceAgrees :
    SourceAgrees case_000665_support case_000665_rank.val case_000665_mask := by
  intro hlt
  have hrank : (⟨case_000665_rank.val, hlt⟩ : Fin numPairWords) = case_000665_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000665_rank.val, hlt⟩ case_000665_mask =
        case_000665_seq := by
    simpa [hrank] using case_000665_seqAtRank
  simp [SourceChecks, hseq, case_000665_support,
    checkTranslationConstraintSource, case_000665_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000665_rows :
    EqEqPosVarFirstRows case_000665_support case_000665_rank.val case_000665_mask := by
  intro hlt
  have hrank : (⟨case_000665_rank.val, hlt⟩ : Fin numPairWords) = case_000665_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000665_rank.val, hlt⟩ case_000665_mask =
        case_000665_seq := by
    simpa [hrank] using case_000665_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000665_rank.val, hlt⟩ case_000665_mask =
        case_000665_b := by
    simpa [hrank] using case_000665_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000665_support case_000665_rank.val hlt
          case_000665_mask = case_000665_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000665_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000665_support case_000665_rank.val hlt
          case_000665_mask = case_000665_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000665_secondLine_eq]
  have case_000665_rowFirst :
      EqEqPosRow (FirstLineAt case_000665_support case_000665_rank.val hlt case_000665_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000665_firstLine, EqEqPosRow]
  have case_000665_fixedSecond :
      FixedRow (SecondLineAt case_000665_support case_000665_rank.val hlt case_000665_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000665_secondLine, FixedRow]
  exact ⟨case_000665_rowFirst, case_000665_fixedSecond⟩

private theorem case_000665_existsRows :
    ExistsEqEqPosVarFirstRows case_000665_rank.val case_000665_mask :=
  ⟨case_000665_support, case_000665_sourceAgrees, case_000665_rows⟩

private theorem case_000665_covered :
    RowPropertyParametricCovered case_000665_rank.val case_000665_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000665_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000666_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000666_mask : SignMask := ⟨28, by decide⟩
private def case_000666_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000666_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000666_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000666_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000666_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000666_secondLine : StrictLin2 := { a := (9/52), b := (-9/52), c := (-9/26) }

private theorem case_000666_rankWord :
    rankPairWord? case_000666_word = some case_000666_rank := by
  decide

private theorem case_000666_unrank :
    unrankPairWord case_000666_rank = case_000666_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000666_word case_000666_rank).1
    case_000666_rankWord |>.symm

private theorem case_000666_seqChoice :
    translationChoiceSeq case_000666_word case_000666_mask = case_000666_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000666_seqAtRank :
    translationSeqAtRankMask case_000666_rank case_000666_mask = case_000666_seq := by
  rw [translationSeqAtRankMask, case_000666_unrank]
  exact case_000666_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000666_bAtRank :
    translationBAtRankMask case_000666_rank case_000666_mask = case_000666_b := by
  rw [translationBAtRankMask, case_000666_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000666_b, case_000666_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000666_firstLine_eq :
    case_000666_support.firstLine case_000666_seq case_000666_b = case_000666_firstLine := by
  norm_num [case_000666_firstLine, case_000666_support, case_000666_seq, case_000666_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000666_secondLine_eq :
    case_000666_support.secondLine case_000666_seq case_000666_b = case_000666_secondLine := by
  norm_num [case_000666_secondLine, case_000666_support, case_000666_seq, case_000666_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000666_sourceAgrees :
    SourceAgrees case_000666_support case_000666_rank.val case_000666_mask := by
  intro hlt
  have hrank : (⟨case_000666_rank.val, hlt⟩ : Fin numPairWords) = case_000666_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000666_rank.val, hlt⟩ case_000666_mask =
        case_000666_seq := by
    simpa [hrank] using case_000666_seqAtRank
  simp [SourceChecks, hseq, case_000666_support,
    checkTranslationConstraintSource, case_000666_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000666_rows :
    OppMinusOneVarSecondRows case_000666_support case_000666_rank.val case_000666_mask := by
  intro hlt
  have hrank : (⟨case_000666_rank.val, hlt⟩ : Fin numPairWords) = case_000666_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000666_rank.val, hlt⟩ case_000666_mask =
        case_000666_seq := by
    simpa [hrank] using case_000666_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000666_rank.val, hlt⟩ case_000666_mask =
        case_000666_b := by
    simpa [hrank] using case_000666_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000666_support case_000666_rank.val hlt
          case_000666_mask = case_000666_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000666_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000666_support case_000666_rank.val hlt
          case_000666_mask = case_000666_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000666_secondLine_eq]
  have case_000666_fixedFirst :
      FixedRow (FirstLineAt case_000666_support case_000666_rank.val hlt case_000666_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000666_firstLine, FixedRow]
  have case_000666_rowSecond :
      OppNegRow (SecondLineAt case_000666_support case_000666_rank.val hlt case_000666_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000666_secondLine, OppNegRow]
  exact ⟨case_000666_fixedFirst, case_000666_rowSecond⟩

private theorem case_000666_existsRows :
    ExistsOppMinusOneVarSecondRows case_000666_rank.val case_000666_mask :=
  ⟨case_000666_support, case_000666_sourceAgrees, case_000666_rows⟩

private theorem case_000666_covered :
    RowPropertyParametricCovered case_000666_rank.val case_000666_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000666_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000667_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000667_mask : SignMask := ⟨31, by decide⟩
private def case_000667_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000667_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000667_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000667_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000667_firstLine : StrictLin2 := { a := (-29/39), b := (-29/39), c := (-17/3) }
private def case_000667_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000667_rankWord :
    rankPairWord? case_000667_word = some case_000667_rank := by
  decide

private theorem case_000667_unrank :
    unrankPairWord case_000667_rank = case_000667_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000667_word case_000667_rank).1
    case_000667_rankWord |>.symm

private theorem case_000667_seqChoice :
    translationChoiceSeq case_000667_word case_000667_mask = case_000667_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000667_seqAtRank :
    translationSeqAtRankMask case_000667_rank case_000667_mask = case_000667_seq := by
  rw [translationSeqAtRankMask, case_000667_unrank]
  exact case_000667_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000667_bAtRank :
    translationBAtRankMask case_000667_rank case_000667_mask = case_000667_b := by
  rw [translationBAtRankMask, case_000667_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000667_b, case_000667_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000667_firstLine_eq :
    case_000667_support.firstLine case_000667_seq case_000667_b = case_000667_firstLine := by
  norm_num [case_000667_firstLine, case_000667_support, case_000667_seq, case_000667_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000667_secondLine_eq :
    case_000667_support.secondLine case_000667_seq case_000667_b = case_000667_secondLine := by
  norm_num [case_000667_secondLine, case_000667_support, case_000667_seq, case_000667_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000667_sourceAgrees :
    SourceAgrees case_000667_support case_000667_rank.val case_000667_mask := by
  intro hlt
  have hrank : (⟨case_000667_rank.val, hlt⟩ : Fin numPairWords) = case_000667_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000667_rank.val, hlt⟩ case_000667_mask =
        case_000667_seq := by
    simpa [hrank] using case_000667_seqAtRank
  simp [SourceChecks, hseq, case_000667_support,
    checkTranslationConstraintSource, case_000667_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000667_rows :
    EqEqPosVarFirstRows case_000667_support case_000667_rank.val case_000667_mask := by
  intro hlt
  have hrank : (⟨case_000667_rank.val, hlt⟩ : Fin numPairWords) = case_000667_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000667_rank.val, hlt⟩ case_000667_mask =
        case_000667_seq := by
    simpa [hrank] using case_000667_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000667_rank.val, hlt⟩ case_000667_mask =
        case_000667_b := by
    simpa [hrank] using case_000667_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000667_support case_000667_rank.val hlt
          case_000667_mask = case_000667_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000667_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000667_support case_000667_rank.val hlt
          case_000667_mask = case_000667_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000667_secondLine_eq]
  have case_000667_rowFirst :
      EqEqPosRow (FirstLineAt case_000667_support case_000667_rank.val hlt case_000667_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000667_firstLine, EqEqPosRow]
  have case_000667_fixedSecond :
      FixedRow (SecondLineAt case_000667_support case_000667_rank.val hlt case_000667_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000667_secondLine, FixedRow]
  exact ⟨case_000667_rowFirst, case_000667_fixedSecond⟩

private theorem case_000667_existsRows :
    ExistsEqEqPosVarFirstRows case_000667_rank.val case_000667_mask :=
  ⟨case_000667_support, case_000667_sourceAgrees, case_000667_rows⟩

private theorem case_000667_covered :
    RowPropertyParametricCovered case_000667_rank.val case_000667_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000667_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000668_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000668_mask : SignMask := ⟨39, by decide⟩
private def case_000668_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000668_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000668_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000668_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (100/9) }
private def case_000668_firstLine : StrictLin2 := { a := (-2/51), b := (-2/51), c := (-32/17) }
private def case_000668_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000668_rankWord :
    rankPairWord? case_000668_word = some case_000668_rank := by
  decide

private theorem case_000668_unrank :
    unrankPairWord case_000668_rank = case_000668_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000668_word case_000668_rank).1
    case_000668_rankWord |>.symm

private theorem case_000668_seqChoice :
    translationChoiceSeq case_000668_word case_000668_mask = case_000668_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000668_seqAtRank :
    translationSeqAtRankMask case_000668_rank case_000668_mask = case_000668_seq := by
  rw [translationSeqAtRankMask, case_000668_unrank]
  exact case_000668_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000668_bAtRank :
    translationBAtRankMask case_000668_rank case_000668_mask = case_000668_b := by
  rw [translationBAtRankMask, case_000668_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000668_b, case_000668_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000668_firstLine_eq :
    case_000668_support.firstLine case_000668_seq case_000668_b = case_000668_firstLine := by
  norm_num [case_000668_firstLine, case_000668_support, case_000668_seq, case_000668_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000668_secondLine_eq :
    case_000668_support.secondLine case_000668_seq case_000668_b = case_000668_secondLine := by
  norm_num [case_000668_secondLine, case_000668_support, case_000668_seq, case_000668_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000668_sourceAgrees :
    SourceAgrees case_000668_support case_000668_rank.val case_000668_mask := by
  intro hlt
  have hrank : (⟨case_000668_rank.val, hlt⟩ : Fin numPairWords) = case_000668_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000668_rank.val, hlt⟩ case_000668_mask =
        case_000668_seq := by
    simpa [hrank] using case_000668_seqAtRank
  simp [SourceChecks, hseq, case_000668_support,
    checkTranslationConstraintSource, case_000668_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000668_rows :
    EqEqPosVarFirstRows case_000668_support case_000668_rank.val case_000668_mask := by
  intro hlt
  have hrank : (⟨case_000668_rank.val, hlt⟩ : Fin numPairWords) = case_000668_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000668_rank.val, hlt⟩ case_000668_mask =
        case_000668_seq := by
    simpa [hrank] using case_000668_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000668_rank.val, hlt⟩ case_000668_mask =
        case_000668_b := by
    simpa [hrank] using case_000668_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000668_support case_000668_rank.val hlt
          case_000668_mask = case_000668_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000668_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000668_support case_000668_rank.val hlt
          case_000668_mask = case_000668_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000668_secondLine_eq]
  have case_000668_rowFirst :
      EqEqPosRow (FirstLineAt case_000668_support case_000668_rank.val hlt case_000668_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000668_firstLine, EqEqPosRow]
  have case_000668_fixedSecond :
      FixedRow (SecondLineAt case_000668_support case_000668_rank.val hlt case_000668_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000668_secondLine, FixedRow]
  exact ⟨case_000668_rowFirst, case_000668_fixedSecond⟩

private theorem case_000668_existsRows :
    ExistsEqEqPosVarFirstRows case_000668_rank.val case_000668_mask :=
  ⟨case_000668_support, case_000668_sourceAgrees, case_000668_rows⟩

private theorem case_000668_covered :
    RowPropertyParametricCovered case_000668_rank.val case_000668_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000668_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000669_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000669_mask : SignMask := ⟨47, by decide⟩
private def case_000669_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000669_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000669_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000669_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000669_firstLine : StrictLin2 := { a := (-5/3), b := (-5/3), c := -23 }
private def case_000669_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000669_rankWord :
    rankPairWord? case_000669_word = some case_000669_rank := by
  decide

private theorem case_000669_unrank :
    unrankPairWord case_000669_rank = case_000669_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000669_word case_000669_rank).1
    case_000669_rankWord |>.symm

private theorem case_000669_seqChoice :
    translationChoiceSeq case_000669_word case_000669_mask = case_000669_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000669_seqAtRank :
    translationSeqAtRankMask case_000669_rank case_000669_mask = case_000669_seq := by
  rw [translationSeqAtRankMask, case_000669_unrank]
  exact case_000669_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000669_bAtRank :
    translationBAtRankMask case_000669_rank case_000669_mask = case_000669_b := by
  rw [translationBAtRankMask, case_000669_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000669_b, case_000669_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000669_firstLine_eq :
    case_000669_support.firstLine case_000669_seq case_000669_b = case_000669_firstLine := by
  norm_num [case_000669_firstLine, case_000669_support, case_000669_seq, case_000669_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000669_secondLine_eq :
    case_000669_support.secondLine case_000669_seq case_000669_b = case_000669_secondLine := by
  norm_num [case_000669_secondLine, case_000669_support, case_000669_seq, case_000669_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000669_sourceAgrees :
    SourceAgrees case_000669_support case_000669_rank.val case_000669_mask := by
  intro hlt
  have hrank : (⟨case_000669_rank.val, hlt⟩ : Fin numPairWords) = case_000669_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000669_rank.val, hlt⟩ case_000669_mask =
        case_000669_seq := by
    simpa [hrank] using case_000669_seqAtRank
  simp [SourceChecks, hseq, case_000669_support,
    checkTranslationConstraintSource, case_000669_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000669_rows :
    EqEqPosVarFirstRows case_000669_support case_000669_rank.val case_000669_mask := by
  intro hlt
  have hrank : (⟨case_000669_rank.val, hlt⟩ : Fin numPairWords) = case_000669_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000669_rank.val, hlt⟩ case_000669_mask =
        case_000669_seq := by
    simpa [hrank] using case_000669_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000669_rank.val, hlt⟩ case_000669_mask =
        case_000669_b := by
    simpa [hrank] using case_000669_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000669_support case_000669_rank.val hlt
          case_000669_mask = case_000669_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000669_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000669_support case_000669_rank.val hlt
          case_000669_mask = case_000669_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000669_secondLine_eq]
  have case_000669_rowFirst :
      EqEqPosRow (FirstLineAt case_000669_support case_000669_rank.val hlt case_000669_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000669_firstLine, EqEqPosRow]
  have case_000669_fixedSecond :
      FixedRow (SecondLineAt case_000669_support case_000669_rank.val hlt case_000669_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000669_secondLine, FixedRow]
  exact ⟨case_000669_rowFirst, case_000669_fixedSecond⟩

private theorem case_000669_existsRows :
    ExistsEqEqPosVarFirstRows case_000669_rank.val case_000669_mask :=
  ⟨case_000669_support, case_000669_sourceAgrees, case_000669_rows⟩

private theorem case_000669_covered :
    RowPropertyParametricCovered case_000669_rank.val case_000669_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000669_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000670_rank : Fin numPairWords := ⟨389, by decide⟩
private def case_000670_mask : SignMask := ⟨55, by decide⟩
private def case_000670_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d111], by decide⟩
private def case_000670_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000670_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000670_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000670_firstLine : StrictLin2 := { a := (-10/39), b := (-10/39), c := (-16/13) }
private def case_000670_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000670_rankWord :
    rankPairWord? case_000670_word = some case_000670_rank := by
  decide

private theorem case_000670_unrank :
    unrankPairWord case_000670_rank = case_000670_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000670_word case_000670_rank).1
    case_000670_rankWord |>.symm

private theorem case_000670_seqChoice :
    translationChoiceSeq case_000670_word case_000670_mask = case_000670_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000670_seqAtRank :
    translationSeqAtRankMask case_000670_rank case_000670_mask = case_000670_seq := by
  rw [translationSeqAtRankMask, case_000670_unrank]
  exact case_000670_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000670_bAtRank :
    translationBAtRankMask case_000670_rank case_000670_mask = case_000670_b := by
  rw [translationBAtRankMask, case_000670_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000670_b, case_000670_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000670_firstLine_eq :
    case_000670_support.firstLine case_000670_seq case_000670_b = case_000670_firstLine := by
  norm_num [case_000670_firstLine, case_000670_support, case_000670_seq, case_000670_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000670_secondLine_eq :
    case_000670_support.secondLine case_000670_seq case_000670_b = case_000670_secondLine := by
  norm_num [case_000670_secondLine, case_000670_support, case_000670_seq, case_000670_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000670_sourceAgrees :
    SourceAgrees case_000670_support case_000670_rank.val case_000670_mask := by
  intro hlt
  have hrank : (⟨case_000670_rank.val, hlt⟩ : Fin numPairWords) = case_000670_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000670_rank.val, hlt⟩ case_000670_mask =
        case_000670_seq := by
    simpa [hrank] using case_000670_seqAtRank
  simp [SourceChecks, hseq, case_000670_support,
    checkTranslationConstraintSource, case_000670_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000670_rows :
    EqEqPosVarFirstRows case_000670_support case_000670_rank.val case_000670_mask := by
  intro hlt
  have hrank : (⟨case_000670_rank.val, hlt⟩ : Fin numPairWords) = case_000670_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000670_rank.val, hlt⟩ case_000670_mask =
        case_000670_seq := by
    simpa [hrank] using case_000670_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000670_rank.val, hlt⟩ case_000670_mask =
        case_000670_b := by
    simpa [hrank] using case_000670_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000670_support case_000670_rank.val hlt
          case_000670_mask = case_000670_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000670_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000670_support case_000670_rank.val hlt
          case_000670_mask = case_000670_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000670_secondLine_eq]
  have case_000670_rowFirst :
      EqEqPosRow (FirstLineAt case_000670_support case_000670_rank.val hlt case_000670_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000670_firstLine, EqEqPosRow]
  have case_000670_fixedSecond :
      FixedRow (SecondLineAt case_000670_support case_000670_rank.val hlt case_000670_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000670_secondLine, FixedRow]
  exact ⟨case_000670_rowFirst, case_000670_fixedSecond⟩

private theorem case_000670_existsRows :
    ExistsEqEqPosVarFirstRows case_000670_rank.val case_000670_mask :=
  ⟨case_000670_support, case_000670_sourceAgrees, case_000670_rows⟩

private theorem case_000670_covered :
    RowPropertyParametricCovered case_000670_rank.val case_000670_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000670_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000671_rank : Fin numPairWords := ⟨413, by decide⟩
private def case_000671_mask : SignMask := ⟨5, by decide⟩
private def case_000671_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000671_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000671_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000671_b : Vec3 Rat := { x := (-868/81), y := (1348/81), z := (-68/81) }
private def case_000671_firstLine : StrictLin2 := { a := 1, b := -1, c := (-491/217) }
private def case_000671_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000671_rankWord :
    rankPairWord? case_000671_word = some case_000671_rank := by
  decide

private theorem case_000671_unrank :
    unrankPairWord case_000671_rank = case_000671_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000671_word case_000671_rank).1
    case_000671_rankWord |>.symm

private theorem case_000671_seqChoice :
    translationChoiceSeq case_000671_word case_000671_mask = case_000671_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000671_seqAtRank :
    translationSeqAtRankMask case_000671_rank case_000671_mask = case_000671_seq := by
  rw [translationSeqAtRankMask, case_000671_unrank]
  exact case_000671_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000671_bAtRank :
    translationBAtRankMask case_000671_rank case_000671_mask = case_000671_b := by
  rw [translationBAtRankMask, case_000671_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000671_b, case_000671_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000671_firstLine_eq :
    case_000671_support.firstLine case_000671_seq case_000671_b = case_000671_firstLine := by
  norm_num [case_000671_firstLine, case_000671_support, case_000671_seq, case_000671_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000671_secondLine_eq :
    case_000671_support.secondLine case_000671_seq case_000671_b = case_000671_secondLine := by
  norm_num [case_000671_secondLine, case_000671_support, case_000671_seq, case_000671_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000671_sourceAgrees :
    SourceAgrees case_000671_support case_000671_rank.val case_000671_mask := by
  intro hlt
  have hrank : (⟨case_000671_rank.val, hlt⟩ : Fin numPairWords) = case_000671_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000671_rank.val, hlt⟩ case_000671_mask =
        case_000671_seq := by
    simpa [hrank] using case_000671_seqAtRank
  simp [SourceChecks, hseq, case_000671_support,
    checkTranslationConstraintSource, case_000671_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000671_rows :
    OppMinusOneVarFirstRows case_000671_support case_000671_rank.val case_000671_mask := by
  intro hlt
  have hrank : (⟨case_000671_rank.val, hlt⟩ : Fin numPairWords) = case_000671_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000671_rank.val, hlt⟩ case_000671_mask =
        case_000671_seq := by
    simpa [hrank] using case_000671_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000671_rank.val, hlt⟩ case_000671_mask =
        case_000671_b := by
    simpa [hrank] using case_000671_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000671_support case_000671_rank.val hlt
          case_000671_mask = case_000671_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000671_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000671_support case_000671_rank.val hlt
          case_000671_mask = case_000671_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000671_secondLine_eq]
  have case_000671_rowFirst :
      OppNegRow (FirstLineAt case_000671_support case_000671_rank.val hlt case_000671_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000671_firstLine, OppNegRow]
  have case_000671_fixedSecond :
      FixedRow (SecondLineAt case_000671_support case_000671_rank.val hlt case_000671_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000671_secondLine, FixedRow]
  exact ⟨case_000671_rowFirst, case_000671_fixedSecond⟩

private theorem case_000671_existsRows :
    ExistsOppMinusOneVarFirstRows case_000671_rank.val case_000671_mask :=
  ⟨case_000671_support, case_000671_sourceAgrees, case_000671_rows⟩

private theorem case_000671_covered :
    RowPropertyParametricCovered case_000671_rank.val case_000671_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000671_existsRows

inductive Group020Covered : Nat -> SignMask -> Prop
  | case_000640 : Group020Covered case_000640_rank.val case_000640_mask
  | case_000641 : Group020Covered case_000641_rank.val case_000641_mask
  | case_000642 : Group020Covered case_000642_rank.val case_000642_mask
  | case_000643 : Group020Covered case_000643_rank.val case_000643_mask
  | case_000644 : Group020Covered case_000644_rank.val case_000644_mask
  | case_000645 : Group020Covered case_000645_rank.val case_000645_mask
  | case_000646 : Group020Covered case_000646_rank.val case_000646_mask
  | case_000647 : Group020Covered case_000647_rank.val case_000647_mask
  | case_000648 : Group020Covered case_000648_rank.val case_000648_mask
  | case_000649 : Group020Covered case_000649_rank.val case_000649_mask
  | case_000650 : Group020Covered case_000650_rank.val case_000650_mask
  | case_000651 : Group020Covered case_000651_rank.val case_000651_mask
  | case_000652 : Group020Covered case_000652_rank.val case_000652_mask
  | case_000653 : Group020Covered case_000653_rank.val case_000653_mask
  | case_000654 : Group020Covered case_000654_rank.val case_000654_mask
  | case_000655 : Group020Covered case_000655_rank.val case_000655_mask
  | case_000656 : Group020Covered case_000656_rank.val case_000656_mask
  | case_000657 : Group020Covered case_000657_rank.val case_000657_mask
  | case_000658 : Group020Covered case_000658_rank.val case_000658_mask
  | case_000659 : Group020Covered case_000659_rank.val case_000659_mask
  | case_000660 : Group020Covered case_000660_rank.val case_000660_mask
  | case_000661 : Group020Covered case_000661_rank.val case_000661_mask
  | case_000662 : Group020Covered case_000662_rank.val case_000662_mask
  | case_000663 : Group020Covered case_000663_rank.val case_000663_mask
  | case_000664 : Group020Covered case_000664_rank.val case_000664_mask
  | case_000665 : Group020Covered case_000665_rank.val case_000665_mask
  | case_000666 : Group020Covered case_000666_rank.val case_000666_mask
  | case_000667 : Group020Covered case_000667_rank.val case_000667_mask
  | case_000668 : Group020Covered case_000668_rank.val case_000668_mask
  | case_000669 : Group020Covered case_000669_rank.val case_000669_mask
  | case_000670 : Group020Covered case_000670_rank.val case_000670_mask
  | case_000671 : Group020Covered case_000671_rank.val case_000671_mask

theorem Group020GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group020Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000640 =>
      exact RowPropertyParametricCovered.kills case_000640_covered
  | case_000641 =>
      exact RowPropertyParametricCovered.kills case_000641_covered
  | case_000642 =>
      exact RowPropertyParametricCovered.kills case_000642_covered
  | case_000643 =>
      exact RowPropertyParametricCovered.kills case_000643_covered
  | case_000644 =>
      exact RowPropertyParametricCovered.kills case_000644_covered
  | case_000645 =>
      exact RowPropertyParametricCovered.kills case_000645_covered
  | case_000646 =>
      exact RowPropertyParametricCovered.kills case_000646_covered
  | case_000647 =>
      exact RowPropertyParametricCovered.kills case_000647_covered
  | case_000648 =>
      exact RowPropertyParametricCovered.kills case_000648_covered
  | case_000649 =>
      exact RowPropertyParametricCovered.kills case_000649_covered
  | case_000650 =>
      exact RowPropertyParametricCovered.kills case_000650_covered
  | case_000651 =>
      exact RowPropertyParametricCovered.kills case_000651_covered
  | case_000652 =>
      exact RowPropertyParametricCovered.kills case_000652_covered
  | case_000653 =>
      exact RowPropertyParametricCovered.kills case_000653_covered
  | case_000654 =>
      exact RowPropertyParametricCovered.kills case_000654_covered
  | case_000655 =>
      exact RowPropertyParametricCovered.kills case_000655_covered
  | case_000656 =>
      exact RowPropertyParametricCovered.kills case_000656_covered
  | case_000657 =>
      exact RowPropertyParametricCovered.kills case_000657_covered
  | case_000658 =>
      exact RowPropertyParametricCovered.kills case_000658_covered
  | case_000659 =>
      exact RowPropertyParametricCovered.kills case_000659_covered
  | case_000660 =>
      exact RowPropertyParametricCovered.kills case_000660_covered
  | case_000661 =>
      exact RowPropertyParametricCovered.kills case_000661_covered
  | case_000662 =>
      exact RowPropertyParametricCovered.kills case_000662_covered
  | case_000663 =>
      exact RowPropertyParametricCovered.kills case_000663_covered
  | case_000664 =>
      exact RowPropertyParametricCovered.kills case_000664_covered
  | case_000665 =>
      exact RowPropertyParametricCovered.kills case_000665_covered
  | case_000666 =>
      exact RowPropertyParametricCovered.kills case_000666_covered
  | case_000667 =>
      exact RowPropertyParametricCovered.kills case_000667_covered
  | case_000668 =>
      exact RowPropertyParametricCovered.kills case_000668_covered
  | case_000669 =>
      exact RowPropertyParametricCovered.kills case_000669_covered
  | case_000670 =>
      exact RowPropertyParametricCovered.kills case_000670_covered
  | case_000671 =>
      exact RowPropertyParametricCovered.kills case_000671_covered

theorem Group020_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group020
