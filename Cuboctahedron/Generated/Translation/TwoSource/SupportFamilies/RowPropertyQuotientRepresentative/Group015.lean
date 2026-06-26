import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group015

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
private def case_000480_rank : Fin numPairWords := ⟨179, by decide⟩
private def case_000480_mask : SignMask := ⟨45, by decide⟩
private def case_000480_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000480_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000480_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000480_b : Vec3 Rat := { x := (-44/27), y := (332/27), z := (-76/27) }
private def case_000480_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000480_secondLine : StrictLin2 := { a := (-33/50), b := (-33/50), c := (-63/25) }

private theorem case_000480_rankWord :
    rankPairWord? case_000480_word = some case_000480_rank := by
  decide

private theorem case_000480_unrank :
    unrankPairWord case_000480_rank = case_000480_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000480_word case_000480_rank).1
    case_000480_rankWord |>.symm

private theorem case_000480_seqChoice :
    translationChoiceSeq case_000480_word case_000480_mask = case_000480_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000480_seqAtRank :
    translationSeqAtRankMask case_000480_rank case_000480_mask = case_000480_seq := by
  rw [translationSeqAtRankMask, case_000480_unrank]
  exact case_000480_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000480_bAtRank :
    translationBAtRankMask case_000480_rank case_000480_mask = case_000480_b := by
  rw [translationBAtRankMask, case_000480_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000480_b, case_000480_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000480_firstLine_eq :
    case_000480_support.firstLine case_000480_seq case_000480_b = case_000480_firstLine := by
  norm_num [case_000480_firstLine, case_000480_support, case_000480_seq, case_000480_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000480_secondLine_eq :
    case_000480_support.secondLine case_000480_seq case_000480_b = case_000480_secondLine := by
  norm_num [case_000480_secondLine, case_000480_support, case_000480_seq, case_000480_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000480_sourceAgrees :
    SourceAgrees case_000480_support case_000480_rank.val case_000480_mask := by
  intro hlt
  have hrank : (⟨case_000480_rank.val, hlt⟩ : Fin numPairWords) = case_000480_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000480_rank.val, hlt⟩ case_000480_mask =
        case_000480_seq := by
    simpa [hrank] using case_000480_seqAtRank
  simp [SourceChecks, hseq, case_000480_support,
    checkTranslationConstraintSource, case_000480_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000480_rows :
    EqEqPosVarSecondRows case_000480_support case_000480_rank.val case_000480_mask := by
  intro hlt
  have hrank : (⟨case_000480_rank.val, hlt⟩ : Fin numPairWords) = case_000480_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000480_rank.val, hlt⟩ case_000480_mask =
        case_000480_seq := by
    simpa [hrank] using case_000480_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000480_rank.val, hlt⟩ case_000480_mask =
        case_000480_b := by
    simpa [hrank] using case_000480_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000480_support case_000480_rank.val hlt
          case_000480_mask = case_000480_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000480_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000480_support case_000480_rank.val hlt
          case_000480_mask = case_000480_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000480_secondLine_eq]
  have case_000480_fixedFirst :
      FixedRow (FirstLineAt case_000480_support case_000480_rank.val hlt case_000480_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000480_firstLine, FixedRow]
  have case_000480_rowSecond :
      EqEqPosRow (SecondLineAt case_000480_support case_000480_rank.val hlt case_000480_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000480_secondLine, EqEqPosRow]
  exact ⟨case_000480_fixedFirst, case_000480_rowSecond⟩

private theorem case_000480_existsRows :
    ExistsEqEqPosVarSecondRows case_000480_rank.val case_000480_mask :=
  ⟨case_000480_support, case_000480_sourceAgrees, case_000480_rows⟩

private theorem case_000480_covered :
    RowPropertyParametricCovered case_000480_rank.val case_000480_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000480_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000481_rank : Fin numPairWords := ⟨185, by decide⟩
private def case_000481_mask : SignMask := ⟨7, by decide⟩
private def case_000481_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000481_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000481_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000481_b : Vec3 Rat := { x := (-220/27), y := (220/27), z := (412/27) }
private def case_000481_firstLine : StrictLin2 := { a := 1, b := 1, c := (-261/55) }
private def case_000481_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000481_rankWord :
    rankPairWord? case_000481_word = some case_000481_rank := by
  decide

private theorem case_000481_unrank :
    unrankPairWord case_000481_rank = case_000481_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000481_word case_000481_rank).1
    case_000481_rankWord |>.symm

private theorem case_000481_seqChoice :
    translationChoiceSeq case_000481_word case_000481_mask = case_000481_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000481_seqAtRank :
    translationSeqAtRankMask case_000481_rank case_000481_mask = case_000481_seq := by
  rw [translationSeqAtRankMask, case_000481_unrank]
  exact case_000481_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000481_bAtRank :
    translationBAtRankMask case_000481_rank case_000481_mask = case_000481_b := by
  rw [translationBAtRankMask, case_000481_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000481_b, case_000481_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000481_firstLine_eq :
    case_000481_support.firstLine case_000481_seq case_000481_b = case_000481_firstLine := by
  norm_num [case_000481_firstLine, case_000481_support, case_000481_seq, case_000481_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000481_secondLine_eq :
    case_000481_support.secondLine case_000481_seq case_000481_b = case_000481_secondLine := by
  norm_num [case_000481_secondLine, case_000481_support, case_000481_seq, case_000481_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000481_sourceAgrees :
    SourceAgrees case_000481_support case_000481_rank.val case_000481_mask := by
  intro hlt
  have hrank : (⟨case_000481_rank.val, hlt⟩ : Fin numPairWords) = case_000481_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000481_rank.val, hlt⟩ case_000481_mask =
        case_000481_seq := by
    simpa [hrank] using case_000481_seqAtRank
  simp [SourceChecks, hseq, case_000481_support,
    checkTranslationConstraintSource, case_000481_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000481_rows :
    EqEqNegVarFirstRows case_000481_support case_000481_rank.val case_000481_mask := by
  intro hlt
  have hrank : (⟨case_000481_rank.val, hlt⟩ : Fin numPairWords) = case_000481_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000481_rank.val, hlt⟩ case_000481_mask =
        case_000481_seq := by
    simpa [hrank] using case_000481_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000481_rank.val, hlt⟩ case_000481_mask =
        case_000481_b := by
    simpa [hrank] using case_000481_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000481_support case_000481_rank.val hlt
          case_000481_mask = case_000481_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000481_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000481_support case_000481_rank.val hlt
          case_000481_mask = case_000481_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000481_secondLine_eq]
  have case_000481_rowFirst :
      EqEqNegRow (FirstLineAt case_000481_support case_000481_rank.val hlt case_000481_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000481_firstLine, EqEqNegRow]
  have case_000481_fixedSecond :
      FixedRow (SecondLineAt case_000481_support case_000481_rank.val hlt case_000481_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000481_secondLine, FixedRow]
  exact ⟨case_000481_rowFirst, case_000481_fixedSecond⟩

private theorem case_000481_existsRows :
    ExistsEqEqNegVarFirstRows case_000481_rank.val case_000481_mask :=
  ⟨case_000481_support, case_000481_sourceAgrees, case_000481_rows⟩

private theorem case_000481_covered :
    RowPropertyParametricCovered case_000481_rank.val case_000481_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000481_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000482_rank : Fin numPairWords := ⟨185, by decide⟩
private def case_000482_mask : SignMask := ⟨13, by decide⟩
private def case_000482_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000482_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000482_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000482_b : Vec3 Rat := { x := (-268/27), y := (268/27), z := (-44/27) }
private def case_000482_firstLine : StrictLin2 := { a := 1, b := -1, c := (-89/67) }
private def case_000482_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000482_rankWord :
    rankPairWord? case_000482_word = some case_000482_rank := by
  decide

private theorem case_000482_unrank :
    unrankPairWord case_000482_rank = case_000482_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000482_word case_000482_rank).1
    case_000482_rankWord |>.symm

private theorem case_000482_seqChoice :
    translationChoiceSeq case_000482_word case_000482_mask = case_000482_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000482_seqAtRank :
    translationSeqAtRankMask case_000482_rank case_000482_mask = case_000482_seq := by
  rw [translationSeqAtRankMask, case_000482_unrank]
  exact case_000482_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000482_bAtRank :
    translationBAtRankMask case_000482_rank case_000482_mask = case_000482_b := by
  rw [translationBAtRankMask, case_000482_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000482_b, case_000482_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000482_firstLine_eq :
    case_000482_support.firstLine case_000482_seq case_000482_b = case_000482_firstLine := by
  norm_num [case_000482_firstLine, case_000482_support, case_000482_seq, case_000482_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000482_secondLine_eq :
    case_000482_support.secondLine case_000482_seq case_000482_b = case_000482_secondLine := by
  norm_num [case_000482_secondLine, case_000482_support, case_000482_seq, case_000482_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000482_sourceAgrees :
    SourceAgrees case_000482_support case_000482_rank.val case_000482_mask := by
  intro hlt
  have hrank : (⟨case_000482_rank.val, hlt⟩ : Fin numPairWords) = case_000482_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000482_rank.val, hlt⟩ case_000482_mask =
        case_000482_seq := by
    simpa [hrank] using case_000482_seqAtRank
  simp [SourceChecks, hseq, case_000482_support,
    checkTranslationConstraintSource, case_000482_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000482_rows :
    OppMinusOneVarFirstRows case_000482_support case_000482_rank.val case_000482_mask := by
  intro hlt
  have hrank : (⟨case_000482_rank.val, hlt⟩ : Fin numPairWords) = case_000482_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000482_rank.val, hlt⟩ case_000482_mask =
        case_000482_seq := by
    simpa [hrank] using case_000482_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000482_rank.val, hlt⟩ case_000482_mask =
        case_000482_b := by
    simpa [hrank] using case_000482_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000482_support case_000482_rank.val hlt
          case_000482_mask = case_000482_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000482_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000482_support case_000482_rank.val hlt
          case_000482_mask = case_000482_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000482_secondLine_eq]
  have case_000482_rowFirst :
      OppNegRow (FirstLineAt case_000482_support case_000482_rank.val hlt case_000482_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000482_firstLine, OppNegRow]
  have case_000482_fixedSecond :
      FixedRow (SecondLineAt case_000482_support case_000482_rank.val hlt case_000482_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000482_secondLine, FixedRow]
  exact ⟨case_000482_rowFirst, case_000482_fixedSecond⟩

private theorem case_000482_existsRows :
    ExistsOppMinusOneVarFirstRows case_000482_rank.val case_000482_mask :=
  ⟨case_000482_support, case_000482_sourceAgrees, case_000482_rows⟩

private theorem case_000482_covered :
    RowPropertyParametricCovered case_000482_rank.val case_000482_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000482_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000483_rank : Fin numPairWords := ⟨185, by decide⟩
private def case_000483_mask : SignMask := ⟨18, by decide⟩
private def case_000483_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000483_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000483_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tppp
private def case_000483_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000483_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000483_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000483_rankWord :
    rankPairWord? case_000483_word = some case_000483_rank := by
  decide

private theorem case_000483_unrank :
    unrankPairWord case_000483_rank = case_000483_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000483_word case_000483_rank).1
    case_000483_rankWord |>.symm

private theorem case_000483_seqChoice :
    translationChoiceSeq case_000483_word case_000483_mask = case_000483_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000483_seqAtRank :
    translationSeqAtRankMask case_000483_rank case_000483_mask = case_000483_seq := by
  rw [translationSeqAtRankMask, case_000483_unrank]
  exact case_000483_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000483_bAtRank :
    translationBAtRankMask case_000483_rank case_000483_mask = case_000483_b := by
  rw [translationBAtRankMask, case_000483_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000483_b, case_000483_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000483_firstLine_eq :
    case_000483_support.firstLine case_000483_seq case_000483_b = case_000483_firstLine := by
  norm_num [case_000483_firstLine, case_000483_support, case_000483_seq, case_000483_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000483_secondLine_eq :
    case_000483_support.secondLine case_000483_seq case_000483_b = case_000483_secondLine := by
  norm_num [case_000483_secondLine, case_000483_support, case_000483_seq, case_000483_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000483_sourceAgrees :
    SourceAgrees case_000483_support case_000483_rank.val case_000483_mask := by
  intro hlt
  have hrank : (⟨case_000483_rank.val, hlt⟩ : Fin numPairWords) = case_000483_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000483_rank.val, hlt⟩ case_000483_mask =
        case_000483_seq := by
    simpa [hrank] using case_000483_seqAtRank
  simp [SourceChecks, hseq, case_000483_support,
    checkTranslationConstraintSource, case_000483_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000483_rows :
    EqEqPosVarFirstRows case_000483_support case_000483_rank.val case_000483_mask := by
  intro hlt
  have hrank : (⟨case_000483_rank.val, hlt⟩ : Fin numPairWords) = case_000483_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000483_rank.val, hlt⟩ case_000483_mask =
        case_000483_seq := by
    simpa [hrank] using case_000483_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000483_rank.val, hlt⟩ case_000483_mask =
        case_000483_b := by
    simpa [hrank] using case_000483_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000483_support case_000483_rank.val hlt
          case_000483_mask = case_000483_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000483_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000483_support case_000483_rank.val hlt
          case_000483_mask = case_000483_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000483_secondLine_eq]
  have case_000483_rowFirst :
      EqEqPosRow (FirstLineAt case_000483_support case_000483_rank.val hlt case_000483_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000483_firstLine, EqEqPosRow]
  have case_000483_fixedSecond :
      FixedRow (SecondLineAt case_000483_support case_000483_rank.val hlt case_000483_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000483_secondLine, FixedRow]
  exact ⟨case_000483_rowFirst, case_000483_fixedSecond⟩

private theorem case_000483_existsRows :
    ExistsEqEqPosVarFirstRows case_000483_rank.val case_000483_mask :=
  ⟨case_000483_support, case_000483_sourceAgrees, case_000483_rows⟩

private theorem case_000483_covered :
    RowPropertyParametricCovered case_000483_rank.val case_000483_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000483_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000484_rank : Fin numPairWords := ⟨185, by decide⟩
private def case_000484_mask : SignMask := ⟨22, by decide⟩
private def case_000484_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000484_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000484_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000484_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000484_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_000484_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000484_rankWord :
    rankPairWord? case_000484_word = some case_000484_rank := by
  decide

private theorem case_000484_unrank :
    unrankPairWord case_000484_rank = case_000484_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000484_word case_000484_rank).1
    case_000484_rankWord |>.symm

private theorem case_000484_seqChoice :
    translationChoiceSeq case_000484_word case_000484_mask = case_000484_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000484_seqAtRank :
    translationSeqAtRankMask case_000484_rank case_000484_mask = case_000484_seq := by
  rw [translationSeqAtRankMask, case_000484_unrank]
  exact case_000484_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000484_bAtRank :
    translationBAtRankMask case_000484_rank case_000484_mask = case_000484_b := by
  rw [translationBAtRankMask, case_000484_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000484_b, case_000484_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000484_firstLine_eq :
    case_000484_support.firstLine case_000484_seq case_000484_b = case_000484_firstLine := by
  norm_num [case_000484_firstLine, case_000484_support, case_000484_seq, case_000484_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000484_secondLine_eq :
    case_000484_support.secondLine case_000484_seq case_000484_b = case_000484_secondLine := by
  norm_num [case_000484_secondLine, case_000484_support, case_000484_seq, case_000484_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000484_sourceAgrees :
    SourceAgrees case_000484_support case_000484_rank.val case_000484_mask := by
  intro hlt
  have hrank : (⟨case_000484_rank.val, hlt⟩ : Fin numPairWords) = case_000484_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000484_rank.val, hlt⟩ case_000484_mask =
        case_000484_seq := by
    simpa [hrank] using case_000484_seqAtRank
  simp [SourceChecks, hseq, case_000484_support,
    checkTranslationConstraintSource, case_000484_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000484_rows :
    OppOneMinusVarFirstRows case_000484_support case_000484_rank.val case_000484_mask := by
  intro hlt
  have hrank : (⟨case_000484_rank.val, hlt⟩ : Fin numPairWords) = case_000484_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000484_rank.val, hlt⟩ case_000484_mask =
        case_000484_seq := by
    simpa [hrank] using case_000484_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000484_rank.val, hlt⟩ case_000484_mask =
        case_000484_b := by
    simpa [hrank] using case_000484_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000484_support case_000484_rank.val hlt
          case_000484_mask = case_000484_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000484_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000484_support case_000484_rank.val hlt
          case_000484_mask = case_000484_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000484_secondLine_eq]
  have case_000484_rowFirst :
      OppPosRow (FirstLineAt case_000484_support case_000484_rank.val hlt case_000484_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000484_firstLine, OppPosRow]
  have case_000484_fixedSecond :
      FixedRow (SecondLineAt case_000484_support case_000484_rank.val hlt case_000484_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000484_secondLine, FixedRow]
  exact ⟨case_000484_rowFirst, case_000484_fixedSecond⟩

private theorem case_000484_existsRows :
    ExistsOppOneMinusVarFirstRows case_000484_rank.val case_000484_mask :=
  ⟨case_000484_support, case_000484_sourceAgrees, case_000484_rows⟩

private theorem case_000484_covered :
    RowPropertyParametricCovered case_000484_rank.val case_000484_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000484_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000485_rank : Fin numPairWords := ⟨185, by decide⟩
private def case_000485_mask : SignMask := ⟨24, by decide⟩
private def case_000485_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000485_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000485_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000485_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000485_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000485_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000485_rankWord :
    rankPairWord? case_000485_word = some case_000485_rank := by
  decide

private theorem case_000485_unrank :
    unrankPairWord case_000485_rank = case_000485_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000485_word case_000485_rank).1
    case_000485_rankWord |>.symm

private theorem case_000485_seqChoice :
    translationChoiceSeq case_000485_word case_000485_mask = case_000485_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000485_seqAtRank :
    translationSeqAtRankMask case_000485_rank case_000485_mask = case_000485_seq := by
  rw [translationSeqAtRankMask, case_000485_unrank]
  exact case_000485_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000485_bAtRank :
    translationBAtRankMask case_000485_rank case_000485_mask = case_000485_b := by
  rw [translationBAtRankMask, case_000485_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000485_b, case_000485_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000485_firstLine_eq :
    case_000485_support.firstLine case_000485_seq case_000485_b = case_000485_firstLine := by
  norm_num [case_000485_firstLine, case_000485_support, case_000485_seq, case_000485_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000485_secondLine_eq :
    case_000485_support.secondLine case_000485_seq case_000485_b = case_000485_secondLine := by
  norm_num [case_000485_secondLine, case_000485_support, case_000485_seq, case_000485_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000485_sourceAgrees :
    SourceAgrees case_000485_support case_000485_rank.val case_000485_mask := by
  intro hlt
  have hrank : (⟨case_000485_rank.val, hlt⟩ : Fin numPairWords) = case_000485_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000485_rank.val, hlt⟩ case_000485_mask =
        case_000485_seq := by
    simpa [hrank] using case_000485_seqAtRank
  simp [SourceChecks, hseq, case_000485_support,
    checkTranslationConstraintSource, case_000485_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000485_rows :
    EqEqPosVarFirstRows case_000485_support case_000485_rank.val case_000485_mask := by
  intro hlt
  have hrank : (⟨case_000485_rank.val, hlt⟩ : Fin numPairWords) = case_000485_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000485_rank.val, hlt⟩ case_000485_mask =
        case_000485_seq := by
    simpa [hrank] using case_000485_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000485_rank.val, hlt⟩ case_000485_mask =
        case_000485_b := by
    simpa [hrank] using case_000485_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000485_support case_000485_rank.val hlt
          case_000485_mask = case_000485_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000485_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000485_support case_000485_rank.val hlt
          case_000485_mask = case_000485_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000485_secondLine_eq]
  have case_000485_rowFirst :
      EqEqPosRow (FirstLineAt case_000485_support case_000485_rank.val hlt case_000485_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000485_firstLine, EqEqPosRow]
  have case_000485_fixedSecond :
      FixedRow (SecondLineAt case_000485_support case_000485_rank.val hlt case_000485_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000485_secondLine, FixedRow]
  exact ⟨case_000485_rowFirst, case_000485_fixedSecond⟩

private theorem case_000485_existsRows :
    ExistsEqEqPosVarFirstRows case_000485_rank.val case_000485_mask :=
  ⟨case_000485_support, case_000485_sourceAgrees, case_000485_rows⟩

private theorem case_000485_covered :
    RowPropertyParametricCovered case_000485_rank.val case_000485_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000485_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000486_rank : Fin numPairWords := ⟨185, by decide⟩
private def case_000486_mask : SignMask := ⟨28, by decide⟩
private def case_000486_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000486_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000486_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000486_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000486_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000486_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000486_rankWord :
    rankPairWord? case_000486_word = some case_000486_rank := by
  decide

private theorem case_000486_unrank :
    unrankPairWord case_000486_rank = case_000486_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000486_word case_000486_rank).1
    case_000486_rankWord |>.symm

private theorem case_000486_seqChoice :
    translationChoiceSeq case_000486_word case_000486_mask = case_000486_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000486_seqAtRank :
    translationSeqAtRankMask case_000486_rank case_000486_mask = case_000486_seq := by
  rw [translationSeqAtRankMask, case_000486_unrank]
  exact case_000486_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000486_bAtRank :
    translationBAtRankMask case_000486_rank case_000486_mask = case_000486_b := by
  rw [translationBAtRankMask, case_000486_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000486_b, case_000486_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000486_firstLine_eq :
    case_000486_support.firstLine case_000486_seq case_000486_b = case_000486_firstLine := by
  norm_num [case_000486_firstLine, case_000486_support, case_000486_seq, case_000486_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000486_secondLine_eq :
    case_000486_support.secondLine case_000486_seq case_000486_b = case_000486_secondLine := by
  norm_num [case_000486_secondLine, case_000486_support, case_000486_seq, case_000486_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000486_sourceAgrees :
    SourceAgrees case_000486_support case_000486_rank.val case_000486_mask := by
  intro hlt
  have hrank : (⟨case_000486_rank.val, hlt⟩ : Fin numPairWords) = case_000486_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000486_rank.val, hlt⟩ case_000486_mask =
        case_000486_seq := by
    simpa [hrank] using case_000486_seqAtRank
  simp [SourceChecks, hseq, case_000486_support,
    checkTranslationConstraintSource, case_000486_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000486_rows :
    OppOneMinusVarFirstRows case_000486_support case_000486_rank.val case_000486_mask := by
  intro hlt
  have hrank : (⟨case_000486_rank.val, hlt⟩ : Fin numPairWords) = case_000486_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000486_rank.val, hlt⟩ case_000486_mask =
        case_000486_seq := by
    simpa [hrank] using case_000486_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000486_rank.val, hlt⟩ case_000486_mask =
        case_000486_b := by
    simpa [hrank] using case_000486_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000486_support case_000486_rank.val hlt
          case_000486_mask = case_000486_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000486_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000486_support case_000486_rank.val hlt
          case_000486_mask = case_000486_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000486_secondLine_eq]
  have case_000486_rowFirst :
      OppPosRow (FirstLineAt case_000486_support case_000486_rank.val hlt case_000486_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000486_firstLine, OppPosRow]
  have case_000486_fixedSecond :
      FixedRow (SecondLineAt case_000486_support case_000486_rank.val hlt case_000486_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000486_secondLine, FixedRow]
  exact ⟨case_000486_rowFirst, case_000486_fixedSecond⟩

private theorem case_000486_existsRows :
    ExistsOppOneMinusVarFirstRows case_000486_rank.val case_000486_mask :=
  ⟨case_000486_support, case_000486_sourceAgrees, case_000486_rows⟩

private theorem case_000486_covered :
    RowPropertyParametricCovered case_000486_rank.val case_000486_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000486_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000487_rank : Fin numPairWords := ⟨185, by decide⟩
private def case_000487_mask : SignMask := ⟨29, by decide⟩
private def case_000487_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000487_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000487_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000487_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-52/9) }
private def case_000487_firstLine : StrictLin2 := { a := (-29/21), b := (-29/21), c := (-61/21) }
private def case_000487_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000487_rankWord :
    rankPairWord? case_000487_word = some case_000487_rank := by
  decide

private theorem case_000487_unrank :
    unrankPairWord case_000487_rank = case_000487_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000487_word case_000487_rank).1
    case_000487_rankWord |>.symm

private theorem case_000487_seqChoice :
    translationChoiceSeq case_000487_word case_000487_mask = case_000487_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000487_seqAtRank :
    translationSeqAtRankMask case_000487_rank case_000487_mask = case_000487_seq := by
  rw [translationSeqAtRankMask, case_000487_unrank]
  exact case_000487_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000487_bAtRank :
    translationBAtRankMask case_000487_rank case_000487_mask = case_000487_b := by
  rw [translationBAtRankMask, case_000487_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000487_b, case_000487_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000487_firstLine_eq :
    case_000487_support.firstLine case_000487_seq case_000487_b = case_000487_firstLine := by
  norm_num [case_000487_firstLine, case_000487_support, case_000487_seq, case_000487_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000487_secondLine_eq :
    case_000487_support.secondLine case_000487_seq case_000487_b = case_000487_secondLine := by
  norm_num [case_000487_secondLine, case_000487_support, case_000487_seq, case_000487_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000487_sourceAgrees :
    SourceAgrees case_000487_support case_000487_rank.val case_000487_mask := by
  intro hlt
  have hrank : (⟨case_000487_rank.val, hlt⟩ : Fin numPairWords) = case_000487_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000487_rank.val, hlt⟩ case_000487_mask =
        case_000487_seq := by
    simpa [hrank] using case_000487_seqAtRank
  simp [SourceChecks, hseq, case_000487_support,
    checkTranslationConstraintSource, case_000487_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000487_rows :
    EqEqPosVarFirstRows case_000487_support case_000487_rank.val case_000487_mask := by
  intro hlt
  have hrank : (⟨case_000487_rank.val, hlt⟩ : Fin numPairWords) = case_000487_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000487_rank.val, hlt⟩ case_000487_mask =
        case_000487_seq := by
    simpa [hrank] using case_000487_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000487_rank.val, hlt⟩ case_000487_mask =
        case_000487_b := by
    simpa [hrank] using case_000487_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000487_support case_000487_rank.val hlt
          case_000487_mask = case_000487_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000487_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000487_support case_000487_rank.val hlt
          case_000487_mask = case_000487_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000487_secondLine_eq]
  have case_000487_rowFirst :
      EqEqPosRow (FirstLineAt case_000487_support case_000487_rank.val hlt case_000487_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000487_firstLine, EqEqPosRow]
  have case_000487_fixedSecond :
      FixedRow (SecondLineAt case_000487_support case_000487_rank.val hlt case_000487_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000487_secondLine, FixedRow]
  exact ⟨case_000487_rowFirst, case_000487_fixedSecond⟩

private theorem case_000487_existsRows :
    ExistsEqEqPosVarFirstRows case_000487_rank.val case_000487_mask :=
  ⟨case_000487_support, case_000487_sourceAgrees, case_000487_rows⟩

private theorem case_000487_covered :
    RowPropertyParametricCovered case_000487_rank.val case_000487_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000487_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000488_rank : Fin numPairWords := ⟨185, by decide⟩
private def case_000488_mask : SignMask := ⟨31, by decide⟩
private def case_000488_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000488_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000488_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000488_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000488_firstLine : StrictLin2 := { a := (-29/39), b := (-29/39), c := (-17/3) }
private def case_000488_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000488_rankWord :
    rankPairWord? case_000488_word = some case_000488_rank := by
  decide

private theorem case_000488_unrank :
    unrankPairWord case_000488_rank = case_000488_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000488_word case_000488_rank).1
    case_000488_rankWord |>.symm

private theorem case_000488_seqChoice :
    translationChoiceSeq case_000488_word case_000488_mask = case_000488_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000488_seqAtRank :
    translationSeqAtRankMask case_000488_rank case_000488_mask = case_000488_seq := by
  rw [translationSeqAtRankMask, case_000488_unrank]
  exact case_000488_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000488_bAtRank :
    translationBAtRankMask case_000488_rank case_000488_mask = case_000488_b := by
  rw [translationBAtRankMask, case_000488_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000488_b, case_000488_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000488_firstLine_eq :
    case_000488_support.firstLine case_000488_seq case_000488_b = case_000488_firstLine := by
  norm_num [case_000488_firstLine, case_000488_support, case_000488_seq, case_000488_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000488_secondLine_eq :
    case_000488_support.secondLine case_000488_seq case_000488_b = case_000488_secondLine := by
  norm_num [case_000488_secondLine, case_000488_support, case_000488_seq, case_000488_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000488_sourceAgrees :
    SourceAgrees case_000488_support case_000488_rank.val case_000488_mask := by
  intro hlt
  have hrank : (⟨case_000488_rank.val, hlt⟩ : Fin numPairWords) = case_000488_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000488_rank.val, hlt⟩ case_000488_mask =
        case_000488_seq := by
    simpa [hrank] using case_000488_seqAtRank
  simp [SourceChecks, hseq, case_000488_support,
    checkTranslationConstraintSource, case_000488_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000488_rows :
    EqEqPosVarFirstRows case_000488_support case_000488_rank.val case_000488_mask := by
  intro hlt
  have hrank : (⟨case_000488_rank.val, hlt⟩ : Fin numPairWords) = case_000488_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000488_rank.val, hlt⟩ case_000488_mask =
        case_000488_seq := by
    simpa [hrank] using case_000488_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000488_rank.val, hlt⟩ case_000488_mask =
        case_000488_b := by
    simpa [hrank] using case_000488_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000488_support case_000488_rank.val hlt
          case_000488_mask = case_000488_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000488_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000488_support case_000488_rank.val hlt
          case_000488_mask = case_000488_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000488_secondLine_eq]
  have case_000488_rowFirst :
      EqEqPosRow (FirstLineAt case_000488_support case_000488_rank.val hlt case_000488_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000488_firstLine, EqEqPosRow]
  have case_000488_fixedSecond :
      FixedRow (SecondLineAt case_000488_support case_000488_rank.val hlt case_000488_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000488_secondLine, FixedRow]
  exact ⟨case_000488_rowFirst, case_000488_fixedSecond⟩

private theorem case_000488_existsRows :
    ExistsEqEqPosVarFirstRows case_000488_rank.val case_000488_mask :=
  ⟨case_000488_support, case_000488_sourceAgrees, case_000488_rows⟩

private theorem case_000488_covered :
    RowPropertyParametricCovered case_000488_rank.val case_000488_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000488_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000489_rank : Fin numPairWords := ⟨185, by decide⟩
private def case_000489_mask : SignMask := ⟨45, by decide⟩
private def case_000489_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000489_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000489_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000489_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-52/9) }
private def case_000489_firstLine : StrictLin2 := { a := (-10/21), b := (-10/21), c := (-4/7) }
private def case_000489_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000489_rankWord :
    rankPairWord? case_000489_word = some case_000489_rank := by
  decide

private theorem case_000489_unrank :
    unrankPairWord case_000489_rank = case_000489_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000489_word case_000489_rank).1
    case_000489_rankWord |>.symm

private theorem case_000489_seqChoice :
    translationChoiceSeq case_000489_word case_000489_mask = case_000489_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000489_seqAtRank :
    translationSeqAtRankMask case_000489_rank case_000489_mask = case_000489_seq := by
  rw [translationSeqAtRankMask, case_000489_unrank]
  exact case_000489_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000489_bAtRank :
    translationBAtRankMask case_000489_rank case_000489_mask = case_000489_b := by
  rw [translationBAtRankMask, case_000489_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000489_b, case_000489_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000489_firstLine_eq :
    case_000489_support.firstLine case_000489_seq case_000489_b = case_000489_firstLine := by
  norm_num [case_000489_firstLine, case_000489_support, case_000489_seq, case_000489_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000489_secondLine_eq :
    case_000489_support.secondLine case_000489_seq case_000489_b = case_000489_secondLine := by
  norm_num [case_000489_secondLine, case_000489_support, case_000489_seq, case_000489_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000489_sourceAgrees :
    SourceAgrees case_000489_support case_000489_rank.val case_000489_mask := by
  intro hlt
  have hrank : (⟨case_000489_rank.val, hlt⟩ : Fin numPairWords) = case_000489_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000489_rank.val, hlt⟩ case_000489_mask =
        case_000489_seq := by
    simpa [hrank] using case_000489_seqAtRank
  simp [SourceChecks, hseq, case_000489_support,
    checkTranslationConstraintSource, case_000489_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000489_rows :
    EqEqPosVarFirstRows case_000489_support case_000489_rank.val case_000489_mask := by
  intro hlt
  have hrank : (⟨case_000489_rank.val, hlt⟩ : Fin numPairWords) = case_000489_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000489_rank.val, hlt⟩ case_000489_mask =
        case_000489_seq := by
    simpa [hrank] using case_000489_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000489_rank.val, hlt⟩ case_000489_mask =
        case_000489_b := by
    simpa [hrank] using case_000489_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000489_support case_000489_rank.val hlt
          case_000489_mask = case_000489_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000489_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000489_support case_000489_rank.val hlt
          case_000489_mask = case_000489_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000489_secondLine_eq]
  have case_000489_rowFirst :
      EqEqPosRow (FirstLineAt case_000489_support case_000489_rank.val hlt case_000489_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000489_firstLine, EqEqPosRow]
  have case_000489_fixedSecond :
      FixedRow (SecondLineAt case_000489_support case_000489_rank.val hlt case_000489_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000489_secondLine, FixedRow]
  exact ⟨case_000489_rowFirst, case_000489_fixedSecond⟩

private theorem case_000489_existsRows :
    ExistsEqEqPosVarFirstRows case_000489_rank.val case_000489_mask :=
  ⟨case_000489_support, case_000489_sourceAgrees, case_000489_rows⟩

private theorem case_000489_covered :
    RowPropertyParametricCovered case_000489_rank.val case_000489_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000489_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000490_rank : Fin numPairWords := ⟨185, by decide⟩
private def case_000490_mask : SignMask := ⟨47, by decide⟩
private def case_000490_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000490_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000490_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000490_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000490_firstLine : StrictLin2 := { a := (-10/39), b := (-10/39), c := (-16/13) }
private def case_000490_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000490_rankWord :
    rankPairWord? case_000490_word = some case_000490_rank := by
  decide

private theorem case_000490_unrank :
    unrankPairWord case_000490_rank = case_000490_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000490_word case_000490_rank).1
    case_000490_rankWord |>.symm

private theorem case_000490_seqChoice :
    translationChoiceSeq case_000490_word case_000490_mask = case_000490_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000490_seqAtRank :
    translationSeqAtRankMask case_000490_rank case_000490_mask = case_000490_seq := by
  rw [translationSeqAtRankMask, case_000490_unrank]
  exact case_000490_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000490_bAtRank :
    translationBAtRankMask case_000490_rank case_000490_mask = case_000490_b := by
  rw [translationBAtRankMask, case_000490_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000490_b, case_000490_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000490_firstLine_eq :
    case_000490_support.firstLine case_000490_seq case_000490_b = case_000490_firstLine := by
  norm_num [case_000490_firstLine, case_000490_support, case_000490_seq, case_000490_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000490_secondLine_eq :
    case_000490_support.secondLine case_000490_seq case_000490_b = case_000490_secondLine := by
  norm_num [case_000490_secondLine, case_000490_support, case_000490_seq, case_000490_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000490_sourceAgrees :
    SourceAgrees case_000490_support case_000490_rank.val case_000490_mask := by
  intro hlt
  have hrank : (⟨case_000490_rank.val, hlt⟩ : Fin numPairWords) = case_000490_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000490_rank.val, hlt⟩ case_000490_mask =
        case_000490_seq := by
    simpa [hrank] using case_000490_seqAtRank
  simp [SourceChecks, hseq, case_000490_support,
    checkTranslationConstraintSource, case_000490_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000490_rows :
    EqEqPosVarFirstRows case_000490_support case_000490_rank.val case_000490_mask := by
  intro hlt
  have hrank : (⟨case_000490_rank.val, hlt⟩ : Fin numPairWords) = case_000490_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000490_rank.val, hlt⟩ case_000490_mask =
        case_000490_seq := by
    simpa [hrank] using case_000490_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000490_rank.val, hlt⟩ case_000490_mask =
        case_000490_b := by
    simpa [hrank] using case_000490_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000490_support case_000490_rank.val hlt
          case_000490_mask = case_000490_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000490_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000490_support case_000490_rank.val hlt
          case_000490_mask = case_000490_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000490_secondLine_eq]
  have case_000490_rowFirst :
      EqEqPosRow (FirstLineAt case_000490_support case_000490_rank.val hlt case_000490_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000490_firstLine, EqEqPosRow]
  have case_000490_fixedSecond :
      FixedRow (SecondLineAt case_000490_support case_000490_rank.val hlt case_000490_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000490_secondLine, FixedRow]
  exact ⟨case_000490_rowFirst, case_000490_fixedSecond⟩

private theorem case_000490_existsRows :
    ExistsEqEqPosVarFirstRows case_000490_rank.val case_000490_mask :=
  ⟨case_000490_support, case_000490_sourceAgrees, case_000490_rows⟩

private theorem case_000490_covered :
    RowPropertyParametricCovered case_000490_rank.val case_000490_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000490_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000491_rank : Fin numPairWords := ⟨185, by decide⟩
private def case_000491_mask : SignMask := ⟨61, by decide⟩
private def case_000491_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000491_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000491_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000491_b : Vec3 Rat := { x := (-140/27), y := (140/27), z := (-268/27) }
private def case_000491_firstLine : StrictLin2 := { a := (-35/3), b := (-35/3), c := (-163/3) }
private def case_000491_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000491_rankWord :
    rankPairWord? case_000491_word = some case_000491_rank := by
  decide

private theorem case_000491_unrank :
    unrankPairWord case_000491_rank = case_000491_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000491_word case_000491_rank).1
    case_000491_rankWord |>.symm

private theorem case_000491_seqChoice :
    translationChoiceSeq case_000491_word case_000491_mask = case_000491_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000491_seqAtRank :
    translationSeqAtRankMask case_000491_rank case_000491_mask = case_000491_seq := by
  rw [translationSeqAtRankMask, case_000491_unrank]
  exact case_000491_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000491_bAtRank :
    translationBAtRankMask case_000491_rank case_000491_mask = case_000491_b := by
  rw [translationBAtRankMask, case_000491_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000491_b, case_000491_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000491_firstLine_eq :
    case_000491_support.firstLine case_000491_seq case_000491_b = case_000491_firstLine := by
  norm_num [case_000491_firstLine, case_000491_support, case_000491_seq, case_000491_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000491_secondLine_eq :
    case_000491_support.secondLine case_000491_seq case_000491_b = case_000491_secondLine := by
  norm_num [case_000491_secondLine, case_000491_support, case_000491_seq, case_000491_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000491_sourceAgrees :
    SourceAgrees case_000491_support case_000491_rank.val case_000491_mask := by
  intro hlt
  have hrank : (⟨case_000491_rank.val, hlt⟩ : Fin numPairWords) = case_000491_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000491_rank.val, hlt⟩ case_000491_mask =
        case_000491_seq := by
    simpa [hrank] using case_000491_seqAtRank
  simp [SourceChecks, hseq, case_000491_support,
    checkTranslationConstraintSource, case_000491_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000491_rows :
    EqEqPosVarFirstRows case_000491_support case_000491_rank.val case_000491_mask := by
  intro hlt
  have hrank : (⟨case_000491_rank.val, hlt⟩ : Fin numPairWords) = case_000491_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000491_rank.val, hlt⟩ case_000491_mask =
        case_000491_seq := by
    simpa [hrank] using case_000491_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000491_rank.val, hlt⟩ case_000491_mask =
        case_000491_b := by
    simpa [hrank] using case_000491_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000491_support case_000491_rank.val hlt
          case_000491_mask = case_000491_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000491_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000491_support case_000491_rank.val hlt
          case_000491_mask = case_000491_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000491_secondLine_eq]
  have case_000491_rowFirst :
      EqEqPosRow (FirstLineAt case_000491_support case_000491_rank.val hlt case_000491_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000491_firstLine, EqEqPosRow]
  have case_000491_fixedSecond :
      FixedRow (SecondLineAt case_000491_support case_000491_rank.val hlt case_000491_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000491_secondLine, FixedRow]
  exact ⟨case_000491_rowFirst, case_000491_fixedSecond⟩

private theorem case_000491_existsRows :
    ExistsEqEqPosVarFirstRows case_000491_rank.val case_000491_mask :=
  ⟨case_000491_support, case_000491_sourceAgrees, case_000491_rows⟩

private theorem case_000491_covered :
    RowPropertyParametricCovered case_000491_rank.val case_000491_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000491_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000492_rank : Fin numPairWords := ⟨209, by decide⟩
private def case_000492_mask : SignMask := ⟨7, by decide⟩
private def case_000492_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000492_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000492_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000492_b : Vec3 Rat := { x := (-580/81), y := (868/81), z := (1348/81) }
private def case_000492_firstLine : StrictLin2 := { a := (-290/699), b := (-290/699), c := (-176/233) }
private def case_000492_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000492_rankWord :
    rankPairWord? case_000492_word = some case_000492_rank := by
  decide

private theorem case_000492_unrank :
    unrankPairWord case_000492_rank = case_000492_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000492_word case_000492_rank).1
    case_000492_rankWord |>.symm

private theorem case_000492_seqChoice :
    translationChoiceSeq case_000492_word case_000492_mask = case_000492_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000492_seqAtRank :
    translationSeqAtRankMask case_000492_rank case_000492_mask = case_000492_seq := by
  rw [translationSeqAtRankMask, case_000492_unrank]
  exact case_000492_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000492_bAtRank :
    translationBAtRankMask case_000492_rank case_000492_mask = case_000492_b := by
  rw [translationBAtRankMask, case_000492_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000492_b, case_000492_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000492_firstLine_eq :
    case_000492_support.firstLine case_000492_seq case_000492_b = case_000492_firstLine := by
  norm_num [case_000492_firstLine, case_000492_support, case_000492_seq, case_000492_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000492_secondLine_eq :
    case_000492_support.secondLine case_000492_seq case_000492_b = case_000492_secondLine := by
  norm_num [case_000492_secondLine, case_000492_support, case_000492_seq, case_000492_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000492_sourceAgrees :
    SourceAgrees case_000492_support case_000492_rank.val case_000492_mask := by
  intro hlt
  have hrank : (⟨case_000492_rank.val, hlt⟩ : Fin numPairWords) = case_000492_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000492_rank.val, hlt⟩ case_000492_mask =
        case_000492_seq := by
    simpa [hrank] using case_000492_seqAtRank
  simp [SourceChecks, hseq, case_000492_support,
    checkTranslationConstraintSource, case_000492_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000492_rows :
    EqEqPosVarFirstRows case_000492_support case_000492_rank.val case_000492_mask := by
  intro hlt
  have hrank : (⟨case_000492_rank.val, hlt⟩ : Fin numPairWords) = case_000492_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000492_rank.val, hlt⟩ case_000492_mask =
        case_000492_seq := by
    simpa [hrank] using case_000492_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000492_rank.val, hlt⟩ case_000492_mask =
        case_000492_b := by
    simpa [hrank] using case_000492_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000492_support case_000492_rank.val hlt
          case_000492_mask = case_000492_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000492_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000492_support case_000492_rank.val hlt
          case_000492_mask = case_000492_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000492_secondLine_eq]
  have case_000492_rowFirst :
      EqEqPosRow (FirstLineAt case_000492_support case_000492_rank.val hlt case_000492_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000492_firstLine, EqEqPosRow]
  have case_000492_fixedSecond :
      FixedRow (SecondLineAt case_000492_support case_000492_rank.val hlt case_000492_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000492_secondLine, FixedRow]
  exact ⟨case_000492_rowFirst, case_000492_fixedSecond⟩

private theorem case_000492_existsRows :
    ExistsEqEqPosVarFirstRows case_000492_rank.val case_000492_mask :=
  ⟨case_000492_support, case_000492_sourceAgrees, case_000492_rows⟩

private theorem case_000492_covered :
    RowPropertyParametricCovered case_000492_rank.val case_000492_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000492_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000493_rank : Fin numPairWords := ⟨209, by decide⟩
private def case_000493_mask : SignMask := ⟨13, by decide⟩
private def case_000493_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000493_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000493_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000493_b : Vec3 Rat := { x := (-724/81), y := (1012/81), z := (-20/81) }
private def case_000493_firstLine : StrictLin2 := { a := 1, b := -1, c := (-335/181) }
private def case_000493_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000493_rankWord :
    rankPairWord? case_000493_word = some case_000493_rank := by
  decide

private theorem case_000493_unrank :
    unrankPairWord case_000493_rank = case_000493_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000493_word case_000493_rank).1
    case_000493_rankWord |>.symm

private theorem case_000493_seqChoice :
    translationChoiceSeq case_000493_word case_000493_mask = case_000493_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000493_seqAtRank :
    translationSeqAtRankMask case_000493_rank case_000493_mask = case_000493_seq := by
  rw [translationSeqAtRankMask, case_000493_unrank]
  exact case_000493_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000493_bAtRank :
    translationBAtRankMask case_000493_rank case_000493_mask = case_000493_b := by
  rw [translationBAtRankMask, case_000493_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000493_b, case_000493_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000493_firstLine_eq :
    case_000493_support.firstLine case_000493_seq case_000493_b = case_000493_firstLine := by
  norm_num [case_000493_firstLine, case_000493_support, case_000493_seq, case_000493_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000493_secondLine_eq :
    case_000493_support.secondLine case_000493_seq case_000493_b = case_000493_secondLine := by
  norm_num [case_000493_secondLine, case_000493_support, case_000493_seq, case_000493_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000493_sourceAgrees :
    SourceAgrees case_000493_support case_000493_rank.val case_000493_mask := by
  intro hlt
  have hrank : (⟨case_000493_rank.val, hlt⟩ : Fin numPairWords) = case_000493_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000493_rank.val, hlt⟩ case_000493_mask =
        case_000493_seq := by
    simpa [hrank] using case_000493_seqAtRank
  simp [SourceChecks, hseq, case_000493_support,
    checkTranslationConstraintSource, case_000493_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000493_rows :
    OppMinusOneVarFirstRows case_000493_support case_000493_rank.val case_000493_mask := by
  intro hlt
  have hrank : (⟨case_000493_rank.val, hlt⟩ : Fin numPairWords) = case_000493_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000493_rank.val, hlt⟩ case_000493_mask =
        case_000493_seq := by
    simpa [hrank] using case_000493_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000493_rank.val, hlt⟩ case_000493_mask =
        case_000493_b := by
    simpa [hrank] using case_000493_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000493_support case_000493_rank.val hlt
          case_000493_mask = case_000493_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000493_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000493_support case_000493_rank.val hlt
          case_000493_mask = case_000493_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000493_secondLine_eq]
  have case_000493_rowFirst :
      OppNegRow (FirstLineAt case_000493_support case_000493_rank.val hlt case_000493_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000493_firstLine, OppNegRow]
  have case_000493_fixedSecond :
      FixedRow (SecondLineAt case_000493_support case_000493_rank.val hlt case_000493_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000493_secondLine, FixedRow]
  exact ⟨case_000493_rowFirst, case_000493_fixedSecond⟩

private theorem case_000493_existsRows :
    ExistsOppMinusOneVarFirstRows case_000493_rank.val case_000493_mask :=
  ⟨case_000493_support, case_000493_sourceAgrees, case_000493_rows⟩

private theorem case_000493_covered :
    RowPropertyParametricCovered case_000493_rank.val case_000493_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000493_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000494_rank : Fin numPairWords := ⟨209, by decide⟩
private def case_000494_mask : SignMask := ⟨22, by decide⟩
private def case_000494_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000494_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000494_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000494_b : Vec3 Rat := { x := (-820/81), y := (-404/81), z := (1012/81) }
private def case_000494_firstLine : StrictLin2 := { a := -1, b := 1, c := (-503/205) }
private def case_000494_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000494_rankWord :
    rankPairWord? case_000494_word = some case_000494_rank := by
  decide

private theorem case_000494_unrank :
    unrankPairWord case_000494_rank = case_000494_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000494_word case_000494_rank).1
    case_000494_rankWord |>.symm

private theorem case_000494_seqChoice :
    translationChoiceSeq case_000494_word case_000494_mask = case_000494_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000494_seqAtRank :
    translationSeqAtRankMask case_000494_rank case_000494_mask = case_000494_seq := by
  rw [translationSeqAtRankMask, case_000494_unrank]
  exact case_000494_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000494_bAtRank :
    translationBAtRankMask case_000494_rank case_000494_mask = case_000494_b := by
  rw [translationBAtRankMask, case_000494_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000494_b, case_000494_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000494_firstLine_eq :
    case_000494_support.firstLine case_000494_seq case_000494_b = case_000494_firstLine := by
  norm_num [case_000494_firstLine, case_000494_support, case_000494_seq, case_000494_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000494_secondLine_eq :
    case_000494_support.secondLine case_000494_seq case_000494_b = case_000494_secondLine := by
  norm_num [case_000494_secondLine, case_000494_support, case_000494_seq, case_000494_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000494_sourceAgrees :
    SourceAgrees case_000494_support case_000494_rank.val case_000494_mask := by
  intro hlt
  have hrank : (⟨case_000494_rank.val, hlt⟩ : Fin numPairWords) = case_000494_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000494_rank.val, hlt⟩ case_000494_mask =
        case_000494_seq := by
    simpa [hrank] using case_000494_seqAtRank
  simp [SourceChecks, hseq, case_000494_support,
    checkTranslationConstraintSource, case_000494_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000494_rows :
    OppOneMinusVarFirstRows case_000494_support case_000494_rank.val case_000494_mask := by
  intro hlt
  have hrank : (⟨case_000494_rank.val, hlt⟩ : Fin numPairWords) = case_000494_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000494_rank.val, hlt⟩ case_000494_mask =
        case_000494_seq := by
    simpa [hrank] using case_000494_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000494_rank.val, hlt⟩ case_000494_mask =
        case_000494_b := by
    simpa [hrank] using case_000494_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000494_support case_000494_rank.val hlt
          case_000494_mask = case_000494_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000494_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000494_support case_000494_rank.val hlt
          case_000494_mask = case_000494_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000494_secondLine_eq]
  have case_000494_rowFirst :
      OppPosRow (FirstLineAt case_000494_support case_000494_rank.val hlt case_000494_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000494_firstLine, OppPosRow]
  have case_000494_fixedSecond :
      FixedRow (SecondLineAt case_000494_support case_000494_rank.val hlt case_000494_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000494_secondLine, FixedRow]
  exact ⟨case_000494_rowFirst, case_000494_fixedSecond⟩

private theorem case_000494_existsRows :
    ExistsOppOneMinusVarFirstRows case_000494_rank.val case_000494_mask :=
  ⟨case_000494_support, case_000494_sourceAgrees, case_000494_rows⟩

private theorem case_000494_covered :
    RowPropertyParametricCovered case_000494_rank.val case_000494_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000494_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000495_rank : Fin numPairWords := ⟨209, by decide⟩
private def case_000495_mask : SignMask := ⟨28, by decide⟩
private def case_000495_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000495_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000495_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000495_b : Vec3 Rat := { x := (-964/81), y := (-260/81), z := (-356/81) }
private def case_000495_firstLine : StrictLin2 := { a := (241/87), b := (241/87), c := (-299/29) }
private def case_000495_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000495_rankWord :
    rankPairWord? case_000495_word = some case_000495_rank := by
  decide

private theorem case_000495_unrank :
    unrankPairWord case_000495_rank = case_000495_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000495_word case_000495_rank).1
    case_000495_rankWord |>.symm

private theorem case_000495_seqChoice :
    translationChoiceSeq case_000495_word case_000495_mask = case_000495_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000495_seqAtRank :
    translationSeqAtRankMask case_000495_rank case_000495_mask = case_000495_seq := by
  rw [translationSeqAtRankMask, case_000495_unrank]
  exact case_000495_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000495_bAtRank :
    translationBAtRankMask case_000495_rank case_000495_mask = case_000495_b := by
  rw [translationBAtRankMask, case_000495_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000495_b, case_000495_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000495_firstLine_eq :
    case_000495_support.firstLine case_000495_seq case_000495_b = case_000495_firstLine := by
  norm_num [case_000495_firstLine, case_000495_support, case_000495_seq, case_000495_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000495_secondLine_eq :
    case_000495_support.secondLine case_000495_seq case_000495_b = case_000495_secondLine := by
  norm_num [case_000495_secondLine, case_000495_support, case_000495_seq, case_000495_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000495_sourceAgrees :
    SourceAgrees case_000495_support case_000495_rank.val case_000495_mask := by
  intro hlt
  have hrank : (⟨case_000495_rank.val, hlt⟩ : Fin numPairWords) = case_000495_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000495_rank.val, hlt⟩ case_000495_mask =
        case_000495_seq := by
    simpa [hrank] using case_000495_seqAtRank
  simp [SourceChecks, hseq, case_000495_support,
    checkTranslationConstraintSource, case_000495_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000495_rows :
    EqEqNegVarFirstRows case_000495_support case_000495_rank.val case_000495_mask := by
  intro hlt
  have hrank : (⟨case_000495_rank.val, hlt⟩ : Fin numPairWords) = case_000495_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000495_rank.val, hlt⟩ case_000495_mask =
        case_000495_seq := by
    simpa [hrank] using case_000495_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000495_rank.val, hlt⟩ case_000495_mask =
        case_000495_b := by
    simpa [hrank] using case_000495_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000495_support case_000495_rank.val hlt
          case_000495_mask = case_000495_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000495_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000495_support case_000495_rank.val hlt
          case_000495_mask = case_000495_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000495_secondLine_eq]
  have case_000495_rowFirst :
      EqEqNegRow (FirstLineAt case_000495_support case_000495_rank.val hlt case_000495_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000495_firstLine, EqEqNegRow]
  have case_000495_fixedSecond :
      FixedRow (SecondLineAt case_000495_support case_000495_rank.val hlt case_000495_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000495_secondLine, FixedRow]
  exact ⟨case_000495_rowFirst, case_000495_fixedSecond⟩

private theorem case_000495_existsRows :
    ExistsEqEqNegVarFirstRows case_000495_rank.val case_000495_mask :=
  ⟨case_000495_support, case_000495_sourceAgrees, case_000495_rows⟩

private theorem case_000495_covered :
    RowPropertyParametricCovered case_000495_rank.val case_000495_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000495_existsRows

/-- Bounded row-property quotient case `axis_a_only|rowProperty=f4b1c7cd7e6e1ebda46e9b2c6906006966949d1a40e2e8d9f378220f6b6981ee`. -/
private def case_000496_rank : Fin numPairWords := ⟨209, by decide⟩
private def case_000496_mask : SignMask := ⟨29, by decide⟩
private def case_000496_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000496_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def case_000496_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000496_b : Vec3 Rat := { x := (-964/81), y := (388/81), z := (-356/81) }
private def case_000496_firstLine : StrictLin2 := { a := (-241/97), b := 0, c := (-335/97) }
private def case_000496_secondLine : StrictLin2 := { a := (81/388), b := 0, c := (3807/93508) }

private theorem case_000496_rankWord :
    rankPairWord? case_000496_word = some case_000496_rank := by
  decide

private theorem case_000496_unrank :
    unrankPairWord case_000496_rank = case_000496_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000496_word case_000496_rank).1
    case_000496_rankWord |>.symm

private theorem case_000496_seqChoice :
    translationChoiceSeq case_000496_word case_000496_mask = case_000496_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000496_seqAtRank :
    translationSeqAtRankMask case_000496_rank case_000496_mask = case_000496_seq := by
  rw [translationSeqAtRankMask, case_000496_unrank]
  exact case_000496_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000496_bAtRank :
    translationBAtRankMask case_000496_rank case_000496_mask = case_000496_b := by
  rw [translationBAtRankMask, case_000496_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000496_b, case_000496_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000496_firstLine_eq :
    case_000496_support.firstLine case_000496_seq case_000496_b = case_000496_firstLine := by
  norm_num [case_000496_firstLine, case_000496_support, case_000496_seq, case_000496_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000496_secondLine_eq :
    case_000496_support.secondLine case_000496_seq case_000496_b = case_000496_secondLine := by
  norm_num [case_000496_secondLine, case_000496_support, case_000496_seq, case_000496_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000496_sourceAgrees :
    SourceAgrees case_000496_support case_000496_rank.val case_000496_mask := by
  intro hlt
  have hrank : (⟨case_000496_rank.val, hlt⟩ : Fin numPairWords) = case_000496_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000496_rank.val, hlt⟩ case_000496_mask =
        case_000496_seq := by
    simpa [hrank] using case_000496_seqAtRank
  simp [SourceChecks, hseq, case_000496_support,
    checkTranslationConstraintSource, case_000496_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000496_rows :
    AxisAOnlyRows case_000496_support case_000496_rank.val case_000496_mask := by
  intro hlt
  have hrank : (⟨case_000496_rank.val, hlt⟩ : Fin numPairWords) = case_000496_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000496_rank.val, hlt⟩ case_000496_mask =
        case_000496_seq := by
    simpa [hrank] using case_000496_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000496_rank.val, hlt⟩ case_000496_mask =
        case_000496_b := by
    simpa [hrank] using case_000496_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000496_support case_000496_rank.val hlt
          case_000496_mask = case_000496_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000496_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000496_support case_000496_rank.val hlt
          case_000496_mask = case_000496_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000496_secondLine_eq]
  have case_000496_firstBZero :
      (FirstLineAt case_000496_support case_000496_rank.val hlt case_000496_mask).b = 0 := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000496_firstLine]
  have case_000496_secondBZero :
      (SecondLineAt case_000496_support case_000496_rank.val hlt case_000496_mask).b = 0 := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000496_secondLine]
  have case_000496_aProductNeg :
      (FirstLineAt case_000496_support case_000496_rank.val hlt case_000496_mask).a *
          (SecondLineAt case_000496_support case_000496_rank.val hlt case_000496_mask).a < 0 := by
    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]
    norm_num [case_000496_firstLine, case_000496_secondLine]
  have case_000496_weightedCNonpos :
      (SupportPair.multipliersAt case_000496_support
          case_000496_rank.val hlt case_000496_mask).1 *
          (FirstLineAt case_000496_support case_000496_rank.val hlt case_000496_mask).c +
        (SupportPair.multipliersAt case_000496_support
          case_000496_rank.val hlt case_000496_mask).2 *
          (SecondLineAt case_000496_support case_000496_rank.val hlt case_000496_mask).c <= 0 := by
    rw [
SupportPair.multipliersAt, hseq, hb,
      TwoSourceFarkasSupport.multipliers, case_000496_firstLine_eq,
      case_000496_secondLine_eq, FirstLineAt, SecondLineAt, hfirst, hsecond
    ]
    norm_num [
case_000496_firstLine, case_000496_secondLine,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative
    ]
  exact ⟨case_000496_firstBZero, case_000496_secondBZero,
    case_000496_aProductNeg, case_000496_weightedCNonpos⟩

private theorem case_000496_existsRows :
    ExistsAxisAOnlyRows case_000496_rank.val case_000496_mask :=
  ⟨case_000496_support, case_000496_sourceAgrees, case_000496_rows⟩

private theorem case_000496_covered :
    RowPropertyParametricCovered case_000496_rank.val case_000496_mask :=
  RowPropertyParametricCovered.axisAOnly case_000496_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000497_rank : Fin numPairWords := ⟨209, by decide⟩
private def case_000497_mask : SignMask := ⟨45, by decide⟩
private def case_000497_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000497_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000497_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000497_b : Vec3 Rat := { x := (-260/81), y := (836/81), z := (-580/81) }
private def case_000497_firstLine : StrictLin2 := { a := 1, b := -1, c := (-643/65) }
private def case_000497_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000497_rankWord :
    rankPairWord? case_000497_word = some case_000497_rank := by
  decide

private theorem case_000497_unrank :
    unrankPairWord case_000497_rank = case_000497_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000497_word case_000497_rank).1
    case_000497_rankWord |>.symm

private theorem case_000497_seqChoice :
    translationChoiceSeq case_000497_word case_000497_mask = case_000497_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000497_seqAtRank :
    translationSeqAtRankMask case_000497_rank case_000497_mask = case_000497_seq := by
  rw [translationSeqAtRankMask, case_000497_unrank]
  exact case_000497_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000497_bAtRank :
    translationBAtRankMask case_000497_rank case_000497_mask = case_000497_b := by
  rw [translationBAtRankMask, case_000497_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000497_b, case_000497_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000497_firstLine_eq :
    case_000497_support.firstLine case_000497_seq case_000497_b = case_000497_firstLine := by
  norm_num [case_000497_firstLine, case_000497_support, case_000497_seq, case_000497_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000497_secondLine_eq :
    case_000497_support.secondLine case_000497_seq case_000497_b = case_000497_secondLine := by
  norm_num [case_000497_secondLine, case_000497_support, case_000497_seq, case_000497_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000497_sourceAgrees :
    SourceAgrees case_000497_support case_000497_rank.val case_000497_mask := by
  intro hlt
  have hrank : (⟨case_000497_rank.val, hlt⟩ : Fin numPairWords) = case_000497_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000497_rank.val, hlt⟩ case_000497_mask =
        case_000497_seq := by
    simpa [hrank] using case_000497_seqAtRank
  simp [SourceChecks, hseq, case_000497_support,
    checkTranslationConstraintSource, case_000497_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000497_rows :
    OppMinusOneVarFirstRows case_000497_support case_000497_rank.val case_000497_mask := by
  intro hlt
  have hrank : (⟨case_000497_rank.val, hlt⟩ : Fin numPairWords) = case_000497_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000497_rank.val, hlt⟩ case_000497_mask =
        case_000497_seq := by
    simpa [hrank] using case_000497_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000497_rank.val, hlt⟩ case_000497_mask =
        case_000497_b := by
    simpa [hrank] using case_000497_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000497_support case_000497_rank.val hlt
          case_000497_mask = case_000497_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000497_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000497_support case_000497_rank.val hlt
          case_000497_mask = case_000497_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000497_secondLine_eq]
  have case_000497_rowFirst :
      OppNegRow (FirstLineAt case_000497_support case_000497_rank.val hlt case_000497_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000497_firstLine, OppNegRow]
  have case_000497_fixedSecond :
      FixedRow (SecondLineAt case_000497_support case_000497_rank.val hlt case_000497_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000497_secondLine, FixedRow]
  exact ⟨case_000497_rowFirst, case_000497_fixedSecond⟩

private theorem case_000497_existsRows :
    ExistsOppMinusOneVarFirstRows case_000497_rank.val case_000497_mask :=
  ⟨case_000497_support, case_000497_sourceAgrees, case_000497_rows⟩

private theorem case_000497_covered :
    RowPropertyParametricCovered case_000497_rank.val case_000497_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000497_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000498_rank : Fin numPairWords := ⟨209, by decide⟩
private def case_000498_mask : SignMask := ⟨56, by decide⟩
private def case_000498_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩
private def case_000498_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000498_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000498_b : Vec3 Rat := { x := (-68/81), y := (-868/81), z := (-1348/81) }
private def case_000498_firstLine : StrictLin2 := { a := -1, b := -1, c := (-1091/17) }
private def case_000498_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000498_rankWord :
    rankPairWord? case_000498_word = some case_000498_rank := by
  decide

private theorem case_000498_unrank :
    unrankPairWord case_000498_rank = case_000498_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000498_word case_000498_rank).1
    case_000498_rankWord |>.symm

private theorem case_000498_seqChoice :
    translationChoiceSeq case_000498_word case_000498_mask = case_000498_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000498_seqAtRank :
    translationSeqAtRankMask case_000498_rank case_000498_mask = case_000498_seq := by
  rw [translationSeqAtRankMask, case_000498_unrank]
  exact case_000498_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000498_bAtRank :
    translationBAtRankMask case_000498_rank case_000498_mask = case_000498_b := by
  rw [translationBAtRankMask, case_000498_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000498_b, case_000498_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000498_firstLine_eq :
    case_000498_support.firstLine case_000498_seq case_000498_b = case_000498_firstLine := by
  norm_num [case_000498_firstLine, case_000498_support, case_000498_seq, case_000498_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000498_secondLine_eq :
    case_000498_support.secondLine case_000498_seq case_000498_b = case_000498_secondLine := by
  norm_num [case_000498_secondLine, case_000498_support, case_000498_seq, case_000498_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000498_sourceAgrees :
    SourceAgrees case_000498_support case_000498_rank.val case_000498_mask := by
  intro hlt
  have hrank : (⟨case_000498_rank.val, hlt⟩ : Fin numPairWords) = case_000498_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000498_rank.val, hlt⟩ case_000498_mask =
        case_000498_seq := by
    simpa [hrank] using case_000498_seqAtRank
  simp [SourceChecks, hseq, case_000498_support,
    checkTranslationConstraintSource, case_000498_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000498_rows :
    EqEqPosVarFirstRows case_000498_support case_000498_rank.val case_000498_mask := by
  intro hlt
  have hrank : (⟨case_000498_rank.val, hlt⟩ : Fin numPairWords) = case_000498_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000498_rank.val, hlt⟩ case_000498_mask =
        case_000498_seq := by
    simpa [hrank] using case_000498_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000498_rank.val, hlt⟩ case_000498_mask =
        case_000498_b := by
    simpa [hrank] using case_000498_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000498_support case_000498_rank.val hlt
          case_000498_mask = case_000498_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000498_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000498_support case_000498_rank.val hlt
          case_000498_mask = case_000498_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000498_secondLine_eq]
  have case_000498_rowFirst :
      EqEqPosRow (FirstLineAt case_000498_support case_000498_rank.val hlt case_000498_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000498_firstLine, EqEqPosRow]
  have case_000498_fixedSecond :
      FixedRow (SecondLineAt case_000498_support case_000498_rank.val hlt case_000498_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000498_secondLine, FixedRow]
  exact ⟨case_000498_rowFirst, case_000498_fixedSecond⟩

private theorem case_000498_existsRows :
    ExistsEqEqPosVarFirstRows case_000498_rank.val case_000498_mask :=
  ⟨case_000498_support, case_000498_sourceAgrees, case_000498_rows⟩

private theorem case_000498_covered :
    RowPropertyParametricCovered case_000498_rank.val case_000498_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000498_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000499_rank : Fin numPairWords := ⟨251, by decide⟩
private def case_000499_mask : SignMask := ⟨6, by decide⟩
private def case_000499_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000499_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000499_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000499_b : Vec3 Rat := { x := (-868/81), y := (-68/81), z := (1348/81) }
private def case_000499_firstLine : StrictLin2 := { a := -1, b := 1, c := (-491/217) }
private def case_000499_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000499_rankWord :
    rankPairWord? case_000499_word = some case_000499_rank := by
  decide

private theorem case_000499_unrank :
    unrankPairWord case_000499_rank = case_000499_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000499_word case_000499_rank).1
    case_000499_rankWord |>.symm

private theorem case_000499_seqChoice :
    translationChoiceSeq case_000499_word case_000499_mask = case_000499_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000499_seqAtRank :
    translationSeqAtRankMask case_000499_rank case_000499_mask = case_000499_seq := by
  rw [translationSeqAtRankMask, case_000499_unrank]
  exact case_000499_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000499_bAtRank :
    translationBAtRankMask case_000499_rank case_000499_mask = case_000499_b := by
  rw [translationBAtRankMask, case_000499_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000499_b, case_000499_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000499_firstLine_eq :
    case_000499_support.firstLine case_000499_seq case_000499_b = case_000499_firstLine := by
  norm_num [case_000499_firstLine, case_000499_support, case_000499_seq, case_000499_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000499_secondLine_eq :
    case_000499_support.secondLine case_000499_seq case_000499_b = case_000499_secondLine := by
  norm_num [case_000499_secondLine, case_000499_support, case_000499_seq, case_000499_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000499_sourceAgrees :
    SourceAgrees case_000499_support case_000499_rank.val case_000499_mask := by
  intro hlt
  have hrank : (⟨case_000499_rank.val, hlt⟩ : Fin numPairWords) = case_000499_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000499_rank.val, hlt⟩ case_000499_mask =
        case_000499_seq := by
    simpa [hrank] using case_000499_seqAtRank
  simp [SourceChecks, hseq, case_000499_support,
    checkTranslationConstraintSource, case_000499_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000499_rows :
    OppOneMinusVarFirstRows case_000499_support case_000499_rank.val case_000499_mask := by
  intro hlt
  have hrank : (⟨case_000499_rank.val, hlt⟩ : Fin numPairWords) = case_000499_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000499_rank.val, hlt⟩ case_000499_mask =
        case_000499_seq := by
    simpa [hrank] using case_000499_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000499_rank.val, hlt⟩ case_000499_mask =
        case_000499_b := by
    simpa [hrank] using case_000499_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000499_support case_000499_rank.val hlt
          case_000499_mask = case_000499_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000499_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000499_support case_000499_rank.val hlt
          case_000499_mask = case_000499_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000499_secondLine_eq]
  have case_000499_rowFirst :
      OppPosRow (FirstLineAt case_000499_support case_000499_rank.val hlt case_000499_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000499_firstLine, OppPosRow]
  have case_000499_fixedSecond :
      FixedRow (SecondLineAt case_000499_support case_000499_rank.val hlt case_000499_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000499_secondLine, FixedRow]
  exact ⟨case_000499_rowFirst, case_000499_fixedSecond⟩

private theorem case_000499_existsRows :
    ExistsOppOneMinusVarFirstRows case_000499_rank.val case_000499_mask :=
  ⟨case_000499_support, case_000499_sourceAgrees, case_000499_rows⟩

private theorem case_000499_covered :
    RowPropertyParametricCovered case_000499_rank.val case_000499_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000499_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000500_rank : Fin numPairWords := ⟨251, by decide⟩
private def case_000500_mask : SignMask := ⟨7, by decide⟩
private def case_000500_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000500_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000500_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmmm
private def case_000500_b : Vec3 Rat := { x := (-868/81), y := (580/81), z := (1348/81) }
private def case_000500_firstLine : StrictLin2 := { a := 1, b := 1, c := (-747/217) }
private def case_000500_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000500_rankWord :
    rankPairWord? case_000500_word = some case_000500_rank := by
  decide

private theorem case_000500_unrank :
    unrankPairWord case_000500_rank = case_000500_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000500_word case_000500_rank).1
    case_000500_rankWord |>.symm

private theorem case_000500_seqChoice :
    translationChoiceSeq case_000500_word case_000500_mask = case_000500_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000500_seqAtRank :
    translationSeqAtRankMask case_000500_rank case_000500_mask = case_000500_seq := by
  rw [translationSeqAtRankMask, case_000500_unrank]
  exact case_000500_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000500_bAtRank :
    translationBAtRankMask case_000500_rank case_000500_mask = case_000500_b := by
  rw [translationBAtRankMask, case_000500_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000500_b, case_000500_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000500_firstLine_eq :
    case_000500_support.firstLine case_000500_seq case_000500_b = case_000500_firstLine := by
  norm_num [case_000500_firstLine, case_000500_support, case_000500_seq, case_000500_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000500_secondLine_eq :
    case_000500_support.secondLine case_000500_seq case_000500_b = case_000500_secondLine := by
  norm_num [case_000500_secondLine, case_000500_support, case_000500_seq, case_000500_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000500_sourceAgrees :
    SourceAgrees case_000500_support case_000500_rank.val case_000500_mask := by
  intro hlt
  have hrank : (⟨case_000500_rank.val, hlt⟩ : Fin numPairWords) = case_000500_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000500_rank.val, hlt⟩ case_000500_mask =
        case_000500_seq := by
    simpa [hrank] using case_000500_seqAtRank
  simp [SourceChecks, hseq, case_000500_support,
    checkTranslationConstraintSource, case_000500_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000500_rows :
    EqEqNegVarFirstRows case_000500_support case_000500_rank.val case_000500_mask := by
  intro hlt
  have hrank : (⟨case_000500_rank.val, hlt⟩ : Fin numPairWords) = case_000500_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000500_rank.val, hlt⟩ case_000500_mask =
        case_000500_seq := by
    simpa [hrank] using case_000500_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000500_rank.val, hlt⟩ case_000500_mask =
        case_000500_b := by
    simpa [hrank] using case_000500_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000500_support case_000500_rank.val hlt
          case_000500_mask = case_000500_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000500_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000500_support case_000500_rank.val hlt
          case_000500_mask = case_000500_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000500_secondLine_eq]
  have case_000500_rowFirst :
      EqEqNegRow (FirstLineAt case_000500_support case_000500_rank.val hlt case_000500_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000500_firstLine, EqEqNegRow]
  have case_000500_fixedSecond :
      FixedRow (SecondLineAt case_000500_support case_000500_rank.val hlt case_000500_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000500_secondLine, FixedRow]
  exact ⟨case_000500_rowFirst, case_000500_fixedSecond⟩

private theorem case_000500_existsRows :
    ExistsEqEqNegVarFirstRows case_000500_rank.val case_000500_mask :=
  ⟨case_000500_support, case_000500_sourceAgrees, case_000500_rows⟩

private theorem case_000500_covered :
    RowPropertyParametricCovered case_000500_rank.val case_000500_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000500_existsRows

/-- Bounded row-property quotient case `axis_a_only|rowProperty=99f0182e8e5325302f13d261b30a448ebe459a6be20e38295401a040d484dc96`. -/
private def case_000501_rank : Fin numPairWords := ⟨251, by decide⟩
private def case_000501_mask : SignMask := ⟨13, by decide⟩
private def case_000501_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000501_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def case_000501_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000501_b : Vec3 Rat := { x := (-1012/81), y := (724/81), z := (-20/81) }
private def case_000501_firstLine : StrictLin2 := { a := (-253/181), b := 0, c := (-35/181) }
private def case_000501_secondLine : StrictLin2 := { a := (81/724), b := 0, c := (-8829/183172) }

private theorem case_000501_rankWord :
    rankPairWord? case_000501_word = some case_000501_rank := by
  decide

private theorem case_000501_unrank :
    unrankPairWord case_000501_rank = case_000501_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000501_word case_000501_rank).1
    case_000501_rankWord |>.symm

private theorem case_000501_seqChoice :
    translationChoiceSeq case_000501_word case_000501_mask = case_000501_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000501_seqAtRank :
    translationSeqAtRankMask case_000501_rank case_000501_mask = case_000501_seq := by
  rw [translationSeqAtRankMask, case_000501_unrank]
  exact case_000501_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000501_bAtRank :
    translationBAtRankMask case_000501_rank case_000501_mask = case_000501_b := by
  rw [translationBAtRankMask, case_000501_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000501_b, case_000501_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000501_firstLine_eq :
    case_000501_support.firstLine case_000501_seq case_000501_b = case_000501_firstLine := by
  norm_num [case_000501_firstLine, case_000501_support, case_000501_seq, case_000501_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000501_secondLine_eq :
    case_000501_support.secondLine case_000501_seq case_000501_b = case_000501_secondLine := by
  norm_num [case_000501_secondLine, case_000501_support, case_000501_seq, case_000501_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000501_sourceAgrees :
    SourceAgrees case_000501_support case_000501_rank.val case_000501_mask := by
  intro hlt
  have hrank : (⟨case_000501_rank.val, hlt⟩ : Fin numPairWords) = case_000501_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000501_rank.val, hlt⟩ case_000501_mask =
        case_000501_seq := by
    simpa [hrank] using case_000501_seqAtRank
  simp [SourceChecks, hseq, case_000501_support,
    checkTranslationConstraintSource, case_000501_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000501_rows :
    AxisAOnlyRows case_000501_support case_000501_rank.val case_000501_mask := by
  intro hlt
  have hrank : (⟨case_000501_rank.val, hlt⟩ : Fin numPairWords) = case_000501_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000501_rank.val, hlt⟩ case_000501_mask =
        case_000501_seq := by
    simpa [hrank] using case_000501_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000501_rank.val, hlt⟩ case_000501_mask =
        case_000501_b := by
    simpa [hrank] using case_000501_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000501_support case_000501_rank.val hlt
          case_000501_mask = case_000501_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000501_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000501_support case_000501_rank.val hlt
          case_000501_mask = case_000501_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000501_secondLine_eq]
  have case_000501_firstBZero :
      (FirstLineAt case_000501_support case_000501_rank.val hlt case_000501_mask).b = 0 := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000501_firstLine]
  have case_000501_secondBZero :
      (SecondLineAt case_000501_support case_000501_rank.val hlt case_000501_mask).b = 0 := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000501_secondLine]
  have case_000501_aProductNeg :
      (FirstLineAt case_000501_support case_000501_rank.val hlt case_000501_mask).a *
          (SecondLineAt case_000501_support case_000501_rank.val hlt case_000501_mask).a < 0 := by
    rw [FirstLineAt, SecondLineAt, hfirst, hsecond]
    norm_num [case_000501_firstLine, case_000501_secondLine]
  have case_000501_weightedCNonpos :
      (SupportPair.multipliersAt case_000501_support
          case_000501_rank.val hlt case_000501_mask).1 *
          (FirstLineAt case_000501_support case_000501_rank.val hlt case_000501_mask).c +
        (SupportPair.multipliersAt case_000501_support
          case_000501_rank.val hlt case_000501_mask).2 *
          (SecondLineAt case_000501_support case_000501_rank.val hlt case_000501_mask).c <= 0 := by
    rw [
SupportPair.multipliersAt, hseq, hb,
      TwoSourceFarkasSupport.multipliers, case_000501_firstLine_eq,
      case_000501_secondLine_eq, FirstLineAt, SecondLineAt, hfirst, hsecond
    ]
    norm_num [
case_000501_firstLine, case_000501_secondLine,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative
    ]
  exact ⟨case_000501_firstBZero, case_000501_secondBZero,
    case_000501_aProductNeg, case_000501_weightedCNonpos⟩

private theorem case_000501_existsRows :
    ExistsAxisAOnlyRows case_000501_rank.val case_000501_mask :=
  ⟨case_000501_support, case_000501_sourceAgrees, case_000501_rows⟩

private theorem case_000501_covered :
    RowPropertyParametricCovered case_000501_rank.val case_000501_mask :=
  RowPropertyParametricCovered.axisAOnly case_000501_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000502_rank : Fin numPairWords := ⟨251, by decide⟩
private def case_000502_mask : SignMask := ⟨18, by decide⟩
private def case_000502_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000502_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000502_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tppp
private def case_000502_b : Vec3 Rat := { x := (-260/81), y := (-964/81), z := (356/81) }
private def case_000502_firstLine : StrictLin2 := { a := -1, b := -1, c := (-239/65) }
private def case_000502_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000502_rankWord :
    rankPairWord? case_000502_word = some case_000502_rank := by
  decide

private theorem case_000502_unrank :
    unrankPairWord case_000502_rank = case_000502_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000502_word case_000502_rank).1
    case_000502_rankWord |>.symm

private theorem case_000502_seqChoice :
    translationChoiceSeq case_000502_word case_000502_mask = case_000502_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000502_seqAtRank :
    translationSeqAtRankMask case_000502_rank case_000502_mask = case_000502_seq := by
  rw [translationSeqAtRankMask, case_000502_unrank]
  exact case_000502_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000502_bAtRank :
    translationBAtRankMask case_000502_rank case_000502_mask = case_000502_b := by
  rw [translationBAtRankMask, case_000502_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000502_b, case_000502_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000502_firstLine_eq :
    case_000502_support.firstLine case_000502_seq case_000502_b = case_000502_firstLine := by
  norm_num [case_000502_firstLine, case_000502_support, case_000502_seq, case_000502_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000502_secondLine_eq :
    case_000502_support.secondLine case_000502_seq case_000502_b = case_000502_secondLine := by
  norm_num [case_000502_secondLine, case_000502_support, case_000502_seq, case_000502_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000502_sourceAgrees :
    SourceAgrees case_000502_support case_000502_rank.val case_000502_mask := by
  intro hlt
  have hrank : (⟨case_000502_rank.val, hlt⟩ : Fin numPairWords) = case_000502_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000502_rank.val, hlt⟩ case_000502_mask =
        case_000502_seq := by
    simpa [hrank] using case_000502_seqAtRank
  simp [SourceChecks, hseq, case_000502_support,
    checkTranslationConstraintSource, case_000502_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000502_rows :
    EqEqPosVarFirstRows case_000502_support case_000502_rank.val case_000502_mask := by
  intro hlt
  have hrank : (⟨case_000502_rank.val, hlt⟩ : Fin numPairWords) = case_000502_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000502_rank.val, hlt⟩ case_000502_mask =
        case_000502_seq := by
    simpa [hrank] using case_000502_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000502_rank.val, hlt⟩ case_000502_mask =
        case_000502_b := by
    simpa [hrank] using case_000502_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000502_support case_000502_rank.val hlt
          case_000502_mask = case_000502_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000502_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000502_support case_000502_rank.val hlt
          case_000502_mask = case_000502_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000502_secondLine_eq]
  have case_000502_rowFirst :
      EqEqPosRow (FirstLineAt case_000502_support case_000502_rank.val hlt case_000502_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000502_firstLine, EqEqPosRow]
  have case_000502_fixedSecond :
      FixedRow (SecondLineAt case_000502_support case_000502_rank.val hlt case_000502_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000502_secondLine, FixedRow]
  exact ⟨case_000502_rowFirst, case_000502_fixedSecond⟩

private theorem case_000502_existsRows :
    ExistsEqEqPosVarFirstRows case_000502_rank.val case_000502_mask :=
  ⟨case_000502_support, case_000502_sourceAgrees, case_000502_rows⟩

private theorem case_000502_covered :
    RowPropertyParametricCovered case_000502_rank.val case_000502_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000502_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000503_rank : Fin numPairWords := ⟨251, by decide⟩
private def case_000503_mask : SignMask := ⟨24, by decide⟩
private def case_000503_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000503_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000503_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tppp
private def case_000503_b : Vec3 Rat := { x := (-404/81), y := (-820/81), z := (-1012/81) }
private def case_000503_firstLine : StrictLin2 := { a := -1, b := -1, c := (-815/101) }
private def case_000503_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000503_rankWord :
    rankPairWord? case_000503_word = some case_000503_rank := by
  decide

private theorem case_000503_unrank :
    unrankPairWord case_000503_rank = case_000503_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000503_word case_000503_rank).1
    case_000503_rankWord |>.symm

private theorem case_000503_seqChoice :
    translationChoiceSeq case_000503_word case_000503_mask = case_000503_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000503_seqAtRank :
    translationSeqAtRankMask case_000503_rank case_000503_mask = case_000503_seq := by
  rw [translationSeqAtRankMask, case_000503_unrank]
  exact case_000503_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000503_bAtRank :
    translationBAtRankMask case_000503_rank case_000503_mask = case_000503_b := by
  rw [translationBAtRankMask, case_000503_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000503_b, case_000503_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000503_firstLine_eq :
    case_000503_support.firstLine case_000503_seq case_000503_b = case_000503_firstLine := by
  norm_num [case_000503_firstLine, case_000503_support, case_000503_seq, case_000503_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000503_secondLine_eq :
    case_000503_support.secondLine case_000503_seq case_000503_b = case_000503_secondLine := by
  norm_num [case_000503_secondLine, case_000503_support, case_000503_seq, case_000503_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000503_sourceAgrees :
    SourceAgrees case_000503_support case_000503_rank.val case_000503_mask := by
  intro hlt
  have hrank : (⟨case_000503_rank.val, hlt⟩ : Fin numPairWords) = case_000503_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000503_rank.val, hlt⟩ case_000503_mask =
        case_000503_seq := by
    simpa [hrank] using case_000503_seqAtRank
  simp [SourceChecks, hseq, case_000503_support,
    checkTranslationConstraintSource, case_000503_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000503_rows :
    EqEqPosVarFirstRows case_000503_support case_000503_rank.val case_000503_mask := by
  intro hlt
  have hrank : (⟨case_000503_rank.val, hlt⟩ : Fin numPairWords) = case_000503_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000503_rank.val, hlt⟩ case_000503_mask =
        case_000503_seq := by
    simpa [hrank] using case_000503_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000503_rank.val, hlt⟩ case_000503_mask =
        case_000503_b := by
    simpa [hrank] using case_000503_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000503_support case_000503_rank.val hlt
          case_000503_mask = case_000503_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000503_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000503_support case_000503_rank.val hlt
          case_000503_mask = case_000503_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000503_secondLine_eq]
  have case_000503_rowFirst :
      EqEqPosRow (FirstLineAt case_000503_support case_000503_rank.val hlt case_000503_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000503_firstLine, EqEqPosRow]
  have case_000503_fixedSecond :
      FixedRow (SecondLineAt case_000503_support case_000503_rank.val hlt case_000503_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000503_secondLine, FixedRow]
  exact ⟨case_000503_rowFirst, case_000503_fixedSecond⟩

private theorem case_000503_existsRows :
    ExistsEqEqPosVarFirstRows case_000503_rank.val case_000503_mask :=
  ⟨case_000503_support, case_000503_sourceAgrees, case_000503_rows⟩

private theorem case_000503_covered :
    RowPropertyParametricCovered case_000503_rank.val case_000503_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000503_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000504_rank : Fin numPairWords := ⟨251, by decide⟩
private def case_000504_mask : SignMask := ⟨29, by decide⟩
private def case_000504_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000504_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000504_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000504_b : Vec3 Rat := { x := (-836/81), y := (260/81), z := (-580/81) }
private def case_000504_firstLine : StrictLin2 := { a := (-209/129), b := (-209/129), c := (-529/129) }
private def case_000504_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000504_rankWord :
    rankPairWord? case_000504_word = some case_000504_rank := by
  decide

private theorem case_000504_unrank :
    unrankPairWord case_000504_rank = case_000504_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000504_word case_000504_rank).1
    case_000504_rankWord |>.symm

private theorem case_000504_seqChoice :
    translationChoiceSeq case_000504_word case_000504_mask = case_000504_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000504_seqAtRank :
    translationSeqAtRankMask case_000504_rank case_000504_mask = case_000504_seq := by
  rw [translationSeqAtRankMask, case_000504_unrank]
  exact case_000504_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000504_bAtRank :
    translationBAtRankMask case_000504_rank case_000504_mask = case_000504_b := by
  rw [translationBAtRankMask, case_000504_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000504_b, case_000504_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000504_firstLine_eq :
    case_000504_support.firstLine case_000504_seq case_000504_b = case_000504_firstLine := by
  norm_num [case_000504_firstLine, case_000504_support, case_000504_seq, case_000504_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000504_secondLine_eq :
    case_000504_support.secondLine case_000504_seq case_000504_b = case_000504_secondLine := by
  norm_num [case_000504_secondLine, case_000504_support, case_000504_seq, case_000504_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000504_sourceAgrees :
    SourceAgrees case_000504_support case_000504_rank.val case_000504_mask := by
  intro hlt
  have hrank : (⟨case_000504_rank.val, hlt⟩ : Fin numPairWords) = case_000504_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000504_rank.val, hlt⟩ case_000504_mask =
        case_000504_seq := by
    simpa [hrank] using case_000504_seqAtRank
  simp [SourceChecks, hseq, case_000504_support,
    checkTranslationConstraintSource, case_000504_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000504_rows :
    EqEqPosVarFirstRows case_000504_support case_000504_rank.val case_000504_mask := by
  intro hlt
  have hrank : (⟨case_000504_rank.val, hlt⟩ : Fin numPairWords) = case_000504_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000504_rank.val, hlt⟩ case_000504_mask =
        case_000504_seq := by
    simpa [hrank] using case_000504_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000504_rank.val, hlt⟩ case_000504_mask =
        case_000504_b := by
    simpa [hrank] using case_000504_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000504_support case_000504_rank.val hlt
          case_000504_mask = case_000504_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000504_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000504_support case_000504_rank.val hlt
          case_000504_mask = case_000504_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000504_secondLine_eq]
  have case_000504_rowFirst :
      EqEqPosRow (FirstLineAt case_000504_support case_000504_rank.val hlt case_000504_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000504_firstLine, EqEqPosRow]
  have case_000504_fixedSecond :
      FixedRow (SecondLineAt case_000504_support case_000504_rank.val hlt case_000504_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000504_secondLine, FixedRow]
  exact ⟨case_000504_rowFirst, case_000504_fixedSecond⟩

private theorem case_000504_existsRows :
    ExistsEqEqPosVarFirstRows case_000504_rank.val case_000504_mask :=
  ⟨case_000504_support, case_000504_sourceAgrees, case_000504_rows⟩

private theorem case_000504_covered :
    RowPropertyParametricCovered case_000504_rank.val case_000504_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000504_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000505_rank : Fin numPairWords := ⟨251, by decide⟩
private def case_000505_mask : SignMask := ⟨45, by decide⟩
private def case_000505_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩
private def case_000505_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000505_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000505_b : Vec3 Rat := { x := (-388/81), y := (964/81), z := (-356/81) }
private def case_000505_firstLine : StrictLin2 := { a := 1, b := -1, c := (-563/97) }
private def case_000505_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000505_rankWord :
    rankPairWord? case_000505_word = some case_000505_rank := by
  decide

private theorem case_000505_unrank :
    unrankPairWord case_000505_rank = case_000505_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000505_word case_000505_rank).1
    case_000505_rankWord |>.symm

private theorem case_000505_seqChoice :
    translationChoiceSeq case_000505_word case_000505_mask = case_000505_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000505_seqAtRank :
    translationSeqAtRankMask case_000505_rank case_000505_mask = case_000505_seq := by
  rw [translationSeqAtRankMask, case_000505_unrank]
  exact case_000505_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000505_bAtRank :
    translationBAtRankMask case_000505_rank case_000505_mask = case_000505_b := by
  rw [translationBAtRankMask, case_000505_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000505_b, case_000505_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000505_firstLine_eq :
    case_000505_support.firstLine case_000505_seq case_000505_b = case_000505_firstLine := by
  norm_num [case_000505_firstLine, case_000505_support, case_000505_seq, case_000505_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000505_secondLine_eq :
    case_000505_support.secondLine case_000505_seq case_000505_b = case_000505_secondLine := by
  norm_num [case_000505_secondLine, case_000505_support, case_000505_seq, case_000505_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000505_sourceAgrees :
    SourceAgrees case_000505_support case_000505_rank.val case_000505_mask := by
  intro hlt
  have hrank : (⟨case_000505_rank.val, hlt⟩ : Fin numPairWords) = case_000505_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000505_rank.val, hlt⟩ case_000505_mask =
        case_000505_seq := by
    simpa [hrank] using case_000505_seqAtRank
  simp [SourceChecks, hseq, case_000505_support,
    checkTranslationConstraintSource, case_000505_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000505_rows :
    OppMinusOneVarFirstRows case_000505_support case_000505_rank.val case_000505_mask := by
  intro hlt
  have hrank : (⟨case_000505_rank.val, hlt⟩ : Fin numPairWords) = case_000505_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000505_rank.val, hlt⟩ case_000505_mask =
        case_000505_seq := by
    simpa [hrank] using case_000505_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000505_rank.val, hlt⟩ case_000505_mask =
        case_000505_b := by
    simpa [hrank] using case_000505_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000505_support case_000505_rank.val hlt
          case_000505_mask = case_000505_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000505_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000505_support case_000505_rank.val hlt
          case_000505_mask = case_000505_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000505_secondLine_eq]
  have case_000505_rowFirst :
      OppNegRow (FirstLineAt case_000505_support case_000505_rank.val hlt case_000505_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000505_firstLine, OppNegRow]
  have case_000505_fixedSecond :
      FixedRow (SecondLineAt case_000505_support case_000505_rank.val hlt case_000505_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000505_secondLine, FixedRow]
  exact ⟨case_000505_rowFirst, case_000505_fixedSecond⟩

private theorem case_000505_existsRows :
    ExistsOppMinusOneVarFirstRows case_000505_rank.val case_000505_mask :=
  ⟨case_000505_support, case_000505_sourceAgrees, case_000505_rows⟩

private theorem case_000505_covered :
    RowPropertyParametricCovered case_000505_rank.val case_000505_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000505_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000506_rank : Fin numPairWords := ⟨261, by decide⟩
private def case_000506_mask : SignMask := ⟨13, by decide⟩
private def case_000506_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000506_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000506_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000506_b : Vec3 Rat := { x := (-236/27), y := (236/27), z := (-172/27) }
private def case_000506_firstLine : StrictLin2 := { a := 1, b := -1, c := (-145/59) }
private def case_000506_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000506_rankWord :
    rankPairWord? case_000506_word = some case_000506_rank := by
  decide

private theorem case_000506_unrank :
    unrankPairWord case_000506_rank = case_000506_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000506_word case_000506_rank).1
    case_000506_rankWord |>.symm

private theorem case_000506_seqChoice :
    translationChoiceSeq case_000506_word case_000506_mask = case_000506_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000506_seqAtRank :
    translationSeqAtRankMask case_000506_rank case_000506_mask = case_000506_seq := by
  rw [translationSeqAtRankMask, case_000506_unrank]
  exact case_000506_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000506_bAtRank :
    translationBAtRankMask case_000506_rank case_000506_mask = case_000506_b := by
  rw [translationBAtRankMask, case_000506_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000506_b, case_000506_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000506_firstLine_eq :
    case_000506_support.firstLine case_000506_seq case_000506_b = case_000506_firstLine := by
  norm_num [case_000506_firstLine, case_000506_support, case_000506_seq, case_000506_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000506_secondLine_eq :
    case_000506_support.secondLine case_000506_seq case_000506_b = case_000506_secondLine := by
  norm_num [case_000506_secondLine, case_000506_support, case_000506_seq, case_000506_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000506_sourceAgrees :
    SourceAgrees case_000506_support case_000506_rank.val case_000506_mask := by
  intro hlt
  have hrank : (⟨case_000506_rank.val, hlt⟩ : Fin numPairWords) = case_000506_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000506_rank.val, hlt⟩ case_000506_mask =
        case_000506_seq := by
    simpa [hrank] using case_000506_seqAtRank
  simp [SourceChecks, hseq, case_000506_support,
    checkTranslationConstraintSource, case_000506_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000506_rows :
    OppMinusOneVarFirstRows case_000506_support case_000506_rank.val case_000506_mask := by
  intro hlt
  have hrank : (⟨case_000506_rank.val, hlt⟩ : Fin numPairWords) = case_000506_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000506_rank.val, hlt⟩ case_000506_mask =
        case_000506_seq := by
    simpa [hrank] using case_000506_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000506_rank.val, hlt⟩ case_000506_mask =
        case_000506_b := by
    simpa [hrank] using case_000506_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000506_support case_000506_rank.val hlt
          case_000506_mask = case_000506_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000506_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000506_support case_000506_rank.val hlt
          case_000506_mask = case_000506_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000506_secondLine_eq]
  have case_000506_rowFirst :
      OppNegRow (FirstLineAt case_000506_support case_000506_rank.val hlt case_000506_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000506_firstLine, OppNegRow]
  have case_000506_fixedSecond :
      FixedRow (SecondLineAt case_000506_support case_000506_rank.val hlt case_000506_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000506_secondLine, FixedRow]
  exact ⟨case_000506_rowFirst, case_000506_fixedSecond⟩

private theorem case_000506_existsRows :
    ExistsOppMinusOneVarFirstRows case_000506_rank.val case_000506_mask :=
  ⟨case_000506_support, case_000506_sourceAgrees, case_000506_rows⟩

private theorem case_000506_covered :
    RowPropertyParametricCovered case_000506_rank.val case_000506_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000506_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000507_rank : Fin numPairWords := ⟨261, by decide⟩
private def case_000507_mask : SignMask := ⟨22, by decide⟩
private def case_000507_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000507_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000507_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000507_b : Vec3 Rat := { x := (-332/27), y := (-172/27), z := (428/27) }
private def case_000507_firstLine : StrictLin2 := { a := -1, b := 1, c := (-217/83) }
private def case_000507_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000507_rankWord :
    rankPairWord? case_000507_word = some case_000507_rank := by
  decide

private theorem case_000507_unrank :
    unrankPairWord case_000507_rank = case_000507_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000507_word case_000507_rank).1
    case_000507_rankWord |>.symm

private theorem case_000507_seqChoice :
    translationChoiceSeq case_000507_word case_000507_mask = case_000507_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000507_seqAtRank :
    translationSeqAtRankMask case_000507_rank case_000507_mask = case_000507_seq := by
  rw [translationSeqAtRankMask, case_000507_unrank]
  exact case_000507_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000507_bAtRank :
    translationBAtRankMask case_000507_rank case_000507_mask = case_000507_b := by
  rw [translationBAtRankMask, case_000507_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000507_b, case_000507_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000507_firstLine_eq :
    case_000507_support.firstLine case_000507_seq case_000507_b = case_000507_firstLine := by
  norm_num [case_000507_firstLine, case_000507_support, case_000507_seq, case_000507_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000507_secondLine_eq :
    case_000507_support.secondLine case_000507_seq case_000507_b = case_000507_secondLine := by
  norm_num [case_000507_secondLine, case_000507_support, case_000507_seq, case_000507_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000507_sourceAgrees :
    SourceAgrees case_000507_support case_000507_rank.val case_000507_mask := by
  intro hlt
  have hrank : (⟨case_000507_rank.val, hlt⟩ : Fin numPairWords) = case_000507_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000507_rank.val, hlt⟩ case_000507_mask =
        case_000507_seq := by
    simpa [hrank] using case_000507_seqAtRank
  simp [SourceChecks, hseq, case_000507_support,
    checkTranslationConstraintSource, case_000507_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000507_rows :
    OppOneMinusVarFirstRows case_000507_support case_000507_rank.val case_000507_mask := by
  intro hlt
  have hrank : (⟨case_000507_rank.val, hlt⟩ : Fin numPairWords) = case_000507_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000507_rank.val, hlt⟩ case_000507_mask =
        case_000507_seq := by
    simpa [hrank] using case_000507_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000507_rank.val, hlt⟩ case_000507_mask =
        case_000507_b := by
    simpa [hrank] using case_000507_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000507_support case_000507_rank.val hlt
          case_000507_mask = case_000507_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000507_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000507_support case_000507_rank.val hlt
          case_000507_mask = case_000507_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000507_secondLine_eq]
  have case_000507_rowFirst :
      OppPosRow (FirstLineAt case_000507_support case_000507_rank.val hlt case_000507_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000507_firstLine, OppPosRow]
  have case_000507_fixedSecond :
      FixedRow (SecondLineAt case_000507_support case_000507_rank.val hlt case_000507_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000507_secondLine, FixedRow]
  exact ⟨case_000507_rowFirst, case_000507_fixedSecond⟩

private theorem case_000507_existsRows :
    ExistsOppOneMinusVarFirstRows case_000507_rank.val case_000507_mask :=
  ⟨case_000507_support, case_000507_sourceAgrees, case_000507_rows⟩

private theorem case_000507_covered :
    RowPropertyParametricCovered case_000507_rank.val case_000507_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000507_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000508_rank : Fin numPairWords := ⟨261, by decide⟩
private def case_000508_mask : SignMask := ⟨23, by decide⟩
private def case_000508_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000508_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000508_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000508_b : Vec3 Rat := { x := (-332/27), y := (44/27), z := (428/27) }
private def case_000508_firstLine : StrictLin2 := { a := (-83/201), b := (-83/201), c := (-275/201) }
private def case_000508_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000508_rankWord :
    rankPairWord? case_000508_word = some case_000508_rank := by
  decide

private theorem case_000508_unrank :
    unrankPairWord case_000508_rank = case_000508_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000508_word case_000508_rank).1
    case_000508_rankWord |>.symm

private theorem case_000508_seqChoice :
    translationChoiceSeq case_000508_word case_000508_mask = case_000508_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000508_seqAtRank :
    translationSeqAtRankMask case_000508_rank case_000508_mask = case_000508_seq := by
  rw [translationSeqAtRankMask, case_000508_unrank]
  exact case_000508_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000508_bAtRank :
    translationBAtRankMask case_000508_rank case_000508_mask = case_000508_b := by
  rw [translationBAtRankMask, case_000508_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000508_b, case_000508_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000508_firstLine_eq :
    case_000508_support.firstLine case_000508_seq case_000508_b = case_000508_firstLine := by
  norm_num [case_000508_firstLine, case_000508_support, case_000508_seq, case_000508_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000508_secondLine_eq :
    case_000508_support.secondLine case_000508_seq case_000508_b = case_000508_secondLine := by
  norm_num [case_000508_secondLine, case_000508_support, case_000508_seq, case_000508_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000508_sourceAgrees :
    SourceAgrees case_000508_support case_000508_rank.val case_000508_mask := by
  intro hlt
  have hrank : (⟨case_000508_rank.val, hlt⟩ : Fin numPairWords) = case_000508_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000508_rank.val, hlt⟩ case_000508_mask =
        case_000508_seq := by
    simpa [hrank] using case_000508_seqAtRank
  simp [SourceChecks, hseq, case_000508_support,
    checkTranslationConstraintSource, case_000508_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000508_rows :
    EqEqPosVarFirstRows case_000508_support case_000508_rank.val case_000508_mask := by
  intro hlt
  have hrank : (⟨case_000508_rank.val, hlt⟩ : Fin numPairWords) = case_000508_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000508_rank.val, hlt⟩ case_000508_mask =
        case_000508_seq := by
    simpa [hrank] using case_000508_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000508_rank.val, hlt⟩ case_000508_mask =
        case_000508_b := by
    simpa [hrank] using case_000508_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000508_support case_000508_rank.val hlt
          case_000508_mask = case_000508_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000508_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000508_support case_000508_rank.val hlt
          case_000508_mask = case_000508_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000508_secondLine_eq]
  have case_000508_rowFirst :
      EqEqPosRow (FirstLineAt case_000508_support case_000508_rank.val hlt case_000508_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000508_firstLine, EqEqPosRow]
  have case_000508_fixedSecond :
      FixedRow (SecondLineAt case_000508_support case_000508_rank.val hlt case_000508_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000508_secondLine, FixedRow]
  exact ⟨case_000508_rowFirst, case_000508_fixedSecond⟩

private theorem case_000508_existsRows :
    ExistsEqEqPosVarFirstRows case_000508_rank.val case_000508_mask :=
  ⟨case_000508_support, case_000508_sourceAgrees, case_000508_rows⟩

private theorem case_000508_covered :
    RowPropertyParametricCovered case_000508_rank.val case_000508_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000508_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000509_rank : Fin numPairWords := ⟨261, by decide⟩
private def case_000509_mask : SignMask := ⟨24, by decide⟩
private def case_000509_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000509_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000509_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000509_b : Vec3 Rat := { x := (-236/27), y := (-268/27), z := (-172/27) }
private def case_000509_firstLine : StrictLin2 := { a := -1, b := -1, c := (-161/59) }
private def case_000509_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000509_rankWord :
    rankPairWord? case_000509_word = some case_000509_rank := by
  decide

private theorem case_000509_unrank :
    unrankPairWord case_000509_rank = case_000509_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000509_word case_000509_rank).1
    case_000509_rankWord |>.symm

private theorem case_000509_seqChoice :
    translationChoiceSeq case_000509_word case_000509_mask = case_000509_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000509_seqAtRank :
    translationSeqAtRankMask case_000509_rank case_000509_mask = case_000509_seq := by
  rw [translationSeqAtRankMask, case_000509_unrank]
  exact case_000509_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000509_bAtRank :
    translationBAtRankMask case_000509_rank case_000509_mask = case_000509_b := by
  rw [translationBAtRankMask, case_000509_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000509_b, case_000509_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000509_firstLine_eq :
    case_000509_support.firstLine case_000509_seq case_000509_b = case_000509_firstLine := by
  norm_num [case_000509_firstLine, case_000509_support, case_000509_seq, case_000509_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000509_secondLine_eq :
    case_000509_support.secondLine case_000509_seq case_000509_b = case_000509_secondLine := by
  norm_num [case_000509_secondLine, case_000509_support, case_000509_seq, case_000509_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000509_sourceAgrees :
    SourceAgrees case_000509_support case_000509_rank.val case_000509_mask := by
  intro hlt
  have hrank : (⟨case_000509_rank.val, hlt⟩ : Fin numPairWords) = case_000509_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000509_rank.val, hlt⟩ case_000509_mask =
        case_000509_seq := by
    simpa [hrank] using case_000509_seqAtRank
  simp [SourceChecks, hseq, case_000509_support,
    checkTranslationConstraintSource, case_000509_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000509_rows :
    EqEqPosVarFirstRows case_000509_support case_000509_rank.val case_000509_mask := by
  intro hlt
  have hrank : (⟨case_000509_rank.val, hlt⟩ : Fin numPairWords) = case_000509_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000509_rank.val, hlt⟩ case_000509_mask =
        case_000509_seq := by
    simpa [hrank] using case_000509_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000509_rank.val, hlt⟩ case_000509_mask =
        case_000509_b := by
    simpa [hrank] using case_000509_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000509_support case_000509_rank.val hlt
          case_000509_mask = case_000509_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000509_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000509_support case_000509_rank.val hlt
          case_000509_mask = case_000509_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000509_secondLine_eq]
  have case_000509_rowFirst :
      EqEqPosRow (FirstLineAt case_000509_support case_000509_rank.val hlt case_000509_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000509_firstLine, EqEqPosRow]
  have case_000509_fixedSecond :
      FixedRow (SecondLineAt case_000509_support case_000509_rank.val hlt case_000509_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000509_secondLine, FixedRow]
  exact ⟨case_000509_rowFirst, case_000509_fixedSecond⟩

private theorem case_000509_existsRows :
    ExistsEqEqPosVarFirstRows case_000509_rank.val case_000509_mask :=
  ⟨case_000509_support, case_000509_sourceAgrees, case_000509_rows⟩

private theorem case_000509_covered :
    RowPropertyParametricCovered case_000509_rank.val case_000509_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000509_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000510_rank : Fin numPairWords := ⟨261, by decide⟩
private def case_000510_mask : SignMask := ⟨28, by decide⟩
private def case_000510_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000510_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000510_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000510_b : Vec3 Rat := { x := (-380/27), y := (-124/27), z := (-28/27) }
private def case_000510_firstLine : StrictLin2 := { a := (-95/119), b := (95/119), c := (-47/51) }
private def case_000510_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000510_rankWord :
    rankPairWord? case_000510_word = some case_000510_rank := by
  decide

private theorem case_000510_unrank :
    unrankPairWord case_000510_rank = case_000510_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000510_word case_000510_rank).1
    case_000510_rankWord |>.symm

private theorem case_000510_seqChoice :
    translationChoiceSeq case_000510_word case_000510_mask = case_000510_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000510_seqAtRank :
    translationSeqAtRankMask case_000510_rank case_000510_mask = case_000510_seq := by
  rw [translationSeqAtRankMask, case_000510_unrank]
  exact case_000510_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000510_bAtRank :
    translationBAtRankMask case_000510_rank case_000510_mask = case_000510_b := by
  rw [translationBAtRankMask, case_000510_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000510_b, case_000510_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000510_firstLine_eq :
    case_000510_support.firstLine case_000510_seq case_000510_b = case_000510_firstLine := by
  norm_num [case_000510_firstLine, case_000510_support, case_000510_seq, case_000510_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000510_secondLine_eq :
    case_000510_support.secondLine case_000510_seq case_000510_b = case_000510_secondLine := by
  norm_num [case_000510_secondLine, case_000510_support, case_000510_seq, case_000510_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000510_sourceAgrees :
    SourceAgrees case_000510_support case_000510_rank.val case_000510_mask := by
  intro hlt
  have hrank : (⟨case_000510_rank.val, hlt⟩ : Fin numPairWords) = case_000510_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000510_rank.val, hlt⟩ case_000510_mask =
        case_000510_seq := by
    simpa [hrank] using case_000510_seqAtRank
  simp [SourceChecks, hseq, case_000510_support,
    checkTranslationConstraintSource, case_000510_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000510_rows :
    OppOneMinusVarFirstRows case_000510_support case_000510_rank.val case_000510_mask := by
  intro hlt
  have hrank : (⟨case_000510_rank.val, hlt⟩ : Fin numPairWords) = case_000510_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000510_rank.val, hlt⟩ case_000510_mask =
        case_000510_seq := by
    simpa [hrank] using case_000510_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000510_rank.val, hlt⟩ case_000510_mask =
        case_000510_b := by
    simpa [hrank] using case_000510_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000510_support case_000510_rank.val hlt
          case_000510_mask = case_000510_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000510_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000510_support case_000510_rank.val hlt
          case_000510_mask = case_000510_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000510_secondLine_eq]
  have case_000510_rowFirst :
      OppPosRow (FirstLineAt case_000510_support case_000510_rank.val hlt case_000510_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000510_firstLine, OppPosRow]
  have case_000510_fixedSecond :
      FixedRow (SecondLineAt case_000510_support case_000510_rank.val hlt case_000510_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000510_secondLine, FixedRow]
  exact ⟨case_000510_rowFirst, case_000510_fixedSecond⟩

private theorem case_000510_existsRows :
    ExistsOppOneMinusVarFirstRows case_000510_rank.val case_000510_mask :=
  ⟨case_000510_support, case_000510_sourceAgrees, case_000510_rows⟩

private theorem case_000510_covered :
    RowPropertyParametricCovered case_000510_rank.val case_000510_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000510_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000511_rank : Fin numPairWords := ⟨261, by decide⟩
private def case_000511_mask : SignMask := ⟨29, by decide⟩
private def case_000511_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000511_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000511_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000511_b : Vec3 Rat := { x := (-380/27), y := (92/27), z := (-28/27) }
private def case_000511_firstLine : StrictLin2 := { a := (-19/13), b := (19/13), c := (-217/39) }
private def case_000511_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000511_rankWord :
    rankPairWord? case_000511_word = some case_000511_rank := by
  decide

private theorem case_000511_unrank :
    unrankPairWord case_000511_rank = case_000511_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000511_word case_000511_rank).1
    case_000511_rankWord |>.symm

private theorem case_000511_seqChoice :
    translationChoiceSeq case_000511_word case_000511_mask = case_000511_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000511_seqAtRank :
    translationSeqAtRankMask case_000511_rank case_000511_mask = case_000511_seq := by
  rw [translationSeqAtRankMask, case_000511_unrank]
  exact case_000511_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000511_bAtRank :
    translationBAtRankMask case_000511_rank case_000511_mask = case_000511_b := by
  rw [translationBAtRankMask, case_000511_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000511_b, case_000511_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000511_firstLine_eq :
    case_000511_support.firstLine case_000511_seq case_000511_b = case_000511_firstLine := by
  norm_num [case_000511_firstLine, case_000511_support, case_000511_seq, case_000511_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000511_secondLine_eq :
    case_000511_support.secondLine case_000511_seq case_000511_b = case_000511_secondLine := by
  norm_num [case_000511_secondLine, case_000511_support, case_000511_seq, case_000511_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000511_sourceAgrees :
    SourceAgrees case_000511_support case_000511_rank.val case_000511_mask := by
  intro hlt
  have hrank : (⟨case_000511_rank.val, hlt⟩ : Fin numPairWords) = case_000511_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000511_rank.val, hlt⟩ case_000511_mask =
        case_000511_seq := by
    simpa [hrank] using case_000511_seqAtRank
  simp [SourceChecks, hseq, case_000511_support,
    checkTranslationConstraintSource, case_000511_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000511_rows :
    OppOneMinusVarFirstRows case_000511_support case_000511_rank.val case_000511_mask := by
  intro hlt
  have hrank : (⟨case_000511_rank.val, hlt⟩ : Fin numPairWords) = case_000511_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000511_rank.val, hlt⟩ case_000511_mask =
        case_000511_seq := by
    simpa [hrank] using case_000511_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000511_rank.val, hlt⟩ case_000511_mask =
        case_000511_b := by
    simpa [hrank] using case_000511_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000511_support case_000511_rank.val hlt
          case_000511_mask = case_000511_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000511_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000511_support case_000511_rank.val hlt
          case_000511_mask = case_000511_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000511_secondLine_eq]
  have case_000511_rowFirst :
      OppPosRow (FirstLineAt case_000511_support case_000511_rank.val hlt case_000511_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000511_firstLine, OppPosRow]
  have case_000511_fixedSecond :
      FixedRow (SecondLineAt case_000511_support case_000511_rank.val hlt case_000511_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000511_secondLine, FixedRow]
  exact ⟨case_000511_rowFirst, case_000511_fixedSecond⟩

private theorem case_000511_existsRows :
    ExistsOppOneMinusVarFirstRows case_000511_rank.val case_000511_mask :=
  ⟨case_000511_support, case_000511_sourceAgrees, case_000511_rows⟩

private theorem case_000511_covered :
    RowPropertyParametricCovered case_000511_rank.val case_000511_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000511_existsRows

inductive Group015Covered : Nat -> SignMask -> Prop
  | case_000480 : Group015Covered case_000480_rank.val case_000480_mask
  | case_000481 : Group015Covered case_000481_rank.val case_000481_mask
  | case_000482 : Group015Covered case_000482_rank.val case_000482_mask
  | case_000483 : Group015Covered case_000483_rank.val case_000483_mask
  | case_000484 : Group015Covered case_000484_rank.val case_000484_mask
  | case_000485 : Group015Covered case_000485_rank.val case_000485_mask
  | case_000486 : Group015Covered case_000486_rank.val case_000486_mask
  | case_000487 : Group015Covered case_000487_rank.val case_000487_mask
  | case_000488 : Group015Covered case_000488_rank.val case_000488_mask
  | case_000489 : Group015Covered case_000489_rank.val case_000489_mask
  | case_000490 : Group015Covered case_000490_rank.val case_000490_mask
  | case_000491 : Group015Covered case_000491_rank.val case_000491_mask
  | case_000492 : Group015Covered case_000492_rank.val case_000492_mask
  | case_000493 : Group015Covered case_000493_rank.val case_000493_mask
  | case_000494 : Group015Covered case_000494_rank.val case_000494_mask
  | case_000495 : Group015Covered case_000495_rank.val case_000495_mask
  | case_000496 : Group015Covered case_000496_rank.val case_000496_mask
  | case_000497 : Group015Covered case_000497_rank.val case_000497_mask
  | case_000498 : Group015Covered case_000498_rank.val case_000498_mask
  | case_000499 : Group015Covered case_000499_rank.val case_000499_mask
  | case_000500 : Group015Covered case_000500_rank.val case_000500_mask
  | case_000501 : Group015Covered case_000501_rank.val case_000501_mask
  | case_000502 : Group015Covered case_000502_rank.val case_000502_mask
  | case_000503 : Group015Covered case_000503_rank.val case_000503_mask
  | case_000504 : Group015Covered case_000504_rank.val case_000504_mask
  | case_000505 : Group015Covered case_000505_rank.val case_000505_mask
  | case_000506 : Group015Covered case_000506_rank.val case_000506_mask
  | case_000507 : Group015Covered case_000507_rank.val case_000507_mask
  | case_000508 : Group015Covered case_000508_rank.val case_000508_mask
  | case_000509 : Group015Covered case_000509_rank.val case_000509_mask
  | case_000510 : Group015Covered case_000510_rank.val case_000510_mask
  | case_000511 : Group015Covered case_000511_rank.val case_000511_mask

theorem Group015GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group015Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000480 =>
      exact RowPropertyParametricCovered.kills case_000480_covered
  | case_000481 =>
      exact RowPropertyParametricCovered.kills case_000481_covered
  | case_000482 =>
      exact RowPropertyParametricCovered.kills case_000482_covered
  | case_000483 =>
      exact RowPropertyParametricCovered.kills case_000483_covered
  | case_000484 =>
      exact RowPropertyParametricCovered.kills case_000484_covered
  | case_000485 =>
      exact RowPropertyParametricCovered.kills case_000485_covered
  | case_000486 =>
      exact RowPropertyParametricCovered.kills case_000486_covered
  | case_000487 =>
      exact RowPropertyParametricCovered.kills case_000487_covered
  | case_000488 =>
      exact RowPropertyParametricCovered.kills case_000488_covered
  | case_000489 =>
      exact RowPropertyParametricCovered.kills case_000489_covered
  | case_000490 =>
      exact RowPropertyParametricCovered.kills case_000490_covered
  | case_000491 =>
      exact RowPropertyParametricCovered.kills case_000491_covered
  | case_000492 =>
      exact RowPropertyParametricCovered.kills case_000492_covered
  | case_000493 =>
      exact RowPropertyParametricCovered.kills case_000493_covered
  | case_000494 =>
      exact RowPropertyParametricCovered.kills case_000494_covered
  | case_000495 =>
      exact RowPropertyParametricCovered.kills case_000495_covered
  | case_000496 =>
      exact RowPropertyParametricCovered.kills case_000496_covered
  | case_000497 =>
      exact RowPropertyParametricCovered.kills case_000497_covered
  | case_000498 =>
      exact RowPropertyParametricCovered.kills case_000498_covered
  | case_000499 =>
      exact RowPropertyParametricCovered.kills case_000499_covered
  | case_000500 =>
      exact RowPropertyParametricCovered.kills case_000500_covered
  | case_000501 =>
      exact RowPropertyParametricCovered.kills case_000501_covered
  | case_000502 =>
      exact RowPropertyParametricCovered.kills case_000502_covered
  | case_000503 =>
      exact RowPropertyParametricCovered.kills case_000503_covered
  | case_000504 =>
      exact RowPropertyParametricCovered.kills case_000504_covered
  | case_000505 =>
      exact RowPropertyParametricCovered.kills case_000505_covered
  | case_000506 =>
      exact RowPropertyParametricCovered.kills case_000506_covered
  | case_000507 =>
      exact RowPropertyParametricCovered.kills case_000507_covered
  | case_000508 =>
      exact RowPropertyParametricCovered.kills case_000508_covered
  | case_000509 =>
      exact RowPropertyParametricCovered.kills case_000509_covered
  | case_000510 =>
      exact RowPropertyParametricCovered.kills case_000510_covered
  | case_000511 =>
      exact RowPropertyParametricCovered.kills case_000511_covered

theorem Group015_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group015
