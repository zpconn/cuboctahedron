import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group022

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
private def case_000704_rank : Fin numPairWords := ⟨498, by decide⟩
private def case_000704_mask : SignMask := ⟨0, by decide⟩
private def case_000704_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000704_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000704_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000704_b : Vec3 Rat := { x := (-268/27), y := (-140/27), z := (-140/27) }
private def case_000704_firstLine : StrictLin2 := { a := -1, b := -1, c := (-73/67) }
private def case_000704_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000704_rankWord :
    rankPairWord? case_000704_word = some case_000704_rank := by
  decide

private theorem case_000704_unrank :
    unrankPairWord case_000704_rank = case_000704_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000704_word case_000704_rank).1
    case_000704_rankWord |>.symm

private theorem case_000704_seqChoice :
    translationChoiceSeq case_000704_word case_000704_mask = case_000704_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000704_seqAtRank :
    translationSeqAtRankMask case_000704_rank case_000704_mask = case_000704_seq := by
  rw [translationSeqAtRankMask, case_000704_unrank]
  exact case_000704_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000704_bAtRank :
    translationBAtRankMask case_000704_rank case_000704_mask = case_000704_b := by
  rw [translationBAtRankMask, case_000704_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000704_b, case_000704_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000704_firstLine_eq :
    case_000704_support.firstLine case_000704_seq case_000704_b = case_000704_firstLine := by
  norm_num [case_000704_firstLine, case_000704_support, case_000704_seq, case_000704_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000704_secondLine_eq :
    case_000704_support.secondLine case_000704_seq case_000704_b = case_000704_secondLine := by
  norm_num [case_000704_secondLine, case_000704_support, case_000704_seq, case_000704_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000704_sourceAgrees :
    SourceAgrees case_000704_support case_000704_rank.val case_000704_mask := by
  intro hlt
  have hrank : (⟨case_000704_rank.val, hlt⟩ : Fin numPairWords) = case_000704_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000704_rank.val, hlt⟩ case_000704_mask =
        case_000704_seq := by
    simpa [hrank] using case_000704_seqAtRank
  simp [SourceChecks, hseq, case_000704_support,
    checkTranslationConstraintSource, case_000704_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000704_rows :
    EqEqPosVarFirstRows case_000704_support case_000704_rank.val case_000704_mask := by
  intro hlt
  have hrank : (⟨case_000704_rank.val, hlt⟩ : Fin numPairWords) = case_000704_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000704_rank.val, hlt⟩ case_000704_mask =
        case_000704_seq := by
    simpa [hrank] using case_000704_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000704_rank.val, hlt⟩ case_000704_mask =
        case_000704_b := by
    simpa [hrank] using case_000704_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000704_support case_000704_rank.val hlt
          case_000704_mask = case_000704_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000704_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000704_support case_000704_rank.val hlt
          case_000704_mask = case_000704_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000704_secondLine_eq]
  have case_000704_rowFirst :
      EqEqPosRow (FirstLineAt case_000704_support case_000704_rank.val hlt case_000704_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000704_firstLine, EqEqPosRow]
  have case_000704_fixedSecond :
      FixedRow (SecondLineAt case_000704_support case_000704_rank.val hlt case_000704_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000704_secondLine, FixedRow]
  exact ⟨case_000704_rowFirst, case_000704_fixedSecond⟩

private theorem case_000704_existsRows :
    ExistsEqEqPosVarFirstRows case_000704_rank.val case_000704_mask :=
  ⟨case_000704_support, case_000704_sourceAgrees, case_000704_rows⟩

private theorem case_000704_covered :
    RowPropertyParametricCovered case_000704_rank.val case_000704_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000704_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000705_rank : Fin numPairWords := ⟨498, by decide⟩
private def case_000705_mask : SignMask := ⟨7, by decide⟩
private def case_000705_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000705_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000705_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000705_b : Vec3 Rat := { x := (-412/27), y := (220/27), z := (220/27) }
private def case_000705_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000705_secondLine : StrictLin2 := { a := (-103/2130), b := (-103/2130), c := (-137/1065) }

private theorem case_000705_rankWord :
    rankPairWord? case_000705_word = some case_000705_rank := by
  decide

private theorem case_000705_unrank :
    unrankPairWord case_000705_rank = case_000705_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000705_word case_000705_rank).1
    case_000705_rankWord |>.symm

private theorem case_000705_seqChoice :
    translationChoiceSeq case_000705_word case_000705_mask = case_000705_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000705_seqAtRank :
    translationSeqAtRankMask case_000705_rank case_000705_mask = case_000705_seq := by
  rw [translationSeqAtRankMask, case_000705_unrank]
  exact case_000705_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000705_bAtRank :
    translationBAtRankMask case_000705_rank case_000705_mask = case_000705_b := by
  rw [translationBAtRankMask, case_000705_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000705_b, case_000705_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000705_firstLine_eq :
    case_000705_support.firstLine case_000705_seq case_000705_b = case_000705_firstLine := by
  norm_num [case_000705_firstLine, case_000705_support, case_000705_seq, case_000705_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000705_secondLine_eq :
    case_000705_support.secondLine case_000705_seq case_000705_b = case_000705_secondLine := by
  norm_num [case_000705_secondLine, case_000705_support, case_000705_seq, case_000705_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000705_sourceAgrees :
    SourceAgrees case_000705_support case_000705_rank.val case_000705_mask := by
  intro hlt
  have hrank : (⟨case_000705_rank.val, hlt⟩ : Fin numPairWords) = case_000705_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000705_rank.val, hlt⟩ case_000705_mask =
        case_000705_seq := by
    simpa [hrank] using case_000705_seqAtRank
  simp [SourceChecks, hseq, case_000705_support,
    checkTranslationConstraintSource, case_000705_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000705_rows :
    EqEqPosVarSecondRows case_000705_support case_000705_rank.val case_000705_mask := by
  intro hlt
  have hrank : (⟨case_000705_rank.val, hlt⟩ : Fin numPairWords) = case_000705_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000705_rank.val, hlt⟩ case_000705_mask =
        case_000705_seq := by
    simpa [hrank] using case_000705_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000705_rank.val, hlt⟩ case_000705_mask =
        case_000705_b := by
    simpa [hrank] using case_000705_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000705_support case_000705_rank.val hlt
          case_000705_mask = case_000705_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000705_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000705_support case_000705_rank.val hlt
          case_000705_mask = case_000705_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000705_secondLine_eq]
  have case_000705_fixedFirst :
      FixedRow (FirstLineAt case_000705_support case_000705_rank.val hlt case_000705_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000705_firstLine, FixedRow]
  have case_000705_rowSecond :
      EqEqPosRow (SecondLineAt case_000705_support case_000705_rank.val hlt case_000705_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000705_secondLine, EqEqPosRow]
  exact ⟨case_000705_fixedFirst, case_000705_rowSecond⟩

private theorem case_000705_existsRows :
    ExistsEqEqPosVarSecondRows case_000705_rank.val case_000705_mask :=
  ⟨case_000705_support, case_000705_sourceAgrees, case_000705_rows⟩

private theorem case_000705_covered :
    RowPropertyParametricCovered case_000705_rank.val case_000705_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000705_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000706_rank : Fin numPairWords := ⟨498, by decide⟩
private def case_000706_mask : SignMask := ⟨8, by decide⟩
private def case_000706_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000706_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000706_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000706_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-116/9) }
private def case_000706_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/13) }
private def case_000706_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000706_rankWord :
    rankPairWord? case_000706_word = some case_000706_rank := by
  decide

private theorem case_000706_unrank :
    unrankPairWord case_000706_rank = case_000706_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000706_word case_000706_rank).1
    case_000706_rankWord |>.symm

