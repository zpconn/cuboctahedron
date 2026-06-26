import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group039

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
private def case_001248_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001248_mask : SignMask := ⟨28, by decide⟩
private def case_001248_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001248_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001248_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001248_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_001248_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001248_secondLine : StrictLin2 := { a := (-3/22), b := (3/22), c := (-5/11) }

private theorem case_001248_rankWord :
    rankPairWord? case_001248_word = some case_001248_rank := by
  decide

private theorem case_001248_unrank :
    unrankPairWord case_001248_rank = case_001248_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001248_word case_001248_rank).1
    case_001248_rankWord |>.symm

private theorem case_001248_seqChoice :
    translationChoiceSeq case_001248_word case_001248_mask = case_001248_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001248_seqAtRank :
    translationSeqAtRankMask case_001248_rank case_001248_mask = case_001248_seq := by
  rw [translationSeqAtRankMask, case_001248_unrank]
  exact case_001248_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001248_bAtRank :
    translationBAtRankMask case_001248_rank case_001248_mask = case_001248_b := by
  rw [translationBAtRankMask, case_001248_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001248_b, case_001248_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001248_firstLine_eq :
    case_001248_support.firstLine case_001248_seq case_001248_b = case_001248_firstLine := by
  norm_num [case_001248_firstLine, case_001248_support, case_001248_seq, case_001248_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001248_secondLine_eq :
    case_001248_support.secondLine case_001248_seq case_001248_b = case_001248_secondLine := by
  norm_num [case_001248_secondLine, case_001248_support, case_001248_seq, case_001248_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001248_sourceAgrees :
    SourceAgrees case_001248_support case_001248_rank.val case_001248_mask := by
  intro hlt
  have hrank : (⟨case_001248_rank.val, hlt⟩ : Fin numPairWords) = case_001248_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001248_rank.val, hlt⟩ case_001248_mask =
        case_001248_seq := by
    simpa [hrank] using case_001248_seqAtRank
  simp [SourceChecks, hseq, case_001248_support,
    checkTranslationConstraintSource, case_001248_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001248_rows :
    OppOneMinusVarSecondRows case_001248_support case_001248_rank.val case_001248_mask := by
  intro hlt
  have hrank : (⟨case_001248_rank.val, hlt⟩ : Fin numPairWords) = case_001248_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001248_rank.val, hlt⟩ case_001248_mask =
        case_001248_seq := by
    simpa [hrank] using case_001248_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001248_rank.val, hlt⟩ case_001248_mask =
        case_001248_b := by
    simpa [hrank] using case_001248_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001248_support case_001248_rank.val hlt
          case_001248_mask = case_001248_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001248_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001248_support case_001248_rank.val hlt
          case_001248_mask = case_001248_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001248_secondLine_eq]
  have case_001248_fixedFirst :
      FixedRow (FirstLineAt case_001248_support case_001248_rank.val hlt case_001248_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001248_firstLine, FixedRow]
  have case_001248_rowSecond :
      OppPosRow (SecondLineAt case_001248_support case_001248_rank.val hlt case_001248_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001248_secondLine, OppPosRow]
  exact ⟨case_001248_fixedFirst, case_001248_rowSecond⟩

private theorem case_001248_existsRows :
    ExistsOppOneMinusVarSecondRows case_001248_rank.val case_001248_mask :=
  ⟨case_001248_support, case_001248_sourceAgrees, case_001248_rows⟩

private theorem case_001248_covered :
    RowPropertyParametricCovered case_001248_rank.val case_001248_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001248_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001249_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001249_mask : SignMask := ⟨29, by decide⟩
private def case_001249_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001249_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001249_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001249_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_001249_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001249_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_001249_rankWord :
    rankPairWord? case_001249_word = some case_001249_rank := by
  decide

private theorem case_001249_unrank :
    unrankPairWord case_001249_rank = case_001249_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001249_word case_001249_rank).1
    case_001249_rankWord |>.symm

private theorem case_001249_seqChoice :
    translationChoiceSeq case_001249_word case_001249_mask = case_001249_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001249_seqAtRank :
    translationSeqAtRankMask case_001249_rank case_001249_mask = case_001249_seq := by
  rw [translationSeqAtRankMask, case_001249_unrank]
  exact case_001249_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001249_bAtRank :
    translationBAtRankMask case_001249_rank case_001249_mask = case_001249_b := by
  rw [translationBAtRankMask, case_001249_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001249_b, case_001249_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001249_firstLine_eq :
    case_001249_support.firstLine case_001249_seq case_001249_b = case_001249_firstLine := by
  norm_num [case_001249_firstLine, case_001249_support, case_001249_seq, case_001249_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001249_secondLine_eq :
    case_001249_support.secondLine case_001249_seq case_001249_b = case_001249_secondLine := by
  norm_num [case_001249_secondLine, case_001249_support, case_001249_seq, case_001249_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001249_sourceAgrees :
    SourceAgrees case_001249_support case_001249_rank.val case_001249_mask := by
  intro hlt
  have hrank : (⟨case_001249_rank.val, hlt⟩ : Fin numPairWords) = case_001249_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001249_rank.val, hlt⟩ case_001249_mask =
        case_001249_seq := by
    simpa [hrank] using case_001249_seqAtRank
  simp [SourceChecks, hseq, case_001249_support,
    checkTranslationConstraintSource, case_001249_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001249_rows :
    EqEqPosVarSecondRows case_001249_support case_001249_rank.val case_001249_mask := by
  intro hlt
  have hrank : (⟨case_001249_rank.val, hlt⟩ : Fin numPairWords) = case_001249_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001249_rank.val, hlt⟩ case_001249_mask =
        case_001249_seq := by
    simpa [hrank] using case_001249_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001249_rank.val, hlt⟩ case_001249_mask =
        case_001249_b := by
    simpa [hrank] using case_001249_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001249_support case_001249_rank.val hlt
          case_001249_mask = case_001249_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001249_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001249_support case_001249_rank.val hlt
          case_001249_mask = case_001249_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001249_secondLine_eq]
  have case_001249_fixedFirst :
      FixedRow (FirstLineAt case_001249_support case_001249_rank.val hlt case_001249_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001249_firstLine, FixedRow]
  have case_001249_rowSecond :
      EqEqPosRow (SecondLineAt case_001249_support case_001249_rank.val hlt case_001249_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001249_secondLine, EqEqPosRow]
  exact ⟨case_001249_fixedFirst, case_001249_rowSecond⟩

private theorem case_001249_existsRows :
    ExistsEqEqPosVarSecondRows case_001249_rank.val case_001249_mask :=
  ⟨case_001249_support, case_001249_sourceAgrees, case_001249_rows⟩

private theorem case_001249_covered :
    RowPropertyParametricCovered case_001249_rank.val case_001249_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001249_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001250_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001250_mask : SignMask := ⟨30, by decide⟩
private def case_001250_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001250_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001250_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001250_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_001250_firstLine : StrictLin2 := { a := (11/5), b := (-11/5), c := (-43/5) }
private def case_001250_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001250_rankWord :
    rankPairWord? case_001250_word = some case_001250_rank := by
  decide

private theorem case_001250_unrank :
    unrankPairWord case_001250_rank = case_001250_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001250_word case_001250_rank).1
    case_001250_rankWord |>.symm

private theorem case_001250_seqChoice :
    translationChoiceSeq case_001250_word case_001250_mask = case_001250_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001250_seqAtRank :
    translationSeqAtRankMask case_001250_rank case_001250_mask = case_001250_seq := by
  rw [translationSeqAtRankMask, case_001250_unrank]
  exact case_001250_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001250_bAtRank :
    translationBAtRankMask case_001250_rank case_001250_mask = case_001250_b := by
  rw [translationBAtRankMask, case_001250_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001250_b, case_001250_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001250_firstLine_eq :
    case_001250_support.firstLine case_001250_seq case_001250_b = case_001250_firstLine := by
  norm_num [case_001250_firstLine, case_001250_support, case_001250_seq, case_001250_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001250_secondLine_eq :
    case_001250_support.secondLine case_001250_seq case_001250_b = case_001250_secondLine := by
  norm_num [case_001250_secondLine, case_001250_support, case_001250_seq, case_001250_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001250_sourceAgrees :
    SourceAgrees case_001250_support case_001250_rank.val case_001250_mask := by
  intro hlt
  have hrank : (⟨case_001250_rank.val, hlt⟩ : Fin numPairWords) = case_001250_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001250_rank.val, hlt⟩ case_001250_mask =
        case_001250_seq := by
    simpa [hrank] using case_001250_seqAtRank
  simp [SourceChecks, hseq, case_001250_support,
    checkTranslationConstraintSource, case_001250_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001250_rows :
    OppMinusOneVarFirstRows case_001250_support case_001250_rank.val case_001250_mask := by
  intro hlt
  have hrank : (⟨case_001250_rank.val, hlt⟩ : Fin numPairWords) = case_001250_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001250_rank.val, hlt⟩ case_001250_mask =
        case_001250_seq := by
    simpa [hrank] using case_001250_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001250_rank.val, hlt⟩ case_001250_mask =
        case_001250_b := by
    simpa [hrank] using case_001250_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001250_support case_001250_rank.val hlt
          case_001250_mask = case_001250_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001250_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001250_support case_001250_rank.val hlt
          case_001250_mask = case_001250_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001250_secondLine_eq]
  have case_001250_rowFirst :
      OppNegRow (FirstLineAt case_001250_support case_001250_rank.val hlt case_001250_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001250_firstLine, OppNegRow]
  have case_001250_fixedSecond :
      FixedRow (SecondLineAt case_001250_support case_001250_rank.val hlt case_001250_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001250_secondLine, FixedRow]
  exact ⟨case_001250_rowFirst, case_001250_fixedSecond⟩

private theorem case_001250_existsRows :
    ExistsOppMinusOneVarFirstRows case_001250_rank.val case_001250_mask :=
  ⟨case_001250_support, case_001250_sourceAgrees, case_001250_rows⟩

private theorem case_001250_covered :
    RowPropertyParametricCovered case_001250_rank.val case_001250_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001250_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001251_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001251_mask : SignMask := ⟨31, by decide⟩
private def case_001251_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001251_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001251_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001251_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_001251_firstLine : StrictLin2 := { a := (-11/5), b := (-11/5), c := (-11/5) }
private def case_001251_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001251_rankWord :
    rankPairWord? case_001251_word = some case_001251_rank := by
  decide

private theorem case_001251_unrank :
    unrankPairWord case_001251_rank = case_001251_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001251_word case_001251_rank).1
    case_001251_rankWord |>.symm

private theorem case_001251_seqChoice :
    translationChoiceSeq case_001251_word case_001251_mask = case_001251_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001251_seqAtRank :
    translationSeqAtRankMask case_001251_rank case_001251_mask = case_001251_seq := by
  rw [translationSeqAtRankMask, case_001251_unrank]
  exact case_001251_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001251_bAtRank :
    translationBAtRankMask case_001251_rank case_001251_mask = case_001251_b := by
  rw [translationBAtRankMask, case_001251_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001251_b, case_001251_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001251_firstLine_eq :
    case_001251_support.firstLine case_001251_seq case_001251_b = case_001251_firstLine := by
  norm_num [case_001251_firstLine, case_001251_support, case_001251_seq, case_001251_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001251_secondLine_eq :
    case_001251_support.secondLine case_001251_seq case_001251_b = case_001251_secondLine := by
  norm_num [case_001251_secondLine, case_001251_support, case_001251_seq, case_001251_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001251_sourceAgrees :
    SourceAgrees case_001251_support case_001251_rank.val case_001251_mask := by
  intro hlt
  have hrank : (⟨case_001251_rank.val, hlt⟩ : Fin numPairWords) = case_001251_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001251_rank.val, hlt⟩ case_001251_mask =
        case_001251_seq := by
    simpa [hrank] using case_001251_seqAtRank
  simp [SourceChecks, hseq, case_001251_support,
    checkTranslationConstraintSource, case_001251_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001251_rows :
    EqEqPosVarFirstRows case_001251_support case_001251_rank.val case_001251_mask := by
  intro hlt
  have hrank : (⟨case_001251_rank.val, hlt⟩ : Fin numPairWords) = case_001251_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001251_rank.val, hlt⟩ case_001251_mask =
        case_001251_seq := by
    simpa [hrank] using case_001251_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001251_rank.val, hlt⟩ case_001251_mask =
        case_001251_b := by
    simpa [hrank] using case_001251_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001251_support case_001251_rank.val hlt
          case_001251_mask = case_001251_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001251_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001251_support case_001251_rank.val hlt
          case_001251_mask = case_001251_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001251_secondLine_eq]
  have case_001251_rowFirst :
      EqEqPosRow (FirstLineAt case_001251_support case_001251_rank.val hlt case_001251_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001251_firstLine, EqEqPosRow]
  have case_001251_fixedSecond :
      FixedRow (SecondLineAt case_001251_support case_001251_rank.val hlt case_001251_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001251_secondLine, FixedRow]
  exact ⟨case_001251_rowFirst, case_001251_fixedSecond⟩

private theorem case_001251_existsRows :
    ExistsEqEqPosVarFirstRows case_001251_rank.val case_001251_mask :=
  ⟨case_001251_support, case_001251_sourceAgrees, case_001251_rows⟩

private theorem case_001251_covered :
    RowPropertyParametricCovered case_001251_rank.val case_001251_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001251_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001252_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001252_mask : SignMask := ⟨45, by decide⟩
private def case_001252_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001252_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001252_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001252_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_001252_firstLine : StrictLin2 := { a := (-3/11), b := (-3/11), c := (-25/33) }
private def case_001252_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001252_rankWord :
    rankPairWord? case_001252_word = some case_001252_rank := by
  decide

private theorem case_001252_unrank :
    unrankPairWord case_001252_rank = case_001252_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001252_word case_001252_rank).1
    case_001252_rankWord |>.symm

private theorem case_001252_seqChoice :
    translationChoiceSeq case_001252_word case_001252_mask = case_001252_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001252_seqAtRank :
    translationSeqAtRankMask case_001252_rank case_001252_mask = case_001252_seq := by
  rw [translationSeqAtRankMask, case_001252_unrank]
  exact case_001252_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001252_bAtRank :
    translationBAtRankMask case_001252_rank case_001252_mask = case_001252_b := by
  rw [translationBAtRankMask, case_001252_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001252_b, case_001252_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001252_firstLine_eq :
    case_001252_support.firstLine case_001252_seq case_001252_b = case_001252_firstLine := by
  norm_num [case_001252_firstLine, case_001252_support, case_001252_seq, case_001252_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001252_secondLine_eq :
    case_001252_support.secondLine case_001252_seq case_001252_b = case_001252_secondLine := by
  norm_num [case_001252_secondLine, case_001252_support, case_001252_seq, case_001252_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001252_sourceAgrees :
    SourceAgrees case_001252_support case_001252_rank.val case_001252_mask := by
  intro hlt
  have hrank : (⟨case_001252_rank.val, hlt⟩ : Fin numPairWords) = case_001252_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001252_rank.val, hlt⟩ case_001252_mask =
        case_001252_seq := by
    simpa [hrank] using case_001252_seqAtRank
  simp [SourceChecks, hseq, case_001252_support,
    checkTranslationConstraintSource, case_001252_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001252_rows :
    EqEqPosVarFirstRows case_001252_support case_001252_rank.val case_001252_mask := by
  intro hlt
  have hrank : (⟨case_001252_rank.val, hlt⟩ : Fin numPairWords) = case_001252_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001252_rank.val, hlt⟩ case_001252_mask =
        case_001252_seq := by
    simpa [hrank] using case_001252_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001252_rank.val, hlt⟩ case_001252_mask =
        case_001252_b := by
    simpa [hrank] using case_001252_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001252_support case_001252_rank.val hlt
          case_001252_mask = case_001252_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001252_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001252_support case_001252_rank.val hlt
          case_001252_mask = case_001252_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001252_secondLine_eq]
  have case_001252_rowFirst :
      EqEqPosRow (FirstLineAt case_001252_support case_001252_rank.val hlt case_001252_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001252_firstLine, EqEqPosRow]
  have case_001252_fixedSecond :
      FixedRow (SecondLineAt case_001252_support case_001252_rank.val hlt case_001252_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001252_secondLine, FixedRow]
  exact ⟨case_001252_rowFirst, case_001252_fixedSecond⟩

private theorem case_001252_existsRows :
    ExistsEqEqPosVarFirstRows case_001252_rank.val case_001252_mask :=
  ⟨case_001252_support, case_001252_sourceAgrees, case_001252_rows⟩

private theorem case_001252_covered :
    RowPropertyParametricCovered case_001252_rank.val case_001252_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001252_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001253_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001253_mask : SignMask := ⟨47, by decide⟩
private def case_001253_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001253_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001253_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001253_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_001253_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001253_secondLine : StrictLin2 := { a := (-9/374), b := (-9/374), c := (-1/17) }

private theorem case_001253_rankWord :
    rankPairWord? case_001253_word = some case_001253_rank := by
  decide

private theorem case_001253_unrank :
    unrankPairWord case_001253_rank = case_001253_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001253_word case_001253_rank).1
    case_001253_rankWord |>.symm

private theorem case_001253_seqChoice :
    translationChoiceSeq case_001253_word case_001253_mask = case_001253_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001253_seqAtRank :
    translationSeqAtRankMask case_001253_rank case_001253_mask = case_001253_seq := by
  rw [translationSeqAtRankMask, case_001253_unrank]
  exact case_001253_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001253_bAtRank :
    translationBAtRankMask case_001253_rank case_001253_mask = case_001253_b := by
  rw [translationBAtRankMask, case_001253_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001253_b, case_001253_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001253_firstLine_eq :
    case_001253_support.firstLine case_001253_seq case_001253_b = case_001253_firstLine := by
  norm_num [case_001253_firstLine, case_001253_support, case_001253_seq, case_001253_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001253_secondLine_eq :
    case_001253_support.secondLine case_001253_seq case_001253_b = case_001253_secondLine := by
  norm_num [case_001253_secondLine, case_001253_support, case_001253_seq, case_001253_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001253_sourceAgrees :
    SourceAgrees case_001253_support case_001253_rank.val case_001253_mask := by
  intro hlt
  have hrank : (⟨case_001253_rank.val, hlt⟩ : Fin numPairWords) = case_001253_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001253_rank.val, hlt⟩ case_001253_mask =
        case_001253_seq := by
    simpa [hrank] using case_001253_seqAtRank
  simp [SourceChecks, hseq, case_001253_support,
    checkTranslationConstraintSource, case_001253_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001253_rows :
    EqEqPosVarSecondRows case_001253_support case_001253_rank.val case_001253_mask := by
  intro hlt
  have hrank : (⟨case_001253_rank.val, hlt⟩ : Fin numPairWords) = case_001253_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001253_rank.val, hlt⟩ case_001253_mask =
        case_001253_seq := by
    simpa [hrank] using case_001253_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001253_rank.val, hlt⟩ case_001253_mask =
        case_001253_b := by
    simpa [hrank] using case_001253_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001253_support case_001253_rank.val hlt
          case_001253_mask = case_001253_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001253_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001253_support case_001253_rank.val hlt
          case_001253_mask = case_001253_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001253_secondLine_eq]
  have case_001253_fixedFirst :
      FixedRow (FirstLineAt case_001253_support case_001253_rank.val hlt case_001253_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001253_firstLine, FixedRow]
  have case_001253_rowSecond :
      EqEqPosRow (SecondLineAt case_001253_support case_001253_rank.val hlt case_001253_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001253_secondLine, EqEqPosRow]
  exact ⟨case_001253_fixedFirst, case_001253_rowSecond⟩

private theorem case_001253_existsRows :
    ExistsEqEqPosVarSecondRows case_001253_rank.val case_001253_mask :=
  ⟨case_001253_support, case_001253_sourceAgrees, case_001253_rows⟩

private theorem case_001253_covered :
    RowPropertyParametricCovered case_001253_rank.val case_001253_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001253_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001254_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001254_mask : SignMask := ⟨54, by decide⟩
private def case_001254_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001254_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001254_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001254_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_001254_firstLine : StrictLin2 := { a := (-3/11), b := (-3/11), c := (-25/33) }
private def case_001254_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001254_rankWord :
    rankPairWord? case_001254_word = some case_001254_rank := by
  decide

private theorem case_001254_unrank :
    unrankPairWord case_001254_rank = case_001254_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001254_word case_001254_rank).1
    case_001254_rankWord |>.symm

private theorem case_001254_seqChoice :
    translationChoiceSeq case_001254_word case_001254_mask = case_001254_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001254_seqAtRank :
    translationSeqAtRankMask case_001254_rank case_001254_mask = case_001254_seq := by
  rw [translationSeqAtRankMask, case_001254_unrank]
  exact case_001254_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001254_bAtRank :
    translationBAtRankMask case_001254_rank case_001254_mask = case_001254_b := by
  rw [translationBAtRankMask, case_001254_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001254_b, case_001254_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001254_firstLine_eq :
    case_001254_support.firstLine case_001254_seq case_001254_b = case_001254_firstLine := by
  norm_num [case_001254_firstLine, case_001254_support, case_001254_seq, case_001254_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001254_secondLine_eq :
    case_001254_support.secondLine case_001254_seq case_001254_b = case_001254_secondLine := by
  norm_num [case_001254_secondLine, case_001254_support, case_001254_seq, case_001254_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001254_sourceAgrees :
    SourceAgrees case_001254_support case_001254_rank.val case_001254_mask := by
  intro hlt
  have hrank : (⟨case_001254_rank.val, hlt⟩ : Fin numPairWords) = case_001254_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001254_rank.val, hlt⟩ case_001254_mask =
        case_001254_seq := by
    simpa [hrank] using case_001254_seqAtRank
  simp [SourceChecks, hseq, case_001254_support,
    checkTranslationConstraintSource, case_001254_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001254_rows :
    EqEqPosVarFirstRows case_001254_support case_001254_rank.val case_001254_mask := by
  intro hlt
  have hrank : (⟨case_001254_rank.val, hlt⟩ : Fin numPairWords) = case_001254_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001254_rank.val, hlt⟩ case_001254_mask =
        case_001254_seq := by
    simpa [hrank] using case_001254_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001254_rank.val, hlt⟩ case_001254_mask =
        case_001254_b := by
    simpa [hrank] using case_001254_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001254_support case_001254_rank.val hlt
          case_001254_mask = case_001254_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001254_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001254_support case_001254_rank.val hlt
          case_001254_mask = case_001254_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001254_secondLine_eq]
  have case_001254_rowFirst :
      EqEqPosRow (FirstLineAt case_001254_support case_001254_rank.val hlt case_001254_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001254_firstLine, EqEqPosRow]
  have case_001254_fixedSecond :
      FixedRow (SecondLineAt case_001254_support case_001254_rank.val hlt case_001254_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001254_secondLine, FixedRow]
  exact ⟨case_001254_rowFirst, case_001254_fixedSecond⟩

private theorem case_001254_existsRows :
    ExistsEqEqPosVarFirstRows case_001254_rank.val case_001254_mask :=
  ⟨case_001254_support, case_001254_sourceAgrees, case_001254_rows⟩

private theorem case_001254_covered :
    RowPropertyParametricCovered case_001254_rank.val case_001254_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001254_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001255_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001255_mask : SignMask := ⟨55, by decide⟩
private def case_001255_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001255_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001255_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001255_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_001255_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001255_secondLine : StrictLin2 := { a := (-9/374), b := (-9/374), c := (-1/17) }

private theorem case_001255_rankWord :
    rankPairWord? case_001255_word = some case_001255_rank := by
  decide

private theorem case_001255_unrank :
    unrankPairWord case_001255_rank = case_001255_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001255_word case_001255_rank).1
    case_001255_rankWord |>.symm

private theorem case_001255_seqChoice :
    translationChoiceSeq case_001255_word case_001255_mask = case_001255_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001255_seqAtRank :
    translationSeqAtRankMask case_001255_rank case_001255_mask = case_001255_seq := by
  rw [translationSeqAtRankMask, case_001255_unrank]
  exact case_001255_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001255_bAtRank :
    translationBAtRankMask case_001255_rank case_001255_mask = case_001255_b := by
  rw [translationBAtRankMask, case_001255_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001255_b, case_001255_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001255_firstLine_eq :
    case_001255_support.firstLine case_001255_seq case_001255_b = case_001255_firstLine := by
  norm_num [case_001255_firstLine, case_001255_support, case_001255_seq, case_001255_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001255_secondLine_eq :
    case_001255_support.secondLine case_001255_seq case_001255_b = case_001255_secondLine := by
  norm_num [case_001255_secondLine, case_001255_support, case_001255_seq, case_001255_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001255_sourceAgrees :
    SourceAgrees case_001255_support case_001255_rank.val case_001255_mask := by
  intro hlt
  have hrank : (⟨case_001255_rank.val, hlt⟩ : Fin numPairWords) = case_001255_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001255_rank.val, hlt⟩ case_001255_mask =
        case_001255_seq := by
    simpa [hrank] using case_001255_seqAtRank
  simp [SourceChecks, hseq, case_001255_support,
    checkTranslationConstraintSource, case_001255_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001255_rows :
    EqEqPosVarSecondRows case_001255_support case_001255_rank.val case_001255_mask := by
  intro hlt
  have hrank : (⟨case_001255_rank.val, hlt⟩ : Fin numPairWords) = case_001255_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001255_rank.val, hlt⟩ case_001255_mask =
        case_001255_seq := by
    simpa [hrank] using case_001255_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001255_rank.val, hlt⟩ case_001255_mask =
        case_001255_b := by
    simpa [hrank] using case_001255_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001255_support case_001255_rank.val hlt
          case_001255_mask = case_001255_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001255_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001255_support case_001255_rank.val hlt
          case_001255_mask = case_001255_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001255_secondLine_eq]
  have case_001255_fixedFirst :
      FixedRow (FirstLineAt case_001255_support case_001255_rank.val hlt case_001255_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001255_firstLine, FixedRow]
  have case_001255_rowSecond :
      EqEqPosRow (SecondLineAt case_001255_support case_001255_rank.val hlt case_001255_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001255_secondLine, EqEqPosRow]
  exact ⟨case_001255_fixedFirst, case_001255_rowSecond⟩

private theorem case_001255_existsRows :
    ExistsEqEqPosVarSecondRows case_001255_rank.val case_001255_mask :=
  ⟨case_001255_support, case_001255_sourceAgrees, case_001255_rows⟩

private theorem case_001255_covered :
    RowPropertyParametricCovered case_001255_rank.val case_001255_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001255_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001256_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001256_mask : SignMask := ⟨63, by decide⟩
private def case_001256_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001256_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001256_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001256_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_001256_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_001256_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001256_rankWord :
    rankPairWord? case_001256_word = some case_001256_rank := by
  decide

private theorem case_001256_unrank :
    unrankPairWord case_001256_rank = case_001256_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001256_word case_001256_rank).1
    case_001256_rankWord |>.symm

private theorem case_001256_seqChoice :
    translationChoiceSeq case_001256_word case_001256_mask = case_001256_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001256_seqAtRank :
    translationSeqAtRankMask case_001256_rank case_001256_mask = case_001256_seq := by
  rw [translationSeqAtRankMask, case_001256_unrank]
  exact case_001256_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001256_bAtRank :
    translationBAtRankMask case_001256_rank case_001256_mask = case_001256_b := by
  rw [translationBAtRankMask, case_001256_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001256_b, case_001256_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001256_firstLine_eq :
    case_001256_support.firstLine case_001256_seq case_001256_b = case_001256_firstLine := by
  norm_num [case_001256_firstLine, case_001256_support, case_001256_seq, case_001256_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001256_secondLine_eq :
    case_001256_support.secondLine case_001256_seq case_001256_b = case_001256_secondLine := by
  norm_num [case_001256_secondLine, case_001256_support, case_001256_seq, case_001256_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001256_sourceAgrees :
    SourceAgrees case_001256_support case_001256_rank.val case_001256_mask := by
  intro hlt
  have hrank : (⟨case_001256_rank.val, hlt⟩ : Fin numPairWords) = case_001256_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001256_rank.val, hlt⟩ case_001256_mask =
        case_001256_seq := by
    simpa [hrank] using case_001256_seqAtRank
  simp [SourceChecks, hseq, case_001256_support,
    checkTranslationConstraintSource, case_001256_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001256_rows :
    EqEqPosVarFirstRows case_001256_support case_001256_rank.val case_001256_mask := by
  intro hlt
  have hrank : (⟨case_001256_rank.val, hlt⟩ : Fin numPairWords) = case_001256_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001256_rank.val, hlt⟩ case_001256_mask =
        case_001256_seq := by
    simpa [hrank] using case_001256_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001256_rank.val, hlt⟩ case_001256_mask =
        case_001256_b := by
    simpa [hrank] using case_001256_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001256_support case_001256_rank.val hlt
          case_001256_mask = case_001256_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001256_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001256_support case_001256_rank.val hlt
          case_001256_mask = case_001256_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001256_secondLine_eq]
  have case_001256_rowFirst :
      EqEqPosRow (FirstLineAt case_001256_support case_001256_rank.val hlt case_001256_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001256_firstLine, EqEqPosRow]
  have case_001256_fixedSecond :
      FixedRow (SecondLineAt case_001256_support case_001256_rank.val hlt case_001256_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001256_secondLine, FixedRow]
  exact ⟨case_001256_rowFirst, case_001256_fixedSecond⟩

private theorem case_001256_existsRows :
    ExistsEqEqPosVarFirstRows case_001256_rank.val case_001256_mask :=
  ⟨case_001256_support, case_001256_sourceAgrees, case_001256_rows⟩

private theorem case_001256_covered :
    RowPropertyParametricCovered case_001256_rank.val case_001256_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001256_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_001257_rank : Fin numPairWords := ⟨859, by decide⟩
private def case_001257_mask : SignMask := ⟨13, by decide⟩
private def case_001257_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001257_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001257_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_001257_b : Vec3 Rat := { x := (-172/27), y := (332/27), z := (-428/27) }
private def case_001257_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_001257_secondLine : StrictLin2 := { a := (387/22834), b := (-387/22834), c := (-555/11417) }

private theorem case_001257_rankWord :
    rankPairWord? case_001257_word = some case_001257_rank := by
  decide

private theorem case_001257_unrank :
    unrankPairWord case_001257_rank = case_001257_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001257_word case_001257_rank).1
    case_001257_rankWord |>.symm

private theorem case_001257_seqChoice :
    translationChoiceSeq case_001257_word case_001257_mask = case_001257_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001257_seqAtRank :
    translationSeqAtRankMask case_001257_rank case_001257_mask = case_001257_seq := by
  rw [translationSeqAtRankMask, case_001257_unrank]
  exact case_001257_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001257_bAtRank :
    translationBAtRankMask case_001257_rank case_001257_mask = case_001257_b := by
  rw [translationBAtRankMask, case_001257_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001257_b, case_001257_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001257_firstLine_eq :
    case_001257_support.firstLine case_001257_seq case_001257_b = case_001257_firstLine := by
  norm_num [case_001257_firstLine, case_001257_support, case_001257_seq, case_001257_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001257_secondLine_eq :
    case_001257_support.secondLine case_001257_seq case_001257_b = case_001257_secondLine := by
  norm_num [case_001257_secondLine, case_001257_support, case_001257_seq, case_001257_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001257_sourceAgrees :
    SourceAgrees case_001257_support case_001257_rank.val case_001257_mask := by
  intro hlt
  have hrank : (⟨case_001257_rank.val, hlt⟩ : Fin numPairWords) = case_001257_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001257_rank.val, hlt⟩ case_001257_mask =
        case_001257_seq := by
    simpa [hrank] using case_001257_seqAtRank
  simp [SourceChecks, hseq, case_001257_support,
    checkTranslationConstraintSource, case_001257_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001257_rows :
    OppMinusOneVarSecondRows case_001257_support case_001257_rank.val case_001257_mask := by
  intro hlt
  have hrank : (⟨case_001257_rank.val, hlt⟩ : Fin numPairWords) = case_001257_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001257_rank.val, hlt⟩ case_001257_mask =
        case_001257_seq := by
    simpa [hrank] using case_001257_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001257_rank.val, hlt⟩ case_001257_mask =
        case_001257_b := by
    simpa [hrank] using case_001257_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001257_support case_001257_rank.val hlt
          case_001257_mask = case_001257_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001257_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001257_support case_001257_rank.val hlt
          case_001257_mask = case_001257_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001257_secondLine_eq]
  have case_001257_fixedFirst :
      FixedRow (FirstLineAt case_001257_support case_001257_rank.val hlt case_001257_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001257_firstLine, FixedRow]
  have case_001257_rowSecond :
      OppNegRow (SecondLineAt case_001257_support case_001257_rank.val hlt case_001257_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001257_secondLine, OppNegRow]
  exact ⟨case_001257_fixedFirst, case_001257_rowSecond⟩

private theorem case_001257_existsRows :
    ExistsOppMinusOneVarSecondRows case_001257_rank.val case_001257_mask :=
  ⟨case_001257_support, case_001257_sourceAgrees, case_001257_rows⟩

private theorem case_001257_covered :
    RowPropertyParametricCovered case_001257_rank.val case_001257_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_001257_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001258_rank : Fin numPairWords := ⟨859, by decide⟩
private def case_001258_mask : SignMask := ⟨16, by decide⟩
private def case_001258_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001258_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001258_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001258_b : Vec3 Rat := { x := (-92/27), y := (-380/27), z := (-28/27) }
private def case_001258_firstLine : StrictLin2 := { a := -1, b := -1, c := (-181/23) }
private def case_001258_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001258_rankWord :
    rankPairWord? case_001258_word = some case_001258_rank := by
  decide

private theorem case_001258_unrank :
    unrankPairWord case_001258_rank = case_001258_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001258_word case_001258_rank).1
    case_001258_rankWord |>.symm

private theorem case_001258_seqChoice :
    translationChoiceSeq case_001258_word case_001258_mask = case_001258_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001258_seqAtRank :
    translationSeqAtRankMask case_001258_rank case_001258_mask = case_001258_seq := by
  rw [translationSeqAtRankMask, case_001258_unrank]
  exact case_001258_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001258_bAtRank :
    translationBAtRankMask case_001258_rank case_001258_mask = case_001258_b := by
  rw [translationBAtRankMask, case_001258_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001258_b, case_001258_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001258_firstLine_eq :
    case_001258_support.firstLine case_001258_seq case_001258_b = case_001258_firstLine := by
  norm_num [case_001258_firstLine, case_001258_support, case_001258_seq, case_001258_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001258_secondLine_eq :
    case_001258_support.secondLine case_001258_seq case_001258_b = case_001258_secondLine := by
  norm_num [case_001258_secondLine, case_001258_support, case_001258_seq, case_001258_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001258_sourceAgrees :
    SourceAgrees case_001258_support case_001258_rank.val case_001258_mask := by
  intro hlt
  have hrank : (⟨case_001258_rank.val, hlt⟩ : Fin numPairWords) = case_001258_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001258_rank.val, hlt⟩ case_001258_mask =
        case_001258_seq := by
    simpa [hrank] using case_001258_seqAtRank
  simp [SourceChecks, hseq, case_001258_support,
    checkTranslationConstraintSource, case_001258_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001258_rows :
    EqEqPosVarFirstRows case_001258_support case_001258_rank.val case_001258_mask := by
  intro hlt
  have hrank : (⟨case_001258_rank.val, hlt⟩ : Fin numPairWords) = case_001258_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001258_rank.val, hlt⟩ case_001258_mask =
        case_001258_seq := by
    simpa [hrank] using case_001258_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001258_rank.val, hlt⟩ case_001258_mask =
        case_001258_b := by
    simpa [hrank] using case_001258_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001258_support case_001258_rank.val hlt
          case_001258_mask = case_001258_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001258_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001258_support case_001258_rank.val hlt
          case_001258_mask = case_001258_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001258_secondLine_eq]
  have case_001258_rowFirst :
      EqEqPosRow (FirstLineAt case_001258_support case_001258_rank.val hlt case_001258_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001258_firstLine, EqEqPosRow]
  have case_001258_fixedSecond :
      FixedRow (SecondLineAt case_001258_support case_001258_rank.val hlt case_001258_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001258_secondLine, FixedRow]
  exact ⟨case_001258_rowFirst, case_001258_fixedSecond⟩

private theorem case_001258_existsRows :
    ExistsEqEqPosVarFirstRows case_001258_rank.val case_001258_mask :=
  ⟨case_001258_support, case_001258_sourceAgrees, case_001258_rows⟩

private theorem case_001258_covered :
    RowPropertyParametricCovered case_001258_rank.val case_001258_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001258_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001259_rank : Fin numPairWords := ⟨859, by decide⟩
private def case_001259_mask : SignMask := ⟨24, by decide⟩
private def case_001259_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001259_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001259_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001259_b : Vec3 Rat := { x := (-236/27), y := (-236/27), z := (-172/27) }
private def case_001259_firstLine : StrictLin2 := { a := -1, b := -1, c := (-145/59) }
private def case_001259_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001259_rankWord :
    rankPairWord? case_001259_word = some case_001259_rank := by
  decide

private theorem case_001259_unrank :
    unrankPairWord case_001259_rank = case_001259_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001259_word case_001259_rank).1
    case_001259_rankWord |>.symm

private theorem case_001259_seqChoice :
    translationChoiceSeq case_001259_word case_001259_mask = case_001259_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001259_seqAtRank :
    translationSeqAtRankMask case_001259_rank case_001259_mask = case_001259_seq := by
  rw [translationSeqAtRankMask, case_001259_unrank]
  exact case_001259_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001259_bAtRank :
    translationBAtRankMask case_001259_rank case_001259_mask = case_001259_b := by
  rw [translationBAtRankMask, case_001259_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001259_b, case_001259_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001259_firstLine_eq :
    case_001259_support.firstLine case_001259_seq case_001259_b = case_001259_firstLine := by
  norm_num [case_001259_firstLine, case_001259_support, case_001259_seq, case_001259_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001259_secondLine_eq :
    case_001259_support.secondLine case_001259_seq case_001259_b = case_001259_secondLine := by
  norm_num [case_001259_secondLine, case_001259_support, case_001259_seq, case_001259_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001259_sourceAgrees :
    SourceAgrees case_001259_support case_001259_rank.val case_001259_mask := by
  intro hlt
  have hrank : (⟨case_001259_rank.val, hlt⟩ : Fin numPairWords) = case_001259_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001259_rank.val, hlt⟩ case_001259_mask =
        case_001259_seq := by
    simpa [hrank] using case_001259_seqAtRank
  simp [SourceChecks, hseq, case_001259_support,
    checkTranslationConstraintSource, case_001259_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001259_rows :
    EqEqPosVarFirstRows case_001259_support case_001259_rank.val case_001259_mask := by
  intro hlt
  have hrank : (⟨case_001259_rank.val, hlt⟩ : Fin numPairWords) = case_001259_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001259_rank.val, hlt⟩ case_001259_mask =
        case_001259_seq := by
    simpa [hrank] using case_001259_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001259_rank.val, hlt⟩ case_001259_mask =
        case_001259_b := by
    simpa [hrank] using case_001259_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001259_support case_001259_rank.val hlt
          case_001259_mask = case_001259_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001259_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001259_support case_001259_rank.val hlt
          case_001259_mask = case_001259_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001259_secondLine_eq]
  have case_001259_rowFirst :
      EqEqPosRow (FirstLineAt case_001259_support case_001259_rank.val hlt case_001259_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001259_firstLine, EqEqPosRow]
  have case_001259_fixedSecond :
      FixedRow (SecondLineAt case_001259_support case_001259_rank.val hlt case_001259_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001259_secondLine, FixedRow]
  exact ⟨case_001259_rowFirst, case_001259_fixedSecond⟩

private theorem case_001259_existsRows :
    ExistsEqEqPosVarFirstRows case_001259_rank.val case_001259_mask :=
  ⟨case_001259_support, case_001259_sourceAgrees, case_001259_rows⟩

private theorem case_001259_covered :
    RowPropertyParametricCovered case_001259_rank.val case_001259_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001259_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001260_rank : Fin numPairWords := ⟨859, by decide⟩
private def case_001260_mask : SignMask := ⟨28, by decide⟩
private def case_001260_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001260_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001260_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001260_b : Vec3 Rat := { x := (-316/27), y := (-28/27), z := (-284/27) }
private def case_001260_firstLine : StrictLin2 := { a := (-79/15), b := (79/15), c := (-69/5) }
private def case_001260_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001260_rankWord :
    rankPairWord? case_001260_word = some case_001260_rank := by
  decide

private theorem case_001260_unrank :
    unrankPairWord case_001260_rank = case_001260_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001260_word case_001260_rank).1
    case_001260_rankWord |>.symm

private theorem case_001260_seqChoice :
    translationChoiceSeq case_001260_word case_001260_mask = case_001260_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001260_seqAtRank :
    translationSeqAtRankMask case_001260_rank case_001260_mask = case_001260_seq := by
  rw [translationSeqAtRankMask, case_001260_unrank]
  exact case_001260_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001260_bAtRank :
    translationBAtRankMask case_001260_rank case_001260_mask = case_001260_b := by
  rw [translationBAtRankMask, case_001260_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001260_b, case_001260_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001260_firstLine_eq :
    case_001260_support.firstLine case_001260_seq case_001260_b = case_001260_firstLine := by
  norm_num [case_001260_firstLine, case_001260_support, case_001260_seq, case_001260_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001260_secondLine_eq :
    case_001260_support.secondLine case_001260_seq case_001260_b = case_001260_secondLine := by
  norm_num [case_001260_secondLine, case_001260_support, case_001260_seq, case_001260_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001260_sourceAgrees :
    SourceAgrees case_001260_support case_001260_rank.val case_001260_mask := by
  intro hlt
  have hrank : (⟨case_001260_rank.val, hlt⟩ : Fin numPairWords) = case_001260_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001260_rank.val, hlt⟩ case_001260_mask =
        case_001260_seq := by
    simpa [hrank] using case_001260_seqAtRank
  simp [SourceChecks, hseq, case_001260_support,
    checkTranslationConstraintSource, case_001260_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001260_rows :
    OppOneMinusVarFirstRows case_001260_support case_001260_rank.val case_001260_mask := by
  intro hlt
  have hrank : (⟨case_001260_rank.val, hlt⟩ : Fin numPairWords) = case_001260_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001260_rank.val, hlt⟩ case_001260_mask =
        case_001260_seq := by
    simpa [hrank] using case_001260_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001260_rank.val, hlt⟩ case_001260_mask =
        case_001260_b := by
    simpa [hrank] using case_001260_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001260_support case_001260_rank.val hlt
          case_001260_mask = case_001260_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001260_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001260_support case_001260_rank.val hlt
          case_001260_mask = case_001260_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001260_secondLine_eq]
  have case_001260_rowFirst :
      OppPosRow (FirstLineAt case_001260_support case_001260_rank.val hlt case_001260_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001260_firstLine, OppPosRow]
  have case_001260_fixedSecond :
      FixedRow (SecondLineAt case_001260_support case_001260_rank.val hlt case_001260_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001260_secondLine, FixedRow]
  exact ⟨case_001260_rowFirst, case_001260_fixedSecond⟩

private theorem case_001260_existsRows :
    ExistsOppOneMinusVarFirstRows case_001260_rank.val case_001260_mask :=
  ⟨case_001260_support, case_001260_sourceAgrees, case_001260_rows⟩

private theorem case_001260_covered :
    RowPropertyParametricCovered case_001260_rank.val case_001260_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001260_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_001261_rank : Fin numPairWords := ⟨859, by decide⟩
private def case_001261_mask : SignMask := ⟨47, by decide⟩
private def case_001261_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001261_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001261_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def case_001261_b : Vec3 Rat := { x := (-124/27), y := (380/27), z := (28/27) }
private def case_001261_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_001261_secondLine : StrictLin2 := { a := (279/4522), b := (-279/4522), c := (-708/2261) }

private theorem case_001261_rankWord :
    rankPairWord? case_001261_word = some case_001261_rank := by
  decide

private theorem case_001261_unrank :
    unrankPairWord case_001261_rank = case_001261_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001261_word case_001261_rank).1
    case_001261_rankWord |>.symm

private theorem case_001261_seqChoice :
    translationChoiceSeq case_001261_word case_001261_mask = case_001261_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001261_seqAtRank :
    translationSeqAtRankMask case_001261_rank case_001261_mask = case_001261_seq := by
  rw [translationSeqAtRankMask, case_001261_unrank]
  exact case_001261_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001261_bAtRank :
    translationBAtRankMask case_001261_rank case_001261_mask = case_001261_b := by
  rw [translationBAtRankMask, case_001261_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001261_b, case_001261_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001261_firstLine_eq :
    case_001261_support.firstLine case_001261_seq case_001261_b = case_001261_firstLine := by
  norm_num [case_001261_firstLine, case_001261_support, case_001261_seq, case_001261_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001261_secondLine_eq :
    case_001261_support.secondLine case_001261_seq case_001261_b = case_001261_secondLine := by
  norm_num [case_001261_secondLine, case_001261_support, case_001261_seq, case_001261_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001261_sourceAgrees :
    SourceAgrees case_001261_support case_001261_rank.val case_001261_mask := by
  intro hlt
  have hrank : (⟨case_001261_rank.val, hlt⟩ : Fin numPairWords) = case_001261_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001261_rank.val, hlt⟩ case_001261_mask =
        case_001261_seq := by
    simpa [hrank] using case_001261_seqAtRank
  simp [SourceChecks, hseq, case_001261_support,
    checkTranslationConstraintSource, case_001261_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001261_rows :
    OppMinusOneVarSecondRows case_001261_support case_001261_rank.val case_001261_mask := by
  intro hlt
  have hrank : (⟨case_001261_rank.val, hlt⟩ : Fin numPairWords) = case_001261_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001261_rank.val, hlt⟩ case_001261_mask =
        case_001261_seq := by
    simpa [hrank] using case_001261_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001261_rank.val, hlt⟩ case_001261_mask =
        case_001261_b := by
    simpa [hrank] using case_001261_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001261_support case_001261_rank.val hlt
          case_001261_mask = case_001261_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001261_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001261_support case_001261_rank.val hlt
          case_001261_mask = case_001261_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001261_secondLine_eq]
  have case_001261_fixedFirst :
      FixedRow (FirstLineAt case_001261_support case_001261_rank.val hlt case_001261_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001261_firstLine, FixedRow]
  have case_001261_rowSecond :
      OppNegRow (SecondLineAt case_001261_support case_001261_rank.val hlt case_001261_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001261_secondLine, OppNegRow]
  exact ⟨case_001261_fixedFirst, case_001261_rowSecond⟩

private theorem case_001261_existsRows :
    ExistsOppMinusOneVarSecondRows case_001261_rank.val case_001261_mask :=
  ⟨case_001261_support, case_001261_sourceAgrees, case_001261_rows⟩

private theorem case_001261_covered :
    RowPropertyParametricCovered case_001261_rank.val case_001261_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_001261_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001262_rank : Fin numPairWords := ⟨859, by decide⟩
private def case_001262_mask : SignMask := ⟨50, by decide⟩
private def case_001262_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001262_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001262_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001262_b : Vec3 Rat := { x := (-44/27), y := (-332/27), z := (428/27) }
private def case_001262_firstLine : StrictLin2 := { a := -1, b := 1, c := (-369/11) }
private def case_001262_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001262_rankWord :
    rankPairWord? case_001262_word = some case_001262_rank := by
  decide

private theorem case_001262_unrank :
    unrankPairWord case_001262_rank = case_001262_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001262_word case_001262_rank).1
    case_001262_rankWord |>.symm

private theorem case_001262_seqChoice :
    translationChoiceSeq case_001262_word case_001262_mask = case_001262_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001262_seqAtRank :
    translationSeqAtRankMask case_001262_rank case_001262_mask = case_001262_seq := by
  rw [translationSeqAtRankMask, case_001262_unrank]
  exact case_001262_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001262_bAtRank :
    translationBAtRankMask case_001262_rank case_001262_mask = case_001262_b := by
  rw [translationBAtRankMask, case_001262_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001262_b, case_001262_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001262_firstLine_eq :
    case_001262_support.firstLine case_001262_seq case_001262_b = case_001262_firstLine := by
  norm_num [case_001262_firstLine, case_001262_support, case_001262_seq, case_001262_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001262_secondLine_eq :
    case_001262_support.secondLine case_001262_seq case_001262_b = case_001262_secondLine := by
  norm_num [case_001262_secondLine, case_001262_support, case_001262_seq, case_001262_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001262_sourceAgrees :
    SourceAgrees case_001262_support case_001262_rank.val case_001262_mask := by
  intro hlt
  have hrank : (⟨case_001262_rank.val, hlt⟩ : Fin numPairWords) = case_001262_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001262_rank.val, hlt⟩ case_001262_mask =
        case_001262_seq := by
    simpa [hrank] using case_001262_seqAtRank
  simp [SourceChecks, hseq, case_001262_support,
    checkTranslationConstraintSource, case_001262_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001262_rows :
    OppOneMinusVarFirstRows case_001262_support case_001262_rank.val case_001262_mask := by
  intro hlt
  have hrank : (⟨case_001262_rank.val, hlt⟩ : Fin numPairWords) = case_001262_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001262_rank.val, hlt⟩ case_001262_mask =
        case_001262_seq := by
    simpa [hrank] using case_001262_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001262_rank.val, hlt⟩ case_001262_mask =
        case_001262_b := by
    simpa [hrank] using case_001262_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001262_support case_001262_rank.val hlt
          case_001262_mask = case_001262_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001262_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001262_support case_001262_rank.val hlt
          case_001262_mask = case_001262_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001262_secondLine_eq]
  have case_001262_rowFirst :
      OppPosRow (FirstLineAt case_001262_support case_001262_rank.val hlt case_001262_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001262_firstLine, OppPosRow]
  have case_001262_fixedSecond :
      FixedRow (SecondLineAt case_001262_support case_001262_rank.val hlt case_001262_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001262_secondLine, FixedRow]
  exact ⟨case_001262_rowFirst, case_001262_fixedSecond⟩

private theorem case_001262_existsRows :
    ExistsOppOneMinusVarFirstRows case_001262_rank.val case_001262_mask :=
  ⟨case_001262_support, case_001262_sourceAgrees, case_001262_rows⟩

private theorem case_001262_covered :
    RowPropertyParametricCovered case_001262_rank.val case_001262_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001262_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001263_rank : Fin numPairWords := ⟨859, by decide⟩
private def case_001263_mask : SignMask := ⟨63, by decide⟩
private def case_001263_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001263_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001263_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001263_b : Vec3 Rat := { x := (-268/27), y := (236/27), z := (172/27) }
private def case_001263_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001263_secondLine : StrictLin2 := { a := (-603/2822), b := (603/2822), c := (-597/1411) }

private theorem case_001263_rankWord :
    rankPairWord? case_001263_word = some case_001263_rank := by
  decide

private theorem case_001263_unrank :
    unrankPairWord case_001263_rank = case_001263_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001263_word case_001263_rank).1
    case_001263_rankWord |>.symm

private theorem case_001263_seqChoice :
    translationChoiceSeq case_001263_word case_001263_mask = case_001263_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001263_seqAtRank :
    translationSeqAtRankMask case_001263_rank case_001263_mask = case_001263_seq := by
  rw [translationSeqAtRankMask, case_001263_unrank]
  exact case_001263_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001263_bAtRank :
    translationBAtRankMask case_001263_rank case_001263_mask = case_001263_b := by
  rw [translationBAtRankMask, case_001263_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001263_b, case_001263_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001263_firstLine_eq :
    case_001263_support.firstLine case_001263_seq case_001263_b = case_001263_firstLine := by
  norm_num [case_001263_firstLine, case_001263_support, case_001263_seq, case_001263_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001263_secondLine_eq :
    case_001263_support.secondLine case_001263_seq case_001263_b = case_001263_secondLine := by
  norm_num [case_001263_secondLine, case_001263_support, case_001263_seq, case_001263_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001263_sourceAgrees :
    SourceAgrees case_001263_support case_001263_rank.val case_001263_mask := by
  intro hlt
  have hrank : (⟨case_001263_rank.val, hlt⟩ : Fin numPairWords) = case_001263_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001263_rank.val, hlt⟩ case_001263_mask =
        case_001263_seq := by
    simpa [hrank] using case_001263_seqAtRank
  simp [SourceChecks, hseq, case_001263_support,
    checkTranslationConstraintSource, case_001263_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001263_rows :
    OppOneMinusVarSecondRows case_001263_support case_001263_rank.val case_001263_mask := by
  intro hlt
  have hrank : (⟨case_001263_rank.val, hlt⟩ : Fin numPairWords) = case_001263_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001263_rank.val, hlt⟩ case_001263_mask =
        case_001263_seq := by
    simpa [hrank] using case_001263_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001263_rank.val, hlt⟩ case_001263_mask =
        case_001263_b := by
    simpa [hrank] using case_001263_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001263_support case_001263_rank.val hlt
          case_001263_mask = case_001263_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001263_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001263_support case_001263_rank.val hlt
          case_001263_mask = case_001263_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001263_secondLine_eq]
  have case_001263_fixedFirst :
      FixedRow (FirstLineAt case_001263_support case_001263_rank.val hlt case_001263_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001263_firstLine, FixedRow]
  have case_001263_rowSecond :
      OppPosRow (SecondLineAt case_001263_support case_001263_rank.val hlt case_001263_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001263_secondLine, OppPosRow]
  exact ⟨case_001263_fixedFirst, case_001263_rowSecond⟩

private theorem case_001263_existsRows :
    ExistsOppOneMinusVarSecondRows case_001263_rank.val case_001263_mask :=
  ⟨case_001263_support, case_001263_sourceAgrees, case_001263_rows⟩

private theorem case_001263_covered :
    RowPropertyParametricCovered case_001263_rank.val case_001263_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001263_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001264_rank : Fin numPairWords := ⟨867, by decide⟩
private def case_001264_mask : SignMask := ⟨8, by decide⟩
private def case_001264_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001264_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001264_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tpmp
private def case_001264_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_001264_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001264_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001264_rankWord :
    rankPairWord? case_001264_word = some case_001264_rank := by
  decide

private theorem case_001264_unrank :
    unrankPairWord case_001264_rank = case_001264_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001264_word case_001264_rank).1
    case_001264_rankWord |>.symm

private theorem case_001264_seqChoice :
    translationChoiceSeq case_001264_word case_001264_mask = case_001264_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001264_seqAtRank :
    translationSeqAtRankMask case_001264_rank case_001264_mask = case_001264_seq := by
  rw [translationSeqAtRankMask, case_001264_unrank]
  exact case_001264_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001264_bAtRank :
    translationBAtRankMask case_001264_rank case_001264_mask = case_001264_b := by
  rw [translationBAtRankMask, case_001264_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001264_b, case_001264_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001264_firstLine_eq :
    case_001264_support.firstLine case_001264_seq case_001264_b = case_001264_firstLine := by
  norm_num [case_001264_firstLine, case_001264_support, case_001264_seq, case_001264_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001264_secondLine_eq :
    case_001264_support.secondLine case_001264_seq case_001264_b = case_001264_secondLine := by
  norm_num [case_001264_secondLine, case_001264_support, case_001264_seq, case_001264_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001264_sourceAgrees :
    SourceAgrees case_001264_support case_001264_rank.val case_001264_mask := by
  intro hlt
  have hrank : (⟨case_001264_rank.val, hlt⟩ : Fin numPairWords) = case_001264_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001264_rank.val, hlt⟩ case_001264_mask =
        case_001264_seq := by
    simpa [hrank] using case_001264_seqAtRank
  simp [SourceChecks, hseq, case_001264_support,
    checkTranslationConstraintSource, case_001264_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001264_rows :
    EqEqPosVarFirstRows case_001264_support case_001264_rank.val case_001264_mask := by
  intro hlt
  have hrank : (⟨case_001264_rank.val, hlt⟩ : Fin numPairWords) = case_001264_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001264_rank.val, hlt⟩ case_001264_mask =
        case_001264_seq := by
    simpa [hrank] using case_001264_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001264_rank.val, hlt⟩ case_001264_mask =
        case_001264_b := by
    simpa [hrank] using case_001264_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001264_support case_001264_rank.val hlt
          case_001264_mask = case_001264_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001264_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001264_support case_001264_rank.val hlt
          case_001264_mask = case_001264_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001264_secondLine_eq]
  have case_001264_rowFirst :
      EqEqPosRow (FirstLineAt case_001264_support case_001264_rank.val hlt case_001264_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001264_firstLine, EqEqPosRow]
  have case_001264_fixedSecond :
      FixedRow (SecondLineAt case_001264_support case_001264_rank.val hlt case_001264_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001264_secondLine, FixedRow]
  exact ⟨case_001264_rowFirst, case_001264_fixedSecond⟩

private theorem case_001264_existsRows :
    ExistsEqEqPosVarFirstRows case_001264_rank.val case_001264_mask :=
  ⟨case_001264_support, case_001264_sourceAgrees, case_001264_rows⟩

private theorem case_001264_covered :
    RowPropertyParametricCovered case_001264_rank.val case_001264_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001264_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001265_rank : Fin numPairWords := ⟨867, by decide⟩
private def case_001265_mask : SignMask := ⟨13, by decide⟩
private def case_001265_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001265_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001265_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmp
private def case_001265_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-116/9) }
private def case_001265_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001265_secondLine : StrictLin2 := { a := (-9/116), b := (-9/116), c := (-9/58) }

private theorem case_001265_rankWord :
    rankPairWord? case_001265_word = some case_001265_rank := by
  decide

private theorem case_001265_unrank :
    unrankPairWord case_001265_rank = case_001265_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001265_word case_001265_rank).1
    case_001265_rankWord |>.symm

private theorem case_001265_seqChoice :
    translationChoiceSeq case_001265_word case_001265_mask = case_001265_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001265_seqAtRank :
    translationSeqAtRankMask case_001265_rank case_001265_mask = case_001265_seq := by
  rw [translationSeqAtRankMask, case_001265_unrank]
  exact case_001265_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001265_bAtRank :
    translationBAtRankMask case_001265_rank case_001265_mask = case_001265_b := by
  rw [translationBAtRankMask, case_001265_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001265_b, case_001265_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001265_firstLine_eq :
    case_001265_support.firstLine case_001265_seq case_001265_b = case_001265_firstLine := by
  norm_num [case_001265_firstLine, case_001265_support, case_001265_seq, case_001265_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001265_secondLine_eq :
    case_001265_support.secondLine case_001265_seq case_001265_b = case_001265_secondLine := by
  norm_num [case_001265_secondLine, case_001265_support, case_001265_seq, case_001265_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001265_sourceAgrees :
    SourceAgrees case_001265_support case_001265_rank.val case_001265_mask := by
  intro hlt
  have hrank : (⟨case_001265_rank.val, hlt⟩ : Fin numPairWords) = case_001265_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001265_rank.val, hlt⟩ case_001265_mask =
        case_001265_seq := by
    simpa [hrank] using case_001265_seqAtRank
  simp [SourceChecks, hseq, case_001265_support,
    checkTranslationConstraintSource, case_001265_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001265_rows :
    EqEqPosVarSecondRows case_001265_support case_001265_rank.val case_001265_mask := by
  intro hlt
  have hrank : (⟨case_001265_rank.val, hlt⟩ : Fin numPairWords) = case_001265_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001265_rank.val, hlt⟩ case_001265_mask =
        case_001265_seq := by
    simpa [hrank] using case_001265_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001265_rank.val, hlt⟩ case_001265_mask =
        case_001265_b := by
    simpa [hrank] using case_001265_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001265_support case_001265_rank.val hlt
          case_001265_mask = case_001265_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001265_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001265_support case_001265_rank.val hlt
          case_001265_mask = case_001265_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001265_secondLine_eq]
  have case_001265_fixedFirst :
      FixedRow (FirstLineAt case_001265_support case_001265_rank.val hlt case_001265_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001265_firstLine, FixedRow]
  have case_001265_rowSecond :
      EqEqPosRow (SecondLineAt case_001265_support case_001265_rank.val hlt case_001265_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001265_secondLine, EqEqPosRow]
  exact ⟨case_001265_fixedFirst, case_001265_rowSecond⟩

private theorem case_001265_existsRows :
    ExistsEqEqPosVarSecondRows case_001265_rank.val case_001265_mask :=
  ⟨case_001265_support, case_001265_sourceAgrees, case_001265_rows⟩

private theorem case_001265_covered :
    RowPropertyParametricCovered case_001265_rank.val case_001265_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001265_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001266_rank : Fin numPairWords := ⟨867, by decide⟩
private def case_001266_mask : SignMask := ⟨16, by decide⟩
private def case_001266_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001266_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001266_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmpm
private def case_001266_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_001266_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001266_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001266_rankWord :
    rankPairWord? case_001266_word = some case_001266_rank := by
  decide

private theorem case_001266_unrank :
    unrankPairWord case_001266_rank = case_001266_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001266_word case_001266_rank).1
    case_001266_rankWord |>.symm

private theorem case_001266_seqChoice :
    translationChoiceSeq case_001266_word case_001266_mask = case_001266_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001266_seqAtRank :
    translationSeqAtRankMask case_001266_rank case_001266_mask = case_001266_seq := by
  rw [translationSeqAtRankMask, case_001266_unrank]
  exact case_001266_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001266_bAtRank :
    translationBAtRankMask case_001266_rank case_001266_mask = case_001266_b := by
  rw [translationBAtRankMask, case_001266_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001266_b, case_001266_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001266_firstLine_eq :
    case_001266_support.firstLine case_001266_seq case_001266_b = case_001266_firstLine := by
  norm_num [case_001266_firstLine, case_001266_support, case_001266_seq, case_001266_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001266_secondLine_eq :
    case_001266_support.secondLine case_001266_seq case_001266_b = case_001266_secondLine := by
  norm_num [case_001266_secondLine, case_001266_support, case_001266_seq, case_001266_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001266_sourceAgrees :
    SourceAgrees case_001266_support case_001266_rank.val case_001266_mask := by
  intro hlt
  have hrank : (⟨case_001266_rank.val, hlt⟩ : Fin numPairWords) = case_001266_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001266_rank.val, hlt⟩ case_001266_mask =
        case_001266_seq := by
    simpa [hrank] using case_001266_seqAtRank
  simp [SourceChecks, hseq, case_001266_support,
    checkTranslationConstraintSource, case_001266_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001266_rows :
    EqEqPosVarFirstRows case_001266_support case_001266_rank.val case_001266_mask := by
  intro hlt
  have hrank : (⟨case_001266_rank.val, hlt⟩ : Fin numPairWords) = case_001266_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001266_rank.val, hlt⟩ case_001266_mask =
        case_001266_seq := by
    simpa [hrank] using case_001266_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001266_rank.val, hlt⟩ case_001266_mask =
        case_001266_b := by
    simpa [hrank] using case_001266_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001266_support case_001266_rank.val hlt
          case_001266_mask = case_001266_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001266_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001266_support case_001266_rank.val hlt
          case_001266_mask = case_001266_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001266_secondLine_eq]
  have case_001266_rowFirst :
      EqEqPosRow (FirstLineAt case_001266_support case_001266_rank.val hlt case_001266_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001266_firstLine, EqEqPosRow]
  have case_001266_fixedSecond :
      FixedRow (SecondLineAt case_001266_support case_001266_rank.val hlt case_001266_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001266_secondLine, FixedRow]
  exact ⟨case_001266_rowFirst, case_001266_fixedSecond⟩

private theorem case_001266_existsRows :
    ExistsEqEqPosVarFirstRows case_001266_rank.val case_001266_mask :=
  ⟨case_001266_support, case_001266_sourceAgrees, case_001266_rows⟩

private theorem case_001266_covered :
    RowPropertyParametricCovered case_001266_rank.val case_001266_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001266_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001267_rank : Fin numPairWords := ⟨867, by decide⟩
private def case_001267_mask : SignMask := ⟨24, by decide⟩
private def case_001267_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001267_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001267_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmpm
private def case_001267_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_001267_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_001267_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001267_rankWord :
    rankPairWord? case_001267_word = some case_001267_rank := by
  decide

private theorem case_001267_unrank :
    unrankPairWord case_001267_rank = case_001267_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001267_word case_001267_rank).1
    case_001267_rankWord |>.symm

private theorem case_001267_seqChoice :
    translationChoiceSeq case_001267_word case_001267_mask = case_001267_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001267_seqAtRank :
    translationSeqAtRankMask case_001267_rank case_001267_mask = case_001267_seq := by
  rw [translationSeqAtRankMask, case_001267_unrank]
  exact case_001267_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001267_bAtRank :
    translationBAtRankMask case_001267_rank case_001267_mask = case_001267_b := by
  rw [translationBAtRankMask, case_001267_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001267_b, case_001267_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001267_firstLine_eq :
    case_001267_support.firstLine case_001267_seq case_001267_b = case_001267_firstLine := by
  norm_num [case_001267_firstLine, case_001267_support, case_001267_seq, case_001267_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001267_secondLine_eq :
    case_001267_support.secondLine case_001267_seq case_001267_b = case_001267_secondLine := by
  norm_num [case_001267_secondLine, case_001267_support, case_001267_seq, case_001267_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001267_sourceAgrees :
    SourceAgrees case_001267_support case_001267_rank.val case_001267_mask := by
  intro hlt
  have hrank : (⟨case_001267_rank.val, hlt⟩ : Fin numPairWords) = case_001267_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001267_rank.val, hlt⟩ case_001267_mask =
        case_001267_seq := by
    simpa [hrank] using case_001267_seqAtRank
  simp [SourceChecks, hseq, case_001267_support,
    checkTranslationConstraintSource, case_001267_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001267_rows :
    EqEqPosVarFirstRows case_001267_support case_001267_rank.val case_001267_mask := by
  intro hlt
  have hrank : (⟨case_001267_rank.val, hlt⟩ : Fin numPairWords) = case_001267_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001267_rank.val, hlt⟩ case_001267_mask =
        case_001267_seq := by
    simpa [hrank] using case_001267_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001267_rank.val, hlt⟩ case_001267_mask =
        case_001267_b := by
    simpa [hrank] using case_001267_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001267_support case_001267_rank.val hlt
          case_001267_mask = case_001267_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001267_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001267_support case_001267_rank.val hlt
          case_001267_mask = case_001267_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001267_secondLine_eq]
  have case_001267_rowFirst :
      EqEqPosRow (FirstLineAt case_001267_support case_001267_rank.val hlt case_001267_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001267_firstLine, EqEqPosRow]
  have case_001267_fixedSecond :
      FixedRow (SecondLineAt case_001267_support case_001267_rank.val hlt case_001267_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001267_secondLine, FixedRow]
  exact ⟨case_001267_rowFirst, case_001267_fixedSecond⟩

private theorem case_001267_existsRows :
    ExistsEqEqPosVarFirstRows case_001267_rank.val case_001267_mask :=
  ⟨case_001267_support, case_001267_sourceAgrees, case_001267_rows⟩

private theorem case_001267_covered :
    RowPropertyParametricCovered case_001267_rank.val case_001267_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001267_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001268_rank : Fin numPairWords := ⟨867, by decide⟩
private def case_001268_mask : SignMask := ⟨28, by decide⟩
private def case_001268_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001268_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001268_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001268_b : Vec3 Rat := { x := (-100/9), y := (-4/9), z := (-68/9) }
private def case_001268_firstLine : StrictLin2 := { a := (-25/9), b := (25/9), c := (-19/3) }
private def case_001268_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001268_rankWord :
    rankPairWord? case_001268_word = some case_001268_rank := by
  decide

private theorem case_001268_unrank :
    unrankPairWord case_001268_rank = case_001268_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001268_word case_001268_rank).1
    case_001268_rankWord |>.symm

private theorem case_001268_seqChoice :
    translationChoiceSeq case_001268_word case_001268_mask = case_001268_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001268_seqAtRank :
    translationSeqAtRankMask case_001268_rank case_001268_mask = case_001268_seq := by
  rw [translationSeqAtRankMask, case_001268_unrank]
  exact case_001268_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001268_bAtRank :
    translationBAtRankMask case_001268_rank case_001268_mask = case_001268_b := by
  rw [translationBAtRankMask, case_001268_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001268_b, case_001268_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001268_firstLine_eq :
    case_001268_support.firstLine case_001268_seq case_001268_b = case_001268_firstLine := by
  norm_num [case_001268_firstLine, case_001268_support, case_001268_seq, case_001268_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001268_secondLine_eq :
    case_001268_support.secondLine case_001268_seq case_001268_b = case_001268_secondLine := by
  norm_num [case_001268_secondLine, case_001268_support, case_001268_seq, case_001268_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001268_sourceAgrees :
    SourceAgrees case_001268_support case_001268_rank.val case_001268_mask := by
  intro hlt
  have hrank : (⟨case_001268_rank.val, hlt⟩ : Fin numPairWords) = case_001268_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001268_rank.val, hlt⟩ case_001268_mask =
        case_001268_seq := by
    simpa [hrank] using case_001268_seqAtRank
  simp [SourceChecks, hseq, case_001268_support,
    checkTranslationConstraintSource, case_001268_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001268_rows :
    OppOneMinusVarFirstRows case_001268_support case_001268_rank.val case_001268_mask := by
  intro hlt
  have hrank : (⟨case_001268_rank.val, hlt⟩ : Fin numPairWords) = case_001268_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001268_rank.val, hlt⟩ case_001268_mask =
        case_001268_seq := by
    simpa [hrank] using case_001268_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001268_rank.val, hlt⟩ case_001268_mask =
        case_001268_b := by
    simpa [hrank] using case_001268_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001268_support case_001268_rank.val hlt
          case_001268_mask = case_001268_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001268_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001268_support case_001268_rank.val hlt
          case_001268_mask = case_001268_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001268_secondLine_eq]
  have case_001268_rowFirst :
      OppPosRow (FirstLineAt case_001268_support case_001268_rank.val hlt case_001268_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001268_firstLine, OppPosRow]
  have case_001268_fixedSecond :
      FixedRow (SecondLineAt case_001268_support case_001268_rank.val hlt case_001268_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001268_secondLine, FixedRow]
  exact ⟨case_001268_rowFirst, case_001268_fixedSecond⟩

private theorem case_001268_existsRows :
    ExistsOppOneMinusVarFirstRows case_001268_rank.val case_001268_mask :=
  ⟨case_001268_support, case_001268_sourceAgrees, case_001268_rows⟩

private theorem case_001268_covered :
    RowPropertyParametricCovered case_001268_rank.val case_001268_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001268_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001269_rank : Fin numPairWords := ⟨867, by decide⟩
private def case_001269_mask : SignMask := ⟨30, by decide⟩
private def case_001269_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001269_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001269_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001269_b : Vec3 Rat := { x := (-100/9), y := (-4/9), z := (4/9) }
private def case_001269_firstLine : StrictLin2 := { a := (25/23), b := (-25/23), c := (-121/23) }
private def case_001269_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001269_rankWord :
    rankPairWord? case_001269_word = some case_001269_rank := by
  decide

private theorem case_001269_unrank :
    unrankPairWord case_001269_rank = case_001269_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001269_word case_001269_rank).1
    case_001269_rankWord |>.symm

private theorem case_001269_seqChoice :
    translationChoiceSeq case_001269_word case_001269_mask = case_001269_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001269_seqAtRank :
    translationSeqAtRankMask case_001269_rank case_001269_mask = case_001269_seq := by
  rw [translationSeqAtRankMask, case_001269_unrank]
  exact case_001269_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001269_bAtRank :
    translationBAtRankMask case_001269_rank case_001269_mask = case_001269_b := by
  rw [translationBAtRankMask, case_001269_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001269_b, case_001269_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001269_firstLine_eq :
    case_001269_support.firstLine case_001269_seq case_001269_b = case_001269_firstLine := by
  norm_num [case_001269_firstLine, case_001269_support, case_001269_seq, case_001269_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001269_secondLine_eq :
    case_001269_support.secondLine case_001269_seq case_001269_b = case_001269_secondLine := by
  norm_num [case_001269_secondLine, case_001269_support, case_001269_seq, case_001269_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001269_sourceAgrees :
    SourceAgrees case_001269_support case_001269_rank.val case_001269_mask := by
  intro hlt
  have hrank : (⟨case_001269_rank.val, hlt⟩ : Fin numPairWords) = case_001269_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001269_rank.val, hlt⟩ case_001269_mask =
        case_001269_seq := by
    simpa [hrank] using case_001269_seqAtRank
  simp [SourceChecks, hseq, case_001269_support,
    checkTranslationConstraintSource, case_001269_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001269_rows :
    OppMinusOneVarFirstRows case_001269_support case_001269_rank.val case_001269_mask := by
  intro hlt
  have hrank : (⟨case_001269_rank.val, hlt⟩ : Fin numPairWords) = case_001269_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001269_rank.val, hlt⟩ case_001269_mask =
        case_001269_seq := by
    simpa [hrank] using case_001269_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001269_rank.val, hlt⟩ case_001269_mask =
        case_001269_b := by
    simpa [hrank] using case_001269_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001269_support case_001269_rank.val hlt
          case_001269_mask = case_001269_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001269_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001269_support case_001269_rank.val hlt
          case_001269_mask = case_001269_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001269_secondLine_eq]
  have case_001269_rowFirst :
      OppNegRow (FirstLineAt case_001269_support case_001269_rank.val hlt case_001269_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001269_firstLine, OppNegRow]
  have case_001269_fixedSecond :
      FixedRow (SecondLineAt case_001269_support case_001269_rank.val hlt case_001269_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001269_secondLine, FixedRow]
  exact ⟨case_001269_rowFirst, case_001269_fixedSecond⟩

private theorem case_001269_existsRows :
    ExistsOppMinusOneVarFirstRows case_001269_rank.val case_001269_mask :=
  ⟨case_001269_support, case_001269_sourceAgrees, case_001269_rows⟩

private theorem case_001269_covered :
    RowPropertyParametricCovered case_001269_rank.val case_001269_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001269_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001270_rank : Fin numPairWords := ⟨867, by decide⟩
private def case_001270_mask : SignMask := ⟨31, by decide⟩
private def case_001270_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001270_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001270_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001270_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (4/9) }
private def case_001270_firstLine : StrictLin2 := { a := (-25/9), b := (25/9), c := (-19/3) }
private def case_001270_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001270_rankWord :
    rankPairWord? case_001270_word = some case_001270_rank := by
  decide

private theorem case_001270_unrank :
    unrankPairWord case_001270_rank = case_001270_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001270_word case_001270_rank).1
    case_001270_rankWord |>.symm

private theorem case_001270_seqChoice :
    translationChoiceSeq case_001270_word case_001270_mask = case_001270_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001270_seqAtRank :
    translationSeqAtRankMask case_001270_rank case_001270_mask = case_001270_seq := by
  rw [translationSeqAtRankMask, case_001270_unrank]
  exact case_001270_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001270_bAtRank :
    translationBAtRankMask case_001270_rank case_001270_mask = case_001270_b := by
  rw [translationBAtRankMask, case_001270_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001270_b, case_001270_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001270_firstLine_eq :
    case_001270_support.firstLine case_001270_seq case_001270_b = case_001270_firstLine := by
  norm_num [case_001270_firstLine, case_001270_support, case_001270_seq, case_001270_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001270_secondLine_eq :
    case_001270_support.secondLine case_001270_seq case_001270_b = case_001270_secondLine := by
  norm_num [case_001270_secondLine, case_001270_support, case_001270_seq, case_001270_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001270_sourceAgrees :
    SourceAgrees case_001270_support case_001270_rank.val case_001270_mask := by
  intro hlt
  have hrank : (⟨case_001270_rank.val, hlt⟩ : Fin numPairWords) = case_001270_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001270_rank.val, hlt⟩ case_001270_mask =
        case_001270_seq := by
    simpa [hrank] using case_001270_seqAtRank
  simp [SourceChecks, hseq, case_001270_support,
    checkTranslationConstraintSource, case_001270_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001270_rows :
    OppOneMinusVarFirstRows case_001270_support case_001270_rank.val case_001270_mask := by
  intro hlt
  have hrank : (⟨case_001270_rank.val, hlt⟩ : Fin numPairWords) = case_001270_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001270_rank.val, hlt⟩ case_001270_mask =
        case_001270_seq := by
    simpa [hrank] using case_001270_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001270_rank.val, hlt⟩ case_001270_mask =
        case_001270_b := by
    simpa [hrank] using case_001270_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001270_support case_001270_rank.val hlt
          case_001270_mask = case_001270_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001270_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001270_support case_001270_rank.val hlt
          case_001270_mask = case_001270_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001270_secondLine_eq]
  have case_001270_rowFirst :
      OppPosRow (FirstLineAt case_001270_support case_001270_rank.val hlt case_001270_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001270_firstLine, OppPosRow]
  have case_001270_fixedSecond :
      FixedRow (SecondLineAt case_001270_support case_001270_rank.val hlt case_001270_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001270_secondLine, FixedRow]
  exact ⟨case_001270_rowFirst, case_001270_fixedSecond⟩

private theorem case_001270_existsRows :
    ExistsOppOneMinusVarFirstRows case_001270_rank.val case_001270_mask :=
  ⟨case_001270_support, case_001270_sourceAgrees, case_001270_rows⟩

private theorem case_001270_covered :
    RowPropertyParametricCovered case_001270_rank.val case_001270_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001270_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_001271_rank : Fin numPairWords := ⟨867, by decide⟩
private def case_001271_mask : SignMask := ⟨47, by decide⟩
private def case_001271_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001271_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001271_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmp
private def case_001271_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_001271_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_001271_secondLine : StrictLin2 := { a := (9/110), b := (-9/110), c := (-4/11) }

private theorem case_001271_rankWord :
    rankPairWord? case_001271_word = some case_001271_rank := by
  decide

private theorem case_001271_unrank :
    unrankPairWord case_001271_rank = case_001271_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001271_word case_001271_rank).1
    case_001271_rankWord |>.symm

private theorem case_001271_seqChoice :
    translationChoiceSeq case_001271_word case_001271_mask = case_001271_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001271_seqAtRank :
    translationSeqAtRankMask case_001271_rank case_001271_mask = case_001271_seq := by
  rw [translationSeqAtRankMask, case_001271_unrank]
  exact case_001271_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001271_bAtRank :
    translationBAtRankMask case_001271_rank case_001271_mask = case_001271_b := by
  rw [translationBAtRankMask, case_001271_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001271_b, case_001271_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001271_firstLine_eq :
    case_001271_support.firstLine case_001271_seq case_001271_b = case_001271_firstLine := by
  norm_num [case_001271_firstLine, case_001271_support, case_001271_seq, case_001271_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001271_secondLine_eq :
    case_001271_support.secondLine case_001271_seq case_001271_b = case_001271_secondLine := by
  norm_num [case_001271_secondLine, case_001271_support, case_001271_seq, case_001271_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001271_sourceAgrees :
    SourceAgrees case_001271_support case_001271_rank.val case_001271_mask := by
  intro hlt
  have hrank : (⟨case_001271_rank.val, hlt⟩ : Fin numPairWords) = case_001271_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001271_rank.val, hlt⟩ case_001271_mask =
        case_001271_seq := by
    simpa [hrank] using case_001271_seqAtRank
  simp [SourceChecks, hseq, case_001271_support,
    checkTranslationConstraintSource, case_001271_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001271_rows :
    OppMinusOneVarSecondRows case_001271_support case_001271_rank.val case_001271_mask := by
  intro hlt
  have hrank : (⟨case_001271_rank.val, hlt⟩ : Fin numPairWords) = case_001271_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001271_rank.val, hlt⟩ case_001271_mask =
        case_001271_seq := by
    simpa [hrank] using case_001271_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001271_rank.val, hlt⟩ case_001271_mask =
        case_001271_b := by
    simpa [hrank] using case_001271_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001271_support case_001271_rank.val hlt
          case_001271_mask = case_001271_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001271_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001271_support case_001271_rank.val hlt
          case_001271_mask = case_001271_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001271_secondLine_eq]
  have case_001271_fixedFirst :
      FixedRow (FirstLineAt case_001271_support case_001271_rank.val hlt case_001271_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001271_firstLine, FixedRow]
  have case_001271_rowSecond :
      OppNegRow (SecondLineAt case_001271_support case_001271_rank.val hlt case_001271_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001271_secondLine, OppNegRow]
  exact ⟨case_001271_fixedFirst, case_001271_rowSecond⟩

private theorem case_001271_existsRows :
    ExistsOppMinusOneVarSecondRows case_001271_rank.val case_001271_mask :=
  ⟨case_001271_support, case_001271_sourceAgrees, case_001271_rows⟩

private theorem case_001271_covered :
    RowPropertyParametricCovered case_001271_rank.val case_001271_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_001271_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001272_rank : Fin numPairWords := ⟨867, by decide⟩
private def case_001272_mask : SignMask := ⟨50, by decide⟩
private def case_001272_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001272_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001272_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmpm
private def case_001272_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (116/9) }
private def case_001272_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001272_secondLine : StrictLin2 := { a := (-9/74), b := (-9/74), c := (-15/37) }

private theorem case_001272_rankWord :
    rankPairWord? case_001272_word = some case_001272_rank := by
  decide

private theorem case_001272_unrank :
    unrankPairWord case_001272_rank = case_001272_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001272_word case_001272_rank).1
    case_001272_rankWord |>.symm

private theorem case_001272_seqChoice :
    translationChoiceSeq case_001272_word case_001272_mask = case_001272_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001272_seqAtRank :
    translationSeqAtRankMask case_001272_rank case_001272_mask = case_001272_seq := by
  rw [translationSeqAtRankMask, case_001272_unrank]
  exact case_001272_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001272_bAtRank :
    translationBAtRankMask case_001272_rank case_001272_mask = case_001272_b := by
  rw [translationBAtRankMask, case_001272_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001272_b, case_001272_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001272_firstLine_eq :
    case_001272_support.firstLine case_001272_seq case_001272_b = case_001272_firstLine := by
  norm_num [case_001272_firstLine, case_001272_support, case_001272_seq, case_001272_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001272_secondLine_eq :
    case_001272_support.secondLine case_001272_seq case_001272_b = case_001272_secondLine := by
  norm_num [case_001272_secondLine, case_001272_support, case_001272_seq, case_001272_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001272_sourceAgrees :
    SourceAgrees case_001272_support case_001272_rank.val case_001272_mask := by
  intro hlt
  have hrank : (⟨case_001272_rank.val, hlt⟩ : Fin numPairWords) = case_001272_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001272_rank.val, hlt⟩ case_001272_mask =
        case_001272_seq := by
    simpa [hrank] using case_001272_seqAtRank
  simp [SourceChecks, hseq, case_001272_support,
    checkTranslationConstraintSource, case_001272_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001272_rows :
    EqEqPosVarSecondRows case_001272_support case_001272_rank.val case_001272_mask := by
  intro hlt
  have hrank : (⟨case_001272_rank.val, hlt⟩ : Fin numPairWords) = case_001272_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001272_rank.val, hlt⟩ case_001272_mask =
        case_001272_seq := by
    simpa [hrank] using case_001272_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001272_rank.val, hlt⟩ case_001272_mask =
        case_001272_b := by
    simpa [hrank] using case_001272_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001272_support case_001272_rank.val hlt
          case_001272_mask = case_001272_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001272_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001272_support case_001272_rank.val hlt
          case_001272_mask = case_001272_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001272_secondLine_eq]
  have case_001272_fixedFirst :
      FixedRow (FirstLineAt case_001272_support case_001272_rank.val hlt case_001272_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001272_firstLine, FixedRow]
  have case_001272_rowSecond :
      EqEqPosRow (SecondLineAt case_001272_support case_001272_rank.val hlt case_001272_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001272_secondLine, EqEqPosRow]
  exact ⟨case_001272_fixedFirst, case_001272_rowSecond⟩

private theorem case_001272_existsRows :
    ExistsEqEqPosVarSecondRows case_001272_rank.val case_001272_mask :=
  ⟨case_001272_support, case_001272_sourceAgrees, case_001272_rows⟩

private theorem case_001272_covered :
    RowPropertyParametricCovered case_001272_rank.val case_001272_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001272_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001273_rank : Fin numPairWords := ⟨867, by decide⟩
private def case_001273_mask : SignMask := ⟨55, by decide⟩
private def case_001273_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001273_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001273_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001273_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_001273_firstLine : StrictLin2 := { a := -1, b := 1, c := (-13/3) }
private def case_001273_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001273_rankWord :
    rankPairWord? case_001273_word = some case_001273_rank := by
  decide

private theorem case_001273_unrank :
    unrankPairWord case_001273_rank = case_001273_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001273_word case_001273_rank).1
    case_001273_rankWord |>.symm

private theorem case_001273_seqChoice :
    translationChoiceSeq case_001273_word case_001273_mask = case_001273_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001273_seqAtRank :
    translationSeqAtRankMask case_001273_rank case_001273_mask = case_001273_seq := by
  rw [translationSeqAtRankMask, case_001273_unrank]
  exact case_001273_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001273_bAtRank :
    translationBAtRankMask case_001273_rank case_001273_mask = case_001273_b := by
  rw [translationBAtRankMask, case_001273_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001273_b, case_001273_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001273_firstLine_eq :
    case_001273_support.firstLine case_001273_seq case_001273_b = case_001273_firstLine := by
  norm_num [case_001273_firstLine, case_001273_support, case_001273_seq, case_001273_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001273_secondLine_eq :
    case_001273_support.secondLine case_001273_seq case_001273_b = case_001273_secondLine := by
  norm_num [case_001273_secondLine, case_001273_support, case_001273_seq, case_001273_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001273_sourceAgrees :
    SourceAgrees case_001273_support case_001273_rank.val case_001273_mask := by
  intro hlt
  have hrank : (⟨case_001273_rank.val, hlt⟩ : Fin numPairWords) = case_001273_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001273_rank.val, hlt⟩ case_001273_mask =
        case_001273_seq := by
    simpa [hrank] using case_001273_seqAtRank
  simp [SourceChecks, hseq, case_001273_support,
    checkTranslationConstraintSource, case_001273_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001273_rows :
    OppOneMinusVarFirstRows case_001273_support case_001273_rank.val case_001273_mask := by
  intro hlt
  have hrank : (⟨case_001273_rank.val, hlt⟩ : Fin numPairWords) = case_001273_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001273_rank.val, hlt⟩ case_001273_mask =
        case_001273_seq := by
    simpa [hrank] using case_001273_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001273_rank.val, hlt⟩ case_001273_mask =
        case_001273_b := by
    simpa [hrank] using case_001273_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001273_support case_001273_rank.val hlt
          case_001273_mask = case_001273_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001273_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001273_support case_001273_rank.val hlt
          case_001273_mask = case_001273_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001273_secondLine_eq]
  have case_001273_rowFirst :
      OppPosRow (FirstLineAt case_001273_support case_001273_rank.val hlt case_001273_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001273_firstLine, OppPosRow]
  have case_001273_fixedSecond :
      FixedRow (SecondLineAt case_001273_support case_001273_rank.val hlt case_001273_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001273_secondLine, FixedRow]
  exact ⟨case_001273_rowFirst, case_001273_fixedSecond⟩

private theorem case_001273_existsRows :
    ExistsOppOneMinusVarFirstRows case_001273_rank.val case_001273_mask :=
  ⟨case_001273_support, case_001273_sourceAgrees, case_001273_rows⟩

private theorem case_001273_covered :
    RowPropertyParametricCovered case_001273_rank.val case_001273_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001273_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001274_rank : Fin numPairWords := ⟨867, by decide⟩
private def case_001274_mask : SignMask := ⟨63, by decide⟩
private def case_001274_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1], by decide⟩
private def case_001274_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001274_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001274_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_001274_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001274_secondLine : StrictLin2 := { a := (-3/28), b := (3/28), c := (-3/14) }

private theorem case_001274_rankWord :
    rankPairWord? case_001274_word = some case_001274_rank := by
  decide

private theorem case_001274_unrank :
    unrankPairWord case_001274_rank = case_001274_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001274_word case_001274_rank).1
    case_001274_rankWord |>.symm

private theorem case_001274_seqChoice :
    translationChoiceSeq case_001274_word case_001274_mask = case_001274_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001274_seqAtRank :
    translationSeqAtRankMask case_001274_rank case_001274_mask = case_001274_seq := by
  rw [translationSeqAtRankMask, case_001274_unrank]
  exact case_001274_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001274_bAtRank :
    translationBAtRankMask case_001274_rank case_001274_mask = case_001274_b := by
  rw [translationBAtRankMask, case_001274_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001274_b, case_001274_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001274_firstLine_eq :
    case_001274_support.firstLine case_001274_seq case_001274_b = case_001274_firstLine := by
  norm_num [case_001274_firstLine, case_001274_support, case_001274_seq, case_001274_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001274_secondLine_eq :
    case_001274_support.secondLine case_001274_seq case_001274_b = case_001274_secondLine := by
  norm_num [case_001274_secondLine, case_001274_support, case_001274_seq, case_001274_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001274_sourceAgrees :
    SourceAgrees case_001274_support case_001274_rank.val case_001274_mask := by
  intro hlt
  have hrank : (⟨case_001274_rank.val, hlt⟩ : Fin numPairWords) = case_001274_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001274_rank.val, hlt⟩ case_001274_mask =
        case_001274_seq := by
    simpa [hrank] using case_001274_seqAtRank
  simp [SourceChecks, hseq, case_001274_support,
    checkTranslationConstraintSource, case_001274_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001274_rows :
    OppOneMinusVarSecondRows case_001274_support case_001274_rank.val case_001274_mask := by
  intro hlt
  have hrank : (⟨case_001274_rank.val, hlt⟩ : Fin numPairWords) = case_001274_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001274_rank.val, hlt⟩ case_001274_mask =
        case_001274_seq := by
    simpa [hrank] using case_001274_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001274_rank.val, hlt⟩ case_001274_mask =
        case_001274_b := by
    simpa [hrank] using case_001274_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001274_support case_001274_rank.val hlt
          case_001274_mask = case_001274_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001274_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001274_support case_001274_rank.val hlt
          case_001274_mask = case_001274_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001274_secondLine_eq]
  have case_001274_fixedFirst :
      FixedRow (FirstLineAt case_001274_support case_001274_rank.val hlt case_001274_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001274_firstLine, FixedRow]
  have case_001274_rowSecond :
      OppPosRow (SecondLineAt case_001274_support case_001274_rank.val hlt case_001274_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001274_secondLine, OppPosRow]
  exact ⟨case_001274_fixedFirst, case_001274_rowSecond⟩

private theorem case_001274_existsRows :
    ExistsOppOneMinusVarSecondRows case_001274_rank.val case_001274_mask :=
  ⟨case_001274_support, case_001274_sourceAgrees, case_001274_rows⟩

private theorem case_001274_covered :
    RowPropertyParametricCovered case_001274_rank.val case_001274_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001274_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001275_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001275_mask : SignMask := ⟨8, by decide⟩
private def case_001275_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001275_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001275_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001275_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-148/9) }
private def case_001275_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_001275_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001275_rankWord :
    rankPairWord? case_001275_word = some case_001275_rank := by
  decide

private theorem case_001275_unrank :
    unrankPairWord case_001275_rank = case_001275_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001275_word case_001275_rank).1
    case_001275_rankWord |>.symm

private theorem case_001275_seqChoice :
    translationChoiceSeq case_001275_word case_001275_mask = case_001275_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001275_seqAtRank :
    translationSeqAtRankMask case_001275_rank case_001275_mask = case_001275_seq := by
  rw [translationSeqAtRankMask, case_001275_unrank]
  exact case_001275_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001275_bAtRank :
    translationBAtRankMask case_001275_rank case_001275_mask = case_001275_b := by
  rw [translationBAtRankMask, case_001275_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001275_b, case_001275_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001275_firstLine_eq :
    case_001275_support.firstLine case_001275_seq case_001275_b = case_001275_firstLine := by
  norm_num [case_001275_firstLine, case_001275_support, case_001275_seq, case_001275_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001275_secondLine_eq :
    case_001275_support.secondLine case_001275_seq case_001275_b = case_001275_secondLine := by
  norm_num [case_001275_secondLine, case_001275_support, case_001275_seq, case_001275_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001275_sourceAgrees :
    SourceAgrees case_001275_support case_001275_rank.val case_001275_mask := by
  intro hlt
  have hrank : (⟨case_001275_rank.val, hlt⟩ : Fin numPairWords) = case_001275_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001275_rank.val, hlt⟩ case_001275_mask =
        case_001275_seq := by
    simpa [hrank] using case_001275_seqAtRank
  simp [SourceChecks, hseq, case_001275_support,
    checkTranslationConstraintSource, case_001275_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001275_rows :
    EqEqPosVarFirstRows case_001275_support case_001275_rank.val case_001275_mask := by
  intro hlt
  have hrank : (⟨case_001275_rank.val, hlt⟩ : Fin numPairWords) = case_001275_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001275_rank.val, hlt⟩ case_001275_mask =
        case_001275_seq := by
    simpa [hrank] using case_001275_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001275_rank.val, hlt⟩ case_001275_mask =
        case_001275_b := by
    simpa [hrank] using case_001275_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001275_support case_001275_rank.val hlt
          case_001275_mask = case_001275_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001275_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001275_support case_001275_rank.val hlt
          case_001275_mask = case_001275_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001275_secondLine_eq]
  have case_001275_rowFirst :
      EqEqPosRow (FirstLineAt case_001275_support case_001275_rank.val hlt case_001275_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001275_firstLine, EqEqPosRow]
  have case_001275_fixedSecond :
      FixedRow (SecondLineAt case_001275_support case_001275_rank.val hlt case_001275_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001275_secondLine, FixedRow]
  exact ⟨case_001275_rowFirst, case_001275_fixedSecond⟩

private theorem case_001275_existsRows :
    ExistsEqEqPosVarFirstRows case_001275_rank.val case_001275_mask :=
  ⟨case_001275_support, case_001275_sourceAgrees, case_001275_rows⟩

private theorem case_001275_covered :
    RowPropertyParametricCovered case_001275_rank.val case_001275_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001275_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001276_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001276_mask : SignMask := ⟨9, by decide⟩
private def case_001276_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001276_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001276_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001276_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (-148/9) }
private def case_001276_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_001276_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001276_rankWord :
    rankPairWord? case_001276_word = some case_001276_rank := by
  decide

private theorem case_001276_unrank :
    unrankPairWord case_001276_rank = case_001276_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001276_word case_001276_rank).1
    case_001276_rankWord |>.symm

private theorem case_001276_seqChoice :
    translationChoiceSeq case_001276_word case_001276_mask = case_001276_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001276_seqAtRank :
    translationSeqAtRankMask case_001276_rank case_001276_mask = case_001276_seq := by
  rw [translationSeqAtRankMask, case_001276_unrank]
  exact case_001276_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001276_bAtRank :
    translationBAtRankMask case_001276_rank case_001276_mask = case_001276_b := by
  rw [translationBAtRankMask, case_001276_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001276_b, case_001276_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001276_firstLine_eq :
    case_001276_support.firstLine case_001276_seq case_001276_b = case_001276_firstLine := by
  norm_num [case_001276_firstLine, case_001276_support, case_001276_seq, case_001276_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001276_secondLine_eq :
    case_001276_support.secondLine case_001276_seq case_001276_b = case_001276_secondLine := by
  norm_num [case_001276_secondLine, case_001276_support, case_001276_seq, case_001276_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001276_sourceAgrees :
    SourceAgrees case_001276_support case_001276_rank.val case_001276_mask := by
  intro hlt
  have hrank : (⟨case_001276_rank.val, hlt⟩ : Fin numPairWords) = case_001276_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001276_rank.val, hlt⟩ case_001276_mask =
        case_001276_seq := by
    simpa [hrank] using case_001276_seqAtRank
  simp [SourceChecks, hseq, case_001276_support,
    checkTranslationConstraintSource, case_001276_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001276_rows :
    EqEqPosVarFirstRows case_001276_support case_001276_rank.val case_001276_mask := by
  intro hlt
  have hrank : (⟨case_001276_rank.val, hlt⟩ : Fin numPairWords) = case_001276_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001276_rank.val, hlt⟩ case_001276_mask =
        case_001276_seq := by
    simpa [hrank] using case_001276_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001276_rank.val, hlt⟩ case_001276_mask =
        case_001276_b := by
    simpa [hrank] using case_001276_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001276_support case_001276_rank.val hlt
          case_001276_mask = case_001276_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001276_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001276_support case_001276_rank.val hlt
          case_001276_mask = case_001276_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001276_secondLine_eq]
  have case_001276_rowFirst :
      EqEqPosRow (FirstLineAt case_001276_support case_001276_rank.val hlt case_001276_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001276_firstLine, EqEqPosRow]
  have case_001276_fixedSecond :
      FixedRow (SecondLineAt case_001276_support case_001276_rank.val hlt case_001276_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001276_secondLine, FixedRow]
  exact ⟨case_001276_rowFirst, case_001276_fixedSecond⟩

private theorem case_001276_existsRows :
    ExistsEqEqPosVarFirstRows case_001276_rank.val case_001276_mask :=
  ⟨case_001276_support, case_001276_sourceAgrees, case_001276_rows⟩

private theorem case_001276_covered :
    RowPropertyParametricCovered case_001276_rank.val case_001276_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001276_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001277_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001277_mask : SignMask := ⟨13, by decide⟩
private def case_001277_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001277_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001277_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001277_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (-100/9) }
private def case_001277_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001277_secondLine : StrictLin2 := { a := (-9/100), b := (-9/100), c := (-9/50) }

private theorem case_001277_rankWord :
    rankPairWord? case_001277_word = some case_001277_rank := by
  decide

private theorem case_001277_unrank :
    unrankPairWord case_001277_rank = case_001277_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001277_word case_001277_rank).1
    case_001277_rankWord |>.symm

private theorem case_001277_seqChoice :
    translationChoiceSeq case_001277_word case_001277_mask = case_001277_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001277_seqAtRank :
    translationSeqAtRankMask case_001277_rank case_001277_mask = case_001277_seq := by
  rw [translationSeqAtRankMask, case_001277_unrank]
  exact case_001277_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001277_bAtRank :
    translationBAtRankMask case_001277_rank case_001277_mask = case_001277_b := by
  rw [translationBAtRankMask, case_001277_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001277_b, case_001277_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001277_firstLine_eq :
    case_001277_support.firstLine case_001277_seq case_001277_b = case_001277_firstLine := by
  norm_num [case_001277_firstLine, case_001277_support, case_001277_seq, case_001277_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001277_secondLine_eq :
    case_001277_support.secondLine case_001277_seq case_001277_b = case_001277_secondLine := by
  norm_num [case_001277_secondLine, case_001277_support, case_001277_seq, case_001277_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001277_sourceAgrees :
    SourceAgrees case_001277_support case_001277_rank.val case_001277_mask := by
  intro hlt
  have hrank : (⟨case_001277_rank.val, hlt⟩ : Fin numPairWords) = case_001277_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001277_rank.val, hlt⟩ case_001277_mask =
        case_001277_seq := by
    simpa [hrank] using case_001277_seqAtRank
  simp [SourceChecks, hseq, case_001277_support,
    checkTranslationConstraintSource, case_001277_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001277_rows :
    EqEqPosVarSecondRows case_001277_support case_001277_rank.val case_001277_mask := by
  intro hlt
  have hrank : (⟨case_001277_rank.val, hlt⟩ : Fin numPairWords) = case_001277_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001277_rank.val, hlt⟩ case_001277_mask =
        case_001277_seq := by
    simpa [hrank] using case_001277_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001277_rank.val, hlt⟩ case_001277_mask =
        case_001277_b := by
    simpa [hrank] using case_001277_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001277_support case_001277_rank.val hlt
          case_001277_mask = case_001277_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001277_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001277_support case_001277_rank.val hlt
          case_001277_mask = case_001277_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001277_secondLine_eq]
  have case_001277_fixedFirst :
      FixedRow (FirstLineAt case_001277_support case_001277_rank.val hlt case_001277_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001277_firstLine, FixedRow]
  have case_001277_rowSecond :
      EqEqPosRow (SecondLineAt case_001277_support case_001277_rank.val hlt case_001277_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001277_secondLine, EqEqPosRow]
  exact ⟨case_001277_fixedFirst, case_001277_rowSecond⟩

private theorem case_001277_existsRows :
    ExistsEqEqPosVarSecondRows case_001277_rank.val case_001277_mask :=
  ⟨case_001277_support, case_001277_sourceAgrees, case_001277_rows⟩

private theorem case_001277_covered :
    RowPropertyParametricCovered case_001277_rank.val case_001277_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001277_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001278_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001278_mask : SignMask := ⟨16, by decide⟩
private def case_001278_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001278_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001278_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001278_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-52/9) }
private def case_001278_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_001278_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001278_rankWord :
    rankPairWord? case_001278_word = some case_001278_rank := by
  decide

private theorem case_001278_unrank :
    unrankPairWord case_001278_rank = case_001278_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001278_word case_001278_rank).1
    case_001278_rankWord |>.symm

private theorem case_001278_seqChoice :
    translationChoiceSeq case_001278_word case_001278_mask = case_001278_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001278_seqAtRank :
    translationSeqAtRankMask case_001278_rank case_001278_mask = case_001278_seq := by
  rw [translationSeqAtRankMask, case_001278_unrank]
  exact case_001278_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001278_bAtRank :
    translationBAtRankMask case_001278_rank case_001278_mask = case_001278_b := by
  rw [translationBAtRankMask, case_001278_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001278_b, case_001278_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001278_firstLine_eq :
    case_001278_support.firstLine case_001278_seq case_001278_b = case_001278_firstLine := by
  norm_num [case_001278_firstLine, case_001278_support, case_001278_seq, case_001278_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001278_secondLine_eq :
    case_001278_support.secondLine case_001278_seq case_001278_b = case_001278_secondLine := by
  norm_num [case_001278_secondLine, case_001278_support, case_001278_seq, case_001278_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001278_sourceAgrees :
    SourceAgrees case_001278_support case_001278_rank.val case_001278_mask := by
  intro hlt
  have hrank : (⟨case_001278_rank.val, hlt⟩ : Fin numPairWords) = case_001278_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001278_rank.val, hlt⟩ case_001278_mask =
        case_001278_seq := by
    simpa [hrank] using case_001278_seqAtRank
  simp [SourceChecks, hseq, case_001278_support,
    checkTranslationConstraintSource, case_001278_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001278_rows :
    EqEqPosVarFirstRows case_001278_support case_001278_rank.val case_001278_mask := by
  intro hlt
  have hrank : (⟨case_001278_rank.val, hlt⟩ : Fin numPairWords) = case_001278_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001278_rank.val, hlt⟩ case_001278_mask =
        case_001278_seq := by
    simpa [hrank] using case_001278_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001278_rank.val, hlt⟩ case_001278_mask =
        case_001278_b := by
    simpa [hrank] using case_001278_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001278_support case_001278_rank.val hlt
          case_001278_mask = case_001278_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001278_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001278_support case_001278_rank.val hlt
          case_001278_mask = case_001278_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001278_secondLine_eq]
  have case_001278_rowFirst :
      EqEqPosRow (FirstLineAt case_001278_support case_001278_rank.val hlt case_001278_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001278_firstLine, EqEqPosRow]
  have case_001278_fixedSecond :
      FixedRow (SecondLineAt case_001278_support case_001278_rank.val hlt case_001278_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001278_secondLine, FixedRow]
  exact ⟨case_001278_rowFirst, case_001278_fixedSecond⟩

private theorem case_001278_existsRows :
    ExistsEqEqPosVarFirstRows case_001278_rank.val case_001278_mask :=
  ⟨case_001278_support, case_001278_sourceAgrees, case_001278_rows⟩

private theorem case_001278_covered :
    RowPropertyParametricCovered case_001278_rank.val case_001278_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001278_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001279_rank : Fin numPairWords := ⟨869, by decide⟩
private def case_001279_mask : SignMask := ⟨18, by decide⟩
private def case_001279_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111], by decide⟩
private def case_001279_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001279_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001279_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (20/9) }
private def case_001279_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_001279_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001279_rankWord :
    rankPairWord? case_001279_word = some case_001279_rank := by
  decide

private theorem case_001279_unrank :
    unrankPairWord case_001279_rank = case_001279_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001279_word case_001279_rank).1
    case_001279_rankWord |>.symm

private theorem case_001279_seqChoice :
    translationChoiceSeq case_001279_word case_001279_mask = case_001279_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001279_seqAtRank :
    translationSeqAtRankMask case_001279_rank case_001279_mask = case_001279_seq := by
  rw [translationSeqAtRankMask, case_001279_unrank]
  exact case_001279_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001279_bAtRank :
    translationBAtRankMask case_001279_rank case_001279_mask = case_001279_b := by
  rw [translationBAtRankMask, case_001279_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001279_b, case_001279_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001279_firstLine_eq :
    case_001279_support.firstLine case_001279_seq case_001279_b = case_001279_firstLine := by
  norm_num [case_001279_firstLine, case_001279_support, case_001279_seq, case_001279_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001279_secondLine_eq :
    case_001279_support.secondLine case_001279_seq case_001279_b = case_001279_secondLine := by
  norm_num [case_001279_secondLine, case_001279_support, case_001279_seq, case_001279_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001279_sourceAgrees :
    SourceAgrees case_001279_support case_001279_rank.val case_001279_mask := by
  intro hlt
  have hrank : (⟨case_001279_rank.val, hlt⟩ : Fin numPairWords) = case_001279_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001279_rank.val, hlt⟩ case_001279_mask =
        case_001279_seq := by
    simpa [hrank] using case_001279_seqAtRank
  simp [SourceChecks, hseq, case_001279_support,
    checkTranslationConstraintSource, case_001279_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001279_rows :
    EqEqPosVarFirstRows case_001279_support case_001279_rank.val case_001279_mask := by
  intro hlt
  have hrank : (⟨case_001279_rank.val, hlt⟩ : Fin numPairWords) = case_001279_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001279_rank.val, hlt⟩ case_001279_mask =
        case_001279_seq := by
    simpa [hrank] using case_001279_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001279_rank.val, hlt⟩ case_001279_mask =
        case_001279_b := by
    simpa [hrank] using case_001279_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001279_support case_001279_rank.val hlt
          case_001279_mask = case_001279_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001279_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001279_support case_001279_rank.val hlt
          case_001279_mask = case_001279_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001279_secondLine_eq]
  have case_001279_rowFirst :
      EqEqPosRow (FirstLineAt case_001279_support case_001279_rank.val hlt case_001279_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001279_firstLine, EqEqPosRow]
  have case_001279_fixedSecond :
      FixedRow (SecondLineAt case_001279_support case_001279_rank.val hlt case_001279_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001279_secondLine, FixedRow]
  exact ⟨case_001279_rowFirst, case_001279_fixedSecond⟩

private theorem case_001279_existsRows :
    ExistsEqEqPosVarFirstRows case_001279_rank.val case_001279_mask :=
  ⟨case_001279_support, case_001279_sourceAgrees, case_001279_rows⟩

private theorem case_001279_covered :
    RowPropertyParametricCovered case_001279_rank.val case_001279_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001279_existsRows

inductive Group039Covered : Nat -> SignMask -> Prop
  | case_001248 : Group039Covered case_001248_rank.val case_001248_mask
  | case_001249 : Group039Covered case_001249_rank.val case_001249_mask
  | case_001250 : Group039Covered case_001250_rank.val case_001250_mask
  | case_001251 : Group039Covered case_001251_rank.val case_001251_mask
  | case_001252 : Group039Covered case_001252_rank.val case_001252_mask
  | case_001253 : Group039Covered case_001253_rank.val case_001253_mask
  | case_001254 : Group039Covered case_001254_rank.val case_001254_mask
  | case_001255 : Group039Covered case_001255_rank.val case_001255_mask
  | case_001256 : Group039Covered case_001256_rank.val case_001256_mask
  | case_001257 : Group039Covered case_001257_rank.val case_001257_mask
  | case_001258 : Group039Covered case_001258_rank.val case_001258_mask
  | case_001259 : Group039Covered case_001259_rank.val case_001259_mask
  | case_001260 : Group039Covered case_001260_rank.val case_001260_mask
  | case_001261 : Group039Covered case_001261_rank.val case_001261_mask
  | case_001262 : Group039Covered case_001262_rank.val case_001262_mask
  | case_001263 : Group039Covered case_001263_rank.val case_001263_mask
  | case_001264 : Group039Covered case_001264_rank.val case_001264_mask
  | case_001265 : Group039Covered case_001265_rank.val case_001265_mask
  | case_001266 : Group039Covered case_001266_rank.val case_001266_mask
  | case_001267 : Group039Covered case_001267_rank.val case_001267_mask
  | case_001268 : Group039Covered case_001268_rank.val case_001268_mask
  | case_001269 : Group039Covered case_001269_rank.val case_001269_mask
  | case_001270 : Group039Covered case_001270_rank.val case_001270_mask
  | case_001271 : Group039Covered case_001271_rank.val case_001271_mask
  | case_001272 : Group039Covered case_001272_rank.val case_001272_mask
  | case_001273 : Group039Covered case_001273_rank.val case_001273_mask
  | case_001274 : Group039Covered case_001274_rank.val case_001274_mask
  | case_001275 : Group039Covered case_001275_rank.val case_001275_mask
  | case_001276 : Group039Covered case_001276_rank.val case_001276_mask
  | case_001277 : Group039Covered case_001277_rank.val case_001277_mask
  | case_001278 : Group039Covered case_001278_rank.val case_001278_mask
  | case_001279 : Group039Covered case_001279_rank.val case_001279_mask

theorem Group039GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group039Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001248 =>
      exact RowPropertyParametricCovered.kills case_001248_covered
  | case_001249 =>
      exact RowPropertyParametricCovered.kills case_001249_covered
  | case_001250 =>
      exact RowPropertyParametricCovered.kills case_001250_covered
  | case_001251 =>
      exact RowPropertyParametricCovered.kills case_001251_covered
  | case_001252 =>
      exact RowPropertyParametricCovered.kills case_001252_covered
  | case_001253 =>
      exact RowPropertyParametricCovered.kills case_001253_covered
  | case_001254 =>
      exact RowPropertyParametricCovered.kills case_001254_covered
  | case_001255 =>
      exact RowPropertyParametricCovered.kills case_001255_covered
  | case_001256 =>
      exact RowPropertyParametricCovered.kills case_001256_covered
  | case_001257 =>
      exact RowPropertyParametricCovered.kills case_001257_covered
  | case_001258 =>
      exact RowPropertyParametricCovered.kills case_001258_covered
  | case_001259 =>
      exact RowPropertyParametricCovered.kills case_001259_covered
  | case_001260 =>
      exact RowPropertyParametricCovered.kills case_001260_covered
  | case_001261 =>
      exact RowPropertyParametricCovered.kills case_001261_covered
  | case_001262 =>
      exact RowPropertyParametricCovered.kills case_001262_covered
  | case_001263 =>
      exact RowPropertyParametricCovered.kills case_001263_covered
  | case_001264 =>
      exact RowPropertyParametricCovered.kills case_001264_covered
  | case_001265 =>
      exact RowPropertyParametricCovered.kills case_001265_covered
  | case_001266 =>
      exact RowPropertyParametricCovered.kills case_001266_covered
  | case_001267 =>
      exact RowPropertyParametricCovered.kills case_001267_covered
  | case_001268 =>
      exact RowPropertyParametricCovered.kills case_001268_covered
  | case_001269 =>
      exact RowPropertyParametricCovered.kills case_001269_covered
  | case_001270 =>
      exact RowPropertyParametricCovered.kills case_001270_covered
  | case_001271 =>
      exact RowPropertyParametricCovered.kills case_001271_covered
  | case_001272 =>
      exact RowPropertyParametricCovered.kills case_001272_covered
  | case_001273 =>
      exact RowPropertyParametricCovered.kills case_001273_covered
  | case_001274 =>
      exact RowPropertyParametricCovered.kills case_001274_covered
  | case_001275 =>
      exact RowPropertyParametricCovered.kills case_001275_covered
  | case_001276 =>
      exact RowPropertyParametricCovered.kills case_001276_covered
  | case_001277 =>
      exact RowPropertyParametricCovered.kills case_001277_covered
  | case_001278 =>
      exact RowPropertyParametricCovered.kills case_001278_covered
  | case_001279 =>
      exact RowPropertyParametricCovered.kills case_001279_covered

theorem Group039_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group039
