import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group009

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000288_rank : Fin numPairWords := ⟨78, by decide⟩
private def case_000288_mask : SignMask := ⟨63, by decide⟩
private def case_000288_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩
private def case_000288_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000288_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000288_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (116/9) }
private def case_000288_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000288_secondLine : StrictLin2 := { a := (-9/116), b := (9/116), c := (-9/58) }

private theorem case_000288_rankWord :
    rankPairWord? case_000288_word = some case_000288_rank := by
  decide

private theorem case_000288_unrank :
    unrankPairWord case_000288_rank = case_000288_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000288_word case_000288_rank).1
    case_000288_rankWord |>.symm

private theorem case_000288_seqChoice :
    translationChoiceSeq case_000288_word case_000288_mask = case_000288_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000288_seqAtRank :
    translationSeqAtRankMask case_000288_rank case_000288_mask = case_000288_seq := by
  rw [translationSeqAtRankMask, case_000288_unrank]
  exact case_000288_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000288_bAtRank :
    translationBAtRankMask case_000288_rank case_000288_mask = case_000288_b := by
  rw [translationBAtRankMask, case_000288_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000288_b, case_000288_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000288_firstLine_eq :
    case_000288_support.firstLine case_000288_seq case_000288_b = case_000288_firstLine := by
  norm_num [case_000288_firstLine, case_000288_support, case_000288_seq, case_000288_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000288_secondLine_eq :
    case_000288_support.secondLine case_000288_seq case_000288_b = case_000288_secondLine := by
  norm_num [case_000288_secondLine, case_000288_support, case_000288_seq, case_000288_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000288_sourceAgrees :
    SourceAgrees case_000288_support case_000288_rank.val case_000288_mask := by
  intro hlt
  have hrank : (⟨case_000288_rank.val, hlt⟩ : Fin numPairWords) = case_000288_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000288_rank.val, hlt⟩ case_000288_mask =
        case_000288_seq := by
    simpa [hrank] using case_000288_seqAtRank
  simp [SourceChecks, hseq, case_000288_support,
    checkTranslationConstraintSource, case_000288_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000288_rows :
    OppOneMinusVarSecondRows case_000288_support case_000288_rank.val case_000288_mask := by
  intro hlt
  have hrank : (⟨case_000288_rank.val, hlt⟩ : Fin numPairWords) = case_000288_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000288_rank.val, hlt⟩ case_000288_mask =
        case_000288_seq := by
    simpa [hrank] using case_000288_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000288_rank.val, hlt⟩ case_000288_mask =
        case_000288_b := by
    simpa [hrank] using case_000288_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000288_support case_000288_rank.val hlt
          case_000288_mask = case_000288_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000288_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000288_support case_000288_rank.val hlt
          case_000288_mask = case_000288_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000288_secondLine_eq]
  have case_000288_fixedFirst :
      FixedRow (FirstLineAt case_000288_support case_000288_rank.val hlt case_000288_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000288_firstLine, FixedRow]
  have case_000288_rowSecond :
      OppPosRow (SecondLineAt case_000288_support case_000288_rank.val hlt case_000288_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000288_secondLine, OppPosRow]
  exact ⟨case_000288_fixedFirst, case_000288_rowSecond⟩

private theorem case_000288_existsRows :
    ExistsOppOneMinusVarSecondRows case_000288_rank.val case_000288_mask :=
  ⟨case_000288_support, case_000288_sourceAgrees, case_000288_rows⟩

private theorem case_000288_covered :
    RowPropertyParametricCovered case_000288_rank.val case_000288_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000288_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000289_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000289_mask : SignMask := ⟨8, by decide⟩
private def case_000289_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000289_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000289_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000289_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (-148/9) }
private def case_000289_firstLine : StrictLin2 := { a := -1, b := -1, c := (-87/13) }
private def case_000289_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000289_rankWord :
    rankPairWord? case_000289_word = some case_000289_rank := by
  decide

private theorem case_000289_unrank :
    unrankPairWord case_000289_rank = case_000289_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000289_word case_000289_rank).1
    case_000289_rankWord |>.symm

private theorem case_000289_seqChoice :
    translationChoiceSeq case_000289_word case_000289_mask = case_000289_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000289_seqAtRank :
    translationSeqAtRankMask case_000289_rank case_000289_mask = case_000289_seq := by
  rw [translationSeqAtRankMask, case_000289_unrank]
  exact case_000289_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000289_bAtRank :
    translationBAtRankMask case_000289_rank case_000289_mask = case_000289_b := by
  rw [translationBAtRankMask, case_000289_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000289_b, case_000289_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000289_firstLine_eq :
    case_000289_support.firstLine case_000289_seq case_000289_b = case_000289_firstLine := by
  norm_num [case_000289_firstLine, case_000289_support, case_000289_seq, case_000289_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000289_secondLine_eq :
    case_000289_support.secondLine case_000289_seq case_000289_b = case_000289_secondLine := by
  norm_num [case_000289_secondLine, case_000289_support, case_000289_seq, case_000289_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000289_sourceAgrees :
    SourceAgrees case_000289_support case_000289_rank.val case_000289_mask := by
  intro hlt
  have hrank : (⟨case_000289_rank.val, hlt⟩ : Fin numPairWords) = case_000289_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000289_rank.val, hlt⟩ case_000289_mask =
        case_000289_seq := by
    simpa [hrank] using case_000289_seqAtRank
  simp [SourceChecks, hseq, case_000289_support,
    checkTranslationConstraintSource, case_000289_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000289_rows :
    EqEqPosVarFirstRows case_000289_support case_000289_rank.val case_000289_mask := by
  intro hlt
  have hrank : (⟨case_000289_rank.val, hlt⟩ : Fin numPairWords) = case_000289_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000289_rank.val, hlt⟩ case_000289_mask =
        case_000289_seq := by
    simpa [hrank] using case_000289_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000289_rank.val, hlt⟩ case_000289_mask =
        case_000289_b := by
    simpa [hrank] using case_000289_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000289_support case_000289_rank.val hlt
          case_000289_mask = case_000289_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000289_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000289_support case_000289_rank.val hlt
          case_000289_mask = case_000289_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000289_secondLine_eq]
  have case_000289_rowFirst :
      EqEqPosRow (FirstLineAt case_000289_support case_000289_rank.val hlt case_000289_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000289_firstLine, EqEqPosRow]
  have case_000289_fixedSecond :
      FixedRow (SecondLineAt case_000289_support case_000289_rank.val hlt case_000289_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000289_secondLine, FixedRow]
  exact ⟨case_000289_rowFirst, case_000289_fixedSecond⟩

private theorem case_000289_existsRows :
    ExistsEqEqPosVarFirstRows case_000289_rank.val case_000289_mask :=
  ⟨case_000289_support, case_000289_sourceAgrees, case_000289_rows⟩

private theorem case_000289_covered :
    RowPropertyParametricCovered case_000289_rank.val case_000289_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000289_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000290_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000290_mask : SignMask := ⟨9, by decide⟩
private def case_000290_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000290_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000290_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000290_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (-148/9) }
private def case_000290_firstLine : StrictLin2 := { a := -1, b := -1, c := (-51/13) }
private def case_000290_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000290_rankWord :
    rankPairWord? case_000290_word = some case_000290_rank := by
  decide

private theorem case_000290_unrank :
    unrankPairWord case_000290_rank = case_000290_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000290_word case_000290_rank).1
    case_000290_rankWord |>.symm

private theorem case_000290_seqChoice :
    translationChoiceSeq case_000290_word case_000290_mask = case_000290_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000290_seqAtRank :
    translationSeqAtRankMask case_000290_rank case_000290_mask = case_000290_seq := by
  rw [translationSeqAtRankMask, case_000290_unrank]
  exact case_000290_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000290_bAtRank :
    translationBAtRankMask case_000290_rank case_000290_mask = case_000290_b := by
  rw [translationBAtRankMask, case_000290_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000290_b, case_000290_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000290_firstLine_eq :
    case_000290_support.firstLine case_000290_seq case_000290_b = case_000290_firstLine := by
  norm_num [case_000290_firstLine, case_000290_support, case_000290_seq, case_000290_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000290_secondLine_eq :
    case_000290_support.secondLine case_000290_seq case_000290_b = case_000290_secondLine := by
  norm_num [case_000290_secondLine, case_000290_support, case_000290_seq, case_000290_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000290_sourceAgrees :
    SourceAgrees case_000290_support case_000290_rank.val case_000290_mask := by
  intro hlt
  have hrank : (⟨case_000290_rank.val, hlt⟩ : Fin numPairWords) = case_000290_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000290_rank.val, hlt⟩ case_000290_mask =
        case_000290_seq := by
    simpa [hrank] using case_000290_seqAtRank
  simp [SourceChecks, hseq, case_000290_support,
    checkTranslationConstraintSource, case_000290_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000290_rows :
    EqEqPosVarFirstRows case_000290_support case_000290_rank.val case_000290_mask := by
  intro hlt
  have hrank : (⟨case_000290_rank.val, hlt⟩ : Fin numPairWords) = case_000290_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000290_rank.val, hlt⟩ case_000290_mask =
        case_000290_seq := by
    simpa [hrank] using case_000290_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000290_rank.val, hlt⟩ case_000290_mask =
        case_000290_b := by
    simpa [hrank] using case_000290_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000290_support case_000290_rank.val hlt
          case_000290_mask = case_000290_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000290_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000290_support case_000290_rank.val hlt
          case_000290_mask = case_000290_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000290_secondLine_eq]
  have case_000290_rowFirst :
      EqEqPosRow (FirstLineAt case_000290_support case_000290_rank.val hlt case_000290_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000290_firstLine, EqEqPosRow]
  have case_000290_fixedSecond :
      FixedRow (SecondLineAt case_000290_support case_000290_rank.val hlt case_000290_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000290_secondLine, FixedRow]
  exact ⟨case_000290_rowFirst, case_000290_fixedSecond⟩

private theorem case_000290_existsRows :
    ExistsEqEqPosVarFirstRows case_000290_rank.val case_000290_mask :=
  ⟨case_000290_support, case_000290_sourceAgrees, case_000290_rows⟩

private theorem case_000290_covered :
    RowPropertyParametricCovered case_000290_rank.val case_000290_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000290_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000291_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000291_mask : SignMask := ⟨13, by decide⟩
private def case_000291_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000291_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000291_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000291_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-100/9) }
private def case_000291_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000291_secondLine : StrictLin2 := { a := (-75/374), b := (-75/374), c := (-193/187) }

private theorem case_000291_rankWord :
    rankPairWord? case_000291_word = some case_000291_rank := by
  decide

private theorem case_000291_unrank :
    unrankPairWord case_000291_rank = case_000291_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000291_word case_000291_rank).1
    case_000291_rankWord |>.symm

private theorem case_000291_seqChoice :
    translationChoiceSeq case_000291_word case_000291_mask = case_000291_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000291_seqAtRank :
    translationSeqAtRankMask case_000291_rank case_000291_mask = case_000291_seq := by
  rw [translationSeqAtRankMask, case_000291_unrank]
  exact case_000291_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000291_bAtRank :
    translationBAtRankMask case_000291_rank case_000291_mask = case_000291_b := by
  rw [translationBAtRankMask, case_000291_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000291_b, case_000291_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000291_firstLine_eq :
    case_000291_support.firstLine case_000291_seq case_000291_b = case_000291_firstLine := by
  norm_num [case_000291_firstLine, case_000291_support, case_000291_seq, case_000291_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000291_secondLine_eq :
    case_000291_support.secondLine case_000291_seq case_000291_b = case_000291_secondLine := by
  norm_num [case_000291_secondLine, case_000291_support, case_000291_seq, case_000291_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000291_sourceAgrees :
    SourceAgrees case_000291_support case_000291_rank.val case_000291_mask := by
  intro hlt
  have hrank : (⟨case_000291_rank.val, hlt⟩ : Fin numPairWords) = case_000291_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000291_rank.val, hlt⟩ case_000291_mask =
        case_000291_seq := by
    simpa [hrank] using case_000291_seqAtRank
  simp [SourceChecks, hseq, case_000291_support,
    checkTranslationConstraintSource, case_000291_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000291_rows :
    EqEqPosVarSecondRows case_000291_support case_000291_rank.val case_000291_mask := by
  intro hlt
  have hrank : (⟨case_000291_rank.val, hlt⟩ : Fin numPairWords) = case_000291_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000291_rank.val, hlt⟩ case_000291_mask =
        case_000291_seq := by
    simpa [hrank] using case_000291_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000291_rank.val, hlt⟩ case_000291_mask =
        case_000291_b := by
    simpa [hrank] using case_000291_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000291_support case_000291_rank.val hlt
          case_000291_mask = case_000291_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000291_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000291_support case_000291_rank.val hlt
          case_000291_mask = case_000291_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000291_secondLine_eq]
  have case_000291_fixedFirst :
      FixedRow (FirstLineAt case_000291_support case_000291_rank.val hlt case_000291_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000291_firstLine, FixedRow]
  have case_000291_rowSecond :
      EqEqPosRow (SecondLineAt case_000291_support case_000291_rank.val hlt case_000291_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000291_secondLine, EqEqPosRow]
  exact ⟨case_000291_fixedFirst, case_000291_rowSecond⟩

private theorem case_000291_existsRows :
    ExistsEqEqPosVarSecondRows case_000291_rank.val case_000291_mask :=
  ⟨case_000291_support, case_000291_sourceAgrees, case_000291_rows⟩

private theorem case_000291_covered :
    RowPropertyParametricCovered case_000291_rank.val case_000291_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000291_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000292_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000292_mask : SignMask := ⟨16, by decide⟩
private def case_000292_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000292_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000292_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000292_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-20/9) }
private def case_000292_firstLine : StrictLin2 := { a := -1, b := -1, c := (-63/5) }
private def case_000292_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000292_rankWord :
    rankPairWord? case_000292_word = some case_000292_rank := by
  decide

private theorem case_000292_unrank :
    unrankPairWord case_000292_rank = case_000292_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000292_word case_000292_rank).1
    case_000292_rankWord |>.symm

private theorem case_000292_seqChoice :
    translationChoiceSeq case_000292_word case_000292_mask = case_000292_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000292_seqAtRank :
    translationSeqAtRankMask case_000292_rank case_000292_mask = case_000292_seq := by
  rw [translationSeqAtRankMask, case_000292_unrank]
  exact case_000292_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000292_bAtRank :
    translationBAtRankMask case_000292_rank case_000292_mask = case_000292_b := by
  rw [translationBAtRankMask, case_000292_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000292_b, case_000292_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000292_firstLine_eq :
    case_000292_support.firstLine case_000292_seq case_000292_b = case_000292_firstLine := by
  norm_num [case_000292_firstLine, case_000292_support, case_000292_seq, case_000292_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000292_secondLine_eq :
    case_000292_support.secondLine case_000292_seq case_000292_b = case_000292_secondLine := by
  norm_num [case_000292_secondLine, case_000292_support, case_000292_seq, case_000292_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000292_sourceAgrees :
    SourceAgrees case_000292_support case_000292_rank.val case_000292_mask := by
  intro hlt
  have hrank : (⟨case_000292_rank.val, hlt⟩ : Fin numPairWords) = case_000292_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000292_rank.val, hlt⟩ case_000292_mask =
        case_000292_seq := by
    simpa [hrank] using case_000292_seqAtRank
  simp [SourceChecks, hseq, case_000292_support,
    checkTranslationConstraintSource, case_000292_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000292_rows :
    EqEqPosVarFirstRows case_000292_support case_000292_rank.val case_000292_mask := by
  intro hlt
  have hrank : (⟨case_000292_rank.val, hlt⟩ : Fin numPairWords) = case_000292_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000292_rank.val, hlt⟩ case_000292_mask =
        case_000292_seq := by
    simpa [hrank] using case_000292_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000292_rank.val, hlt⟩ case_000292_mask =
        case_000292_b := by
    simpa [hrank] using case_000292_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000292_support case_000292_rank.val hlt
          case_000292_mask = case_000292_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000292_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000292_support case_000292_rank.val hlt
          case_000292_mask = case_000292_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000292_secondLine_eq]
  have case_000292_rowFirst :
      EqEqPosRow (FirstLineAt case_000292_support case_000292_rank.val hlt case_000292_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000292_firstLine, EqEqPosRow]
  have case_000292_fixedSecond :
      FixedRow (SecondLineAt case_000292_support case_000292_rank.val hlt case_000292_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000292_secondLine, FixedRow]
  exact ⟨case_000292_rowFirst, case_000292_fixedSecond⟩

private theorem case_000292_existsRows :
    ExistsEqEqPosVarFirstRows case_000292_rank.val case_000292_mask :=
  ⟨case_000292_support, case_000292_sourceAgrees, case_000292_rows⟩

private theorem case_000292_covered :
    RowPropertyParametricCovered case_000292_rank.val case_000292_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000292_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000293_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000293_mask : SignMask := ⟨18, by decide⟩
private def case_000293_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000293_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000293_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000293_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (52/9) }
private def case_000293_firstLine : StrictLin2 := { a := -1, b := -1, c := (-27/5) }
private def case_000293_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000293_rankWord :
    rankPairWord? case_000293_word = some case_000293_rank := by
  decide

private theorem case_000293_unrank :
    unrankPairWord case_000293_rank = case_000293_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000293_word case_000293_rank).1
    case_000293_rankWord |>.symm

private theorem case_000293_seqChoice :
    translationChoiceSeq case_000293_word case_000293_mask = case_000293_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000293_seqAtRank :
    translationSeqAtRankMask case_000293_rank case_000293_mask = case_000293_seq := by
  rw [translationSeqAtRankMask, case_000293_unrank]
  exact case_000293_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000293_bAtRank :
    translationBAtRankMask case_000293_rank case_000293_mask = case_000293_b := by
  rw [translationBAtRankMask, case_000293_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000293_b, case_000293_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000293_firstLine_eq :
    case_000293_support.firstLine case_000293_seq case_000293_b = case_000293_firstLine := by
  norm_num [case_000293_firstLine, case_000293_support, case_000293_seq, case_000293_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000293_secondLine_eq :
    case_000293_support.secondLine case_000293_seq case_000293_b = case_000293_secondLine := by
  norm_num [case_000293_secondLine, case_000293_support, case_000293_seq, case_000293_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000293_sourceAgrees :
    SourceAgrees case_000293_support case_000293_rank.val case_000293_mask := by
  intro hlt
  have hrank : (⟨case_000293_rank.val, hlt⟩ : Fin numPairWords) = case_000293_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000293_rank.val, hlt⟩ case_000293_mask =
        case_000293_seq := by
    simpa [hrank] using case_000293_seqAtRank
  simp [SourceChecks, hseq, case_000293_support,
    checkTranslationConstraintSource, case_000293_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000293_rows :
    EqEqPosVarFirstRows case_000293_support case_000293_rank.val case_000293_mask := by
  intro hlt
  have hrank : (⟨case_000293_rank.val, hlt⟩ : Fin numPairWords) = case_000293_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000293_rank.val, hlt⟩ case_000293_mask =
        case_000293_seq := by
    simpa [hrank] using case_000293_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000293_rank.val, hlt⟩ case_000293_mask =
        case_000293_b := by
    simpa [hrank] using case_000293_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000293_support case_000293_rank.val hlt
          case_000293_mask = case_000293_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000293_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000293_support case_000293_rank.val hlt
          case_000293_mask = case_000293_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000293_secondLine_eq]
  have case_000293_rowFirst :
      EqEqPosRow (FirstLineAt case_000293_support case_000293_rank.val hlt case_000293_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000293_firstLine, EqEqPosRow]
  have case_000293_fixedSecond :
      FixedRow (SecondLineAt case_000293_support case_000293_rank.val hlt case_000293_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000293_secondLine, FixedRow]
  exact ⟨case_000293_rowFirst, case_000293_fixedSecond⟩

private theorem case_000293_existsRows :
    ExistsEqEqPosVarFirstRows case_000293_rank.val case_000293_mask :=
  ⟨case_000293_support, case_000293_sourceAgrees, case_000293_rows⟩

private theorem case_000293_covered :
    RowPropertyParametricCovered case_000293_rank.val case_000293_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000293_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000294_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000294_mask : SignMask := ⟨22, by decide⟩
private def case_000294_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000294_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000294_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000294_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (100/9) }
private def case_000294_firstLine : StrictLin2 := { a := -1, b := 1, c := (-67/17) }
private def case_000294_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000294_rankWord :
    rankPairWord? case_000294_word = some case_000294_rank := by
  decide

private theorem case_000294_unrank :
    unrankPairWord case_000294_rank = case_000294_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000294_word case_000294_rank).1
    case_000294_rankWord |>.symm

private theorem case_000294_seqChoice :
    translationChoiceSeq case_000294_word case_000294_mask = case_000294_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000294_seqAtRank :
    translationSeqAtRankMask case_000294_rank case_000294_mask = case_000294_seq := by
  rw [translationSeqAtRankMask, case_000294_unrank]
  exact case_000294_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000294_bAtRank :
    translationBAtRankMask case_000294_rank case_000294_mask = case_000294_b := by
  rw [translationBAtRankMask, case_000294_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000294_b, case_000294_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000294_firstLine_eq :
    case_000294_support.firstLine case_000294_seq case_000294_b = case_000294_firstLine := by
  norm_num [case_000294_firstLine, case_000294_support, case_000294_seq, case_000294_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000294_secondLine_eq :
    case_000294_support.secondLine case_000294_seq case_000294_b = case_000294_secondLine := by
  norm_num [case_000294_secondLine, case_000294_support, case_000294_seq, case_000294_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000294_sourceAgrees :
    SourceAgrees case_000294_support case_000294_rank.val case_000294_mask := by
  intro hlt
  have hrank : (⟨case_000294_rank.val, hlt⟩ : Fin numPairWords) = case_000294_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000294_rank.val, hlt⟩ case_000294_mask =
        case_000294_seq := by
    simpa [hrank] using case_000294_seqAtRank
  simp [SourceChecks, hseq, case_000294_support,
    checkTranslationConstraintSource, case_000294_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000294_rows :
    OppOneMinusVarFirstRows case_000294_support case_000294_rank.val case_000294_mask := by
  intro hlt
  have hrank : (⟨case_000294_rank.val, hlt⟩ : Fin numPairWords) = case_000294_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000294_rank.val, hlt⟩ case_000294_mask =
        case_000294_seq := by
    simpa [hrank] using case_000294_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000294_rank.val, hlt⟩ case_000294_mask =
        case_000294_b := by
    simpa [hrank] using case_000294_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000294_support case_000294_rank.val hlt
          case_000294_mask = case_000294_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000294_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000294_support case_000294_rank.val hlt
          case_000294_mask = case_000294_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000294_secondLine_eq]
  have case_000294_rowFirst :
      OppPosRow (FirstLineAt case_000294_support case_000294_rank.val hlt case_000294_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000294_firstLine, OppPosRow]
  have case_000294_fixedSecond :
      FixedRow (SecondLineAt case_000294_support case_000294_rank.val hlt case_000294_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000294_secondLine, FixedRow]
  exact ⟨case_000294_rowFirst, case_000294_fixedSecond⟩

private theorem case_000294_existsRows :
    ExistsOppOneMinusVarFirstRows case_000294_rank.val case_000294_mask :=
  ⟨case_000294_support, case_000294_sourceAgrees, case_000294_rows⟩

private theorem case_000294_covered :
    RowPropertyParametricCovered case_000294_rank.val case_000294_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000294_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000295_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000295_mask : SignMask := ⟨28, by decide⟩
private def case_000295_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000295_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000295_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000295_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-20/9) }
private def case_000295_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000295_secondLine : StrictLin2 := { a := (9/20), b := (-9/20), c := (-9/10) }

private theorem case_000295_rankWord :
    rankPairWord? case_000295_word = some case_000295_rank := by
  decide

private theorem case_000295_unrank :
    unrankPairWord case_000295_rank = case_000295_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000295_word case_000295_rank).1
    case_000295_rankWord |>.symm

private theorem case_000295_seqChoice :
    translationChoiceSeq case_000295_word case_000295_mask = case_000295_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000295_seqAtRank :
    translationSeqAtRankMask case_000295_rank case_000295_mask = case_000295_seq := by
  rw [translationSeqAtRankMask, case_000295_unrank]
  exact case_000295_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000295_bAtRank :
    translationBAtRankMask case_000295_rank case_000295_mask = case_000295_b := by
  rw [translationBAtRankMask, case_000295_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000295_b, case_000295_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000295_firstLine_eq :
    case_000295_support.firstLine case_000295_seq case_000295_b = case_000295_firstLine := by
  norm_num [case_000295_firstLine, case_000295_support, case_000295_seq, case_000295_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000295_secondLine_eq :
    case_000295_support.secondLine case_000295_seq case_000295_b = case_000295_secondLine := by
  norm_num [case_000295_secondLine, case_000295_support, case_000295_seq, case_000295_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000295_sourceAgrees :
    SourceAgrees case_000295_support case_000295_rank.val case_000295_mask := by
  intro hlt
  have hrank : (⟨case_000295_rank.val, hlt⟩ : Fin numPairWords) = case_000295_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000295_rank.val, hlt⟩ case_000295_mask =
        case_000295_seq := by
    simpa [hrank] using case_000295_seqAtRank
  simp [SourceChecks, hseq, case_000295_support,
    checkTranslationConstraintSource, case_000295_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000295_rows :
    OppMinusOneVarSecondRows case_000295_support case_000295_rank.val case_000295_mask := by
  intro hlt
  have hrank : (⟨case_000295_rank.val, hlt⟩ : Fin numPairWords) = case_000295_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000295_rank.val, hlt⟩ case_000295_mask =
        case_000295_seq := by
    simpa [hrank] using case_000295_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000295_rank.val, hlt⟩ case_000295_mask =
        case_000295_b := by
    simpa [hrank] using case_000295_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000295_support case_000295_rank.val hlt
          case_000295_mask = case_000295_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000295_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000295_support case_000295_rank.val hlt
          case_000295_mask = case_000295_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000295_secondLine_eq]
  have case_000295_fixedFirst :
      FixedRow (FirstLineAt case_000295_support case_000295_rank.val hlt case_000295_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000295_firstLine, FixedRow]
  have case_000295_rowSecond :
      OppNegRow (SecondLineAt case_000295_support case_000295_rank.val hlt case_000295_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000295_secondLine, OppNegRow]
  exact ⟨case_000295_fixedFirst, case_000295_rowSecond⟩

private theorem case_000295_existsRows :
    ExistsOppMinusOneVarSecondRows case_000295_rank.val case_000295_mask :=
  ⟨case_000295_support, case_000295_sourceAgrees, case_000295_rows⟩

private theorem case_000295_covered :
    RowPropertyParametricCovered case_000295_rank.val case_000295_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000295_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000296_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000296_mask : SignMask := ⟨30, by decide⟩
private def case_000296_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000296_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000296_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000296_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (52/9) }
private def case_000296_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000296_secondLine : StrictLin2 := { a := (-87/518), b := (-87/518), c := (-11/37) }

private theorem case_000296_rankWord :
    rankPairWord? case_000296_word = some case_000296_rank := by
  decide

private theorem case_000296_unrank :
    unrankPairWord case_000296_rank = case_000296_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000296_word case_000296_rank).1
    case_000296_rankWord |>.symm

private theorem case_000296_seqChoice :
    translationChoiceSeq case_000296_word case_000296_mask = case_000296_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000296_seqAtRank :
    translationSeqAtRankMask case_000296_rank case_000296_mask = case_000296_seq := by
  rw [translationSeqAtRankMask, case_000296_unrank]
  exact case_000296_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000296_bAtRank :
    translationBAtRankMask case_000296_rank case_000296_mask = case_000296_b := by
  rw [translationBAtRankMask, case_000296_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000296_b, case_000296_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000296_firstLine_eq :
    case_000296_support.firstLine case_000296_seq case_000296_b = case_000296_firstLine := by
  norm_num [case_000296_firstLine, case_000296_support, case_000296_seq, case_000296_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000296_secondLine_eq :
    case_000296_support.secondLine case_000296_seq case_000296_b = case_000296_secondLine := by
  norm_num [case_000296_secondLine, case_000296_support, case_000296_seq, case_000296_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000296_sourceAgrees :
    SourceAgrees case_000296_support case_000296_rank.val case_000296_mask := by
  intro hlt
  have hrank : (⟨case_000296_rank.val, hlt⟩ : Fin numPairWords) = case_000296_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000296_rank.val, hlt⟩ case_000296_mask =
        case_000296_seq := by
    simpa [hrank] using case_000296_seqAtRank
  simp [SourceChecks, hseq, case_000296_support,
    checkTranslationConstraintSource, case_000296_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000296_rows :
    EqEqPosVarSecondRows case_000296_support case_000296_rank.val case_000296_mask := by
  intro hlt
  have hrank : (⟨case_000296_rank.val, hlt⟩ : Fin numPairWords) = case_000296_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000296_rank.val, hlt⟩ case_000296_mask =
        case_000296_seq := by
    simpa [hrank] using case_000296_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000296_rank.val, hlt⟩ case_000296_mask =
        case_000296_b := by
    simpa [hrank] using case_000296_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000296_support case_000296_rank.val hlt
          case_000296_mask = case_000296_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000296_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000296_support case_000296_rank.val hlt
          case_000296_mask = case_000296_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000296_secondLine_eq]
  have case_000296_fixedFirst :
      FixedRow (FirstLineAt case_000296_support case_000296_rank.val hlt case_000296_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000296_firstLine, FixedRow]
  have case_000296_rowSecond :
      EqEqPosRow (SecondLineAt case_000296_support case_000296_rank.val hlt case_000296_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000296_secondLine, EqEqPosRow]
  exact ⟨case_000296_fixedFirst, case_000296_rowSecond⟩

private theorem case_000296_existsRows :
    ExistsEqEqPosVarSecondRows case_000296_rank.val case_000296_mask :=
  ⟨case_000296_support, case_000296_sourceAgrees, case_000296_rows⟩

private theorem case_000296_covered :
    RowPropertyParametricCovered case_000296_rank.val case_000296_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000296_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000297_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000297_mask : SignMask := ⟨31, by decide⟩
private def case_000297_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000297_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000297_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000297_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (52/9) }
private def case_000297_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000297_secondLine : StrictLin2 := { a := (-87/110), b := (-87/110), c := (-272/55) }

private theorem case_000297_rankWord :
    rankPairWord? case_000297_word = some case_000297_rank := by
  decide

private theorem case_000297_unrank :
    unrankPairWord case_000297_rank = case_000297_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000297_word case_000297_rank).1
    case_000297_rankWord |>.symm

private theorem case_000297_seqChoice :
    translationChoiceSeq case_000297_word case_000297_mask = case_000297_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000297_seqAtRank :
    translationSeqAtRankMask case_000297_rank case_000297_mask = case_000297_seq := by
  rw [translationSeqAtRankMask, case_000297_unrank]
  exact case_000297_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000297_bAtRank :
    translationBAtRankMask case_000297_rank case_000297_mask = case_000297_b := by
  rw [translationBAtRankMask, case_000297_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000297_b, case_000297_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000297_firstLine_eq :
    case_000297_support.firstLine case_000297_seq case_000297_b = case_000297_firstLine := by
  norm_num [case_000297_firstLine, case_000297_support, case_000297_seq, case_000297_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000297_secondLine_eq :
    case_000297_support.secondLine case_000297_seq case_000297_b = case_000297_secondLine := by
  norm_num [case_000297_secondLine, case_000297_support, case_000297_seq, case_000297_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000297_sourceAgrees :
    SourceAgrees case_000297_support case_000297_rank.val case_000297_mask := by
  intro hlt
  have hrank : (⟨case_000297_rank.val, hlt⟩ : Fin numPairWords) = case_000297_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000297_rank.val, hlt⟩ case_000297_mask =
        case_000297_seq := by
    simpa [hrank] using case_000297_seqAtRank
  simp [SourceChecks, hseq, case_000297_support,
    checkTranslationConstraintSource, case_000297_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000297_rows :
    EqEqPosVarSecondRows case_000297_support case_000297_rank.val case_000297_mask := by
  intro hlt
  have hrank : (⟨case_000297_rank.val, hlt⟩ : Fin numPairWords) = case_000297_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000297_rank.val, hlt⟩ case_000297_mask =
        case_000297_seq := by
    simpa [hrank] using case_000297_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000297_rank.val, hlt⟩ case_000297_mask =
        case_000297_b := by
    simpa [hrank] using case_000297_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000297_support case_000297_rank.val hlt
          case_000297_mask = case_000297_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000297_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000297_support case_000297_rank.val hlt
          case_000297_mask = case_000297_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000297_secondLine_eq]
  have case_000297_fixedFirst :
      FixedRow (FirstLineAt case_000297_support case_000297_rank.val hlt case_000297_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000297_firstLine, FixedRow]
  have case_000297_rowSecond :
      EqEqPosRow (SecondLineAt case_000297_support case_000297_rank.val hlt case_000297_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000297_secondLine, EqEqPosRow]
  exact ⟨case_000297_fixedFirst, case_000297_rowSecond⟩

private theorem case_000297_existsRows :
    ExistsEqEqPosVarSecondRows case_000297_rank.val case_000297_mask :=
  ⟨case_000297_support, case_000297_sourceAgrees, case_000297_rows⟩

private theorem case_000297_covered :
    RowPropertyParametricCovered case_000297_rank.val case_000297_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000297_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000298_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000298_mask : SignMask := ⟨45, by decide⟩
private def case_000298_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000298_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000298_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000298_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-52/9) }
private def case_000298_firstLine : StrictLin2 := { a := (-13/3), b := (-13/3), c := (-89/9) }
private def case_000298_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000298_rankWord :
    rankPairWord? case_000298_word = some case_000298_rank := by
  decide

private theorem case_000298_unrank :
    unrankPairWord case_000298_rank = case_000298_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000298_word case_000298_rank).1
    case_000298_rankWord |>.symm

private theorem case_000298_seqChoice :
    translationChoiceSeq case_000298_word case_000298_mask = case_000298_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000298_seqAtRank :
    translationSeqAtRankMask case_000298_rank case_000298_mask = case_000298_seq := by
  rw [translationSeqAtRankMask, case_000298_unrank]
  exact case_000298_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000298_bAtRank :
    translationBAtRankMask case_000298_rank case_000298_mask = case_000298_b := by
  rw [translationBAtRankMask, case_000298_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000298_b, case_000298_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000298_firstLine_eq :
    case_000298_support.firstLine case_000298_seq case_000298_b = case_000298_firstLine := by
  norm_num [case_000298_firstLine, case_000298_support, case_000298_seq, case_000298_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000298_secondLine_eq :
    case_000298_support.secondLine case_000298_seq case_000298_b = case_000298_secondLine := by
  norm_num [case_000298_secondLine, case_000298_support, case_000298_seq, case_000298_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000298_sourceAgrees :
    SourceAgrees case_000298_support case_000298_rank.val case_000298_mask := by
  intro hlt
  have hrank : (⟨case_000298_rank.val, hlt⟩ : Fin numPairWords) = case_000298_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000298_rank.val, hlt⟩ case_000298_mask =
        case_000298_seq := by
    simpa [hrank] using case_000298_seqAtRank
  simp [SourceChecks, hseq, case_000298_support,
    checkTranslationConstraintSource, case_000298_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000298_rows :
    EqEqPosVarFirstRows case_000298_support case_000298_rank.val case_000298_mask := by
  intro hlt
  have hrank : (⟨case_000298_rank.val, hlt⟩ : Fin numPairWords) = case_000298_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000298_rank.val, hlt⟩ case_000298_mask =
        case_000298_seq := by
    simpa [hrank] using case_000298_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000298_rank.val, hlt⟩ case_000298_mask =
        case_000298_b := by
    simpa [hrank] using case_000298_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000298_support case_000298_rank.val hlt
          case_000298_mask = case_000298_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000298_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000298_support case_000298_rank.val hlt
          case_000298_mask = case_000298_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000298_secondLine_eq]
  have case_000298_rowFirst :
      EqEqPosRow (FirstLineAt case_000298_support case_000298_rank.val hlt case_000298_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000298_firstLine, EqEqPosRow]
  have case_000298_fixedSecond :
      FixedRow (SecondLineAt case_000298_support case_000298_rank.val hlt case_000298_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000298_secondLine, FixedRow]
  exact ⟨case_000298_rowFirst, case_000298_fixedSecond⟩

private theorem case_000298_existsRows :
    ExistsEqEqPosVarFirstRows case_000298_rank.val case_000298_mask :=
  ⟨case_000298_support, case_000298_sourceAgrees, case_000298_rows⟩

private theorem case_000298_covered :
    RowPropertyParametricCovered case_000298_rank.val case_000298_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000298_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000299_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000299_mask : SignMask := ⟨54, by decide⟩
private def case_000299_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000299_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000299_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000299_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (148/9) }
private def case_000299_firstLine : StrictLin2 := { a := -1, b := 1, c := (-79/5) }
private def case_000299_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000299_rankWord :
    rankPairWord? case_000299_word = some case_000299_rank := by
  decide

private theorem case_000299_unrank :
    unrankPairWord case_000299_rank = case_000299_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000299_word case_000299_rank).1
    case_000299_rankWord |>.symm

private theorem case_000299_seqChoice :
    translationChoiceSeq case_000299_word case_000299_mask = case_000299_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000299_seqAtRank :
    translationSeqAtRankMask case_000299_rank case_000299_mask = case_000299_seq := by
  rw [translationSeqAtRankMask, case_000299_unrank]
  exact case_000299_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000299_bAtRank :
    translationBAtRankMask case_000299_rank case_000299_mask = case_000299_b := by
  rw [translationBAtRankMask, case_000299_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000299_b, case_000299_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000299_firstLine_eq :
    case_000299_support.firstLine case_000299_seq case_000299_b = case_000299_firstLine := by
  norm_num [case_000299_firstLine, case_000299_support, case_000299_seq, case_000299_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000299_secondLine_eq :
    case_000299_support.secondLine case_000299_seq case_000299_b = case_000299_secondLine := by
  norm_num [case_000299_secondLine, case_000299_support, case_000299_seq, case_000299_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000299_sourceAgrees :
    SourceAgrees case_000299_support case_000299_rank.val case_000299_mask := by
  intro hlt
  have hrank : (⟨case_000299_rank.val, hlt⟩ : Fin numPairWords) = case_000299_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000299_rank.val, hlt⟩ case_000299_mask =
        case_000299_seq := by
    simpa [hrank] using case_000299_seqAtRank
  simp [SourceChecks, hseq, case_000299_support,
    checkTranslationConstraintSource, case_000299_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000299_rows :
    OppOneMinusVarFirstRows case_000299_support case_000299_rank.val case_000299_mask := by
  intro hlt
  have hrank : (⟨case_000299_rank.val, hlt⟩ : Fin numPairWords) = case_000299_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000299_rank.val, hlt⟩ case_000299_mask =
        case_000299_seq := by
    simpa [hrank] using case_000299_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000299_rank.val, hlt⟩ case_000299_mask =
        case_000299_b := by
    simpa [hrank] using case_000299_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000299_support case_000299_rank.val hlt
          case_000299_mask = case_000299_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000299_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000299_support case_000299_rank.val hlt
          case_000299_mask = case_000299_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000299_secondLine_eq]
  have case_000299_rowFirst :
      OppPosRow (FirstLineAt case_000299_support case_000299_rank.val hlt case_000299_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000299_firstLine, OppPosRow]
  have case_000299_fixedSecond :
      FixedRow (SecondLineAt case_000299_support case_000299_rank.val hlt case_000299_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000299_secondLine, FixedRow]
  exact ⟨case_000299_rowFirst, case_000299_fixedSecond⟩

private theorem case_000299_existsRows :
    ExistsOppOneMinusVarFirstRows case_000299_rank.val case_000299_mask :=
  ⟨case_000299_support, case_000299_sourceAgrees, case_000299_rows⟩

private theorem case_000299_covered :
    RowPropertyParametricCovered case_000299_rank.val case_000299_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000299_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000300_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000300_mask : SignMask := ⟨55, by decide⟩
private def case_000300_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000300_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000300_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppm
private def case_000300_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (148/9) }
private def case_000300_firstLine : StrictLin2 := { a := -1, b := 1, c := (-43/5) }
private def case_000300_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000300_rankWord :
    rankPairWord? case_000300_word = some case_000300_rank := by
  decide

private theorem case_000300_unrank :
    unrankPairWord case_000300_rank = case_000300_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000300_word case_000300_rank).1
    case_000300_rankWord |>.symm

private theorem case_000300_seqChoice :
    translationChoiceSeq case_000300_word case_000300_mask = case_000300_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000300_seqAtRank :
    translationSeqAtRankMask case_000300_rank case_000300_mask = case_000300_seq := by
  rw [translationSeqAtRankMask, case_000300_unrank]
  exact case_000300_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000300_bAtRank :
    translationBAtRankMask case_000300_rank case_000300_mask = case_000300_b := by
  rw [translationBAtRankMask, case_000300_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000300_b, case_000300_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000300_firstLine_eq :
    case_000300_support.firstLine case_000300_seq case_000300_b = case_000300_firstLine := by
  norm_num [case_000300_firstLine, case_000300_support, case_000300_seq, case_000300_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000300_secondLine_eq :
    case_000300_support.secondLine case_000300_seq case_000300_b = case_000300_secondLine := by
  norm_num [case_000300_secondLine, case_000300_support, case_000300_seq, case_000300_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000300_sourceAgrees :
    SourceAgrees case_000300_support case_000300_rank.val case_000300_mask := by
  intro hlt
  have hrank : (⟨case_000300_rank.val, hlt⟩ : Fin numPairWords) = case_000300_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000300_rank.val, hlt⟩ case_000300_mask =
        case_000300_seq := by
    simpa [hrank] using case_000300_seqAtRank
  simp [SourceChecks, hseq, case_000300_support,
    checkTranslationConstraintSource, case_000300_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000300_rows :
    OppOneMinusVarFirstRows case_000300_support case_000300_rank.val case_000300_mask := by
  intro hlt
  have hrank : (⟨case_000300_rank.val, hlt⟩ : Fin numPairWords) = case_000300_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000300_rank.val, hlt⟩ case_000300_mask =
        case_000300_seq := by
    simpa [hrank] using case_000300_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000300_rank.val, hlt⟩ case_000300_mask =
        case_000300_b := by
    simpa [hrank] using case_000300_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000300_support case_000300_rank.val hlt
          case_000300_mask = case_000300_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000300_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000300_support case_000300_rank.val hlt
          case_000300_mask = case_000300_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000300_secondLine_eq]
  have case_000300_rowFirst :
      OppPosRow (FirstLineAt case_000300_support case_000300_rank.val hlt case_000300_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000300_firstLine, OppPosRow]
  have case_000300_fixedSecond :
      FixedRow (SecondLineAt case_000300_support case_000300_rank.val hlt case_000300_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000300_secondLine, FixedRow]
  exact ⟨case_000300_rowFirst, case_000300_fixedSecond⟩

private theorem case_000300_existsRows :
    ExistsOppOneMinusVarFirstRows case_000300_rank.val case_000300_mask :=
  ⟨case_000300_support, case_000300_sourceAgrees, case_000300_rows⟩

private theorem case_000300_covered :
    RowPropertyParametricCovered case_000300_rank.val case_000300_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000300_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000301_rank : Fin numPairWords := ⟨80, by decide⟩
private def case_000301_mask : SignMask := ⟨63, by decide⟩
private def case_000301_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩
private def case_000301_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000301_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmp
private def case_000301_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (100/9) }
private def case_000301_firstLine : StrictLin2 := { a := (-17/33), b := (-17/33), c := (-349/99) }
private def case_000301_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000301_rankWord :
    rankPairWord? case_000301_word = some case_000301_rank := by
  decide

private theorem case_000301_unrank :
    unrankPairWord case_000301_rank = case_000301_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000301_word case_000301_rank).1
    case_000301_rankWord |>.symm

private theorem case_000301_seqChoice :
    translationChoiceSeq case_000301_word case_000301_mask = case_000301_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000301_seqAtRank :
    translationSeqAtRankMask case_000301_rank case_000301_mask = case_000301_seq := by
  rw [translationSeqAtRankMask, case_000301_unrank]
  exact case_000301_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000301_bAtRank :
    translationBAtRankMask case_000301_rank case_000301_mask = case_000301_b := by
  rw [translationBAtRankMask, case_000301_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000301_b, case_000301_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000301_firstLine_eq :
    case_000301_support.firstLine case_000301_seq case_000301_b = case_000301_firstLine := by
  norm_num [case_000301_firstLine, case_000301_support, case_000301_seq, case_000301_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000301_secondLine_eq :
    case_000301_support.secondLine case_000301_seq case_000301_b = case_000301_secondLine := by
  norm_num [case_000301_secondLine, case_000301_support, case_000301_seq, case_000301_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000301_sourceAgrees :
    SourceAgrees case_000301_support case_000301_rank.val case_000301_mask := by
  intro hlt
  have hrank : (⟨case_000301_rank.val, hlt⟩ : Fin numPairWords) = case_000301_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000301_rank.val, hlt⟩ case_000301_mask =
        case_000301_seq := by
    simpa [hrank] using case_000301_seqAtRank
  simp [SourceChecks, hseq, case_000301_support,
    checkTranslationConstraintSource, case_000301_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000301_rows :
    EqEqPosVarFirstRows case_000301_support case_000301_rank.val case_000301_mask := by
  intro hlt
  have hrank : (⟨case_000301_rank.val, hlt⟩ : Fin numPairWords) = case_000301_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000301_rank.val, hlt⟩ case_000301_mask =
        case_000301_seq := by
    simpa [hrank] using case_000301_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000301_rank.val, hlt⟩ case_000301_mask =
        case_000301_b := by
    simpa [hrank] using case_000301_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000301_support case_000301_rank.val hlt
          case_000301_mask = case_000301_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000301_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000301_support case_000301_rank.val hlt
          case_000301_mask = case_000301_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000301_secondLine_eq]
  have case_000301_rowFirst :
      EqEqPosRow (FirstLineAt case_000301_support case_000301_rank.val hlt case_000301_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000301_firstLine, EqEqPosRow]
  have case_000301_fixedSecond :
      FixedRow (SecondLineAt case_000301_support case_000301_rank.val hlt case_000301_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000301_secondLine, FixedRow]
  exact ⟨case_000301_rowFirst, case_000301_fixedSecond⟩

private theorem case_000301_existsRows :
    ExistsEqEqPosVarFirstRows case_000301_rank.val case_000301_mask :=
  ⟨case_000301_support, case_000301_sourceAgrees, case_000301_rows⟩

private theorem case_000301_covered :
    RowPropertyParametricCovered case_000301_rank.val case_000301_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000301_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000302_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000302_mask : SignMask := ⟨8, by decide⟩
private def case_000302_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000302_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000302_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000302_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000302_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000302_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000302_rankWord :
    rankPairWord? case_000302_word = some case_000302_rank := by
  decide

private theorem case_000302_unrank :
    unrankPairWord case_000302_rank = case_000302_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000302_word case_000302_rank).1
    case_000302_rankWord |>.symm

private theorem case_000302_seqChoice :
    translationChoiceSeq case_000302_word case_000302_mask = case_000302_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000302_seqAtRank :
    translationSeqAtRankMask case_000302_rank case_000302_mask = case_000302_seq := by
  rw [translationSeqAtRankMask, case_000302_unrank]
  exact case_000302_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000302_bAtRank :
    translationBAtRankMask case_000302_rank case_000302_mask = case_000302_b := by
  rw [translationBAtRankMask, case_000302_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000302_b, case_000302_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000302_firstLine_eq :
    case_000302_support.firstLine case_000302_seq case_000302_b = case_000302_firstLine := by
  norm_num [case_000302_firstLine, case_000302_support, case_000302_seq, case_000302_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000302_secondLine_eq :
    case_000302_support.secondLine case_000302_seq case_000302_b = case_000302_secondLine := by
  norm_num [case_000302_secondLine, case_000302_support, case_000302_seq, case_000302_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000302_sourceAgrees :
    SourceAgrees case_000302_support case_000302_rank.val case_000302_mask := by
  intro hlt
  have hrank : (⟨case_000302_rank.val, hlt⟩ : Fin numPairWords) = case_000302_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000302_rank.val, hlt⟩ case_000302_mask =
        case_000302_seq := by
    simpa [hrank] using case_000302_seqAtRank
  simp [SourceChecks, hseq, case_000302_support,
    checkTranslationConstraintSource, case_000302_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000302_rows :
    EqEqPosVarFirstRows case_000302_support case_000302_rank.val case_000302_mask := by
  intro hlt
  have hrank : (⟨case_000302_rank.val, hlt⟩ : Fin numPairWords) = case_000302_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000302_rank.val, hlt⟩ case_000302_mask =
        case_000302_seq := by
    simpa [hrank] using case_000302_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000302_rank.val, hlt⟩ case_000302_mask =
        case_000302_b := by
    simpa [hrank] using case_000302_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000302_support case_000302_rank.val hlt
          case_000302_mask = case_000302_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000302_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000302_support case_000302_rank.val hlt
          case_000302_mask = case_000302_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000302_secondLine_eq]
  have case_000302_rowFirst :
      EqEqPosRow (FirstLineAt case_000302_support case_000302_rank.val hlt case_000302_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000302_firstLine, EqEqPosRow]
  have case_000302_fixedSecond :
      FixedRow (SecondLineAt case_000302_support case_000302_rank.val hlt case_000302_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000302_secondLine, FixedRow]
  exact ⟨case_000302_rowFirst, case_000302_fixedSecond⟩

private theorem case_000302_existsRows :
    ExistsEqEqPosVarFirstRows case_000302_rank.val case_000302_mask :=
  ⟨case_000302_support, case_000302_sourceAgrees, case_000302_rows⟩

private theorem case_000302_covered :
    RowPropertyParametricCovered case_000302_rank.val case_000302_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000302_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000303_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000303_mask : SignMask := ⟨9, by decide⟩
private def case_000303_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000303_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000303_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000303_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000303_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000303_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000303_rankWord :
    rankPairWord? case_000303_word = some case_000303_rank := by
  decide

private theorem case_000303_unrank :
    unrankPairWord case_000303_rank = case_000303_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000303_word case_000303_rank).1
    case_000303_rankWord |>.symm

private theorem case_000303_seqChoice :
    translationChoiceSeq case_000303_word case_000303_mask = case_000303_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000303_seqAtRank :
    translationSeqAtRankMask case_000303_rank case_000303_mask = case_000303_seq := by
  rw [translationSeqAtRankMask, case_000303_unrank]
  exact case_000303_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000303_bAtRank :
    translationBAtRankMask case_000303_rank case_000303_mask = case_000303_b := by
  rw [translationBAtRankMask, case_000303_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000303_b, case_000303_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000303_firstLine_eq :
    case_000303_support.firstLine case_000303_seq case_000303_b = case_000303_firstLine := by
  norm_num [case_000303_firstLine, case_000303_support, case_000303_seq, case_000303_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000303_secondLine_eq :
    case_000303_support.secondLine case_000303_seq case_000303_b = case_000303_secondLine := by
  norm_num [case_000303_secondLine, case_000303_support, case_000303_seq, case_000303_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000303_sourceAgrees :
    SourceAgrees case_000303_support case_000303_rank.val case_000303_mask := by
  intro hlt
  have hrank : (⟨case_000303_rank.val, hlt⟩ : Fin numPairWords) = case_000303_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000303_rank.val, hlt⟩ case_000303_mask =
        case_000303_seq := by
    simpa [hrank] using case_000303_seqAtRank
  simp [SourceChecks, hseq, case_000303_support,
    checkTranslationConstraintSource, case_000303_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000303_rows :
    EqEqPosVarFirstRows case_000303_support case_000303_rank.val case_000303_mask := by
  intro hlt
  have hrank : (⟨case_000303_rank.val, hlt⟩ : Fin numPairWords) = case_000303_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000303_rank.val, hlt⟩ case_000303_mask =
        case_000303_seq := by
    simpa [hrank] using case_000303_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000303_rank.val, hlt⟩ case_000303_mask =
        case_000303_b := by
    simpa [hrank] using case_000303_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000303_support case_000303_rank.val hlt
          case_000303_mask = case_000303_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000303_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000303_support case_000303_rank.val hlt
          case_000303_mask = case_000303_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000303_secondLine_eq]
  have case_000303_rowFirst :
      EqEqPosRow (FirstLineAt case_000303_support case_000303_rank.val hlt case_000303_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000303_firstLine, EqEqPosRow]
  have case_000303_fixedSecond :
      FixedRow (SecondLineAt case_000303_support case_000303_rank.val hlt case_000303_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000303_secondLine, FixedRow]
  exact ⟨case_000303_rowFirst, case_000303_fixedSecond⟩

private theorem case_000303_existsRows :
    ExistsEqEqPosVarFirstRows case_000303_rank.val case_000303_mask :=
  ⟨case_000303_support, case_000303_sourceAgrees, case_000303_rows⟩

private theorem case_000303_covered :
    RowPropertyParametricCovered case_000303_rank.val case_000303_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000303_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000304_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000304_mask : SignMask := ⟨13, by decide⟩
private def case_000304_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000304_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000304_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000304_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000304_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000304_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000304_rankWord :
    rankPairWord? case_000304_word = some case_000304_rank := by
  decide

private theorem case_000304_unrank :
    unrankPairWord case_000304_rank = case_000304_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000304_word case_000304_rank).1
    case_000304_rankWord |>.symm

private theorem case_000304_seqChoice :
    translationChoiceSeq case_000304_word case_000304_mask = case_000304_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000304_seqAtRank :
    translationSeqAtRankMask case_000304_rank case_000304_mask = case_000304_seq := by
  rw [translationSeqAtRankMask, case_000304_unrank]
  exact case_000304_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000304_bAtRank :
    translationBAtRankMask case_000304_rank case_000304_mask = case_000304_b := by
  rw [translationBAtRankMask, case_000304_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000304_b, case_000304_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000304_firstLine_eq :
    case_000304_support.firstLine case_000304_seq case_000304_b = case_000304_firstLine := by
  norm_num [case_000304_firstLine, case_000304_support, case_000304_seq, case_000304_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000304_secondLine_eq :
    case_000304_support.secondLine case_000304_seq case_000304_b = case_000304_secondLine := by
  norm_num [case_000304_secondLine, case_000304_support, case_000304_seq, case_000304_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000304_sourceAgrees :
    SourceAgrees case_000304_support case_000304_rank.val case_000304_mask := by
  intro hlt
  have hrank : (⟨case_000304_rank.val, hlt⟩ : Fin numPairWords) = case_000304_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000304_rank.val, hlt⟩ case_000304_mask =
        case_000304_seq := by
    simpa [hrank] using case_000304_seqAtRank
  simp [SourceChecks, hseq, case_000304_support,
    checkTranslationConstraintSource, case_000304_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000304_rows :
    EqEqPosVarSecondRows case_000304_support case_000304_rank.val case_000304_mask := by
  intro hlt
  have hrank : (⟨case_000304_rank.val, hlt⟩ : Fin numPairWords) = case_000304_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000304_rank.val, hlt⟩ case_000304_mask =
        case_000304_seq := by
    simpa [hrank] using case_000304_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000304_rank.val, hlt⟩ case_000304_mask =
        case_000304_b := by
    simpa [hrank] using case_000304_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000304_support case_000304_rank.val hlt
          case_000304_mask = case_000304_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000304_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000304_support case_000304_rank.val hlt
          case_000304_mask = case_000304_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000304_secondLine_eq]
  have case_000304_fixedFirst :
      FixedRow (FirstLineAt case_000304_support case_000304_rank.val hlt case_000304_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000304_firstLine, FixedRow]
  have case_000304_rowSecond :
      EqEqPosRow (SecondLineAt case_000304_support case_000304_rank.val hlt case_000304_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000304_secondLine, EqEqPosRow]
  exact ⟨case_000304_fixedFirst, case_000304_rowSecond⟩

private theorem case_000304_existsRows :
    ExistsEqEqPosVarSecondRows case_000304_rank.val case_000304_mask :=
  ⟨case_000304_support, case_000304_sourceAgrees, case_000304_rows⟩

private theorem case_000304_covered :
    RowPropertyParametricCovered case_000304_rank.val case_000304_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000304_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000305_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000305_mask : SignMask := ⟨16, by decide⟩
private def case_000305_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000305_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000305_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000305_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000305_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000305_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000305_rankWord :
    rankPairWord? case_000305_word = some case_000305_rank := by
  decide

private theorem case_000305_unrank :
    unrankPairWord case_000305_rank = case_000305_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000305_word case_000305_rank).1
    case_000305_rankWord |>.symm

private theorem case_000305_seqChoice :
    translationChoiceSeq case_000305_word case_000305_mask = case_000305_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000305_seqAtRank :
    translationSeqAtRankMask case_000305_rank case_000305_mask = case_000305_seq := by
  rw [translationSeqAtRankMask, case_000305_unrank]
  exact case_000305_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000305_bAtRank :
    translationBAtRankMask case_000305_rank case_000305_mask = case_000305_b := by
  rw [translationBAtRankMask, case_000305_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000305_b, case_000305_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000305_firstLine_eq :
    case_000305_support.firstLine case_000305_seq case_000305_b = case_000305_firstLine := by
  norm_num [case_000305_firstLine, case_000305_support, case_000305_seq, case_000305_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000305_secondLine_eq :
    case_000305_support.secondLine case_000305_seq case_000305_b = case_000305_secondLine := by
  norm_num [case_000305_secondLine, case_000305_support, case_000305_seq, case_000305_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000305_sourceAgrees :
    SourceAgrees case_000305_support case_000305_rank.val case_000305_mask := by
  intro hlt
  have hrank : (⟨case_000305_rank.val, hlt⟩ : Fin numPairWords) = case_000305_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000305_rank.val, hlt⟩ case_000305_mask =
        case_000305_seq := by
    simpa [hrank] using case_000305_seqAtRank
  simp [SourceChecks, hseq, case_000305_support,
    checkTranslationConstraintSource, case_000305_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000305_rows :
    EqEqPosVarFirstRows case_000305_support case_000305_rank.val case_000305_mask := by
  intro hlt
  have hrank : (⟨case_000305_rank.val, hlt⟩ : Fin numPairWords) = case_000305_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000305_rank.val, hlt⟩ case_000305_mask =
        case_000305_seq := by
    simpa [hrank] using case_000305_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000305_rank.val, hlt⟩ case_000305_mask =
        case_000305_b := by
    simpa [hrank] using case_000305_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000305_support case_000305_rank.val hlt
          case_000305_mask = case_000305_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000305_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000305_support case_000305_rank.val hlt
          case_000305_mask = case_000305_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000305_secondLine_eq]
  have case_000305_rowFirst :
      EqEqPosRow (FirstLineAt case_000305_support case_000305_rank.val hlt case_000305_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000305_firstLine, EqEqPosRow]
  have case_000305_fixedSecond :
      FixedRow (SecondLineAt case_000305_support case_000305_rank.val hlt case_000305_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000305_secondLine, FixedRow]
  exact ⟨case_000305_rowFirst, case_000305_fixedSecond⟩

private theorem case_000305_existsRows :
    ExistsEqEqPosVarFirstRows case_000305_rank.val case_000305_mask :=
  ⟨case_000305_support, case_000305_sourceAgrees, case_000305_rows⟩

private theorem case_000305_covered :
    RowPropertyParametricCovered case_000305_rank.val case_000305_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000305_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000306_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000306_mask : SignMask := ⟨18, by decide⟩
private def case_000306_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000306_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000306_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000306_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000306_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000306_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000306_rankWord :
    rankPairWord? case_000306_word = some case_000306_rank := by
  decide

private theorem case_000306_unrank :
    unrankPairWord case_000306_rank = case_000306_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000306_word case_000306_rank).1
    case_000306_rankWord |>.symm

private theorem case_000306_seqChoice :
    translationChoiceSeq case_000306_word case_000306_mask = case_000306_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000306_seqAtRank :
    translationSeqAtRankMask case_000306_rank case_000306_mask = case_000306_seq := by
  rw [translationSeqAtRankMask, case_000306_unrank]
  exact case_000306_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000306_bAtRank :
    translationBAtRankMask case_000306_rank case_000306_mask = case_000306_b := by
  rw [translationBAtRankMask, case_000306_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000306_b, case_000306_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000306_firstLine_eq :
    case_000306_support.firstLine case_000306_seq case_000306_b = case_000306_firstLine := by
  norm_num [case_000306_firstLine, case_000306_support, case_000306_seq, case_000306_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000306_secondLine_eq :
    case_000306_support.secondLine case_000306_seq case_000306_b = case_000306_secondLine := by
  norm_num [case_000306_secondLine, case_000306_support, case_000306_seq, case_000306_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000306_sourceAgrees :
    SourceAgrees case_000306_support case_000306_rank.val case_000306_mask := by
  intro hlt
  have hrank : (⟨case_000306_rank.val, hlt⟩ : Fin numPairWords) = case_000306_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000306_rank.val, hlt⟩ case_000306_mask =
        case_000306_seq := by
    simpa [hrank] using case_000306_seqAtRank
  simp [SourceChecks, hseq, case_000306_support,
    checkTranslationConstraintSource, case_000306_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000306_rows :
    EqEqPosVarFirstRows case_000306_support case_000306_rank.val case_000306_mask := by
  intro hlt
  have hrank : (⟨case_000306_rank.val, hlt⟩ : Fin numPairWords) = case_000306_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000306_rank.val, hlt⟩ case_000306_mask =
        case_000306_seq := by
    simpa [hrank] using case_000306_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000306_rank.val, hlt⟩ case_000306_mask =
        case_000306_b := by
    simpa [hrank] using case_000306_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000306_support case_000306_rank.val hlt
          case_000306_mask = case_000306_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000306_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000306_support case_000306_rank.val hlt
          case_000306_mask = case_000306_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000306_secondLine_eq]
  have case_000306_rowFirst :
      EqEqPosRow (FirstLineAt case_000306_support case_000306_rank.val hlt case_000306_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000306_firstLine, EqEqPosRow]
  have case_000306_fixedSecond :
      FixedRow (SecondLineAt case_000306_support case_000306_rank.val hlt case_000306_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000306_secondLine, FixedRow]
  exact ⟨case_000306_rowFirst, case_000306_fixedSecond⟩

private theorem case_000306_existsRows :
    ExistsEqEqPosVarFirstRows case_000306_rank.val case_000306_mask :=
  ⟨case_000306_support, case_000306_sourceAgrees, case_000306_rows⟩

private theorem case_000306_covered :
    RowPropertyParametricCovered case_000306_rank.val case_000306_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000306_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000307_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000307_mask : SignMask := ⟨22, by decide⟩
private def case_000307_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000307_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000307_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000307_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000307_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000307_secondLine : StrictLin2 := { a := (-3/14), b := (-3/14), c := (-5/7) }

private theorem case_000307_rankWord :
    rankPairWord? case_000307_word = some case_000307_rank := by
  decide

private theorem case_000307_unrank :
    unrankPairWord case_000307_rank = case_000307_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000307_word case_000307_rank).1
    case_000307_rankWord |>.symm

private theorem case_000307_seqChoice :
    translationChoiceSeq case_000307_word case_000307_mask = case_000307_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000307_seqAtRank :
    translationSeqAtRankMask case_000307_rank case_000307_mask = case_000307_seq := by
  rw [translationSeqAtRankMask, case_000307_unrank]
  exact case_000307_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000307_bAtRank :
    translationBAtRankMask case_000307_rank case_000307_mask = case_000307_b := by
  rw [translationBAtRankMask, case_000307_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000307_b, case_000307_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000307_firstLine_eq :
    case_000307_support.firstLine case_000307_seq case_000307_b = case_000307_firstLine := by
  norm_num [case_000307_firstLine, case_000307_support, case_000307_seq, case_000307_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000307_secondLine_eq :
    case_000307_support.secondLine case_000307_seq case_000307_b = case_000307_secondLine := by
  norm_num [case_000307_secondLine, case_000307_support, case_000307_seq, case_000307_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000307_sourceAgrees :
    SourceAgrees case_000307_support case_000307_rank.val case_000307_mask := by
  intro hlt
  have hrank : (⟨case_000307_rank.val, hlt⟩ : Fin numPairWords) = case_000307_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000307_rank.val, hlt⟩ case_000307_mask =
        case_000307_seq := by
    simpa [hrank] using case_000307_seqAtRank
  simp [SourceChecks, hseq, case_000307_support,
    checkTranslationConstraintSource, case_000307_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000307_rows :
    EqEqPosVarSecondRows case_000307_support case_000307_rank.val case_000307_mask := by
  intro hlt
  have hrank : (⟨case_000307_rank.val, hlt⟩ : Fin numPairWords) = case_000307_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000307_rank.val, hlt⟩ case_000307_mask =
        case_000307_seq := by
    simpa [hrank] using case_000307_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000307_rank.val, hlt⟩ case_000307_mask =
        case_000307_b := by
    simpa [hrank] using case_000307_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000307_support case_000307_rank.val hlt
          case_000307_mask = case_000307_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000307_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000307_support case_000307_rank.val hlt
          case_000307_mask = case_000307_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000307_secondLine_eq]
  have case_000307_fixedFirst :
      FixedRow (FirstLineAt case_000307_support case_000307_rank.val hlt case_000307_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000307_firstLine, FixedRow]
  have case_000307_rowSecond :
      EqEqPosRow (SecondLineAt case_000307_support case_000307_rank.val hlt case_000307_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000307_secondLine, EqEqPosRow]
  exact ⟨case_000307_fixedFirst, case_000307_rowSecond⟩

private theorem case_000307_existsRows :
    ExistsEqEqPosVarSecondRows case_000307_rank.val case_000307_mask :=
  ⟨case_000307_support, case_000307_sourceAgrees, case_000307_rows⟩

private theorem case_000307_covered :
    RowPropertyParametricCovered case_000307_rank.val case_000307_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000307_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000308_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000308_mask : SignMask := ⟨24, by decide⟩
private def case_000308_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000308_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000308_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000308_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000308_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000308_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000308_rankWord :
    rankPairWord? case_000308_word = some case_000308_rank := by
  decide

private theorem case_000308_unrank :
    unrankPairWord case_000308_rank = case_000308_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000308_word case_000308_rank).1
    case_000308_rankWord |>.symm

private theorem case_000308_seqChoice :
    translationChoiceSeq case_000308_word case_000308_mask = case_000308_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000308_seqAtRank :
    translationSeqAtRankMask case_000308_rank case_000308_mask = case_000308_seq := by
  rw [translationSeqAtRankMask, case_000308_unrank]
  exact case_000308_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000308_bAtRank :
    translationBAtRankMask case_000308_rank case_000308_mask = case_000308_b := by
  rw [translationBAtRankMask, case_000308_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000308_b, case_000308_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000308_firstLine_eq :
    case_000308_support.firstLine case_000308_seq case_000308_b = case_000308_firstLine := by
  norm_num [case_000308_firstLine, case_000308_support, case_000308_seq, case_000308_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000308_secondLine_eq :
    case_000308_support.secondLine case_000308_seq case_000308_b = case_000308_secondLine := by
  norm_num [case_000308_secondLine, case_000308_support, case_000308_seq, case_000308_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000308_sourceAgrees :
    SourceAgrees case_000308_support case_000308_rank.val case_000308_mask := by
  intro hlt
  have hrank : (⟨case_000308_rank.val, hlt⟩ : Fin numPairWords) = case_000308_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000308_rank.val, hlt⟩ case_000308_mask =
        case_000308_seq := by
    simpa [hrank] using case_000308_seqAtRank
  simp [SourceChecks, hseq, case_000308_support,
    checkTranslationConstraintSource, case_000308_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000308_rows :
    EqEqPosVarFirstRows case_000308_support case_000308_rank.val case_000308_mask := by
  intro hlt
  have hrank : (⟨case_000308_rank.val, hlt⟩ : Fin numPairWords) = case_000308_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000308_rank.val, hlt⟩ case_000308_mask =
        case_000308_seq := by
    simpa [hrank] using case_000308_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000308_rank.val, hlt⟩ case_000308_mask =
        case_000308_b := by
    simpa [hrank] using case_000308_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000308_support case_000308_rank.val hlt
          case_000308_mask = case_000308_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000308_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000308_support case_000308_rank.val hlt
          case_000308_mask = case_000308_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000308_secondLine_eq]
  have case_000308_rowFirst :
      EqEqPosRow (FirstLineAt case_000308_support case_000308_rank.val hlt case_000308_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000308_firstLine, EqEqPosRow]
  have case_000308_fixedSecond :
      FixedRow (SecondLineAt case_000308_support case_000308_rank.val hlt case_000308_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000308_secondLine, FixedRow]
  exact ⟨case_000308_rowFirst, case_000308_fixedSecond⟩

private theorem case_000308_existsRows :
    ExistsEqEqPosVarFirstRows case_000308_rank.val case_000308_mask :=
  ⟨case_000308_support, case_000308_sourceAgrees, case_000308_rows⟩

private theorem case_000308_covered :
    RowPropertyParametricCovered case_000308_rank.val case_000308_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000308_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000309_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000309_mask : SignMask := ⟨28, by decide⟩
private def case_000309_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000309_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000309_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000309_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000309_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000309_secondLine : StrictLin2 := { a := (-3/22), b := (3/22), c := (-5/11) }

private theorem case_000309_rankWord :
    rankPairWord? case_000309_word = some case_000309_rank := by
  decide

private theorem case_000309_unrank :
    unrankPairWord case_000309_rank = case_000309_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000309_word case_000309_rank).1
    case_000309_rankWord |>.symm

private theorem case_000309_seqChoice :
    translationChoiceSeq case_000309_word case_000309_mask = case_000309_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000309_seqAtRank :
    translationSeqAtRankMask case_000309_rank case_000309_mask = case_000309_seq := by
  rw [translationSeqAtRankMask, case_000309_unrank]
  exact case_000309_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000309_bAtRank :
    translationBAtRankMask case_000309_rank case_000309_mask = case_000309_b := by
  rw [translationBAtRankMask, case_000309_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000309_b, case_000309_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000309_firstLine_eq :
    case_000309_support.firstLine case_000309_seq case_000309_b = case_000309_firstLine := by
  norm_num [case_000309_firstLine, case_000309_support, case_000309_seq, case_000309_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000309_secondLine_eq :
    case_000309_support.secondLine case_000309_seq case_000309_b = case_000309_secondLine := by
  norm_num [case_000309_secondLine, case_000309_support, case_000309_seq, case_000309_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000309_sourceAgrees :
    SourceAgrees case_000309_support case_000309_rank.val case_000309_mask := by
  intro hlt
  have hrank : (⟨case_000309_rank.val, hlt⟩ : Fin numPairWords) = case_000309_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000309_rank.val, hlt⟩ case_000309_mask =
        case_000309_seq := by
    simpa [hrank] using case_000309_seqAtRank
  simp [SourceChecks, hseq, case_000309_support,
    checkTranslationConstraintSource, case_000309_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000309_rows :
    OppOneMinusVarSecondRows case_000309_support case_000309_rank.val case_000309_mask := by
  intro hlt
  have hrank : (⟨case_000309_rank.val, hlt⟩ : Fin numPairWords) = case_000309_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000309_rank.val, hlt⟩ case_000309_mask =
        case_000309_seq := by
    simpa [hrank] using case_000309_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000309_rank.val, hlt⟩ case_000309_mask =
        case_000309_b := by
    simpa [hrank] using case_000309_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000309_support case_000309_rank.val hlt
          case_000309_mask = case_000309_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000309_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000309_support case_000309_rank.val hlt
          case_000309_mask = case_000309_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000309_secondLine_eq]
  have case_000309_fixedFirst :
      FixedRow (FirstLineAt case_000309_support case_000309_rank.val hlt case_000309_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000309_firstLine, FixedRow]
  have case_000309_rowSecond :
      OppPosRow (SecondLineAt case_000309_support case_000309_rank.val hlt case_000309_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000309_secondLine, OppPosRow]
  exact ⟨case_000309_fixedFirst, case_000309_rowSecond⟩

private theorem case_000309_existsRows :
    ExistsOppOneMinusVarSecondRows case_000309_rank.val case_000309_mask :=
  ⟨case_000309_support, case_000309_sourceAgrees, case_000309_rows⟩

private theorem case_000309_covered :
    RowPropertyParametricCovered case_000309_rank.val case_000309_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000309_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000310_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000310_mask : SignMask := ⟨29, by decide⟩
private def case_000310_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000310_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000310_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000310_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000310_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000310_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000310_rankWord :
    rankPairWord? case_000310_word = some case_000310_rank := by
  decide

private theorem case_000310_unrank :
    unrankPairWord case_000310_rank = case_000310_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000310_word case_000310_rank).1
    case_000310_rankWord |>.symm

private theorem case_000310_seqChoice :
    translationChoiceSeq case_000310_word case_000310_mask = case_000310_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000310_seqAtRank :
    translationSeqAtRankMask case_000310_rank case_000310_mask = case_000310_seq := by
  rw [translationSeqAtRankMask, case_000310_unrank]
  exact case_000310_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000310_bAtRank :
    translationBAtRankMask case_000310_rank case_000310_mask = case_000310_b := by
  rw [translationBAtRankMask, case_000310_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000310_b, case_000310_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000310_firstLine_eq :
    case_000310_support.firstLine case_000310_seq case_000310_b = case_000310_firstLine := by
  norm_num [case_000310_firstLine, case_000310_support, case_000310_seq, case_000310_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000310_secondLine_eq :
    case_000310_support.secondLine case_000310_seq case_000310_b = case_000310_secondLine := by
  norm_num [case_000310_secondLine, case_000310_support, case_000310_seq, case_000310_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000310_sourceAgrees :
    SourceAgrees case_000310_support case_000310_rank.val case_000310_mask := by
  intro hlt
  have hrank : (⟨case_000310_rank.val, hlt⟩ : Fin numPairWords) = case_000310_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000310_rank.val, hlt⟩ case_000310_mask =
        case_000310_seq := by
    simpa [hrank] using case_000310_seqAtRank
  simp [SourceChecks, hseq, case_000310_support,
    checkTranslationConstraintSource, case_000310_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000310_rows :
    EqEqPosVarSecondRows case_000310_support case_000310_rank.val case_000310_mask := by
  intro hlt
  have hrank : (⟨case_000310_rank.val, hlt⟩ : Fin numPairWords) = case_000310_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000310_rank.val, hlt⟩ case_000310_mask =
        case_000310_seq := by
    simpa [hrank] using case_000310_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000310_rank.val, hlt⟩ case_000310_mask =
        case_000310_b := by
    simpa [hrank] using case_000310_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000310_support case_000310_rank.val hlt
          case_000310_mask = case_000310_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000310_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000310_support case_000310_rank.val hlt
          case_000310_mask = case_000310_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000310_secondLine_eq]
  have case_000310_fixedFirst :
      FixedRow (FirstLineAt case_000310_support case_000310_rank.val hlt case_000310_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000310_firstLine, FixedRow]
  have case_000310_rowSecond :
      EqEqPosRow (SecondLineAt case_000310_support case_000310_rank.val hlt case_000310_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000310_secondLine, EqEqPosRow]
  exact ⟨case_000310_fixedFirst, case_000310_rowSecond⟩

private theorem case_000310_existsRows :
    ExistsEqEqPosVarSecondRows case_000310_rank.val case_000310_mask :=
  ⟨case_000310_support, case_000310_sourceAgrees, case_000310_rows⟩

private theorem case_000310_covered :
    RowPropertyParametricCovered case_000310_rank.val case_000310_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000310_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000311_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000311_mask : SignMask := ⟨30, by decide⟩
private def case_000311_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000311_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000311_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000311_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000311_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000311_secondLine : StrictLin2 := { a := (-3/22), b := (-3/22), c := (-5/11) }

private theorem case_000311_rankWord :
    rankPairWord? case_000311_word = some case_000311_rank := by
  decide

private theorem case_000311_unrank :
    unrankPairWord case_000311_rank = case_000311_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000311_word case_000311_rank).1
    case_000311_rankWord |>.symm

private theorem case_000311_seqChoice :
    translationChoiceSeq case_000311_word case_000311_mask = case_000311_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000311_seqAtRank :
    translationSeqAtRankMask case_000311_rank case_000311_mask = case_000311_seq := by
  rw [translationSeqAtRankMask, case_000311_unrank]
  exact case_000311_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000311_bAtRank :
    translationBAtRankMask case_000311_rank case_000311_mask = case_000311_b := by
  rw [translationBAtRankMask, case_000311_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000311_b, case_000311_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000311_firstLine_eq :
    case_000311_support.firstLine case_000311_seq case_000311_b = case_000311_firstLine := by
  norm_num [case_000311_firstLine, case_000311_support, case_000311_seq, case_000311_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000311_secondLine_eq :
    case_000311_support.secondLine case_000311_seq case_000311_b = case_000311_secondLine := by
  norm_num [case_000311_secondLine, case_000311_support, case_000311_seq, case_000311_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000311_sourceAgrees :
    SourceAgrees case_000311_support case_000311_rank.val case_000311_mask := by
  intro hlt
  have hrank : (⟨case_000311_rank.val, hlt⟩ : Fin numPairWords) = case_000311_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000311_rank.val, hlt⟩ case_000311_mask =
        case_000311_seq := by
    simpa [hrank] using case_000311_seqAtRank
  simp [SourceChecks, hseq, case_000311_support,
    checkTranslationConstraintSource, case_000311_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000311_rows :
    EqEqPosVarSecondRows case_000311_support case_000311_rank.val case_000311_mask := by
  intro hlt
  have hrank : (⟨case_000311_rank.val, hlt⟩ : Fin numPairWords) = case_000311_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000311_rank.val, hlt⟩ case_000311_mask =
        case_000311_seq := by
    simpa [hrank] using case_000311_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000311_rank.val, hlt⟩ case_000311_mask =
        case_000311_b := by
    simpa [hrank] using case_000311_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000311_support case_000311_rank.val hlt
          case_000311_mask = case_000311_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000311_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000311_support case_000311_rank.val hlt
          case_000311_mask = case_000311_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000311_secondLine_eq]
  have case_000311_fixedFirst :
      FixedRow (FirstLineAt case_000311_support case_000311_rank.val hlt case_000311_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000311_firstLine, FixedRow]
  have case_000311_rowSecond :
      EqEqPosRow (SecondLineAt case_000311_support case_000311_rank.val hlt case_000311_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000311_secondLine, EqEqPosRow]
  exact ⟨case_000311_fixedFirst, case_000311_rowSecond⟩

private theorem case_000311_existsRows :
    ExistsEqEqPosVarSecondRows case_000311_rank.val case_000311_mask :=
  ⟨case_000311_support, case_000311_sourceAgrees, case_000311_rows⟩

private theorem case_000311_covered :
    RowPropertyParametricCovered case_000311_rank.val case_000311_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000311_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000312_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000312_mask : SignMask := ⟨31, by decide⟩
private def case_000312_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000312_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_000312_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000312_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_000312_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000312_secondLine : StrictLin2 := { a := (-33/170), b := (-33/170), c := (-8/5) }

private theorem case_000312_rankWord :
    rankPairWord? case_000312_word = some case_000312_rank := by
  decide

private theorem case_000312_unrank :
    unrankPairWord case_000312_rank = case_000312_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000312_word case_000312_rank).1
    case_000312_rankWord |>.symm

private theorem case_000312_seqChoice :
    translationChoiceSeq case_000312_word case_000312_mask = case_000312_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000312_seqAtRank :
    translationSeqAtRankMask case_000312_rank case_000312_mask = case_000312_seq := by
  rw [translationSeqAtRankMask, case_000312_unrank]
  exact case_000312_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000312_bAtRank :
    translationBAtRankMask case_000312_rank case_000312_mask = case_000312_b := by
  rw [translationBAtRankMask, case_000312_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000312_b, case_000312_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000312_firstLine_eq :
    case_000312_support.firstLine case_000312_seq case_000312_b = case_000312_firstLine := by
  norm_num [case_000312_firstLine, case_000312_support, case_000312_seq, case_000312_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000312_secondLine_eq :
    case_000312_support.secondLine case_000312_seq case_000312_b = case_000312_secondLine := by
  norm_num [case_000312_secondLine, case_000312_support, case_000312_seq, case_000312_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000312_sourceAgrees :
    SourceAgrees case_000312_support case_000312_rank.val case_000312_mask := by
  intro hlt
  have hrank : (⟨case_000312_rank.val, hlt⟩ : Fin numPairWords) = case_000312_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000312_rank.val, hlt⟩ case_000312_mask =
        case_000312_seq := by
    simpa [hrank] using case_000312_seqAtRank
  simp [SourceChecks, hseq, case_000312_support,
    checkTranslationConstraintSource, case_000312_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000312_rows :
    EqEqPosVarSecondRows case_000312_support case_000312_rank.val case_000312_mask := by
  intro hlt
  have hrank : (⟨case_000312_rank.val, hlt⟩ : Fin numPairWords) = case_000312_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000312_rank.val, hlt⟩ case_000312_mask =
        case_000312_seq := by
    simpa [hrank] using case_000312_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000312_rank.val, hlt⟩ case_000312_mask =
        case_000312_b := by
    simpa [hrank] using case_000312_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000312_support case_000312_rank.val hlt
          case_000312_mask = case_000312_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000312_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000312_support case_000312_rank.val hlt
          case_000312_mask = case_000312_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000312_secondLine_eq]
  have case_000312_fixedFirst :
      FixedRow (FirstLineAt case_000312_support case_000312_rank.val hlt case_000312_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000312_firstLine, FixedRow]
  have case_000312_rowSecond :
      EqEqPosRow (SecondLineAt case_000312_support case_000312_rank.val hlt case_000312_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000312_secondLine, EqEqPosRow]
  exact ⟨case_000312_fixedFirst, case_000312_rowSecond⟩

private theorem case_000312_existsRows :
    ExistsEqEqPosVarSecondRows case_000312_rank.val case_000312_mask :=
  ⟨case_000312_support, case_000312_sourceAgrees, case_000312_rows⟩

private theorem case_000312_covered :
    RowPropertyParametricCovered case_000312_rank.val case_000312_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000312_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000313_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000313_mask : SignMask := ⟨45, by decide⟩
private def case_000313_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000313_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000313_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000313_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000313_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000313_secondLine : StrictLin2 := { a := (9/374), b := (-9/374), c := (-1/11) }

private theorem case_000313_rankWord :
    rankPairWord? case_000313_word = some case_000313_rank := by
  decide

private theorem case_000313_unrank :
    unrankPairWord case_000313_rank = case_000313_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000313_word case_000313_rank).1
    case_000313_rankWord |>.symm

private theorem case_000313_seqChoice :
    translationChoiceSeq case_000313_word case_000313_mask = case_000313_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000313_seqAtRank :
    translationSeqAtRankMask case_000313_rank case_000313_mask = case_000313_seq := by
  rw [translationSeqAtRankMask, case_000313_unrank]
  exact case_000313_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000313_bAtRank :
    translationBAtRankMask case_000313_rank case_000313_mask = case_000313_b := by
  rw [translationBAtRankMask, case_000313_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000313_b, case_000313_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000313_firstLine_eq :
    case_000313_support.firstLine case_000313_seq case_000313_b = case_000313_firstLine := by
  norm_num [case_000313_firstLine, case_000313_support, case_000313_seq, case_000313_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000313_secondLine_eq :
    case_000313_support.secondLine case_000313_seq case_000313_b = case_000313_secondLine := by
  norm_num [case_000313_secondLine, case_000313_support, case_000313_seq, case_000313_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000313_sourceAgrees :
    SourceAgrees case_000313_support case_000313_rank.val case_000313_mask := by
  intro hlt
  have hrank : (⟨case_000313_rank.val, hlt⟩ : Fin numPairWords) = case_000313_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000313_rank.val, hlt⟩ case_000313_mask =
        case_000313_seq := by
    simpa [hrank] using case_000313_seqAtRank
  simp [SourceChecks, hseq, case_000313_support,
    checkTranslationConstraintSource, case_000313_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000313_rows :
    OppMinusOneVarSecondRows case_000313_support case_000313_rank.val case_000313_mask := by
  intro hlt
  have hrank : (⟨case_000313_rank.val, hlt⟩ : Fin numPairWords) = case_000313_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000313_rank.val, hlt⟩ case_000313_mask =
        case_000313_seq := by
    simpa [hrank] using case_000313_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000313_rank.val, hlt⟩ case_000313_mask =
        case_000313_b := by
    simpa [hrank] using case_000313_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000313_support case_000313_rank.val hlt
          case_000313_mask = case_000313_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000313_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000313_support case_000313_rank.val hlt
          case_000313_mask = case_000313_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000313_secondLine_eq]
  have case_000313_fixedFirst :
      FixedRow (FirstLineAt case_000313_support case_000313_rank.val hlt case_000313_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000313_firstLine, FixedRow]
  have case_000313_rowSecond :
      OppNegRow (SecondLineAt case_000313_support case_000313_rank.val hlt case_000313_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000313_secondLine, OppNegRow]
  exact ⟨case_000313_fixedFirst, case_000313_rowSecond⟩

private theorem case_000313_existsRows :
    ExistsOppMinusOneVarSecondRows case_000313_rank.val case_000313_mask :=
  ⟨case_000313_support, case_000313_sourceAgrees, case_000313_rows⟩

private theorem case_000313_covered :
    RowPropertyParametricCovered case_000313_rank.val case_000313_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000313_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_000314_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000314_mask : SignMask := ⟨47, by decide⟩
private def case_000314_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000314_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000314_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000314_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_000314_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000314_secondLine : StrictLin2 := { a := (9/110), b := (-9/110), c := (-4/11) }

private theorem case_000314_rankWord :
    rankPairWord? case_000314_word = some case_000314_rank := by
  decide

private theorem case_000314_unrank :
    unrankPairWord case_000314_rank = case_000314_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000314_word case_000314_rank).1
    case_000314_rankWord |>.symm

private theorem case_000314_seqChoice :
    translationChoiceSeq case_000314_word case_000314_mask = case_000314_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000314_seqAtRank :
    translationSeqAtRankMask case_000314_rank case_000314_mask = case_000314_seq := by
  rw [translationSeqAtRankMask, case_000314_unrank]
  exact case_000314_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000314_bAtRank :
    translationBAtRankMask case_000314_rank case_000314_mask = case_000314_b := by
  rw [translationBAtRankMask, case_000314_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000314_b, case_000314_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000314_firstLine_eq :
    case_000314_support.firstLine case_000314_seq case_000314_b = case_000314_firstLine := by
  norm_num [case_000314_firstLine, case_000314_support, case_000314_seq, case_000314_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000314_secondLine_eq :
    case_000314_support.secondLine case_000314_seq case_000314_b = case_000314_secondLine := by
  norm_num [case_000314_secondLine, case_000314_support, case_000314_seq, case_000314_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000314_sourceAgrees :
    SourceAgrees case_000314_support case_000314_rank.val case_000314_mask := by
  intro hlt
  have hrank : (⟨case_000314_rank.val, hlt⟩ : Fin numPairWords) = case_000314_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000314_rank.val, hlt⟩ case_000314_mask =
        case_000314_seq := by
    simpa [hrank] using case_000314_seqAtRank
  simp [SourceChecks, hseq, case_000314_support,
    checkTranslationConstraintSource, case_000314_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000314_rows :
    OppMinusOneVarSecondRows case_000314_support case_000314_rank.val case_000314_mask := by
  intro hlt
  have hrank : (⟨case_000314_rank.val, hlt⟩ : Fin numPairWords) = case_000314_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000314_rank.val, hlt⟩ case_000314_mask =
        case_000314_seq := by
    simpa [hrank] using case_000314_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000314_rank.val, hlt⟩ case_000314_mask =
        case_000314_b := by
    simpa [hrank] using case_000314_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000314_support case_000314_rank.val hlt
          case_000314_mask = case_000314_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000314_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000314_support case_000314_rank.val hlt
          case_000314_mask = case_000314_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000314_secondLine_eq]
  have case_000314_fixedFirst :
      FixedRow (FirstLineAt case_000314_support case_000314_rank.val hlt case_000314_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000314_firstLine, FixedRow]
  have case_000314_rowSecond :
      OppNegRow (SecondLineAt case_000314_support case_000314_rank.val hlt case_000314_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000314_secondLine, OppNegRow]
  exact ⟨case_000314_fixedFirst, case_000314_rowSecond⟩

private theorem case_000314_existsRows :
    ExistsOppMinusOneVarSecondRows case_000314_rank.val case_000314_mask :=
  ⟨case_000314_support, case_000314_sourceAgrees, case_000314_rows⟩

private theorem case_000314_covered :
    RowPropertyParametricCovered case_000314_rank.val case_000314_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_000314_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000315_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000315_mask : SignMask := ⟨54, by decide⟩
private def case_000315_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000315_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000315_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000315_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000315_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_000315_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000315_rankWord :
    rankPairWord? case_000315_word = some case_000315_rank := by
  decide

private theorem case_000315_unrank :
    unrankPairWord case_000315_rank = case_000315_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000315_word case_000315_rank).1
    case_000315_rankWord |>.symm

private theorem case_000315_seqChoice :
    translationChoiceSeq case_000315_word case_000315_mask = case_000315_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000315_seqAtRank :
    translationSeqAtRankMask case_000315_rank case_000315_mask = case_000315_seq := by
  rw [translationSeqAtRankMask, case_000315_unrank]
  exact case_000315_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000315_bAtRank :
    translationBAtRankMask case_000315_rank case_000315_mask = case_000315_b := by
  rw [translationBAtRankMask, case_000315_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000315_b, case_000315_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000315_firstLine_eq :
    case_000315_support.firstLine case_000315_seq case_000315_b = case_000315_firstLine := by
  norm_num [case_000315_firstLine, case_000315_support, case_000315_seq, case_000315_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000315_secondLine_eq :
    case_000315_support.secondLine case_000315_seq case_000315_b = case_000315_secondLine := by
  norm_num [case_000315_secondLine, case_000315_support, case_000315_seq, case_000315_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000315_sourceAgrees :
    SourceAgrees case_000315_support case_000315_rank.val case_000315_mask := by
  intro hlt
  have hrank : (⟨case_000315_rank.val, hlt⟩ : Fin numPairWords) = case_000315_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000315_rank.val, hlt⟩ case_000315_mask =
        case_000315_seq := by
    simpa [hrank] using case_000315_seqAtRank
  simp [SourceChecks, hseq, case_000315_support,
    checkTranslationConstraintSource, case_000315_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000315_rows :
    OppOneMinusVarFirstRows case_000315_support case_000315_rank.val case_000315_mask := by
  intro hlt
  have hrank : (⟨case_000315_rank.val, hlt⟩ : Fin numPairWords) = case_000315_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000315_rank.val, hlt⟩ case_000315_mask =
        case_000315_seq := by
    simpa [hrank] using case_000315_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000315_rank.val, hlt⟩ case_000315_mask =
        case_000315_b := by
    simpa [hrank] using case_000315_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000315_support case_000315_rank.val hlt
          case_000315_mask = case_000315_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000315_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000315_support case_000315_rank.val hlt
          case_000315_mask = case_000315_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000315_secondLine_eq]
  have case_000315_rowFirst :
      OppPosRow (FirstLineAt case_000315_support case_000315_rank.val hlt case_000315_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000315_firstLine, OppPosRow]
  have case_000315_fixedSecond :
      FixedRow (SecondLineAt case_000315_support case_000315_rank.val hlt case_000315_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000315_secondLine, FixedRow]
  exact ⟨case_000315_rowFirst, case_000315_fixedSecond⟩

private theorem case_000315_existsRows :
    ExistsOppOneMinusVarFirstRows case_000315_rank.val case_000315_mask :=
  ⟨case_000315_support, case_000315_sourceAgrees, case_000315_rows⟩

private theorem case_000315_covered :
    RowPropertyParametricCovered case_000315_rank.val case_000315_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000315_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000316_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000316_mask : SignMask := ⟨55, by decide⟩
private def case_000316_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000316_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000316_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000316_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_000316_firstLine : StrictLin2 := { a := -1, b := 1, c := (-13/3) }
private def case_000316_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000316_rankWord :
    rankPairWord? case_000316_word = some case_000316_rank := by
  decide

private theorem case_000316_unrank :
    unrankPairWord case_000316_rank = case_000316_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000316_word case_000316_rank).1
    case_000316_rankWord |>.symm

private theorem case_000316_seqChoice :
    translationChoiceSeq case_000316_word case_000316_mask = case_000316_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000316_seqAtRank :
    translationSeqAtRankMask case_000316_rank case_000316_mask = case_000316_seq := by
  rw [translationSeqAtRankMask, case_000316_unrank]
  exact case_000316_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000316_bAtRank :
    translationBAtRankMask case_000316_rank case_000316_mask = case_000316_b := by
  rw [translationBAtRankMask, case_000316_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000316_b, case_000316_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000316_firstLine_eq :
    case_000316_support.firstLine case_000316_seq case_000316_b = case_000316_firstLine := by
  norm_num [case_000316_firstLine, case_000316_support, case_000316_seq, case_000316_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000316_secondLine_eq :
    case_000316_support.secondLine case_000316_seq case_000316_b = case_000316_secondLine := by
  norm_num [case_000316_secondLine, case_000316_support, case_000316_seq, case_000316_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000316_sourceAgrees :
    SourceAgrees case_000316_support case_000316_rank.val case_000316_mask := by
  intro hlt
  have hrank : (⟨case_000316_rank.val, hlt⟩ : Fin numPairWords) = case_000316_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000316_rank.val, hlt⟩ case_000316_mask =
        case_000316_seq := by
    simpa [hrank] using case_000316_seqAtRank
  simp [SourceChecks, hseq, case_000316_support,
    checkTranslationConstraintSource, case_000316_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000316_rows :
    OppOneMinusVarFirstRows case_000316_support case_000316_rank.val case_000316_mask := by
  intro hlt
  have hrank : (⟨case_000316_rank.val, hlt⟩ : Fin numPairWords) = case_000316_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000316_rank.val, hlt⟩ case_000316_mask =
        case_000316_seq := by
    simpa [hrank] using case_000316_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000316_rank.val, hlt⟩ case_000316_mask =
        case_000316_b := by
    simpa [hrank] using case_000316_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000316_support case_000316_rank.val hlt
          case_000316_mask = case_000316_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000316_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000316_support case_000316_rank.val hlt
          case_000316_mask = case_000316_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000316_secondLine_eq]
  have case_000316_rowFirst :
      OppPosRow (FirstLineAt case_000316_support case_000316_rank.val hlt case_000316_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000316_firstLine, OppPosRow]
  have case_000316_fixedSecond :
      FixedRow (SecondLineAt case_000316_support case_000316_rank.val hlt case_000316_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000316_secondLine, FixedRow]
  exact ⟨case_000316_rowFirst, case_000316_fixedSecond⟩

private theorem case_000316_existsRows :
    ExistsOppOneMinusVarFirstRows case_000316_rank.val case_000316_mask :=
  ⟨case_000316_support, case_000316_sourceAgrees, case_000316_rows⟩

private theorem case_000316_covered :
    RowPropertyParametricCovered case_000316_rank.val case_000316_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000316_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000317_rank : Fin numPairWords := ⟨84, by decide⟩
private def case_000317_mask : SignMask := ⟨63, by decide⟩
private def case_000317_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000317_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000317_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000317_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000317_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000317_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000317_rankWord :
    rankPairWord? case_000317_word = some case_000317_rank := by
  decide

private theorem case_000317_unrank :
    unrankPairWord case_000317_rank = case_000317_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000317_word case_000317_rank).1
    case_000317_rankWord |>.symm

private theorem case_000317_seqChoice :
    translationChoiceSeq case_000317_word case_000317_mask = case_000317_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000317_seqAtRank :
    translationSeqAtRankMask case_000317_rank case_000317_mask = case_000317_seq := by
  rw [translationSeqAtRankMask, case_000317_unrank]
  exact case_000317_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000317_bAtRank :
    translationBAtRankMask case_000317_rank case_000317_mask = case_000317_b := by
  rw [translationBAtRankMask, case_000317_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000317_b, case_000317_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000317_firstLine_eq :
    case_000317_support.firstLine case_000317_seq case_000317_b = case_000317_firstLine := by
  norm_num [case_000317_firstLine, case_000317_support, case_000317_seq, case_000317_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000317_secondLine_eq :
    case_000317_support.secondLine case_000317_seq case_000317_b = case_000317_secondLine := by
  norm_num [case_000317_secondLine, case_000317_support, case_000317_seq, case_000317_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000317_sourceAgrees :
    SourceAgrees case_000317_support case_000317_rank.val case_000317_mask := by
  intro hlt
  have hrank : (⟨case_000317_rank.val, hlt⟩ : Fin numPairWords) = case_000317_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000317_rank.val, hlt⟩ case_000317_mask =
        case_000317_seq := by
    simpa [hrank] using case_000317_seqAtRank
  simp [SourceChecks, hseq, case_000317_support,
    checkTranslationConstraintSource, case_000317_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000317_rows :
    EqEqPosVarFirstRows case_000317_support case_000317_rank.val case_000317_mask := by
  intro hlt
  have hrank : (⟨case_000317_rank.val, hlt⟩ : Fin numPairWords) = case_000317_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000317_rank.val, hlt⟩ case_000317_mask =
        case_000317_seq := by
    simpa [hrank] using case_000317_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000317_rank.val, hlt⟩ case_000317_mask =
        case_000317_b := by
    simpa [hrank] using case_000317_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000317_support case_000317_rank.val hlt
          case_000317_mask = case_000317_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000317_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000317_support case_000317_rank.val hlt
          case_000317_mask = case_000317_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000317_secondLine_eq]
  have case_000317_rowFirst :
      EqEqPosRow (FirstLineAt case_000317_support case_000317_rank.val hlt case_000317_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000317_firstLine, EqEqPosRow]
  have case_000317_fixedSecond :
      FixedRow (SecondLineAt case_000317_support case_000317_rank.val hlt case_000317_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000317_secondLine, FixedRow]
  exact ⟨case_000317_rowFirst, case_000317_fixedSecond⟩

private theorem case_000317_existsRows :
    ExistsEqEqPosVarFirstRows case_000317_rank.val case_000317_mask :=
  ⟨case_000317_support, case_000317_sourceAgrees, case_000317_rows⟩

private theorem case_000317_covered :
    RowPropertyParametricCovered case_000317_rank.val case_000317_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000317_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000318_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000318_mask : SignMask := ⟨9, by decide⟩
private def case_000318_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000318_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000318_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmp
private def case_000318_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-116/9) }
private def case_000318_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000318_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000318_rankWord :
    rankPairWord? case_000318_word = some case_000318_rank := by
  decide

private theorem case_000318_unrank :
    unrankPairWord case_000318_rank = case_000318_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000318_word case_000318_rank).1
    case_000318_rankWord |>.symm

private theorem case_000318_seqChoice :
    translationChoiceSeq case_000318_word case_000318_mask = case_000318_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000318_seqAtRank :
    translationSeqAtRankMask case_000318_rank case_000318_mask = case_000318_seq := by
  rw [translationSeqAtRankMask, case_000318_unrank]
  exact case_000318_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000318_bAtRank :
    translationBAtRankMask case_000318_rank case_000318_mask = case_000318_b := by
  rw [translationBAtRankMask, case_000318_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000318_b, case_000318_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000318_firstLine_eq :
    case_000318_support.firstLine case_000318_seq case_000318_b = case_000318_firstLine := by
  norm_num [case_000318_firstLine, case_000318_support, case_000318_seq, case_000318_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000318_secondLine_eq :
    case_000318_support.secondLine case_000318_seq case_000318_b = case_000318_secondLine := by
  norm_num [case_000318_secondLine, case_000318_support, case_000318_seq, case_000318_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000318_sourceAgrees :
    SourceAgrees case_000318_support case_000318_rank.val case_000318_mask := by
  intro hlt
  have hrank : (⟨case_000318_rank.val, hlt⟩ : Fin numPairWords) = case_000318_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000318_rank.val, hlt⟩ case_000318_mask =
        case_000318_seq := by
    simpa [hrank] using case_000318_seqAtRank
  simp [SourceChecks, hseq, case_000318_support,
    checkTranslationConstraintSource, case_000318_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000318_rows :
    EqEqPosVarFirstRows case_000318_support case_000318_rank.val case_000318_mask := by
  intro hlt
  have hrank : (⟨case_000318_rank.val, hlt⟩ : Fin numPairWords) = case_000318_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000318_rank.val, hlt⟩ case_000318_mask =
        case_000318_seq := by
    simpa [hrank] using case_000318_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000318_rank.val, hlt⟩ case_000318_mask =
        case_000318_b := by
    simpa [hrank] using case_000318_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000318_support case_000318_rank.val hlt
          case_000318_mask = case_000318_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000318_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000318_support case_000318_rank.val hlt
          case_000318_mask = case_000318_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000318_secondLine_eq]
  have case_000318_rowFirst :
      EqEqPosRow (FirstLineAt case_000318_support case_000318_rank.val hlt case_000318_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000318_firstLine, EqEqPosRow]
  have case_000318_fixedSecond :
      FixedRow (SecondLineAt case_000318_support case_000318_rank.val hlt case_000318_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000318_secondLine, FixedRow]
  exact ⟨case_000318_rowFirst, case_000318_fixedSecond⟩

private theorem case_000318_existsRows :
    ExistsEqEqPosVarFirstRows case_000318_rank.val case_000318_mask :=
  ⟨case_000318_support, case_000318_sourceAgrees, case_000318_rows⟩

private theorem case_000318_covered :
    RowPropertyParametricCovered case_000318_rank.val case_000318_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000318_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000319_rank : Fin numPairWords := ⟨86, by decide⟩
private def case_000319_mask : SignMask := ⟨16, by decide⟩
private def case_000319_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩
private def case_000319_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000319_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppm
private def case_000319_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-52/9) }
private def case_000319_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000319_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000319_rankWord :
    rankPairWord? case_000319_word = some case_000319_rank := by
  decide

private theorem case_000319_unrank :
    unrankPairWord case_000319_rank = case_000319_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000319_word case_000319_rank).1
    case_000319_rankWord |>.symm

private theorem case_000319_seqChoice :
    translationChoiceSeq case_000319_word case_000319_mask = case_000319_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000319_seqAtRank :
    translationSeqAtRankMask case_000319_rank case_000319_mask = case_000319_seq := by
  rw [translationSeqAtRankMask, case_000319_unrank]
  exact case_000319_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000319_bAtRank :
    translationBAtRankMask case_000319_rank case_000319_mask = case_000319_b := by
  rw [translationBAtRankMask, case_000319_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000319_b, case_000319_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000319_firstLine_eq :
    case_000319_support.firstLine case_000319_seq case_000319_b = case_000319_firstLine := by
  norm_num [case_000319_firstLine, case_000319_support, case_000319_seq, case_000319_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000319_secondLine_eq :
    case_000319_support.secondLine case_000319_seq case_000319_b = case_000319_secondLine := by
  norm_num [case_000319_secondLine, case_000319_support, case_000319_seq, case_000319_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000319_sourceAgrees :
    SourceAgrees case_000319_support case_000319_rank.val case_000319_mask := by
  intro hlt
  have hrank : (⟨case_000319_rank.val, hlt⟩ : Fin numPairWords) = case_000319_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000319_rank.val, hlt⟩ case_000319_mask =
        case_000319_seq := by
    simpa [hrank] using case_000319_seqAtRank
  simp [SourceChecks, hseq, case_000319_support,
    checkTranslationConstraintSource, case_000319_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000319_rows :
    EqEqPosVarFirstRows case_000319_support case_000319_rank.val case_000319_mask := by
  intro hlt
  have hrank : (⟨case_000319_rank.val, hlt⟩ : Fin numPairWords) = case_000319_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000319_rank.val, hlt⟩ case_000319_mask =
        case_000319_seq := by
    simpa [hrank] using case_000319_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000319_rank.val, hlt⟩ case_000319_mask =
        case_000319_b := by
    simpa [hrank] using case_000319_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000319_support case_000319_rank.val hlt
          case_000319_mask = case_000319_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000319_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000319_support case_000319_rank.val hlt
          case_000319_mask = case_000319_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000319_secondLine_eq]
  have case_000319_rowFirst :
      EqEqPosRow (FirstLineAt case_000319_support case_000319_rank.val hlt case_000319_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000319_firstLine, EqEqPosRow]
  have case_000319_fixedSecond :
      FixedRow (SecondLineAt case_000319_support case_000319_rank.val hlt case_000319_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000319_secondLine, FixedRow]
  exact ⟨case_000319_rowFirst, case_000319_fixedSecond⟩

private theorem case_000319_existsRows :
    ExistsEqEqPosVarFirstRows case_000319_rank.val case_000319_mask :=
  ⟨case_000319_support, case_000319_sourceAgrees, case_000319_rows⟩

private theorem case_000319_covered :
    RowPropertyParametricCovered case_000319_rank.val case_000319_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000319_existsRows

inductive Group009Covered : Nat -> SignMask -> Prop
  | case_000288 : Group009Covered case_000288_rank.val case_000288_mask
  | case_000289 : Group009Covered case_000289_rank.val case_000289_mask
  | case_000290 : Group009Covered case_000290_rank.val case_000290_mask
  | case_000291 : Group009Covered case_000291_rank.val case_000291_mask
  | case_000292 : Group009Covered case_000292_rank.val case_000292_mask
  | case_000293 : Group009Covered case_000293_rank.val case_000293_mask
  | case_000294 : Group009Covered case_000294_rank.val case_000294_mask
  | case_000295 : Group009Covered case_000295_rank.val case_000295_mask
  | case_000296 : Group009Covered case_000296_rank.val case_000296_mask
  | case_000297 : Group009Covered case_000297_rank.val case_000297_mask
  | case_000298 : Group009Covered case_000298_rank.val case_000298_mask
  | case_000299 : Group009Covered case_000299_rank.val case_000299_mask
  | case_000300 : Group009Covered case_000300_rank.val case_000300_mask
  | case_000301 : Group009Covered case_000301_rank.val case_000301_mask
  | case_000302 : Group009Covered case_000302_rank.val case_000302_mask
  | case_000303 : Group009Covered case_000303_rank.val case_000303_mask
  | case_000304 : Group009Covered case_000304_rank.val case_000304_mask
  | case_000305 : Group009Covered case_000305_rank.val case_000305_mask
  | case_000306 : Group009Covered case_000306_rank.val case_000306_mask
  | case_000307 : Group009Covered case_000307_rank.val case_000307_mask
  | case_000308 : Group009Covered case_000308_rank.val case_000308_mask
  | case_000309 : Group009Covered case_000309_rank.val case_000309_mask
  | case_000310 : Group009Covered case_000310_rank.val case_000310_mask
  | case_000311 : Group009Covered case_000311_rank.val case_000311_mask
  | case_000312 : Group009Covered case_000312_rank.val case_000312_mask
  | case_000313 : Group009Covered case_000313_rank.val case_000313_mask
  | case_000314 : Group009Covered case_000314_rank.val case_000314_mask
  | case_000315 : Group009Covered case_000315_rank.val case_000315_mask
  | case_000316 : Group009Covered case_000316_rank.val case_000316_mask
  | case_000317 : Group009Covered case_000317_rank.val case_000317_mask
  | case_000318 : Group009Covered case_000318_rank.val case_000318_mask
  | case_000319 : Group009Covered case_000319_rank.val case_000319_mask

theorem Group009GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group009Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000288 =>
      exact RowPropertyParametricCovered.kills case_000288_covered
  | case_000289 =>
      exact RowPropertyParametricCovered.kills case_000289_covered
  | case_000290 =>
      exact RowPropertyParametricCovered.kills case_000290_covered
  | case_000291 =>
      exact RowPropertyParametricCovered.kills case_000291_covered
  | case_000292 =>
      exact RowPropertyParametricCovered.kills case_000292_covered
  | case_000293 =>
      exact RowPropertyParametricCovered.kills case_000293_covered
  | case_000294 =>
      exact RowPropertyParametricCovered.kills case_000294_covered
  | case_000295 =>
      exact RowPropertyParametricCovered.kills case_000295_covered
  | case_000296 =>
      exact RowPropertyParametricCovered.kills case_000296_covered
  | case_000297 =>
      exact RowPropertyParametricCovered.kills case_000297_covered
  | case_000298 =>
      exact RowPropertyParametricCovered.kills case_000298_covered
  | case_000299 =>
      exact RowPropertyParametricCovered.kills case_000299_covered
  | case_000300 =>
      exact RowPropertyParametricCovered.kills case_000300_covered
  | case_000301 =>
      exact RowPropertyParametricCovered.kills case_000301_covered
  | case_000302 =>
      exact RowPropertyParametricCovered.kills case_000302_covered
  | case_000303 =>
      exact RowPropertyParametricCovered.kills case_000303_covered
  | case_000304 =>
      exact RowPropertyParametricCovered.kills case_000304_covered
  | case_000305 =>
      exact RowPropertyParametricCovered.kills case_000305_covered
  | case_000306 =>
      exact RowPropertyParametricCovered.kills case_000306_covered
  | case_000307 =>
      exact RowPropertyParametricCovered.kills case_000307_covered
  | case_000308 =>
      exact RowPropertyParametricCovered.kills case_000308_covered
  | case_000309 =>
      exact RowPropertyParametricCovered.kills case_000309_covered
  | case_000310 =>
      exact RowPropertyParametricCovered.kills case_000310_covered
  | case_000311 =>
      exact RowPropertyParametricCovered.kills case_000311_covered
  | case_000312 =>
      exact RowPropertyParametricCovered.kills case_000312_covered
  | case_000313 =>
      exact RowPropertyParametricCovered.kills case_000313_covered
  | case_000314 =>
      exact RowPropertyParametricCovered.kills case_000314_covered
  | case_000315 =>
      exact RowPropertyParametricCovered.kills case_000315_covered
  | case_000316 =>
      exact RowPropertyParametricCovered.kills case_000316_covered
  | case_000317 =>
      exact RowPropertyParametricCovered.kills case_000317_covered
  | case_000318 =>
      exact RowPropertyParametricCovered.kills case_000318_covered
  | case_000319 =>
      exact RowPropertyParametricCovered.kills case_000319_covered

theorem Group009_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group009