private theorem case_000706_seqChoice :
    translationChoiceSeq case_000706_word case_000706_mask = case_000706_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000706_seqAtRank :
    translationSeqAtRankMask case_000706_rank case_000706_mask = case_000706_seq := by
  rw [translationSeqAtRankMask, case_000706_unrank]
  exact case_000706_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000706_bAtRank :
    translationBAtRankMask case_000706_rank case_000706_mask = case_000706_b := by
  rw [translationBAtRankMask, case_000706_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000706_b, case_000706_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000706_firstLine_eq :
    case_000706_support.firstLine case_000706_seq case_000706_b = case_000706_firstLine := by
  norm_num [case_000706_firstLine, case_000706_support, case_000706_seq, case_000706_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000706_secondLine_eq :
    case_000706_support.secondLine case_000706_seq case_000706_b = case_000706_secondLine := by
  norm_num [case_000706_secondLine, case_000706_support, case_000706_seq, case_000706_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000706_sourceAgrees :
    SourceAgrees case_000706_support case_000706_rank.val case_000706_mask := by
  intro hlt
  have hrank : (⟨case_000706_rank.val, hlt⟩ : Fin numPairWords) = case_000706_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000706_rank.val, hlt⟩ case_000706_mask =
        case_000706_seq := by
    simpa [hrank] using case_000706_seqAtRank
  simp [SourceChecks, hseq, case_000706_support,
    checkTranslationConstraintSource, case_000706_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000706_rows :
    EqEqPosVarFirstRows case_000706_support case_000706_rank.val case_000706_mask := by
  intro hlt
  have hrank : (⟨case_000706_rank.val, hlt⟩ : Fin numPairWords) = case_000706_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000706_rank.val, hlt⟩ case_000706_mask =
        case_000706_seq := by
    simpa [hrank] using case_000706_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000706_rank.val, hlt⟩ case_000706_mask =
        case_000706_b := by
    simpa [hrank] using case_000706_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000706_support case_000706_rank.val hlt
          case_000706_mask = case_000706_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000706_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000706_support case_000706_rank.val hlt
          case_000706_mask = case_000706_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000706_secondLine_eq]
  have case_000706_rowFirst :
      EqEqPosRow (FirstLineAt case_000706_support case_000706_rank.val hlt case_000706_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000706_firstLine, EqEqPosRow]
  have case_000706_fixedSecond :
      FixedRow (SecondLineAt case_000706_support case_000706_rank.val hlt case_000706_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000706_secondLine, FixedRow]
  exact ⟨case_000706_rowFirst, case_000706_fixedSecond⟩

private theorem case_000706_existsRows :
    ExistsEqEqPosVarFirstRows case_000706_rank.val case_000706_mask :=
  ⟨case_000706_support, case_000706_sourceAgrees, case_000706_rows⟩

private theorem case_000706_covered :
    RowPropertyParametricCovered case_000706_rank.val case_000706_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000706_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000707_rank : Fin numPairWords := ⟨498, by decide⟩
private def case_000707_mask : SignMask := ⟨9, by decide⟩
private def case_000707_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000707_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000707_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000707_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000707_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000707_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000707_rankWord :
    rankPairWord? case_000707_word = some case_000707_rank := by
  decide

private theorem case_000707_unrank :
    unrankPairWord case_000707_rank = case_000707_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000707_word case_000707_rank).1
    case_000707_rankWord |>.symm

private theorem case_000707_seqChoice :
    translationChoiceSeq case_000707_word case_000707_mask = case_000707_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000707_seqAtRank :
    translationSeqAtRankMask case_000707_rank case_000707_mask = case_000707_seq := by
  rw [translationSeqAtRankMask, case_000707_unrank]
  exact case_000707_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000707_bAtRank :
    translationBAtRankMask case_000707_rank case_000707_mask = case_000707_b := by
  rw [translationBAtRankMask, case_000707_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000707_b, case_000707_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000707_firstLine_eq :
    case_000707_support.firstLine case_000707_seq case_000707_b = case_000707_firstLine := by
  norm_num [case_000707_firstLine, case_000707_support, case_000707_seq, case_000707_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000707_secondLine_eq :
    case_000707_support.secondLine case_000707_seq case_000707_b = case_000707_secondLine := by
  norm_num [case_000707_secondLine, case_000707_support, case_000707_seq, case_000707_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000707_sourceAgrees :
    SourceAgrees case_000707_support case_000707_rank.val case_000707_mask := by
  intro hlt
  have hrank : (⟨case_000707_rank.val, hlt⟩ : Fin numPairWords) = case_000707_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000707_rank.val, hlt⟩ case_000707_mask =
        case_000707_seq := by
    simpa [hrank] using case_000707_seqAtRank
  simp [SourceChecks, hseq, case_000707_support,
    checkTranslationConstraintSource, case_000707_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000707_rows :
    EqEqPosVarFirstRows case_000707_support case_000707_rank.val case_000707_mask := by
  intro hlt
  have hrank : (⟨case_000707_rank.val, hlt⟩ : Fin numPairWords) = case_000707_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000707_rank.val, hlt⟩ case_000707_mask =
        case_000707_seq := by
    simpa [hrank] using case_000707_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000707_rank.val, hlt⟩ case_000707_mask =
        case_000707_b := by
    simpa [hrank] using case_000707_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000707_support case_000707_rank.val hlt
          case_000707_mask = case_000707_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000707_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000707_support case_000707_rank.val hlt
          case_000707_mask = case_000707_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000707_secondLine_eq]
  have case_000707_rowFirst :
      EqEqPosRow (FirstLineAt case_000707_support case_000707_rank.val hlt case_000707_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000707_firstLine, EqEqPosRow]
  have case_000707_fixedSecond :
      FixedRow (SecondLineAt case_000707_support case_000707_rank.val hlt case_000707_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000707_secondLine, FixedRow]
  exact ⟨case_000707_rowFirst, case_000707_fixedSecond⟩

private theorem case_000707_existsRows :
    ExistsEqEqPosVarFirstRows case_000707_rank.val case_000707_mask :=
  ⟨case_000707_support, case_000707_sourceAgrees, case_000707_rows⟩

private theorem case_000707_covered :
    RowPropertyParametricCovered case_000707_rank.val case_000707_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000707_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000708_rank : Fin numPairWords := ⟨498, by decide⟩
private def case_000708_mask : SignMask := ⟨13, by decide⟩
private def case_000708_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000708_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000708_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000708_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000708_firstLine : StrictLin2 := { a := 1, b := -1, c := (-59/25) }
private def case_000708_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000708_rankWord :
    rankPairWord? case_000708_word = some case_000708_rank := by
  decide

private theorem case_000708_unrank :
    unrankPairWord case_000708_rank = case_000708_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000708_word case_000708_rank).1
    case_000708_rankWord |>.symm

private theorem case_000708_seqChoice :
    translationChoiceSeq case_000708_word case_000708_mask = case_000708_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000708_seqAtRank :
    translationSeqAtRankMask case_000708_rank case_000708_mask = case_000708_seq := by
  rw [translationSeqAtRankMask, case_000708_unrank]
  exact case_000708_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000708_bAtRank :
    translationBAtRankMask case_000708_rank case_000708_mask = case_000708_b := by
  rw [translationBAtRankMask, case_000708_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000708_b, case_000708_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000708_firstLine_eq :
    case_000708_support.firstLine case_000708_seq case_000708_b = case_000708_firstLine := by
  norm_num [case_000708_firstLine, case_000708_support, case_000708_seq, case_000708_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000708_secondLine_eq :
    case_000708_support.secondLine case_000708_seq case_000708_b = case_000708_secondLine := by
  norm_num [case_000708_secondLine, case_000708_support, case_000708_seq, case_000708_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000708_sourceAgrees :
    SourceAgrees case_000708_support case_000708_rank.val case_000708_mask := by
  intro hlt
  have hrank : (⟨case_000708_rank.val, hlt⟩ : Fin numPairWords) = case_000708_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000708_rank.val, hlt⟩ case_000708_mask =
        case_000708_seq := by
    simpa [hrank] using case_000708_seqAtRank
  simp [SourceChecks, hseq, case_000708_support,
    checkTranslationConstraintSource, case_000708_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000708_rows :
    OppMinusOneVarFirstRows case_000708_support case_000708_rank.val case_000708_mask := by
  intro hlt
  have hrank : (⟨case_000708_rank.val, hlt⟩ : Fin numPairWords) = case_000708_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000708_rank.val, hlt⟩ case_000708_mask =
        case_000708_seq := by
    simpa [hrank] using case_000708_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000708_rank.val, hlt⟩ case_000708_mask =
        case_000708_b := by
    simpa [hrank] using case_000708_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000708_support case_000708_rank.val hlt
          case_000708_mask = case_000708_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000708_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000708_support case_000708_rank.val hlt
          case_000708_mask = case_000708_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000708_secondLine_eq]
  have case_000708_rowFirst :
      OppNegRow (FirstLineAt case_000708_support case_000708_rank.val hlt case_000708_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000708_firstLine, OppNegRow]
  have case_000708_fixedSecond :
      FixedRow (SecondLineAt case_000708_support case_000708_rank.val hlt case_000708_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000708_secondLine, FixedRow]
  exact ⟨case_000708_rowFirst, case_000708_fixedSecond⟩

private theorem case_000708_existsRows :
    ExistsOppMinusOneVarFirstRows case_000708_rank.val case_000708_mask :=
  ⟨case_000708_support, case_000708_sourceAgrees, case_000708_rows⟩

private theorem case_000708_covered :
    RowPropertyParametricCovered case_000708_rank.val case_000708_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000708_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000709_rank : Fin numPairWords := ⟨498, by decide⟩
private def case_000709_mask : SignMask := ⟨16, by decide⟩
private def case_000709_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000709_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000709_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000709_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-20/9) }
private def case_000709_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/13) }
private def case_000709_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000709_rankWord :
    rankPairWord? case_000709_word = some case_000709_rank := by
  decide

private theorem case_000709_unrank :
    unrankPairWord case_000709_rank = case_000709_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000709_word case_000709_rank).1
    case_000709_rankWord |>.symm

private theorem case_000709_seqChoice :
    translationChoiceSeq case_000709_word case_000709_mask = case_000709_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000709_seqAtRank :
    translationSeqAtRankMask case_000709_rank case_000709_mask = case_000709_seq := by
  rw [translationSeqAtRankMask, case_000709_unrank]
  exact case_000709_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000709_bAtRank :
    translationBAtRankMask case_000709_rank case_000709_mask = case_000709_b := by
  rw [translationBAtRankMask, case_000709_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000709_b, case_000709_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000709_firstLine_eq :
    case_000709_support.firstLine case_000709_seq case_000709_b = case_000709_firstLine := by
  norm_num [case_000709_firstLine, case_000709_support, case_000709_seq, case_000709_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000709_secondLine_eq :
    case_000709_support.secondLine case_000709_seq case_000709_b = case_000709_secondLine := by
  norm_num [case_000709_secondLine, case_000709_support, case_000709_seq, case_000709_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000709_sourceAgrees :
    SourceAgrees case_000709_support case_000709_rank.val case_000709_mask := by
  intro hlt
  have hrank : (⟨case_000709_rank.val, hlt⟩ : Fin numPairWords) = case_000709_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000709_rank.val, hlt⟩ case_000709_mask =
        case_000709_seq := by
    simpa [hrank] using case_000709_seqAtRank
  simp [SourceChecks, hseq, case_000709_support,
    checkTranslationConstraintSource, case_000709_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000709_rows :
    EqEqPosVarFirstRows case_000709_support case_000709_rank.val case_000709_mask := by
  intro hlt
  have hrank : (⟨case_000709_rank.val, hlt⟩ : Fin numPairWords) = case_000709_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000709_rank.val, hlt⟩ case_000709_mask =
        case_000709_seq := by
    simpa [hrank] using case_000709_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000709_rank.val, hlt⟩ case_000709_mask =
        case_000709_b := by
    simpa [hrank] using case_000709_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000709_support case_000709_rank.val hlt
          case_000709_mask = case_000709_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000709_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000709_support case_000709_rank.val hlt
          case_000709_mask = case_000709_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000709_secondLine_eq]
  have case_000709_rowFirst :
      EqEqPosRow (FirstLineAt case_000709_support case_000709_rank.val hlt case_000709_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000709_firstLine, EqEqPosRow]
  have case_000709_fixedSecond :
      FixedRow (SecondLineAt case_000709_support case_000709_rank.val hlt case_000709_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000709_secondLine, FixedRow]
  exact ⟨case_000709_rowFirst, case_000709_fixedSecond⟩

private theorem case_000709_existsRows :
    ExistsEqEqPosVarFirstRows case_000709_rank.val case_000709_mask :=
  ⟨case_000709_support, case_000709_sourceAgrees, case_000709_rows⟩

private theorem case_000709_covered :
    RowPropertyParametricCovered case_000709_rank.val case_000709_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000709_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000710_rank : Fin numPairWords := ⟨498, by decide⟩
private def case_000710_mask : SignMask := ⟨18, by decide⟩
private def case_000710_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000710_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000710_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000710_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000710_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000710_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000710_rankWord :
    rankPairWord? case_000710_word = some case_000710_rank := by
  decide

private theorem case_000710_unrank :
    unrankPairWord case_000710_rank = case_000710_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000710_word case_000710_rank).1
    case_000710_rankWord |>.symm

private theorem case_000710_seqChoice :
    translationChoiceSeq case_000710_word case_000710_mask = case_000710_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000710_seqAtRank :
    translationSeqAtRankMask case_000710_rank case_000710_mask = case_000710_seq := by
  rw [translationSeqAtRankMask, case_000710_unrank]
  exact case_000710_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000710_bAtRank :
    translationBAtRankMask case_000710_rank case_000710_mask = case_000710_b := by
  rw [translationBAtRankMask, case_000710_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000710_b, case_000710_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000710_firstLine_eq :
    case_000710_support.firstLine case_000710_seq case_000710_b = case_000710_firstLine := by
  norm_num [case_000710_firstLine, case_000710_support, case_000710_seq, case_000710_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000710_secondLine_eq :
    case_000710_support.secondLine case_000710_seq case_000710_b = case_000710_secondLine := by
  norm_num [case_000710_secondLine, case_000710_support, case_000710_seq, case_000710_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000710_sourceAgrees :
    SourceAgrees case_000710_support case_000710_rank.val case_000710_mask := by
  intro hlt
  have hrank : (⟨case_000710_rank.val, hlt⟩ : Fin numPairWords) = case_000710_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000710_rank.val, hlt⟩ case_000710_mask =
        case_000710_seq := by
    simpa [hrank] using case_000710_seqAtRank
  simp [SourceChecks, hseq, case_000710_support,
    checkTranslationConstraintSource, case_000710_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000710_rows :
    EqEqPosVarFirstRows case_000710_support case_000710_rank.val case_000710_mask := by
  intro hlt
  have hrank : (⟨case_000710_rank.val, hlt⟩ : Fin numPairWords) = case_000710_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000710_rank.val, hlt⟩ case_000710_mask =
        case_000710_seq := by
    simpa [hrank] using case_000710_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000710_rank.val, hlt⟩ case_000710_mask =
        case_000710_b := by
    simpa [hrank] using case_000710_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000710_support case_000710_rank.val hlt
          case_000710_mask = case_000710_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000710_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000710_support case_000710_rank.val hlt
          case_000710_mask = case_000710_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000710_secondLine_eq]
  have case_000710_rowFirst :
      EqEqPosRow (FirstLineAt case_000710_support case_000710_rank.val hlt case_000710_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000710_firstLine, EqEqPosRow]
  have case_000710_fixedSecond :
      FixedRow (SecondLineAt case_000710_support case_000710_rank.val hlt case_000710_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000710_secondLine, FixedRow]
  exact ⟨case_000710_rowFirst, case_000710_fixedSecond⟩

private theorem case_000710_existsRows :
    ExistsEqEqPosVarFirstRows case_000710_rank.val case_000710_mask :=
  ⟨case_000710_support, case_000710_sourceAgrees, case_000710_rows⟩

private theorem case_000710_covered :
    RowPropertyParametricCovered case_000710_rank.val case_000710_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000710_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000711_rank : Fin numPairWords := ⟨498, by decide⟩
private def case_000711_mask : SignMask := ⟨22, by decide⟩
private def case_000711_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000711_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000711_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000711_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000711_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_000711_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000711_rankWord :
    rankPairWord? case_000711_word = some case_000711_rank := by
  decide

private theorem case_000711_unrank :
    unrankPairWord case_000711_rank = case_000711_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000711_word case_000711_rank).1
    case_000711_rankWord |>.symm

private theorem case_000711_seqChoice :
    translationChoiceSeq case_000711_word case_000711_mask = case_000711_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000711_seqAtRank :
    translationSeqAtRankMask case_000711_rank case_000711_mask = case_000711_seq := by
  rw [translationSeqAtRankMask, case_000711_unrank]
  exact case_000711_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000711_bAtRank :
    translationBAtRankMask case_000711_rank case_000711_mask = case_000711_b := by
  rw [translationBAtRankMask, case_000711_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000711_b, case_000711_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000711_firstLine_eq :
    case_000711_support.firstLine case_000711_seq case_000711_b = case_000711_firstLine := by
  norm_num [case_000711_firstLine, case_000711_support, case_000711_seq, case_000711_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000711_secondLine_eq :
    case_000711_support.secondLine case_000711_seq case_000711_b = case_000711_secondLine := by
  norm_num [case_000711_secondLine, case_000711_support, case_000711_seq, case_000711_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000711_sourceAgrees :
    SourceAgrees case_000711_support case_000711_rank.val case_000711_mask := by
  intro hlt
  have hrank : (⟨case_000711_rank.val, hlt⟩ : Fin numPairWords) = case_000711_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000711_rank.val, hlt⟩ case_000711_mask =
        case_000711_seq := by
    simpa [hrank] using case_000711_seqAtRank
  simp [SourceChecks, hseq, case_000711_support,
    checkTranslationConstraintSource, case_000711_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000711_rows :
    OppOneMinusVarFirstRows case_000711_support case_000711_rank.val case_000711_mask := by
  intro hlt
  have hrank : (⟨case_000711_rank.val, hlt⟩ : Fin numPairWords) = case_000711_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000711_rank.val, hlt⟩ case_000711_mask =
        case_000711_seq := by
    simpa [hrank] using case_000711_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000711_rank.val, hlt⟩ case_000711_mask =
        case_000711_b := by
    simpa [hrank] using case_000711_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000711_support case_000711_rank.val hlt
          case_000711_mask = case_000711_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000711_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000711_support case_000711_rank.val hlt
          case_000711_mask = case_000711_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000711_secondLine_eq]
  have case_000711_rowFirst :
      OppPosRow (FirstLineAt case_000711_support case_000711_rank.val hlt case_000711_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000711_firstLine, OppPosRow]
  have case_000711_fixedSecond :
      FixedRow (SecondLineAt case_000711_support case_000711_rank.val hlt case_000711_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000711_secondLine, FixedRow]
  exact ⟨case_000711_rowFirst, case_000711_fixedSecond⟩

private theorem case_000711_existsRows :
    ExistsOppOneMinusVarFirstRows case_000711_rank.val case_000711_mask :=
  ⟨case_000711_support, case_000711_sourceAgrees, case_000711_rows⟩

private theorem case_000711_covered :
    RowPropertyParametricCovered case_000711_rank.val case_000711_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000711_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000712_rank : Fin numPairWords := ⟨498, by decide⟩
private def case_000712_mask : SignMask := ⟨24, by decide⟩
private def case_000712_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000712_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000712_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000712_b : Vec3 Rat := { x := (-44/27), y := (-268/27), z := (-268/27) }
private def case_000712_firstLine : StrictLin2 := { a := -1, b := -1, c := (-257/11) }
private def case_000712_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000712_rankWord :
    rankPairWord? case_000712_word = some case_000712_rank := by
  decide

private theorem case_000712_unrank :
    unrankPairWord case_000712_rank = case_000712_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000712_word case_000712_rank).1
    case_000712_rankWord |>.symm

private theorem case_000712_seqChoice :
    translationChoiceSeq case_000712_word case_000712_mask = case_000712_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000712_seqAtRank :
    translationSeqAtRankMask case_000712_rank case_000712_mask = case_000712_seq := by
  rw [translationSeqAtRankMask, case_000712_unrank]
  exact case_000712_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000712_bAtRank :
    translationBAtRankMask case_000712_rank case_000712_mask = case_000712_b := by
  rw [translationBAtRankMask, case_000712_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000712_b, case_000712_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000712_firstLine_eq :
    case_000712_support.firstLine case_000712_seq case_000712_b = case_000712_firstLine := by
  norm_num [case_000712_firstLine, case_000712_support, case_000712_seq, case_000712_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000712_secondLine_eq :
    case_000712_support.secondLine case_000712_seq case_000712_b = case_000712_secondLine := by
  norm_num [case_000712_secondLine, case_000712_support, case_000712_seq, case_000712_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000712_sourceAgrees :
    SourceAgrees case_000712_support case_000712_rank.val case_000712_mask := by
  intro hlt
  have hrank : (⟨case_000712_rank.val, hlt⟩ : Fin numPairWords) = case_000712_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000712_rank.val, hlt⟩ case_000712_mask =
        case_000712_seq := by
    simpa [hrank] using case_000712_seqAtRank
  simp [SourceChecks, hseq, case_000712_support,
    checkTranslationConstraintSource, case_000712_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000712_rows :
    EqEqPosVarFirstRows case_000712_support case_000712_rank.val case_000712_mask := by
  intro hlt
  have hrank : (⟨case_000712_rank.val, hlt⟩ : Fin numPairWords) = case_000712_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000712_rank.val, hlt⟩ case_000712_mask =
        case_000712_seq := by
    simpa [hrank] using case_000712_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000712_rank.val, hlt⟩ case_000712_mask =
        case_000712_b := by
    simpa [hrank] using case_000712_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000712_support case_000712_rank.val hlt
          case_000712_mask = case_000712_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000712_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000712_support case_000712_rank.val hlt
          case_000712_mask = case_000712_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000712_secondLine_eq]
  have case_000712_rowFirst :
      EqEqPosRow (FirstLineAt case_000712_support case_000712_rank.val hlt case_000712_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000712_firstLine, EqEqPosRow]
  have case_000712_fixedSecond :
      FixedRow (SecondLineAt case_000712_support case_000712_rank.val hlt case_000712_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000712_secondLine, FixedRow]
  exact ⟨case_000712_rowFirst, case_000712_fixedSecond⟩

private theorem case_000712_existsRows :
    ExistsEqEqPosVarFirstRows case_000712_rank.val case_000712_mask :=
  ⟨case_000712_support, case_000712_sourceAgrees, case_000712_rows⟩

private theorem case_000712_covered :
    RowPropertyParametricCovered case_000712_rank.val case_000712_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000712_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000713_rank : Fin numPairWords := ⟨498, by decide⟩
private def case_000713_mask : SignMask := ⟨47, by decide⟩
private def case_000713_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000713_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000713_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000713_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000713_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000713_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_000713_rankWord :
    rankPairWord? case_000713_word = some case_000713_rank := by
  decide

private theorem case_000713_unrank :
    unrankPairWord case_000713_rank = case_000713_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000713_word case_000713_rank).1
    case_000713_rankWord |>.symm

private theorem case_000713_seqChoice :
    translationChoiceSeq case_000713_word case_000713_mask = case_000713_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000713_seqAtRank :
    translationSeqAtRankMask case_000713_rank case_000713_mask = case_000713_seq := by
  rw [translationSeqAtRankMask, case_000713_unrank]
  exact case_000713_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000713_bAtRank :
    translationBAtRankMask case_000713_rank case_000713_mask = case_000713_b := by
  rw [translationBAtRankMask, case_000713_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000713_b, case_000713_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000713_firstLine_eq :
    case_000713_support.firstLine case_000713_seq case_000713_b = case_000713_firstLine := by
  norm_num [case_000713_firstLine, case_000713_support, case_000713_seq, case_000713_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000713_secondLine_eq :
    case_000713_support.secondLine case_000713_seq case_000713_b = case_000713_secondLine := by
  norm_num [case_000713_secondLine, case_000713_support, case_000713_seq, case_000713_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000713_sourceAgrees :
    SourceAgrees case_000713_support case_000713_rank.val case_000713_mask := by
  intro hlt
  have hrank : (⟨case_000713_rank.val, hlt⟩ : Fin numPairWords) = case_000713_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000713_rank.val, hlt⟩ case_000713_mask =
        case_000713_seq := by
    simpa [hrank] using case_000713_seqAtRank
  simp [SourceChecks, hseq, case_000713_support,
    checkTranslationConstraintSource, case_000713_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000713_rows :
    EqEqPosVarSecondRows case_000713_support case_000713_rank.val case_000713_mask := by
  intro hlt
  have hrank : (⟨case_000713_rank.val, hlt⟩ : Fin numPairWords) = case_000713_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000713_rank.val, hlt⟩ case_000713_mask =
        case_000713_seq := by
    simpa [hrank] using case_000713_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000713_rank.val, hlt⟩ case_000713_mask =
        case_000713_b := by
    simpa [hrank] using case_000713_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000713_support case_000713_rank.val hlt
          case_000713_mask = case_000713_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000713_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000713_support case_000713_rank.val hlt
          case_000713_mask = case_000713_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000713_secondLine_eq]
  have case_000713_fixedFirst :
      FixedRow (FirstLineAt case_000713_support case_000713_rank.val hlt case_000713_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000713_firstLine, FixedRow]
  have case_000713_rowSecond :
      EqEqPosRow (SecondLineAt case_000713_support case_000713_rank.val hlt case_000713_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000713_secondLine, EqEqPosRow]
  exact ⟨case_000713_fixedFirst, case_000713_rowSecond⟩

private theorem case_000713_existsRows :
    ExistsEqEqPosVarSecondRows case_000713_rank.val case_000713_mask :=
  ⟨case_000713_support, case_000713_sourceAgrees, case_000713_rows⟩

private theorem case_000713_covered :
    RowPropertyParametricCovered case_000713_rank.val case_000713_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000713_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000714_rank : Fin numPairWords := ⟨498, by decide⟩
private def case_000714_mask : SignMask := ⟨55, by decide⟩
private def case_000714_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000714_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000714_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000714_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000714_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000714_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_000714_rankWord :
    rankPairWord? case_000714_word = some case_000714_rank := by
  decide

private theorem case_000714_unrank :
    unrankPairWord case_000714_rank = case_000714_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000714_word case_000714_rank).1
    case_000714_rankWord |>.symm

private theorem case_000714_seqChoice :
    translationChoiceSeq case_000714_word case_000714_mask = case_000714_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000714_seqAtRank :
    translationSeqAtRankMask case_000714_rank case_000714_mask = case_000714_seq := by
  rw [translationSeqAtRankMask, case_000714_unrank]
  exact case_000714_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000714_bAtRank :
    translationBAtRankMask case_000714_rank case_000714_mask = case_000714_b := by
  rw [translationBAtRankMask, case_000714_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000714_b, case_000714_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000714_firstLine_eq :
    case_000714_support.firstLine case_000714_seq case_000714_b = case_000714_firstLine := by
  norm_num [case_000714_firstLine, case_000714_support, case_000714_seq, case_000714_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000714_secondLine_eq :
    case_000714_support.secondLine case_000714_seq case_000714_b = case_000714_secondLine := by
  norm_num [case_000714_secondLine, case_000714_support, case_000714_seq, case_000714_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000714_sourceAgrees :
    SourceAgrees case_000714_support case_000714_rank.val case_000714_mask := by
  intro hlt
  have hrank : (⟨case_000714_rank.val, hlt⟩ : Fin numPairWords) = case_000714_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000714_rank.val, hlt⟩ case_000714_mask =
        case_000714_seq := by
    simpa [hrank] using case_000714_seqAtRank
  simp [SourceChecks, hseq, case_000714_support,
    checkTranslationConstraintSource, case_000714_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000714_rows :
    EqEqPosVarSecondRows case_000714_support case_000714_rank.val case_000714_mask := by
  intro hlt
  have hrank : (⟨case_000714_rank.val, hlt⟩ : Fin numPairWords) = case_000714_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000714_rank.val, hlt⟩ case_000714_mask =
        case_000714_seq := by
    simpa [hrank] using case_000714_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000714_rank.val, hlt⟩ case_000714_mask =
        case_000714_b := by
    simpa [hrank] using case_000714_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000714_support case_000714_rank.val hlt
          case_000714_mask = case_000714_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000714_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000714_support case_000714_rank.val hlt
          case_000714_mask = case_000714_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000714_secondLine_eq]
  have case_000714_fixedFirst :
      FixedRow (FirstLineAt case_000714_support case_000714_rank.val hlt case_000714_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000714_firstLine, FixedRow]
  have case_000714_rowSecond :
      EqEqPosRow (SecondLineAt case_000714_support case_000714_rank.val hlt case_000714_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000714_secondLine, EqEqPosRow]
  exact ⟨case_000714_fixedFirst, case_000714_rowSecond⟩

private theorem case_000714_existsRows :
    ExistsEqEqPosVarSecondRows case_000714_rank.val case_000714_mask :=
  ⟨case_000714_support, case_000714_sourceAgrees, case_000714_rows⟩

private theorem case_000714_covered :
    RowPropertyParametricCovered case_000714_rank.val case_000714_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000714_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000715_rank : Fin numPairWords := ⟨501, by decide⟩
private def case_000715_mask : SignMask := ⟨8, by decide⟩
private def case_000715_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000715_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000715_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000715_b : Vec3 Rat := { x := (-28/27), y := (-92/27), z := (-380/27) }
private def case_000715_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000715_secondLine : StrictLin2 := { a := (-21/1258), b := (-21/1258), c := (-316/629) }

private theorem case_000715_rankWord :
    rankPairWord? case_000715_word = some case_000715_rank := by
  decide

private theorem case_000715_unrank :
    unrankPairWord case_000715_rank = case_000715_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000715_word case_000715_rank).1
    case_000715_rankWord |>.symm

private theorem case_000715_seqChoice :
    translationChoiceSeq case_000715_word case_000715_mask = case_000715_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000715_seqAtRank :
    translationSeqAtRankMask case_000715_rank case_000715_mask = case_000715_seq := by
  rw [translationSeqAtRankMask, case_000715_unrank]
  exact case_000715_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000715_bAtRank :
    translationBAtRankMask case_000715_rank case_000715_mask = case_000715_b := by
  rw [translationBAtRankMask, case_000715_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000715_b, case_000715_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000715_firstLine_eq :
    case_000715_support.firstLine case_000715_seq case_000715_b = case_000715_firstLine := by
  norm_num [case_000715_firstLine, case_000715_support, case_000715_seq, case_000715_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000715_secondLine_eq :
    case_000715_support.secondLine case_000715_seq case_000715_b = case_000715_secondLine := by
  norm_num [case_000715_secondLine, case_000715_support, case_000715_seq, case_000715_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000715_sourceAgrees :
    SourceAgrees case_000715_support case_000715_rank.val case_000715_mask := by
  intro hlt
  have hrank : (⟨case_000715_rank.val, hlt⟩ : Fin numPairWords) = case_000715_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000715_rank.val, hlt⟩ case_000715_mask =
        case_000715_seq := by
    simpa [hrank] using case_000715_seqAtRank
  simp [SourceChecks, hseq, case_000715_support,
    checkTranslationConstraintSource, case_000715_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000715_rows :
    EqEqPosVarSecondRows case_000715_support case_000715_rank.val case_000715_mask := by
  intro hlt
  have hrank : (⟨case_000715_rank.val, hlt⟩ : Fin numPairWords) = case_000715_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000715_rank.val, hlt⟩ case_000715_mask =
        case_000715_seq := by
    simpa [hrank] using case_000715_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000715_rank.val, hlt⟩ case_000715_mask =
        case_000715_b := by
    simpa [hrank] using case_000715_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000715_support case_000715_rank.val hlt
          case_000715_mask = case_000715_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000715_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000715_support case_000715_rank.val hlt
          case_000715_mask = case_000715_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000715_secondLine_eq]
  have case_000715_fixedFirst :
      FixedRow (FirstLineAt case_000715_support case_000715_rank.val hlt case_000715_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000715_firstLine, FixedRow]
  have case_000715_rowSecond :
      EqEqPosRow (SecondLineAt case_000715_support case_000715_rank.val hlt case_000715_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000715_secondLine, EqEqPosRow]
  exact ⟨case_000715_fixedFirst, case_000715_rowSecond⟩

private theorem case_000715_existsRows :
    ExistsEqEqPosVarSecondRows case_000715_rank.val case_000715_mask :=
  ⟨case_000715_support, case_000715_sourceAgrees, case_000715_rows⟩

private theorem case_000715_covered :
    RowPropertyParametricCovered case_000715_rank.val case_000715_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000715_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000716_rank : Fin numPairWords := ⟨501, by decide⟩
private def case_000716_mask : SignMask := ⟨9, by decide⟩
private def case_000716_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000716_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000716_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000716_b : Vec3 Rat := { x := (-28/27), y := (124/27), z := (-380/27) }
private def case_000716_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000716_secondLine : StrictLin2 := { a := (-21/418), b := (-21/418), c := (-181/209) }

private theorem case_000716_rankWord :
    rankPairWord? case_000716_word = some case_000716_rank := by
  decide

private theorem case_000716_unrank :
    unrankPairWord case_000716_rank = case_000716_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000716_word case_000716_rank).1
    case_000716_rankWord |>.symm

private theorem case_000716_seqChoice :
    translationChoiceSeq case_000716_word case_000716_mask = case_000716_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000716_seqAtRank :
    translationSeqAtRankMask case_000716_rank case_000716_mask = case_000716_seq := by
  rw [translationSeqAtRankMask, case_000716_unrank]
  exact case_000716_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000716_bAtRank :
    translationBAtRankMask case_000716_rank case_000716_mask = case_000716_b := by
  rw [translationBAtRankMask, case_000716_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000716_b, case_000716_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000716_firstLine_eq :
    case_000716_support.firstLine case_000716_seq case_000716_b = case_000716_firstLine := by
  norm_num [case_000716_firstLine, case_000716_support, case_000716_seq, case_000716_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000716_secondLine_eq :
    case_000716_support.secondLine case_000716_seq case_000716_b = case_000716_secondLine := by
  norm_num [case_000716_secondLine, case_000716_support, case_000716_seq, case_000716_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000716_sourceAgrees :
    SourceAgrees case_000716_support case_000716_rank.val case_000716_mask := by
  intro hlt
  have hrank : (⟨case_000716_rank.val, hlt⟩ : Fin numPairWords) = case_000716_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000716_rank.val, hlt⟩ case_000716_mask =
        case_000716_seq := by
    simpa [hrank] using case_000716_seqAtRank
  simp [SourceChecks, hseq, case_000716_support,
    checkTranslationConstraintSource, case_000716_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000716_rows :
    EqEqPosVarSecondRows case_000716_support case_000716_rank.val case_000716_mask := by
  intro hlt
  have hrank : (⟨case_000716_rank.val, hlt⟩ : Fin numPairWords) = case_000716_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000716_rank.val, hlt⟩ case_000716_mask =
        case_000716_seq := by
    simpa [hrank] using case_000716_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000716_rank.val, hlt⟩ case_000716_mask =
        case_000716_b := by
    simpa [hrank] using case_000716_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000716_support case_000716_rank.val hlt
          case_000716_mask = case_000716_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000716_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000716_support case_000716_rank.val hlt
          case_000716_mask = case_000716_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000716_secondLine_eq]
  have case_000716_fixedFirst :
      FixedRow (FirstLineAt case_000716_support case_000716_rank.val hlt case_000716_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000716_firstLine, FixedRow]
  have case_000716_rowSecond :
      EqEqPosRow (SecondLineAt case_000716_support case_000716_rank.val hlt case_000716_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000716_secondLine, EqEqPosRow]
  exact ⟨case_000716_fixedFirst, case_000716_rowSecond⟩

private theorem case_000716_existsRows :
    ExistsEqEqPosVarSecondRows case_000716_rank.val case_000716_mask :=
  ⟨case_000716_support, case_000716_sourceAgrees, case_000716_rows⟩

private theorem case_000716_covered :
    RowPropertyParametricCovered case_000716_rank.val case_000716_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000716_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000717_rank : Fin numPairWords := ⟨501, by decide⟩
private def case_000717_mask : SignMask := ⟨13, by decide⟩
private def case_000717_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000717_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000717_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000717_b : Vec3 Rat := { x := (-172/27), y := (268/27), z := (-236/27) }
private def case_000717_firstLine : StrictLin2 := { a := 1, b := -1, c := (-209/43) }
private def case_000717_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000717_rankWord :
    rankPairWord? case_000717_word = some case_000717_rank := by
  decide

private theorem case_000717_unrank :
    unrankPairWord case_000717_rank = case_000717_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000717_word case_000717_rank).1
    case_000717_rankWord |>.symm

private theorem case_000717_seqChoice :
    translationChoiceSeq case_000717_word case_000717_mask = case_000717_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000717_seqAtRank :
    translationSeqAtRankMask case_000717_rank case_000717_mask = case_000717_seq := by
  rw [translationSeqAtRankMask, case_000717_unrank]
  exact case_000717_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000717_bAtRank :
    translationBAtRankMask case_000717_rank case_000717_mask = case_000717_b := by
  rw [translationBAtRankMask, case_000717_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000717_b, case_000717_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000717_firstLine_eq :
    case_000717_support.firstLine case_000717_seq case_000717_b = case_000717_firstLine := by
  norm_num [case_000717_firstLine, case_000717_support, case_000717_seq, case_000717_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000717_secondLine_eq :
    case_000717_support.secondLine case_000717_seq case_000717_b = case_000717_secondLine := by
  norm_num [case_000717_secondLine, case_000717_support, case_000717_seq, case_000717_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000717_sourceAgrees :
    SourceAgrees case_000717_support case_000717_rank.val case_000717_mask := by
  intro hlt
  have hrank : (⟨case_000717_rank.val, hlt⟩ : Fin numPairWords) = case_000717_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000717_rank.val, hlt⟩ case_000717_mask =
        case_000717_seq := by
    simpa [hrank] using case_000717_seqAtRank
  simp [SourceChecks, hseq, case_000717_support,
    checkTranslationConstraintSource, case_000717_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000717_rows :
    OppMinusOneVarFirstRows case_000717_support case_000717_rank.val case_000717_mask := by
  intro hlt
  have hrank : (⟨case_000717_rank.val, hlt⟩ : Fin numPairWords) = case_000717_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000717_rank.val, hlt⟩ case_000717_mask =
        case_000717_seq := by
    simpa [hrank] using case_000717_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000717_rank.val, hlt⟩ case_000717_mask =
        case_000717_b := by
    simpa [hrank] using case_000717_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000717_support case_000717_rank.val hlt
          case_000717_mask = case_000717_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000717_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000717_support case_000717_rank.val hlt
          case_000717_mask = case_000717_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000717_secondLine_eq]
  have case_000717_rowFirst :
      OppNegRow (FirstLineAt case_000717_support case_000717_rank.val hlt case_000717_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000717_firstLine, OppNegRow]
  have case_000717_fixedSecond :
      FixedRow (SecondLineAt case_000717_support case_000717_rank.val hlt case_000717_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000717_secondLine, FixedRow]
  exact ⟨case_000717_rowFirst, case_000717_fixedSecond⟩

private theorem case_000717_existsRows :
    ExistsOppMinusOneVarFirstRows case_000717_rank.val case_000717_mask :=
  ⟨case_000717_support, case_000717_sourceAgrees, case_000717_rows⟩

private theorem case_000717_covered :
    RowPropertyParametricCovered case_000717_rank.val case_000717_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000717_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000718_rank : Fin numPairWords := ⟨501, by decide⟩
private def case_000718_mask : SignMask := ⟨16, by decide⟩
private def case_000718_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000718_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000718_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000718_b : Vec3 Rat := { x := (-284/27), y := (-316/27), z := (-28/27) }
private def case_000718_firstLine : StrictLin2 := { a := -1, b := -1, c := (-101/71) }
private def case_000718_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000718_rankWord :
    rankPairWord? case_000718_word = some case_000718_rank := by
  decide

private theorem case_000718_unrank :
    unrankPairWord case_000718_rank = case_000718_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000718_word case_000718_rank).1
    case_000718_rankWord |>.symm

private theorem case_000718_seqChoice :
    translationChoiceSeq case_000718_word case_000718_mask = case_000718_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000718_seqAtRank :
    translationSeqAtRankMask case_000718_rank case_000718_mask = case_000718_seq := by
  rw [translationSeqAtRankMask, case_000718_unrank]
  exact case_000718_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000718_bAtRank :
    translationBAtRankMask case_000718_rank case_000718_mask = case_000718_b := by
  rw [translationBAtRankMask, case_000718_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000718_b, case_000718_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000718_firstLine_eq :
    case_000718_support.firstLine case_000718_seq case_000718_b = case_000718_firstLine := by
  norm_num [case_000718_firstLine, case_000718_support, case_000718_seq, case_000718_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000718_secondLine_eq :
    case_000718_support.secondLine case_000718_seq case_000718_b = case_000718_secondLine := by
  norm_num [case_000718_secondLine, case_000718_support, case_000718_seq, case_000718_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000718_sourceAgrees :
    SourceAgrees case_000718_support case_000718_rank.val case_000718_mask := by
  intro hlt
  have hrank : (⟨case_000718_rank.val, hlt⟩ : Fin numPairWords) = case_000718_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000718_rank.val, hlt⟩ case_000718_mask =
        case_000718_seq := by
    simpa [hrank] using case_000718_seqAtRank
  simp [SourceChecks, hseq, case_000718_support,
    checkTranslationConstraintSource, case_000718_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000718_rows :
    EqEqPosVarFirstRows case_000718_support case_000718_rank.val case_000718_mask := by
  intro hlt
  have hrank : (⟨case_000718_rank.val, hlt⟩ : Fin numPairWords) = case_000718_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000718_rank.val, hlt⟩ case_000718_mask =
        case_000718_seq := by
    simpa [hrank] using case_000718_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000718_rank.val, hlt⟩ case_000718_mask =
        case_000718_b := by
    simpa [hrank] using case_000718_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000718_support case_000718_rank.val hlt
          case_000718_mask = case_000718_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000718_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000718_support case_000718_rank.val hlt
          case_000718_mask = case_000718_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000718_secondLine_eq]
  have case_000718_rowFirst :
      EqEqPosRow (FirstLineAt case_000718_support case_000718_rank.val hlt case_000718_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000718_firstLine, EqEqPosRow]
  have case_000718_fixedSecond :
      FixedRow (SecondLineAt case_000718_support case_000718_rank.val hlt case_000718_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000718_secondLine, FixedRow]
  exact ⟨case_000718_rowFirst, case_000718_fixedSecond⟩

private theorem case_000718_existsRows :
    ExistsEqEqPosVarFirstRows case_000718_rank.val case_000718_mask :=
  ⟨case_000718_support, case_000718_sourceAgrees, case_000718_rows⟩

private theorem case_000718_covered :
    RowPropertyParametricCovered case_000718_rank.val case_000718_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000718_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000719_rank : Fin numPairWords := ⟨501, by decide⟩
private def case_000719_mask : SignMask := ⟨22, by decide⟩
private def case_000719_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000719_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000719_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000719_b : Vec3 Rat := { x := (-428/27), y := (-172/27), z := (332/27) }
private def case_000719_firstLine : StrictLin2 := { a := -1, b := 1, c := (-145/107) }
private def case_000719_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000719_rankWord :
    rankPairWord? case_000719_word = some case_000719_rank := by
  decide

private theorem case_000719_unrank :
    unrankPairWord case_000719_rank = case_000719_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000719_word case_000719_rank).1
    case_000719_rankWord |>.symm

private theorem case_000719_seqChoice :
    translationChoiceSeq case_000719_word case_000719_mask = case_000719_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000719_seqAtRank :
    translationSeqAtRankMask case_000719_rank case_000719_mask = case_000719_seq := by
  rw [translationSeqAtRankMask, case_000719_unrank]
  exact case_000719_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000719_bAtRank :
    translationBAtRankMask case_000719_rank case_000719_mask = case_000719_b := by
  rw [translationBAtRankMask, case_000719_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000719_b, case_000719_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000719_firstLine_eq :
    case_000719_support.firstLine case_000719_seq case_000719_b = case_000719_firstLine := by
  norm_num [case_000719_firstLine, case_000719_support, case_000719_seq, case_000719_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000719_secondLine_eq :
    case_000719_support.secondLine case_000719_seq case_000719_b = case_000719_secondLine := by
  norm_num [case_000719_secondLine, case_000719_support, case_000719_seq, case_000719_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000719_sourceAgrees :
    SourceAgrees case_000719_support case_000719_rank.val case_000719_mask := by
  intro hlt
  have hrank : (⟨case_000719_rank.val, hlt⟩ : Fin numPairWords) = case_000719_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000719_rank.val, hlt⟩ case_000719_mask =
        case_000719_seq := by
    simpa [hrank] using case_000719_seqAtRank
  simp [SourceChecks, hseq, case_000719_support,
    checkTranslationConstraintSource, case_000719_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000719_rows :
    OppOneMinusVarFirstRows case_000719_support case_000719_rank.val case_000719_mask := by
  intro hlt
  have hrank : (⟨case_000719_rank.val, hlt⟩ : Fin numPairWords) = case_000719_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000719_rank.val, hlt⟩ case_000719_mask =
        case_000719_seq := by
    simpa [hrank] using case_000719_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000719_rank.val, hlt⟩ case_000719_mask =
        case_000719_b := by
    simpa [hrank] using case_000719_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000719_support case_000719_rank.val hlt
          case_000719_mask = case_000719_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000719_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000719_support case_000719_rank.val hlt
          case_000719_mask = case_000719_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000719_secondLine_eq]
  have case_000719_rowFirst :
      OppPosRow (FirstLineAt case_000719_support case_000719_rank.val hlt case_000719_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000719_firstLine, OppPosRow]
  have case_000719_fixedSecond :
      FixedRow (SecondLineAt case_000719_support case_000719_rank.val hlt case_000719_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000719_secondLine, FixedRow]
  exact ⟨case_000719_rowFirst, case_000719_fixedSecond⟩

private theorem case_000719_existsRows :
    ExistsOppOneMinusVarFirstRows case_000719_rank.val case_000719_mask :=
  ⟨case_000719_support, case_000719_sourceAgrees, case_000719_rows⟩

private theorem case_000719_covered :
    RowPropertyParametricCovered case_000719_rank.val case_000719_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000719_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000720_rank : Fin numPairWords := ⟨501, by decide⟩
private def case_000720_mask : SignMask := ⟨23, by decide⟩
private def case_000720_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000720_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000720_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000720_b : Vec3 Rat := { x := (-428/27), y := (44/27), z := (332/27) }
private def case_000720_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000720_secondLine : StrictLin2 := { a := (-321/6566), b := (-321/6566), c := (-579/3283) }

private theorem case_000720_rankWord :
    rankPairWord? case_000720_word = some case_000720_rank := by
  decide

private theorem case_000720_unrank :
    unrankPairWord case_000720_rank = case_000720_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000720_word case_000720_rank).1
    case_000720_rankWord |>.symm

private theorem case_000720_seqChoice :
    translationChoiceSeq case_000720_word case_000720_mask = case_000720_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000720_seqAtRank :
    translationSeqAtRankMask case_000720_rank case_000720_mask = case_000720_seq := by
  rw [translationSeqAtRankMask, case_000720_unrank]
  exact case_000720_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000720_bAtRank :
    translationBAtRankMask case_000720_rank case_000720_mask = case_000720_b := by
  rw [translationBAtRankMask, case_000720_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000720_b, case_000720_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000720_firstLine_eq :
    case_000720_support.firstLine case_000720_seq case_000720_b = case_000720_firstLine := by
  norm_num [case_000720_firstLine, case_000720_support, case_000720_seq, case_000720_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000720_secondLine_eq :
    case_000720_support.secondLine case_000720_seq case_000720_b = case_000720_secondLine := by
  norm_num [case_000720_secondLine, case_000720_support, case_000720_seq, case_000720_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000720_sourceAgrees :
    SourceAgrees case_000720_support case_000720_rank.val case_000720_mask := by
  intro hlt
  have hrank : (⟨case_000720_rank.val, hlt⟩ : Fin numPairWords) = case_000720_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000720_rank.val, hlt⟩ case_000720_mask =
        case_000720_seq := by
    simpa [hrank] using case_000720_seqAtRank
  simp [SourceChecks, hseq, case_000720_support,
    checkTranslationConstraintSource, case_000720_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000720_rows :
    EqEqPosVarSecondRows case_000720_support case_000720_rank.val case_000720_mask := by
  intro hlt
  have hrank : (⟨case_000720_rank.val, hlt⟩ : Fin numPairWords) = case_000720_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000720_rank.val, hlt⟩ case_000720_mask =
        case_000720_seq := by
    simpa [hrank] using case_000720_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000720_rank.val, hlt⟩ case_000720_mask =
        case_000720_b := by
    simpa [hrank] using case_000720_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000720_support case_000720_rank.val hlt
          case_000720_mask = case_000720_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000720_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000720_support case_000720_rank.val hlt
          case_000720_mask = case_000720_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000720_secondLine_eq]
  have case_000720_fixedFirst :
      FixedRow (FirstLineAt case_000720_support case_000720_rank.val hlt case_000720_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000720_firstLine, FixedRow]
  have case_000720_rowSecond :
      EqEqPosRow (SecondLineAt case_000720_support case_000720_rank.val hlt case_000720_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000720_secondLine, EqEqPosRow]
  exact ⟨case_000720_fixedFirst, case_000720_rowSecond⟩

private theorem case_000720_existsRows :
    ExistsEqEqPosVarSecondRows case_000720_rank.val case_000720_mask :=
  ⟨case_000720_support, case_000720_sourceAgrees, case_000720_rows⟩

private theorem case_000720_covered :
    RowPropertyParametricCovered case_000720_rank.val case_000720_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000720_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000721_rank : Fin numPairWords := ⟨501, by decide⟩
private def case_000721_mask : SignMask := ⟨24, by decide⟩
private def case_000721_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000721_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000721_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000721_b : Vec3 Rat := { x := (-172/27), y := (-236/27), z := (-236/27) }
private def case_000721_firstLine : StrictLin2 := { a := -1, b := -1, c := (-193/43) }
private def case_000721_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000721_rankWord :
    rankPairWord? case_000721_word = some case_000721_rank := by
  decide

private theorem case_000721_unrank :
    unrankPairWord case_000721_rank = case_000721_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000721_word case_000721_rank).1
    case_000721_rankWord |>.symm

private theorem case_000721_seqChoice :
    translationChoiceSeq case_000721_word case_000721_mask = case_000721_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000721_seqAtRank :
    translationSeqAtRankMask case_000721_rank case_000721_mask = case_000721_seq := by
  rw [translationSeqAtRankMask, case_000721_unrank]
  exact case_000721_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000721_bAtRank :
    translationBAtRankMask case_000721_rank case_000721_mask = case_000721_b := by
  rw [translationBAtRankMask, case_000721_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000721_b, case_000721_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000721_firstLine_eq :
    case_000721_support.firstLine case_000721_seq case_000721_b = case_000721_firstLine := by
  norm_num [case_000721_firstLine, case_000721_support, case_000721_seq, case_000721_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000721_secondLine_eq :
    case_000721_support.secondLine case_000721_seq case_000721_b = case_000721_secondLine := by
  norm_num [case_000721_secondLine, case_000721_support, case_000721_seq, case_000721_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000721_sourceAgrees :
    SourceAgrees case_000721_support case_000721_rank.val case_000721_mask := by
  intro hlt
  have hrank : (⟨case_000721_rank.val, hlt⟩ : Fin numPairWords) = case_000721_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000721_rank.val, hlt⟩ case_000721_mask =
        case_000721_seq := by
    simpa [hrank] using case_000721_seqAtRank
  simp [SourceChecks, hseq, case_000721_support,
    checkTranslationConstraintSource, case_000721_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000721_rows :
    EqEqPosVarFirstRows case_000721_support case_000721_rank.val case_000721_mask := by
  intro hlt
  have hrank : (⟨case_000721_rank.val, hlt⟩ : Fin numPairWords) = case_000721_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000721_rank.val, hlt⟩ case_000721_mask =
        case_000721_seq := by
    simpa [hrank] using case_000721_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000721_rank.val, hlt⟩ case_000721_mask =
        case_000721_b := by
    simpa [hrank] using case_000721_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000721_support case_000721_rank.val hlt
          case_000721_mask = case_000721_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000721_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000721_support case_000721_rank.val hlt
          case_000721_mask = case_000721_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000721_secondLine_eq]
  have case_000721_rowFirst :
      EqEqPosRow (FirstLineAt case_000721_support case_000721_rank.val hlt case_000721_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000721_firstLine, EqEqPosRow]
  have case_000721_fixedSecond :
      FixedRow (SecondLineAt case_000721_support case_000721_rank.val hlt case_000721_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000721_secondLine, FixedRow]
  exact ⟨case_000721_rowFirst, case_000721_fixedSecond⟩

private theorem case_000721_existsRows :
    ExistsEqEqPosVarFirstRows case_000721_rank.val case_000721_mask :=
  ⟨case_000721_support, case_000721_sourceAgrees, case_000721_rows⟩

private theorem case_000721_covered :
    RowPropertyParametricCovered case_000721_rank.val case_000721_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000721_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000722_rank : Fin numPairWords := ⟨503, by decide⟩
private def case_000722_mask : SignMask := ⟨7, by decide⟩
private def case_000722_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000722_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000722_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000722_b : Vec3 Rat := { x := (-332/27), y := (236/27), z := (236/27) }
private def case_000722_firstLine : StrictLin2 := { a := (-83/201), b := (-83/201), c := (-275/201) }
private def case_000722_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000722_rankWord :
    rankPairWord? case_000722_word = some case_000722_rank := by
  decide

private theorem case_000722_unrank :
    unrankPairWord case_000722_rank = case_000722_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000722_word case_000722_rank).1
    case_000722_rankWord |>.symm

private theorem case_000722_seqChoice :
    translationChoiceSeq case_000722_word case_000722_mask = case_000722_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000722_seqAtRank :
    translationSeqAtRankMask case_000722_rank case_000722_mask = case_000722_seq := by
  rw [translationSeqAtRankMask, case_000722_unrank]
  exact case_000722_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000722_bAtRank :
    translationBAtRankMask case_000722_rank case_000722_mask = case_000722_b := by
  rw [translationBAtRankMask, case_000722_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000722_b, case_000722_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000722_firstLine_eq :
    case_000722_support.firstLine case_000722_seq case_000722_b = case_000722_firstLine := by
  norm_num [case_000722_firstLine, case_000722_support, case_000722_seq, case_000722_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000722_secondLine_eq :
    case_000722_support.secondLine case_000722_seq case_000722_b = case_000722_secondLine := by
  norm_num [case_000722_secondLine, case_000722_support, case_000722_seq, case_000722_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000722_sourceAgrees :
    SourceAgrees case_000722_support case_000722_rank.val case_000722_mask := by
  intro hlt
  have hrank : (⟨case_000722_rank.val, hlt⟩ : Fin numPairWords) = case_000722_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000722_rank.val, hlt⟩ case_000722_mask =
        case_000722_seq := by
    simpa [hrank] using case_000722_seqAtRank
  simp [SourceChecks, hseq, case_000722_support,
    checkTranslationConstraintSource, case_000722_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000722_rows :
    EqEqPosVarFirstRows case_000722_support case_000722_rank.val case_000722_mask := by
  intro hlt
  have hrank : (⟨case_000722_rank.val, hlt⟩ : Fin numPairWords) = case_000722_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000722_rank.val, hlt⟩ case_000722_mask =
        case_000722_seq := by
    simpa [hrank] using case_000722_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000722_rank.val, hlt⟩ case_000722_mask =
        case_000722_b := by
    simpa [hrank] using case_000722_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000722_support case_000722_rank.val hlt
          case_000722_mask = case_000722_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000722_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000722_support case_000722_rank.val hlt
          case_000722_mask = case_000722_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000722_secondLine_eq]
  have case_000722_rowFirst :
      EqEqPosRow (FirstLineAt case_000722_support case_000722_rank.val hlt case_000722_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000722_firstLine, EqEqPosRow]
  have case_000722_fixedSecond :
      FixedRow (SecondLineAt case_000722_support case_000722_rank.val hlt case_000722_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000722_secondLine, FixedRow]
  exact ⟨case_000722_rowFirst, case_000722_fixedSecond⟩

private theorem case_000722_existsRows :
    ExistsEqEqPosVarFirstRows case_000722_rank.val case_000722_mask :=
  ⟨case_000722_support, case_000722_sourceAgrees, case_000722_rows⟩

private theorem case_000722_covered :
    RowPropertyParametricCovered case_000722_rank.val case_000722_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000722_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000723_rank : Fin numPairWords := ⟨503, by decide⟩
private def case_000723_mask : SignMask := ⟨8, by decide⟩
private def case_000723_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000723_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000723_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def case_000723_b : Vec3 Rat := { x := (-76/27), y := (-44/27), z := (-332/27) }
private def case_000723_firstLine : StrictLin2 := { a := -1, b := -1, c := (-169/19) }
private def case_000723_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000723_rankWord :
    rankPairWord? case_000723_word = some case_000723_rank := by
  decide

private theorem case_000723_unrank :
    unrankPairWord case_000723_rank = case_000723_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000723_word case_000723_rank).1
    case_000723_rankWord |>.symm

private theorem case_000723_seqChoice :
    translationChoiceSeq case_000723_word case_000723_mask = case_000723_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000723_seqAtRank :
    translationSeqAtRankMask case_000723_rank case_000723_mask = case_000723_seq := by
  rw [translationSeqAtRankMask, case_000723_unrank]
  exact case_000723_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000723_bAtRank :
    translationBAtRankMask case_000723_rank case_000723_mask = case_000723_b := by
  rw [translationBAtRankMask, case_000723_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000723_b, case_000723_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000723_firstLine_eq :
    case_000723_support.firstLine case_000723_seq case_000723_b = case_000723_firstLine := by
  norm_num [case_000723_firstLine, case_000723_support, case_000723_seq, case_000723_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000723_secondLine_eq :
    case_000723_support.secondLine case_000723_seq case_000723_b = case_000723_secondLine := by
  norm_num [case_000723_secondLine, case_000723_support, case_000723_seq, case_000723_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000723_sourceAgrees :
    SourceAgrees case_000723_support case_000723_rank.val case_000723_mask := by
  intro hlt
  have hrank : (⟨case_000723_rank.val, hlt⟩ : Fin numPairWords) = case_000723_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000723_rank.val, hlt⟩ case_000723_mask =
        case_000723_seq := by
    simpa [hrank] using case_000723_seqAtRank
  simp [SourceChecks, hseq, case_000723_support,
    checkTranslationConstraintSource, case_000723_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000723_rows :
    EqEqPosVarFirstRows case_000723_support case_000723_rank.val case_000723_mask := by
  intro hlt
  have hrank : (⟨case_000723_rank.val, hlt⟩ : Fin numPairWords) = case_000723_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000723_rank.val, hlt⟩ case_000723_mask =
        case_000723_seq := by
    simpa [hrank] using case_000723_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000723_rank.val, hlt⟩ case_000723_mask =
        case_000723_b := by
    simpa [hrank] using case_000723_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000723_support case_000723_rank.val hlt
          case_000723_mask = case_000723_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000723_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000723_support case_000723_rank.val hlt
          case_000723_mask = case_000723_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000723_secondLine_eq]
  have case_000723_rowFirst :
      EqEqPosRow (FirstLineAt case_000723_support case_000723_rank.val hlt case_000723_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000723_firstLine, EqEqPosRow]
  have case_000723_fixedSecond :
      FixedRow (SecondLineAt case_000723_support case_000723_rank.val hlt case_000723_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000723_secondLine, FixedRow]
  exact ⟨case_000723_rowFirst, case_000723_fixedSecond⟩

private theorem case_000723_existsRows :
    ExistsEqEqPosVarFirstRows case_000723_rank.val case_000723_mask :=
  ⟨case_000723_support, case_000723_sourceAgrees, case_000723_rows⟩

private theorem case_000723_covered :
    RowPropertyParametricCovered case_000723_rank.val case_000723_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000723_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000724_rank : Fin numPairWords := ⟨503, by decide⟩
private def case_000724_mask : SignMask := ⟨9, by decide⟩
private def case_000724_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000724_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000724_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def case_000724_b : Vec3 Rat := { x := (-76/27), y := (172/27), z := (-332/27) }
private def case_000724_firstLine : StrictLin2 := { a := -1, b := -1, c := (-61/19) }
private def case_000724_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000724_rankWord :
    rankPairWord? case_000724_word = some case_000724_rank := by
  decide

private theorem case_000724_unrank :
    unrankPairWord case_000724_rank = case_000724_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000724_word case_000724_rank).1
    case_000724_rankWord |>.symm

private theorem case_000724_seqChoice :
    translationChoiceSeq case_000724_word case_000724_mask = case_000724_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000724_seqAtRank :
    translationSeqAtRankMask case_000724_rank case_000724_mask = case_000724_seq := by
  rw [translationSeqAtRankMask, case_000724_unrank]
  exact case_000724_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000724_bAtRank :
    translationBAtRankMask case_000724_rank case_000724_mask = case_000724_b := by
  rw [translationBAtRankMask, case_000724_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000724_b, case_000724_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000724_firstLine_eq :
    case_000724_support.firstLine case_000724_seq case_000724_b = case_000724_firstLine := by
  norm_num [case_000724_firstLine, case_000724_support, case_000724_seq, case_000724_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000724_secondLine_eq :
    case_000724_support.secondLine case_000724_seq case_000724_b = case_000724_secondLine := by
  norm_num [case_000724_secondLine, case_000724_support, case_000724_seq, case_000724_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000724_sourceAgrees :
    SourceAgrees case_000724_support case_000724_rank.val case_000724_mask := by
  intro hlt
  have hrank : (⟨case_000724_rank.val, hlt⟩ : Fin numPairWords) = case_000724_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000724_rank.val, hlt⟩ case_000724_mask =
        case_000724_seq := by
    simpa [hrank] using case_000724_seqAtRank
  simp [SourceChecks, hseq, case_000724_support,
    checkTranslationConstraintSource, case_000724_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000724_rows :
    EqEqPosVarFirstRows case_000724_support case_000724_rank.val case_000724_mask := by
  intro hlt
  have hrank : (⟨case_000724_rank.val, hlt⟩ : Fin numPairWords) = case_000724_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000724_rank.val, hlt⟩ case_000724_mask =
        case_000724_seq := by
    simpa [hrank] using case_000724_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000724_rank.val, hlt⟩ case_000724_mask =
        case_000724_b := by
    simpa [hrank] using case_000724_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000724_support case_000724_rank.val hlt
          case_000724_mask = case_000724_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000724_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000724_support case_000724_rank.val hlt
          case_000724_mask = case_000724_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000724_secondLine_eq]
  have case_000724_rowFirst :
      EqEqPosRow (FirstLineAt case_000724_support case_000724_rank.val hlt case_000724_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000724_firstLine, EqEqPosRow]
  have case_000724_fixedSecond :
      FixedRow (SecondLineAt case_000724_support case_000724_rank.val hlt case_000724_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000724_secondLine, FixedRow]
  exact ⟨case_000724_rowFirst, case_000724_fixedSecond⟩

private theorem case_000724_existsRows :
    ExistsEqEqPosVarFirstRows case_000724_rank.val case_000724_mask :=
  ⟨case_000724_support, case_000724_sourceAgrees, case_000724_rows⟩

private theorem case_000724_covered :
    RowPropertyParametricCovered case_000724_rank.val case_000724_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000724_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000725_rank : Fin numPairWords := ⟨503, by decide⟩
private def case_000725_mask : SignMask := ⟨13, by decide⟩
private def case_000725_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000725_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000725_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000725_b : Vec3 Rat := { x := (-220/27), y := (316/27), z := (-188/27) }
private def case_000725_firstLine : StrictLin2 := { a := 1, b := -1, c := (-197/55) }
private def case_000725_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000725_rankWord :
    rankPairWord? case_000725_word = some case_000725_rank := by
  decide

private theorem case_000725_unrank :
    unrankPairWord case_000725_rank = case_000725_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000725_word case_000725_rank).1
    case_000725_rankWord |>.symm

private theorem case_000725_seqChoice :
    translationChoiceSeq case_000725_word case_000725_mask = case_000725_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000725_seqAtRank :
    translationSeqAtRankMask case_000725_rank case_000725_mask = case_000725_seq := by
  rw [translationSeqAtRankMask, case_000725_unrank]
  exact case_000725_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000725_bAtRank :
    translationBAtRankMask case_000725_rank case_000725_mask = case_000725_b := by
  rw [translationBAtRankMask, case_000725_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000725_b, case_000725_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000725_firstLine_eq :
    case_000725_support.firstLine case_000725_seq case_000725_b = case_000725_firstLine := by
  norm_num [case_000725_firstLine, case_000725_support, case_000725_seq, case_000725_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000725_secondLine_eq :
    case_000725_support.secondLine case_000725_seq case_000725_b = case_000725_secondLine := by
  norm_num [case_000725_secondLine, case_000725_support, case_000725_seq, case_000725_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000725_sourceAgrees :
    SourceAgrees case_000725_support case_000725_rank.val case_000725_mask := by
  intro hlt
  have hrank : (⟨case_000725_rank.val, hlt⟩ : Fin numPairWords) = case_000725_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000725_rank.val, hlt⟩ case_000725_mask =
        case_000725_seq := by
    simpa [hrank] using case_000725_seqAtRank
  simp [SourceChecks, hseq, case_000725_support,
    checkTranslationConstraintSource, case_000725_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000725_rows :
    OppMinusOneVarFirstRows case_000725_support case_000725_rank.val case_000725_mask := by
  intro hlt
  have hrank : (⟨case_000725_rank.val, hlt⟩ : Fin numPairWords) = case_000725_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000725_rank.val, hlt⟩ case_000725_mask =
        case_000725_seq := by
    simpa [hrank] using case_000725_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000725_rank.val, hlt⟩ case_000725_mask =
        case_000725_b := by
    simpa [hrank] using case_000725_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000725_support case_000725_rank.val hlt
          case_000725_mask = case_000725_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000725_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000725_support case_000725_rank.val hlt
          case_000725_mask = case_000725_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000725_secondLine_eq]
  have case_000725_rowFirst :
      OppNegRow (FirstLineAt case_000725_support case_000725_rank.val hlt case_000725_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000725_firstLine, OppNegRow]
  have case_000725_fixedSecond :
      FixedRow (SecondLineAt case_000725_support case_000725_rank.val hlt case_000725_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000725_secondLine, FixedRow]
  exact ⟨case_000725_rowFirst, case_000725_fixedSecond⟩

private theorem case_000725_existsRows :
    ExistsOppMinusOneVarFirstRows case_000725_rank.val case_000725_mask :=
  ⟨case_000725_support, case_000725_sourceAgrees, case_000725_rows⟩

private theorem case_000725_covered :
    RowPropertyParametricCovered case_000725_rank.val case_000725_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000725_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000726_rank : Fin numPairWords := ⟨503, by decide⟩
private def case_000726_mask : SignMask := ⟨16, by decide⟩
private def case_000726_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000726_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000726_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000726_b : Vec3 Rat := { x := (-236/27), y := (-364/27), z := (-76/27) }
private def case_000726_firstLine : StrictLin2 := { a := -1, b := -1, c := (-161/59) }
private def case_000726_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000726_rankWord :
    rankPairWord? case_000726_word = some case_000726_rank := by
  decide

private theorem case_000726_unrank :
    unrankPairWord case_000726_rank = case_000726_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000726_word case_000726_rank).1
    case_000726_rankWord |>.symm

private theorem case_000726_seqChoice :
    translationChoiceSeq case_000726_word case_000726_mask = case_000726_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000726_seqAtRank :
    translationSeqAtRankMask case_000726_rank case_000726_mask = case_000726_seq := by
  rw [translationSeqAtRankMask, case_000726_unrank]
  exact case_000726_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000726_bAtRank :
    translationBAtRankMask case_000726_rank case_000726_mask = case_000726_b := by
  rw [translationBAtRankMask, case_000726_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000726_b, case_000726_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000726_firstLine_eq :
    case_000726_support.firstLine case_000726_seq case_000726_b = case_000726_firstLine := by
  norm_num [case_000726_firstLine, case_000726_support, case_000726_seq, case_000726_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000726_secondLine_eq :
    case_000726_support.secondLine case_000726_seq case_000726_b = case_000726_secondLine := by
  norm_num [case_000726_secondLine, case_000726_support, case_000726_seq, case_000726_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000726_sourceAgrees :
    SourceAgrees case_000726_support case_000726_rank.val case_000726_mask := by
  intro hlt
  have hrank : (⟨case_000726_rank.val, hlt⟩ : Fin numPairWords) = case_000726_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000726_rank.val, hlt⟩ case_000726_mask =
        case_000726_seq := by
    simpa [hrank] using case_000726_seqAtRank
  simp [SourceChecks, hseq, case_000726_support,
    checkTranslationConstraintSource, case_000726_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000726_rows :
    EqEqPosVarFirstRows case_000726_support case_000726_rank.val case_000726_mask := by
  intro hlt
  have hrank : (⟨case_000726_rank.val, hlt⟩ : Fin numPairWords) = case_000726_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000726_rank.val, hlt⟩ case_000726_mask =
        case_000726_seq := by
    simpa [hrank] using case_000726_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000726_rank.val, hlt⟩ case_000726_mask =
        case_000726_b := by
    simpa [hrank] using case_000726_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000726_support case_000726_rank.val hlt
          case_000726_mask = case_000726_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000726_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000726_support case_000726_rank.val hlt
          case_000726_mask = case_000726_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000726_secondLine_eq]
  have case_000726_rowFirst :
      EqEqPosRow (FirstLineAt case_000726_support case_000726_rank.val hlt case_000726_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000726_firstLine, EqEqPosRow]
  have case_000726_fixedSecond :
      FixedRow (SecondLineAt case_000726_support case_000726_rank.val hlt case_000726_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000726_secondLine, FixedRow]
  exact ⟨case_000726_rowFirst, case_000726_fixedSecond⟩

private theorem case_000726_existsRows :
    ExistsEqEqPosVarFirstRows case_000726_rank.val case_000726_mask :=
  ⟨case_000726_support, case_000726_sourceAgrees, case_000726_rows⟩

private theorem case_000726_covered :
    RowPropertyParametricCovered case_000726_rank.val case_000726_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000726_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000727_rank : Fin numPairWords := ⟨503, by decide⟩
private def case_000727_mask : SignMask := ⟨22, by decide⟩
private def case_000727_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000727_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000727_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000727_b : Vec3 Rat := { x := (-380/27), y := (-220/27), z := (284/27) }
private def case_000727_firstLine : StrictLin2 := { a := -1, b := 1, c := (-157/95) }
private def case_000727_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000727_rankWord :
    rankPairWord? case_000727_word = some case_000727_rank := by
  decide

private theorem case_000727_unrank :
    unrankPairWord case_000727_rank = case_000727_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000727_word case_000727_rank).1
    case_000727_rankWord |>.symm

private theorem case_000727_seqChoice :
    translationChoiceSeq case_000727_word case_000727_mask = case_000727_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000727_seqAtRank :
    translationSeqAtRankMask case_000727_rank case_000727_mask = case_000727_seq := by
  rw [translationSeqAtRankMask, case_000727_unrank]
  exact case_000727_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000727_bAtRank :
    translationBAtRankMask case_000727_rank case_000727_mask = case_000727_b := by
  rw [translationBAtRankMask, case_000727_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000727_b, case_000727_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000727_firstLine_eq :
    case_000727_support.firstLine case_000727_seq case_000727_b = case_000727_firstLine := by
  norm_num [case_000727_firstLine, case_000727_support, case_000727_seq, case_000727_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000727_secondLine_eq :
    case_000727_support.secondLine case_000727_seq case_000727_b = case_000727_secondLine := by
  norm_num [case_000727_secondLine, case_000727_support, case_000727_seq, case_000727_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000727_sourceAgrees :
    SourceAgrees case_000727_support case_000727_rank.val case_000727_mask := by
  intro hlt
  have hrank : (⟨case_000727_rank.val, hlt⟩ : Fin numPairWords) = case_000727_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000727_rank.val, hlt⟩ case_000727_mask =
        case_000727_seq := by
    simpa [hrank] using case_000727_seqAtRank
  simp [SourceChecks, hseq, case_000727_support,
    checkTranslationConstraintSource, case_000727_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000727_rows :
    OppOneMinusVarFirstRows case_000727_support case_000727_rank.val case_000727_mask := by
  intro hlt
  have hrank : (⟨case_000727_rank.val, hlt⟩ : Fin numPairWords) = case_000727_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000727_rank.val, hlt⟩ case_000727_mask =
        case_000727_seq := by
    simpa [hrank] using case_000727_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000727_rank.val, hlt⟩ case_000727_mask =
        case_000727_b := by
    simpa [hrank] using case_000727_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000727_support case_000727_rank.val hlt
          case_000727_mask = case_000727_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000727_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000727_support case_000727_rank.val hlt
          case_000727_mask = case_000727_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000727_secondLine_eq]
  have case_000727_rowFirst :
      OppPosRow (FirstLineAt case_000727_support case_000727_rank.val hlt case_000727_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000727_firstLine, OppPosRow]
  have case_000727_fixedSecond :
      FixedRow (SecondLineAt case_000727_support case_000727_rank.val hlt case_000727_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000727_secondLine, FixedRow]
  exact ⟨case_000727_rowFirst, case_000727_fixedSecond⟩

private theorem case_000727_existsRows :
    ExistsOppOneMinusVarFirstRows case_000727_rank.val case_000727_mask :=
  ⟨case_000727_support, case_000727_sourceAgrees, case_000727_rows⟩

private theorem case_000727_covered :
    RowPropertyParametricCovered case_000727_rank.val case_000727_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000727_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000728_rank : Fin numPairWords := ⟨503, by decide⟩
private def case_000728_mask : SignMask := ⟨24, by decide⟩
private def case_000728_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000728_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000728_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000728_b : Vec3 Rat := { x := (-124/27), y := (-284/27), z := (-284/27) }
private def case_000728_firstLine : StrictLin2 := { a := -1, b := -1, c := (-253/31) }
private def case_000728_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000728_rankWord :
    rankPairWord? case_000728_word = some case_000728_rank := by
  decide

private theorem case_000728_unrank :
    unrankPairWord case_000728_rank = case_000728_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000728_word case_000728_rank).1
    case_000728_rankWord |>.symm

private theorem case_000728_seqChoice :
    translationChoiceSeq case_000728_word case_000728_mask = case_000728_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000728_seqAtRank :
    translationSeqAtRankMask case_000728_rank case_000728_mask = case_000728_seq := by
  rw [translationSeqAtRankMask, case_000728_unrank]
  exact case_000728_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000728_bAtRank :
    translationBAtRankMask case_000728_rank case_000728_mask = case_000728_b := by
  rw [translationBAtRankMask, case_000728_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000728_b, case_000728_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000728_firstLine_eq :
    case_000728_support.firstLine case_000728_seq case_000728_b = case_000728_firstLine := by
  norm_num [case_000728_firstLine, case_000728_support, case_000728_seq, case_000728_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000728_secondLine_eq :
    case_000728_support.secondLine case_000728_seq case_000728_b = case_000728_secondLine := by
  norm_num [case_000728_secondLine, case_000728_support, case_000728_seq, case_000728_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000728_sourceAgrees :
    SourceAgrees case_000728_support case_000728_rank.val case_000728_mask := by
  intro hlt
  have hrank : (⟨case_000728_rank.val, hlt⟩ : Fin numPairWords) = case_000728_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000728_rank.val, hlt⟩ case_000728_mask =
        case_000728_seq := by
    simpa [hrank] using case_000728_seqAtRank
  simp [SourceChecks, hseq, case_000728_support,
    checkTranslationConstraintSource, case_000728_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000728_rows :
    EqEqPosVarFirstRows case_000728_support case_000728_rank.val case_000728_mask := by
  intro hlt
  have hrank : (⟨case_000728_rank.val, hlt⟩ : Fin numPairWords) = case_000728_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000728_rank.val, hlt⟩ case_000728_mask =
        case_000728_seq := by
    simpa [hrank] using case_000728_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000728_rank.val, hlt⟩ case_000728_mask =
        case_000728_b := by
    simpa [hrank] using case_000728_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000728_support case_000728_rank.val hlt
          case_000728_mask = case_000728_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000728_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000728_support case_000728_rank.val hlt
          case_000728_mask = case_000728_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000728_secondLine_eq]
  have case_000728_rowFirst :
      EqEqPosRow (FirstLineAt case_000728_support case_000728_rank.val hlt case_000728_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000728_firstLine, EqEqPosRow]
  have case_000728_fixedSecond :
      FixedRow (SecondLineAt case_000728_support case_000728_rank.val hlt case_000728_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000728_secondLine, FixedRow]
  exact ⟨case_000728_rowFirst, case_000728_fixedSecond⟩

private theorem case_000728_existsRows :
    ExistsEqEqPosVarFirstRows case_000728_rank.val case_000728_mask :=
  ⟨case_000728_support, case_000728_sourceAgrees, case_000728_rows⟩

private theorem case_000728_covered :
    RowPropertyParametricCovered case_000728_rank.val case_000728_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000728_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000729_rank : Fin numPairWords := ⟨503, by decide⟩
private def case_000729_mask : SignMask := ⟨39, by decide⟩
private def case_000729_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000729_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000729_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000729_b : Vec3 Rat := { x := (-92/27), y := (284/27), z := (284/27) }
private def case_000729_firstLine : StrictLin2 := { a := (-46/165), b := (-46/165), c := (-64/55) }
private def case_000729_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000729_rankWord :
    rankPairWord? case_000729_word = some case_000729_rank := by
  decide

private theorem case_000729_unrank :
    unrankPairWord case_000729_rank = case_000729_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000729_word case_000729_rank).1
    case_000729_rankWord |>.symm

private theorem case_000729_seqChoice :
    translationChoiceSeq case_000729_word case_000729_mask = case_000729_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000729_seqAtRank :
    translationSeqAtRankMask case_000729_rank case_000729_mask = case_000729_seq := by
  rw [translationSeqAtRankMask, case_000729_unrank]
  exact case_000729_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000729_bAtRank :
    translationBAtRankMask case_000729_rank case_000729_mask = case_000729_b := by
  rw [translationBAtRankMask, case_000729_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000729_b, case_000729_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000729_firstLine_eq :
    case_000729_support.firstLine case_000729_seq case_000729_b = case_000729_firstLine := by
  norm_num [case_000729_firstLine, case_000729_support, case_000729_seq, case_000729_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000729_secondLine_eq :
    case_000729_support.secondLine case_000729_seq case_000729_b = case_000729_secondLine := by
  norm_num [case_000729_secondLine, case_000729_support, case_000729_seq, case_000729_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000729_sourceAgrees :
    SourceAgrees case_000729_support case_000729_rank.val case_000729_mask := by
  intro hlt
  have hrank : (⟨case_000729_rank.val, hlt⟩ : Fin numPairWords) = case_000729_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000729_rank.val, hlt⟩ case_000729_mask =
        case_000729_seq := by
    simpa [hrank] using case_000729_seqAtRank
  simp [SourceChecks, hseq, case_000729_support,
    checkTranslationConstraintSource, case_000729_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000729_rows :
    EqEqPosVarFirstRows case_000729_support case_000729_rank.val case_000729_mask := by
  intro hlt
  have hrank : (⟨case_000729_rank.val, hlt⟩ : Fin numPairWords) = case_000729_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000729_rank.val, hlt⟩ case_000729_mask =
        case_000729_seq := by
    simpa [hrank] using case_000729_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000729_rank.val, hlt⟩ case_000729_mask =
        case_000729_b := by
    simpa [hrank] using case_000729_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000729_support case_000729_rank.val hlt
          case_000729_mask = case_000729_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000729_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000729_support case_000729_rank.val hlt
          case_000729_mask = case_000729_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000729_secondLine_eq]
  have case_000729_rowFirst :
      EqEqPosRow (FirstLineAt case_000729_support case_000729_rank.val hlt case_000729_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000729_firstLine, EqEqPosRow]
  have case_000729_fixedSecond :
      FixedRow (SecondLineAt case_000729_support case_000729_rank.val hlt case_000729_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000729_secondLine, FixedRow]
  exact ⟨case_000729_rowFirst, case_000729_fixedSecond⟩

private theorem case_000729_existsRows :
    ExistsEqEqPosVarFirstRows case_000729_rank.val case_000729_mask :=
  ⟨case_000729_support, case_000729_sourceAgrees, case_000729_rows⟩

private theorem case_000729_covered :
    RowPropertyParametricCovered case_000729_rank.val case_000729_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000729_existsRows

/-- Bounded row-property quotient case `axis_a_only|rowProperty=0ef1248979a51a72226ced64e0cd085ba836f78524dfad98ea5b8d5c95f5fa61`. -/
private def case_000730_rank : Fin numPairWords := ⟨519, by decide⟩
private def case_000730_mask : SignMask := ⟨6, by decide⟩
private def case_000730_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000730_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def case_000730_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000730_b : Vec3 Rat := { x := (-1348/81), y := (-68/81), z := (868/81) }
private def case_000730_firstLine : StrictLin2 := { a := (337/17), b := 0, c := (-943/17) }
private def case_000730_secondLine : StrictLin2 := { a := (-81/68), b := 0, c := (24543/22916) }

private theorem case_000730_rankWord :
    rankPairWord? case_000730_word = some case_000730_rank := by
  decide

private theorem case_000730_unrank :
    unrankPairWord case_000730_rank = case_000730_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000730_word case_000730_rank).1
    case_000730_rankWord |>.symm

private theorem case_000730_seqChoice :
    translationChoiceSeq case_000730_word case_000730_mask = case_000730_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000730_seqAtRank :
    translationSeqAtRankMask case_000730_rank case_000730_mask = case_000730_seq := by
  rw [translationSeqAtRankMask, case_000730_unrank]
  exact case_000730_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000730_bAtRank :
    translationBAtRankMask case_000730_rank case_000730_mask = case_000730_b := by
  rw [translationBAtRankMask, case_000730_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000730_b, case_000730_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000730_firstLine_eq :
    case_000730_support.firstLine case_000730_seq case_000730_b = case_000730_firstLine := by
  norm_num [case_000730_firstLine, case_000730_support, case_000730_seq, case_000730_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000730_secondLine_eq :
    case_000730_support.secondLine case_000730_seq case_000730_b = case_000730_secondLine := by
  norm_num [case_000730_secondLine, case_000730_support, case_000730_seq, case_000730_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000730_sourceAgrees :
    SourceAgrees case_000730_support case_000730_rank.val case_000730_mask := by
  intro hlt
  have hrank : (⟨case_000730_rank.val, hlt⟩ : Fin numPairWords) = case_000730_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000730_rank.val, hlt⟩ case_000730_mask =
        case_000730_seq := by
    simpa [hrank] using case_000730_seqAtRank
  simp [SourceChecks, hseq, case_000730_support,
    checkTranslationConstraintSource, case_000730_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000730_rows :
    AxisAOnlyRows case_000730_support case_000730_rank.val case_000730_mask := by
  intro hlt
  have hrank : (⟨case_000730_rank.val, hlt⟩ : Fin numPairWords) = case_000730_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000730_rank.val, hlt⟩ case_000730_mask =
        case_000730_seq := by
    simpa [hrank] using case_000730_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000730_rank.val, hlt⟩ case_000730_mask =
        case_000730_b := by
    simpa [hrank] using case_000730_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000730_support case_000730_rank.val hlt
          case_000730_mask = case_000730_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000730_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000730_support case_000730_rank.val hlt
          case_000730_mask = case_000730_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000730_secondLine_eq]
  have case_000730_firstBZero :
      (FirstLineAt case_000730_support case_000730_rank.val hlt case_000730_mask).b = 0 := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000730_firstLine]
  have case_000730_secondBZero :
      (SecondLineAt case_000730_support case_000730_rank.val hlt case_000730_mask).b = 0 := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000730_secondLine]
  have case_000730_aProductNeg :
      (FirstLineAt case_000730_support case_000730_rank.val hlt case_000730_mask).a *
          (SecondLineAt case_000730_support case_000730_rank.val hlt case_000730_mask).a < 0 := by
    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]
    norm_num [case_000730_firstLine, case_000730_secondLine]
  have case_000730_weightedCNonpos :
      (SupportPair.multipliersAt case_000730_support
          case_000730_rank.val hlt case_000730_mask).1 *
          (FirstLineAt case_000730_support case_000730_rank.val hlt case_000730_mask).c +
        (SupportPair.multipliersAt case_000730_support
          case_000730_rank.val hlt case_000730_mask).2 *
          (SecondLineAt case_000730_support case_000730_rank.val hlt case_000730_mask).c <= 0 := by
    rw [
SupportPair.multipliersAt, hseq, hb,
      TwoSourceFarkasSupport.multipliers, case_000730_firstLine_eq,
      case_000730_secondLine_eq, FirstLineAt, SecondLineAt, hfirst, hsecond
    ]
    norm_num [
case_000730_firstLine, case_000730_secondLine,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative
    ]
  exact ⟨case_000730_firstBZero, case_000730_secondBZero,
    case_000730_aProductNeg, case_000730_weightedCNonpos⟩

private theorem case_000730_existsRows :
    ExistsAxisAOnlyRows case_000730_rank.val case_000730_mask :=
  ⟨case_000730_support, case_000730_sourceAgrees, case_000730_rows⟩

private theorem case_000730_covered :
    RowPropertyParametricCovered case_000730_rank.val case_000730_mask :=
  RowPropertyParametricCovered.axisAOnly case_000730_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000731_rank : Fin numPairWords := ⟨519, by decide⟩
private def case_000731_mask : SignMask := ⟨7, by decide⟩
private def case_000731_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000731_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000731_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000731_b : Vec3 Rat := { x := (-1348/81), y := (580/81), z := (868/81) }
private def case_000731_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000731_secondLine : StrictLin2 := { a := (-1011/22834), b := (-1011/22834), c := (-1329/11417) }

private theorem case_000731_rankWord :
    rankPairWord? case_000731_word = some case_000731_rank := by
  decide

private theorem case_000731_unrank :
    unrankPairWord case_000731_rank = case_000731_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000731_word case_000731_rank).1
    case_000731_rankWord |>.symm

private theorem case_000731_seqChoice :
    translationChoiceSeq case_000731_word case_000731_mask = case_000731_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000731_seqAtRank :
    translationSeqAtRankMask case_000731_rank case_000731_mask = case_000731_seq := by
  rw [translationSeqAtRankMask, case_000731_unrank]
  exact case_000731_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000731_bAtRank :
    translationBAtRankMask case_000731_rank case_000731_mask = case_000731_b := by
  rw [translationBAtRankMask, case_000731_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000731_b, case_000731_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000731_firstLine_eq :
    case_000731_support.firstLine case_000731_seq case_000731_b = case_000731_firstLine := by
  norm_num [case_000731_firstLine, case_000731_support, case_000731_seq, case_000731_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000731_secondLine_eq :
    case_000731_support.secondLine case_000731_seq case_000731_b = case_000731_secondLine := by
  norm_num [case_000731_secondLine, case_000731_support, case_000731_seq, case_000731_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000731_sourceAgrees :
    SourceAgrees case_000731_support case_000731_rank.val case_000731_mask := by
  intro hlt
  have hrank : (⟨case_000731_rank.val, hlt⟩ : Fin numPairWords) = case_000731_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000731_rank.val, hlt⟩ case_000731_mask =
        case_000731_seq := by
    simpa [hrank] using case_000731_seqAtRank
  simp [SourceChecks, hseq, case_000731_support,
    checkTranslationConstraintSource, case_000731_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000731_rows :
    EqEqPosVarSecondRows case_000731_support case_000731_rank.val case_000731_mask := by
  intro hlt
  have hrank : (⟨case_000731_rank.val, hlt⟩ : Fin numPairWords) = case_000731_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000731_rank.val, hlt⟩ case_000731_mask =
        case_000731_seq := by
    simpa [hrank] using case_000731_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000731_rank.val, hlt⟩ case_000731_mask =
        case_000731_b := by
    simpa [hrank] using case_000731_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000731_support case_000731_rank.val hlt
          case_000731_mask = case_000731_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000731_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000731_support case_000731_rank.val hlt
          case_000731_mask = case_000731_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000731_secondLine_eq]
  have case_000731_fixedFirst :
      FixedRow (FirstLineAt case_000731_support case_000731_rank.val hlt case_000731_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000731_firstLine, FixedRow]
  have case_000731_rowSecond :
      EqEqPosRow (SecondLineAt case_000731_support case_000731_rank.val hlt case_000731_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000731_secondLine, EqEqPosRow]
  exact ⟨case_000731_fixedFirst, case_000731_rowSecond⟩

private theorem case_000731_existsRows :
    ExistsEqEqPosVarSecondRows case_000731_rank.val case_000731_mask :=
  ⟨case_000731_support, case_000731_sourceAgrees, case_000731_rows⟩

private theorem case_000731_covered :
    RowPropertyParametricCovered case_000731_rank.val case_000731_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000731_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000732_rank : Fin numPairWords := ⟨519, by decide⟩
private def case_000732_mask : SignMask := ⟨8, by decide⟩
private def case_000732_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000732_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000732_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000732_b : Vec3 Rat := { x := (-580/81), y := (-260/81), z := (-836/81) }
private def case_000732_firstLine : StrictLin2 := { a := -1, b := -1, c := (-403/145) }
private def case_000732_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000732_rankWord :
    rankPairWord? case_000732_word = some case_000732_rank := by
  decide

private theorem case_000732_unrank :
    unrankPairWord case_000732_rank = case_000732_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000732_word case_000732_rank).1
    case_000732_rankWord |>.symm

private theorem case_000732_seqChoice :
    translationChoiceSeq case_000732_word case_000732_mask = case_000732_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000732_seqAtRank :
    translationSeqAtRankMask case_000732_rank case_000732_mask = case_000732_seq := by
  rw [translationSeqAtRankMask, case_000732_unrank]
  exact case_000732_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000732_bAtRank :
    translationBAtRankMask case_000732_rank case_000732_mask = case_000732_b := by
  rw [translationBAtRankMask, case_000732_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000732_b, case_000732_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000732_firstLine_eq :
    case_000732_support.firstLine case_000732_seq case_000732_b = case_000732_firstLine := by
  norm_num [case_000732_firstLine, case_000732_support, case_000732_seq, case_000732_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000732_secondLine_eq :
    case_000732_support.secondLine case_000732_seq case_000732_b = case_000732_secondLine := by
  norm_num [case_000732_secondLine, case_000732_support, case_000732_seq, case_000732_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000732_sourceAgrees :
    SourceAgrees case_000732_support case_000732_rank.val case_000732_mask := by
  intro hlt
  have hrank : (⟨case_000732_rank.val, hlt⟩ : Fin numPairWords) = case_000732_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000732_rank.val, hlt⟩ case_000732_mask =
        case_000732_seq := by
    simpa [hrank] using case_000732_seqAtRank
  simp [SourceChecks, hseq, case_000732_support,
    checkTranslationConstraintSource, case_000732_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000732_rows :
    EqEqPosVarFirstRows case_000732_support case_000732_rank.val case_000732_mask := by
  intro hlt
  have hrank : (⟨case_000732_rank.val, hlt⟩ : Fin numPairWords) = case_000732_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000732_rank.val, hlt⟩ case_000732_mask =
        case_000732_seq := by
    simpa [hrank] using case_000732_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000732_rank.val, hlt⟩ case_000732_mask =
        case_000732_b := by
    simpa [hrank] using case_000732_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000732_support case_000732_rank.val hlt
          case_000732_mask = case_000732_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000732_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000732_support case_000732_rank.val hlt
          case_000732_mask = case_000732_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000732_secondLine_eq]
  have case_000732_rowFirst :
      EqEqPosRow (FirstLineAt case_000732_support case_000732_rank.val hlt case_000732_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000732_firstLine, EqEqPosRow]
  have case_000732_fixedSecond :
      FixedRow (SecondLineAt case_000732_support case_000732_rank.val hlt case_000732_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000732_secondLine, FixedRow]
  exact ⟨case_000732_rowFirst, case_000732_fixedSecond⟩

private theorem case_000732_existsRows :
    ExistsEqEqPosVarFirstRows case_000732_rank.val case_000732_mask :=
  ⟨case_000732_support, case_000732_sourceAgrees, case_000732_rows⟩

private theorem case_000732_covered :
    RowPropertyParametricCovered case_000732_rank.val case_000732_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000732_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000733_rank : Fin numPairWords := ⟨519, by decide⟩
private def case_000733_mask : SignMask := ⟨13, by decide⟩
private def case_000733_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000733_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000733_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000733_b : Vec3 Rat := { x := (-1012/81), y := (820/81), z := (-404/81) }
private def case_000733_firstLine : StrictLin2 := { a := 1, b := -1, c := (-359/253) }
private def case_000733_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000733_rankWord :
    rankPairWord? case_000733_word = some case_000733_rank := by
  decide

private theorem case_000733_unrank :
    unrankPairWord case_000733_rank = case_000733_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000733_word case_000733_rank).1
    case_000733_rankWord |>.symm

private theorem case_000733_seqChoice :
    translationChoiceSeq case_000733_word case_000733_mask = case_000733_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000733_seqAtRank :
    translationSeqAtRankMask case_000733_rank case_000733_mask = case_000733_seq := by
  rw [translationSeqAtRankMask, case_000733_unrank]
  exact case_000733_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000733_bAtRank :
    translationBAtRankMask case_000733_rank case_000733_mask = case_000733_b := by
  rw [translationBAtRankMask, case_000733_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000733_b, case_000733_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000733_firstLine_eq :
    case_000733_support.firstLine case_000733_seq case_000733_b = case_000733_firstLine := by
  norm_num [case_000733_firstLine, case_000733_support, case_000733_seq, case_000733_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000733_secondLine_eq :
    case_000733_support.secondLine case_000733_seq case_000733_b = case_000733_secondLine := by
  norm_num [case_000733_secondLine, case_000733_support, case_000733_seq, case_000733_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000733_sourceAgrees :
    SourceAgrees case_000733_support case_000733_rank.val case_000733_mask := by
  intro hlt
  have hrank : (⟨case_000733_rank.val, hlt⟩ : Fin numPairWords) = case_000733_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000733_rank.val, hlt⟩ case_000733_mask =
        case_000733_seq := by
    simpa [hrank] using case_000733_seqAtRank
  simp [SourceChecks, hseq, case_000733_support,
    checkTranslationConstraintSource, case_000733_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000733_rows :
    OppMinusOneVarFirstRows case_000733_support case_000733_rank.val case_000733_mask := by
  intro hlt
  have hrank : (⟨case_000733_rank.val, hlt⟩ : Fin numPairWords) = case_000733_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000733_rank.val, hlt⟩ case_000733_mask =
        case_000733_seq := by
    simpa [hrank] using case_000733_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000733_rank.val, hlt⟩ case_000733_mask =
        case_000733_b := by
    simpa [hrank] using case_000733_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000733_support case_000733_rank.val hlt
          case_000733_mask = case_000733_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000733_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000733_support case_000733_rank.val hlt
          case_000733_mask = case_000733_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000733_secondLine_eq]
  have case_000733_rowFirst :
      OppNegRow (FirstLineAt case_000733_support case_000733_rank.val hlt case_000733_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000733_firstLine, OppNegRow]
  have case_000733_fixedSecond :
      FixedRow (SecondLineAt case_000733_support case_000733_rank.val hlt case_000733_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000733_secondLine, FixedRow]
  exact ⟨case_000733_rowFirst, case_000733_fixedSecond⟩

private theorem case_000733_existsRows :
    ExistsOppMinusOneVarFirstRows case_000733_rank.val case_000733_mask :=
  ⟨case_000733_support, case_000733_sourceAgrees, case_000733_rows⟩

private theorem case_000733_covered :
    RowPropertyParametricCovered case_000733_rank.val case_000733_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000733_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000734_rank : Fin numPairWords := ⟨519, by decide⟩
private def case_000734_mask : SignMask := ⟨16, by decide⟩
private def case_000734_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000734_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000734_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000734_b : Vec3 Rat := { x := (-356/81), y := (-964/81), z := (-388/81) }
private def case_000734_firstLine : StrictLin2 := { a := -1, b := -1, c := (-587/89) }
private def case_000734_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000734_rankWord :
    rankPairWord? case_000734_word = some case_000734_rank := by
  decide

private theorem case_000734_unrank :
    unrankPairWord case_000734_rank = case_000734_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000734_word case_000734_rank).1
    case_000734_rankWord |>.symm

private theorem case_000734_seqChoice :
    translationChoiceSeq case_000734_word case_000734_mask = case_000734_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000734_seqAtRank :
    translationSeqAtRankMask case_000734_rank case_000734_mask = case_000734_seq := by
  rw [translationSeqAtRankMask, case_000734_unrank]
  exact case_000734_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000734_bAtRank :
    translationBAtRankMask case_000734_rank case_000734_mask = case_000734_b := by
  rw [translationBAtRankMask, case_000734_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000734_b, case_000734_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000734_firstLine_eq :
    case_000734_support.firstLine case_000734_seq case_000734_b = case_000734_firstLine := by
  norm_num [case_000734_firstLine, case_000734_support, case_000734_seq, case_000734_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000734_secondLine_eq :
    case_000734_support.secondLine case_000734_seq case_000734_b = case_000734_secondLine := by
  norm_num [case_000734_secondLine, case_000734_support, case_000734_seq, case_000734_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000734_sourceAgrees :
    SourceAgrees case_000734_support case_000734_rank.val case_000734_mask := by
  intro hlt
  have hrank : (⟨case_000734_rank.val, hlt⟩ : Fin numPairWords) = case_000734_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000734_rank.val, hlt⟩ case_000734_mask =
        case_000734_seq := by
    simpa [hrank] using case_000734_seqAtRank
  simp [SourceChecks, hseq, case_000734_support,
    checkTranslationConstraintSource, case_000734_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000734_rows :
    EqEqPosVarFirstRows case_000734_support case_000734_rank.val case_000734_mask := by
  intro hlt
  have hrank : (⟨case_000734_rank.val, hlt⟩ : Fin numPairWords) = case_000734_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000734_rank.val, hlt⟩ case_000734_mask =
        case_000734_seq := by
    simpa [hrank] using case_000734_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000734_rank.val, hlt⟩ case_000734_mask =
        case_000734_b := by
    simpa [hrank] using case_000734_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000734_support case_000734_rank.val hlt
          case_000734_mask = case_000734_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000734_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000734_support case_000734_rank.val hlt
          case_000734_mask = case_000734_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000734_secondLine_eq]
  have case_000734_rowFirst :
      EqEqPosRow (FirstLineAt case_000734_support case_000734_rank.val hlt case_000734_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000734_firstLine, EqEqPosRow]
  have case_000734_fixedSecond :
      FixedRow (SecondLineAt case_000734_support case_000734_rank.val hlt case_000734_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000734_secondLine, FixedRow]
  exact ⟨case_000734_rowFirst, case_000734_fixedSecond⟩

private theorem case_000734_existsRows :
    ExistsEqEqPosVarFirstRows case_000734_rank.val case_000734_mask :=
  ⟨case_000734_support, case_000734_sourceAgrees, case_000734_rows⟩

private theorem case_000734_covered :
    RowPropertyParametricCovered case_000734_rank.val case_000734_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000734_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000735_rank : Fin numPairWords := ⟨519, by decide⟩
private def case_000735_mask : SignMask := ⟨18, by decide⟩
private def case_000735_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩
private def case_000735_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000735_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000735_b : Vec3 Rat := { x := (-356/81), y := (-964/81), z := (260/81) }
private def case_000735_firstLine : StrictLin2 := { a := -1, b := -1, c := (-263/89) }
private def case_000735_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000735_rankWord :
    rankPairWord? case_000735_word = some case_000735_rank := by
  decide

private theorem case_000735_unrank :
    unrankPairWord case_000735_rank = case_000735_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000735_word case_000735_rank).1
    case_000735_rankWord |>.symm

private theorem case_000735_seqChoice :
    translationChoiceSeq case_000735_word case_000735_mask = case_000735_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000735_seqAtRank :
    translationSeqAtRankMask case_000735_rank case_000735_mask = case_000735_seq := by
  rw [translationSeqAtRankMask, case_000735_unrank]
  exact case_000735_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000735_bAtRank :
    translationBAtRankMask case_000735_rank case_000735_mask = case_000735_b := by
  rw [translationBAtRankMask, case_000735_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000735_b, case_000735_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000735_firstLine_eq :
    case_000735_support.firstLine case_000735_seq case_000735_b = case_000735_firstLine := by
  norm_num [case_000735_firstLine, case_000735_support, case_000735_seq, case_000735_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000735_secondLine_eq :
    case_000735_support.secondLine case_000735_seq case_000735_b = case_000735_secondLine := by
  norm_num [case_000735_secondLine, case_000735_support, case_000735_seq, case_000735_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000735_sourceAgrees :
    SourceAgrees case_000735_support case_000735_rank.val case_000735_mask := by
  intro hlt
  have hrank : (⟨case_000735_rank.val, hlt⟩ : Fin numPairWords) = case_000735_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000735_rank.val, hlt⟩ case_000735_mask =
        case_000735_seq := by
    simpa [hrank] using case_000735_seqAtRank
  simp [SourceChecks, hseq, case_000735_support,
    checkTranslationConstraintSource, case_000735_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000735_rows :
    EqEqPosVarFirstRows case_000735_support case_000735_rank.val case_000735_mask := by
  intro hlt
  have hrank : (⟨case_000735_rank.val, hlt⟩ : Fin numPairWords) = case_000735_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000735_rank.val, hlt⟩ case_000735_mask =
        case_000735_seq := by
    simpa [hrank] using case_000735_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000735_rank.val, hlt⟩ case_000735_mask =
        case_000735_b := by
    simpa [hrank] using case_000735_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000735_support case_000735_rank.val hlt
          case_000735_mask = case_000735_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000735_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000735_support case_000735_rank.val hlt
          case_000735_mask = case_000735_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000735_secondLine_eq]
  have case_000735_rowFirst :
      EqEqPosRow (FirstLineAt case_000735_support case_000735_rank.val hlt case_000735_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000735_firstLine, EqEqPosRow]
  have case_000735_fixedSecond :
      FixedRow (SecondLineAt case_000735_support case_000735_rank.val hlt case_000735_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000735_secondLine, FixedRow]
  exact ⟨case_000735_rowFirst, case_000735_fixedSecond⟩

private theorem case_000735_existsRows :
    ExistsEqEqPosVarFirstRows case_000735_rank.val case_000735_mask :=
  ⟨case_000735_support, case_000735_sourceAgrees, case_000735_rows⟩

private theorem case_000735_covered :
    RowPropertyParametricCovered case_000735_rank.val case_000735_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000735_existsRows

inductive Group022Covered : Nat -> SignMask -> Prop
  | case_000704 : Group022Covered case_000704_rank.val case_000704_mask
  | case_000705 : Group022Covered case_000705_rank.val case_000705_mask
  | case_000706 : Group022Covered case_000706_rank.val case_000706_mask
  | case_000707 : Group022Covered case_000707_rank.val case_000707_mask
  | case_000708 : Group022Covered case_000708_rank.val case_000708_mask
  | case_000709 : Group022Covered case_000709_rank.val case_000709_mask
  | case_000710 : Group022Covered case_000710_rank.val case_000710_mask
  | case_000711 : Group022Covered case_000711_rank.val case_000711_mask
  | case_000712 : Group022Covered case_000712_rank.val case_000712_mask
  | case_000713 : Group022Covered case_000713_rank.val case_000713_mask
  | case_000714 : Group022Covered case_000714_rank.val case_000714_mask
  | case_000715 : Group022Covered case_000715_rank.val case_000715_mask
  | case_000716 : Group022Covered case_000716_rank.val case_000716_mask
  | case_000717 : Group022Covered case_000717_rank.val case_000717_mask
  | case_000718 : Group022Covered case_000718_rank.val case_000718_mask
  | case_000719 : Group022Covered case_000719_rank.val case_000719_mask
  | case_000720 : Group022Covered case_000720_rank.val case_000720_mask
  | case_000721 : Group022Covered case_000721_rank.val case_000721_mask
  | case_000722 : Group022Covered case_000722_rank.val case_000722_mask
  | case_000723 : Group022Covered case_000723_rank.val case_000723_mask
  | case_000724 : Group022Covered case_000724_rank.val case_000724_mask
  | case_000725 : Group022Covered case_000725_rank.val case_000725_mask
  | case_000726 : Group022Covered case_000726_rank.val case_000726_mask
  | case_000727 : Group022Covered case_000727_rank.val case_000727_mask
  | case_000728 : Group022Covered case_000728_rank.val case_000728_mask
  | case_000729 : Group022Covered case_000729_rank.val case_000729_mask
  | case_000730 : Group022Covered case_000730_rank.val case_000730_mask
  | case_000731 : Group022Covered case_000731_rank.val case_000731_mask
  | case_000732 : Group022Covered case_000732_rank.val case_000732_mask
  | case_000733 : Group022Covered case_000733_rank.val case_000733_mask
  | case_000734 : Group022Covered case_000734_rank.val case_000734_mask
  | case_000735 : Group022Covered case_000735_rank.val case_000735_mask

theorem Group022GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group022Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000704 =>
      exact RowPropertyParametricCovered.kills case_000704_covered
  | case_000705 =>
      exact RowPropertyParametricCovered.kills case_000705_covered
  | case_000706 =>
      exact RowPropertyParametricCovered.kills case_000706_covered
  | case_000707 =>
      exact RowPropertyParametricCovered.kills case_000707_covered
  | case_000708 =>
      exact RowPropertyParametricCovered.kills case_000708_covered
  | case_000709 =>
      exact RowPropertyParametricCovered.kills case_000709_covered
  | case_000710 =>
      exact RowPropertyParametricCovered.kills case_000710_covered
  | case_000711 =>
      exact RowPropertyParametricCovered.kills case_000711_covered
  | case_000712 =>
      exact RowPropertyParametricCovered.kills case_000712_covered
  | case_000713 =>
      exact RowPropertyParametricCovered.kills case_000713_covered
  | case_000714 =>
      exact RowPropertyParametricCovered.kills case_000714_covered
  | case_000715 =>
      exact RowPropertyParametricCovered.kills case_000715_covered
  | case_000716 =>
      exact RowPropertyParametricCovered.kills case_000716_covered
  | case_000717 =>
      exact RowPropertyParametricCovered.kills case_000717_covered
  | case_000718 =>
      exact RowPropertyParametricCovered.kills case_000718_covered
  | case_000719 =>
      exact RowPropertyParametricCovered.kills case_000719_covered
  | case_000720 =>
      exact RowPropertyParametricCovered.kills case_000720_covered
  | case_000721 =>
      exact RowPropertyParametricCovered.kills case_000721_covered
  | case_000722 =>
      exact RowPropertyParametricCovered.kills case_000722_covered
  | case_000723 =>
      exact RowPropertyParametricCovered.kills case_000723_covered
  | case_000724 =>
      exact RowPropertyParametricCovered.kills case_000724_covered
  | case_000725 =>
      exact RowPropertyParametricCovered.kills case_000725_covered
  | case_000726 =>
      exact RowPropertyParametricCovered.kills case_000726_covered
  | case_000727 =>
      exact RowPropertyParametricCovered.kills case_000727_covered
  | case_000728 =>
      exact RowPropertyParametricCovered.kills case_000728_covered
  | case_000729 =>
      exact RowPropertyParametricCovered.kills case_000729_covered
  | case_000730 =>
      exact RowPropertyParametricCovered.kills case_000730_covered
  | case_000731 =>
      exact RowPropertyParametricCovered.kills case_000731_covered
  | case_000732 =>
      exact RowPropertyParametricCovered.kills case_000732_covered
  | case_000733 =>
      exact RowPropertyParametricCovered.kills case_000733_covered
  | case_000734 =>
      exact RowPropertyParametricCovered.kills case_000734_covered
  | case_000735 =>
      exact RowPropertyParametricCovered.kills case_000735_covered

theorem Group022_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group022
