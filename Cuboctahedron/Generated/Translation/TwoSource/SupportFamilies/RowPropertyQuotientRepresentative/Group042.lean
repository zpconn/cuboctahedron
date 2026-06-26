import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group042

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001344_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001344_mask : SignMask := ⟨30, by decide⟩
private def case_001344_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001344_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001344_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001344_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (52/9) }
private def case_001344_firstLine : StrictLin2 := { a := (29/11), b := (-29/11), c := (-109/11) }
private def case_001344_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001344_rankWord :
    rankPairWord? case_001344_word = some case_001344_rank := by
  decide

private theorem case_001344_unrank :
    unrankPairWord case_001344_rank = case_001344_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001344_word case_001344_rank).1
    case_001344_rankWord |>.symm

private theorem case_001344_seqChoice :
    translationChoiceSeq case_001344_word case_001344_mask = case_001344_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001344_seqAtRank :
    translationSeqAtRankMask case_001344_rank case_001344_mask = case_001344_seq := by
  rw [translationSeqAtRankMask, case_001344_unrank]
  exact case_001344_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001344_bAtRank :
    translationBAtRankMask case_001344_rank case_001344_mask = case_001344_b := by
  rw [translationBAtRankMask, case_001344_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001344_b, case_001344_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001344_firstLine_eq :
    case_001344_support.firstLine case_001344_seq case_001344_b = case_001344_firstLine := by
  norm_num [case_001344_firstLine, case_001344_support, case_001344_seq, case_001344_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001344_secondLine_eq :
    case_001344_support.secondLine case_001344_seq case_001344_b = case_001344_secondLine := by
  norm_num [case_001344_secondLine, case_001344_support, case_001344_seq, case_001344_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001344_sourceAgrees :
    SourceAgrees case_001344_support case_001344_rank.val case_001344_mask := by
  intro hlt
  have hrank : (⟨case_001344_rank.val, hlt⟩ : Fin numPairWords) = case_001344_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001344_rank.val, hlt⟩ case_001344_mask =
        case_001344_seq := by
    simpa [hrank] using case_001344_seqAtRank
  simp [SourceChecks, hseq, case_001344_support,
    checkTranslationConstraintSource, case_001344_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001344_rows :
    OppMinusOneVarFirstRows case_001344_support case_001344_rank.val case_001344_mask := by
  intro hlt
  have hrank : (⟨case_001344_rank.val, hlt⟩ : Fin numPairWords) = case_001344_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001344_rank.val, hlt⟩ case_001344_mask =
        case_001344_seq := by
    simpa [hrank] using case_001344_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001344_rank.val, hlt⟩ case_001344_mask =
        case_001344_b := by
    simpa [hrank] using case_001344_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001344_support case_001344_rank.val hlt
          case_001344_mask = case_001344_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001344_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001344_support case_001344_rank.val hlt
          case_001344_mask = case_001344_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001344_secondLine_eq]
  have case_001344_rowFirst :
      OppNegRow (FirstLineAt case_001344_support case_001344_rank.val hlt case_001344_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001344_firstLine, OppNegRow]
  have case_001344_fixedSecond :
      FixedRow (SecondLineAt case_001344_support case_001344_rank.val hlt case_001344_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001344_secondLine, FixedRow]
  exact ⟨case_001344_rowFirst, case_001344_fixedSecond⟩

private theorem case_001344_existsRows :
    ExistsOppMinusOneVarFirstRows case_001344_rank.val case_001344_mask :=
  ⟨case_001344_support, case_001344_sourceAgrees, case_001344_rows⟩

private theorem case_001344_covered :
    RowPropertyParametricCovered case_001344_rank.val case_001344_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001344_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001345_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001345_mask : SignMask := ⟨31, by decide⟩
private def case_001345_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001345_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001345_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001345_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (52/9) }
private def case_001345_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001345_secondLine : StrictLin2 := { a := (-9/52), b := (9/52), c := (-9/26) }

private theorem case_001345_rankWord :
    rankPairWord? case_001345_word = some case_001345_rank := by
  decide

private theorem case_001345_unrank :
    unrankPairWord case_001345_rank = case_001345_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001345_word case_001345_rank).1
    case_001345_rankWord |>.symm

private theorem case_001345_seqChoice :
    translationChoiceSeq case_001345_word case_001345_mask = case_001345_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001345_seqAtRank :
    translationSeqAtRankMask case_001345_rank case_001345_mask = case_001345_seq := by
  rw [translationSeqAtRankMask, case_001345_unrank]
  exact case_001345_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001345_bAtRank :
    translationBAtRankMask case_001345_rank case_001345_mask = case_001345_b := by
  rw [translationBAtRankMask, case_001345_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001345_b, case_001345_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001345_firstLine_eq :
    case_001345_support.firstLine case_001345_seq case_001345_b = case_001345_firstLine := by
  norm_num [case_001345_firstLine, case_001345_support, case_001345_seq, case_001345_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001345_secondLine_eq :
    case_001345_support.secondLine case_001345_seq case_001345_b = case_001345_secondLine := by
  norm_num [case_001345_secondLine, case_001345_support, case_001345_seq, case_001345_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001345_sourceAgrees :
    SourceAgrees case_001345_support case_001345_rank.val case_001345_mask := by
  intro hlt
  have hrank : (⟨case_001345_rank.val, hlt⟩ : Fin numPairWords) = case_001345_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001345_rank.val, hlt⟩ case_001345_mask =
        case_001345_seq := by
    simpa [hrank] using case_001345_seqAtRank
  simp [SourceChecks, hseq, case_001345_support,
    checkTranslationConstraintSource, case_001345_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001345_rows :
    OppOneMinusVarSecondRows case_001345_support case_001345_rank.val case_001345_mask := by
  intro hlt
  have hrank : (⟨case_001345_rank.val, hlt⟩ : Fin numPairWords) = case_001345_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001345_rank.val, hlt⟩ case_001345_mask =
        case_001345_seq := by
    simpa [hrank] using case_001345_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001345_rank.val, hlt⟩ case_001345_mask =
        case_001345_b := by
    simpa [hrank] using case_001345_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001345_support case_001345_rank.val hlt
          case_001345_mask = case_001345_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001345_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001345_support case_001345_rank.val hlt
          case_001345_mask = case_001345_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001345_secondLine_eq]
  have case_001345_fixedFirst :
      FixedRow (FirstLineAt case_001345_support case_001345_rank.val hlt case_001345_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001345_firstLine, FixedRow]
  have case_001345_rowSecond :
      OppPosRow (SecondLineAt case_001345_support case_001345_rank.val hlt case_001345_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001345_secondLine, OppPosRow]
  exact ⟨case_001345_fixedFirst, case_001345_rowSecond⟩

private theorem case_001345_existsRows :
    ExistsOppOneMinusVarSecondRows case_001345_rank.val case_001345_mask :=
  ⟨case_001345_support, case_001345_sourceAgrees, case_001345_rows⟩

private theorem case_001345_covered :
    RowPropertyParametricCovered case_001345_rank.val case_001345_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001345_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001346_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001346_mask : SignMask := ⟨45, by decide⟩
private def case_001346_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001346_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001346_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001346_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-52/9) }
private def case_001346_firstLine : StrictLin2 := { a := 1, b := -1, c := (-71/13) }
private def case_001346_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001346_rankWord :
    rankPairWord? case_001346_word = some case_001346_rank := by
  decide

private theorem case_001346_unrank :
    unrankPairWord case_001346_rank = case_001346_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001346_word case_001346_rank).1
    case_001346_rankWord |>.symm

private theorem case_001346_seqChoice :
    translationChoiceSeq case_001346_word case_001346_mask = case_001346_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001346_seqAtRank :
    translationSeqAtRankMask case_001346_rank case_001346_mask = case_001346_seq := by
  rw [translationSeqAtRankMask, case_001346_unrank]
  exact case_001346_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001346_bAtRank :
    translationBAtRankMask case_001346_rank case_001346_mask = case_001346_b := by
  rw [translationBAtRankMask, case_001346_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001346_b, case_001346_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001346_firstLine_eq :
    case_001346_support.firstLine case_001346_seq case_001346_b = case_001346_firstLine := by
  norm_num [case_001346_firstLine, case_001346_support, case_001346_seq, case_001346_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001346_secondLine_eq :
    case_001346_support.secondLine case_001346_seq case_001346_b = case_001346_secondLine := by
  norm_num [case_001346_secondLine, case_001346_support, case_001346_seq, case_001346_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001346_sourceAgrees :
    SourceAgrees case_001346_support case_001346_rank.val case_001346_mask := by
  intro hlt
  have hrank : (⟨case_001346_rank.val, hlt⟩ : Fin numPairWords) = case_001346_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001346_rank.val, hlt⟩ case_001346_mask =
        case_001346_seq := by
    simpa [hrank] using case_001346_seqAtRank
  simp [SourceChecks, hseq, case_001346_support,
    checkTranslationConstraintSource, case_001346_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001346_rows :
    OppMinusOneVarFirstRows case_001346_support case_001346_rank.val case_001346_mask := by
  intro hlt
  have hrank : (⟨case_001346_rank.val, hlt⟩ : Fin numPairWords) = case_001346_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001346_rank.val, hlt⟩ case_001346_mask =
        case_001346_seq := by
    simpa [hrank] using case_001346_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001346_rank.val, hlt⟩ case_001346_mask =
        case_001346_b := by
    simpa [hrank] using case_001346_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001346_support case_001346_rank.val hlt
          case_001346_mask = case_001346_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001346_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001346_support case_001346_rank.val hlt
          case_001346_mask = case_001346_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001346_secondLine_eq]
  have case_001346_rowFirst :
      OppNegRow (FirstLineAt case_001346_support case_001346_rank.val hlt case_001346_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001346_firstLine, OppNegRow]
  have case_001346_fixedSecond :
      FixedRow (SecondLineAt case_001346_support case_001346_rank.val hlt case_001346_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001346_secondLine, FixedRow]
  exact ⟨case_001346_rowFirst, case_001346_fixedSecond⟩

private theorem case_001346_existsRows :
    ExistsOppMinusOneVarFirstRows case_001346_rank.val case_001346_mask :=
  ⟨case_001346_support, case_001346_sourceAgrees, case_001346_rows⟩

private theorem case_001346_covered :
    RowPropertyParametricCovered case_001346_rank.val case_001346_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001346_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001347_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001347_mask : SignMask := ⟨54, by decide⟩
private def case_001347_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001347_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001347_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001347_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (148/9) }
private def case_001347_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001347_secondLine : StrictLin2 := { a := (-5/222), b := (-5/222), c := (-40/333) }

private theorem case_001347_rankWord :
    rankPairWord? case_001347_word = some case_001347_rank := by
  decide

private theorem case_001347_unrank :
    unrankPairWord case_001347_rank = case_001347_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001347_word case_001347_rank).1
    case_001347_rankWord |>.symm

private theorem case_001347_seqChoice :
    translationChoiceSeq case_001347_word case_001347_mask = case_001347_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001347_seqAtRank :
    translationSeqAtRankMask case_001347_rank case_001347_mask = case_001347_seq := by
  rw [translationSeqAtRankMask, case_001347_unrank]
  exact case_001347_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001347_bAtRank :
    translationBAtRankMask case_001347_rank case_001347_mask = case_001347_b := by
  rw [translationBAtRankMask, case_001347_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001347_b, case_001347_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001347_firstLine_eq :
    case_001347_support.firstLine case_001347_seq case_001347_b = case_001347_firstLine := by
  norm_num [case_001347_firstLine, case_001347_support, case_001347_seq, case_001347_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001347_secondLine_eq :
    case_001347_support.secondLine case_001347_seq case_001347_b = case_001347_secondLine := by
  norm_num [case_001347_secondLine, case_001347_support, case_001347_seq, case_001347_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001347_sourceAgrees :
    SourceAgrees case_001347_support case_001347_rank.val case_001347_mask := by
  intro hlt
  have hrank : (⟨case_001347_rank.val, hlt⟩ : Fin numPairWords) = case_001347_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001347_rank.val, hlt⟩ case_001347_mask =
        case_001347_seq := by
    simpa [hrank] using case_001347_seqAtRank
  simp [SourceChecks, hseq, case_001347_support,
    checkTranslationConstraintSource, case_001347_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001347_rows :
    EqEqPosVarSecondRows case_001347_support case_001347_rank.val case_001347_mask := by
  intro hlt
  have hrank : (⟨case_001347_rank.val, hlt⟩ : Fin numPairWords) = case_001347_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001347_rank.val, hlt⟩ case_001347_mask =
        case_001347_seq := by
    simpa [hrank] using case_001347_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001347_rank.val, hlt⟩ case_001347_mask =
        case_001347_b := by
    simpa [hrank] using case_001347_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001347_support case_001347_rank.val hlt
          case_001347_mask = case_001347_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001347_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001347_support case_001347_rank.val hlt
          case_001347_mask = case_001347_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001347_secondLine_eq]
  have case_001347_fixedFirst :
      FixedRow (FirstLineAt case_001347_support case_001347_rank.val hlt case_001347_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001347_firstLine, FixedRow]
  have case_001347_rowSecond :
      EqEqPosRow (SecondLineAt case_001347_support case_001347_rank.val hlt case_001347_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001347_secondLine, EqEqPosRow]
  exact ⟨case_001347_fixedFirst, case_001347_rowSecond⟩

private theorem case_001347_existsRows :
    ExistsEqEqPosVarSecondRows case_001347_rank.val case_001347_mask :=
  ⟨case_001347_support, case_001347_sourceAgrees, case_001347_rows⟩

private theorem case_001347_covered :
    RowPropertyParametricCovered case_001347_rank.val case_001347_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001347_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001348_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001348_mask : SignMask := ⟨55, by decide⟩
private def case_001348_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001348_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001348_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001348_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (148/9) }
private def case_001348_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001348_secondLine : StrictLin2 := { a := (-1/110), b := (-1/110), c := (-17/165) }

private theorem case_001348_rankWord :
    rankPairWord? case_001348_word = some case_001348_rank := by
  decide

private theorem case_001348_unrank :
    unrankPairWord case_001348_rank = case_001348_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001348_word case_001348_rank).1
    case_001348_rankWord |>.symm

private theorem case_001348_seqChoice :
    translationChoiceSeq case_001348_word case_001348_mask = case_001348_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001348_seqAtRank :
    translationSeqAtRankMask case_001348_rank case_001348_mask = case_001348_seq := by
  rw [translationSeqAtRankMask, case_001348_unrank]
  exact case_001348_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001348_bAtRank :
    translationBAtRankMask case_001348_rank case_001348_mask = case_001348_b := by
  rw [translationBAtRankMask, case_001348_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001348_b, case_001348_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001348_firstLine_eq :
    case_001348_support.firstLine case_001348_seq case_001348_b = case_001348_firstLine := by
  norm_num [case_001348_firstLine, case_001348_support, case_001348_seq, case_001348_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001348_secondLine_eq :
    case_001348_support.secondLine case_001348_seq case_001348_b = case_001348_secondLine := by
  norm_num [case_001348_secondLine, case_001348_support, case_001348_seq, case_001348_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001348_sourceAgrees :
    SourceAgrees case_001348_support case_001348_rank.val case_001348_mask := by
  intro hlt
  have hrank : (⟨case_001348_rank.val, hlt⟩ : Fin numPairWords) = case_001348_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001348_rank.val, hlt⟩ case_001348_mask =
        case_001348_seq := by
    simpa [hrank] using case_001348_seqAtRank
  simp [SourceChecks, hseq, case_001348_support,
    checkTranslationConstraintSource, case_001348_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001348_rows :
    EqEqPosVarSecondRows case_001348_support case_001348_rank.val case_001348_mask := by
  intro hlt
  have hrank : (⟨case_001348_rank.val, hlt⟩ : Fin numPairWords) = case_001348_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001348_rank.val, hlt⟩ case_001348_mask =
        case_001348_seq := by
    simpa [hrank] using case_001348_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001348_rank.val, hlt⟩ case_001348_mask =
        case_001348_b := by
    simpa [hrank] using case_001348_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001348_support case_001348_rank.val hlt
          case_001348_mask = case_001348_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001348_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001348_support case_001348_rank.val hlt
          case_001348_mask = case_001348_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001348_secondLine_eq]
  have case_001348_fixedFirst :
      FixedRow (FirstLineAt case_001348_support case_001348_rank.val hlt case_001348_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001348_firstLine, FixedRow]
  have case_001348_rowSecond :
      EqEqPosRow (SecondLineAt case_001348_support case_001348_rank.val hlt case_001348_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001348_secondLine, EqEqPosRow]
  exact ⟨case_001348_fixedFirst, case_001348_rowSecond⟩

private theorem case_001348_existsRows :
    ExistsEqEqPosVarSecondRows case_001348_rank.val case_001348_mask :=
  ⟨case_001348_support, case_001348_sourceAgrees, case_001348_rows⟩

private theorem case_001348_covered :
    RowPropertyParametricCovered case_001348_rank.val case_001348_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001348_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001349_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001349_mask : SignMask := ⟨63, by decide⟩
private def case_001349_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001349_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001349_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001349_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (100/9) }
private def case_001349_firstLine : StrictLin2 := { a := (-17/33), b := (-17/33), c := (-7/9) }
private def case_001349_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001349_rankWord :
    rankPairWord? case_001349_word = some case_001349_rank := by
  decide

private theorem case_001349_unrank :
    unrankPairWord case_001349_rank = case_001349_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001349_word case_001349_rank).1
    case_001349_rankWord |>.symm

private theorem case_001349_seqChoice :
    translationChoiceSeq case_001349_word case_001349_mask = case_001349_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001349_seqAtRank :
    translationSeqAtRankMask case_001349_rank case_001349_mask = case_001349_seq := by
  rw [translationSeqAtRankMask, case_001349_unrank]
  exact case_001349_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001349_bAtRank :
    translationBAtRankMask case_001349_rank case_001349_mask = case_001349_b := by
  rw [translationBAtRankMask, case_001349_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001349_b, case_001349_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001349_firstLine_eq :
    case_001349_support.firstLine case_001349_seq case_001349_b = case_001349_firstLine := by
  norm_num [case_001349_firstLine, case_001349_support, case_001349_seq, case_001349_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001349_secondLine_eq :
    case_001349_support.secondLine case_001349_seq case_001349_b = case_001349_secondLine := by
  norm_num [case_001349_secondLine, case_001349_support, case_001349_seq, case_001349_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001349_sourceAgrees :
    SourceAgrees case_001349_support case_001349_rank.val case_001349_mask := by
  intro hlt
  have hrank : (⟨case_001349_rank.val, hlt⟩ : Fin numPairWords) = case_001349_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001349_rank.val, hlt⟩ case_001349_mask =
        case_001349_seq := by
    simpa [hrank] using case_001349_seqAtRank
  simp [SourceChecks, hseq, case_001349_support,
    checkTranslationConstraintSource, case_001349_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001349_rows :
    EqEqPosVarFirstRows case_001349_support case_001349_rank.val case_001349_mask := by
  intro hlt
  have hrank : (⟨case_001349_rank.val, hlt⟩ : Fin numPairWords) = case_001349_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001349_rank.val, hlt⟩ case_001349_mask =
        case_001349_seq := by
    simpa [hrank] using case_001349_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001349_rank.val, hlt⟩ case_001349_mask =
        case_001349_b := by
    simpa [hrank] using case_001349_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001349_support case_001349_rank.val hlt
          case_001349_mask = case_001349_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001349_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001349_support case_001349_rank.val hlt
          case_001349_mask = case_001349_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001349_secondLine_eq]
  have case_001349_rowFirst :
      EqEqPosRow (FirstLineAt case_001349_support case_001349_rank.val hlt case_001349_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001349_firstLine, EqEqPosRow]
  have case_001349_fixedSecond :
      FixedRow (SecondLineAt case_001349_support case_001349_rank.val hlt case_001349_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001349_secondLine, FixedRow]
  exact ⟨case_001349_rowFirst, case_001349_fixedSecond⟩

private theorem case_001349_existsRows :
    ExistsEqEqPosVarFirstRows case_001349_rank.val case_001349_mask :=
  ⟨case_001349_support, case_001349_sourceAgrees, case_001349_rows⟩

private theorem case_001349_covered :
    RowPropertyParametricCovered case_001349_rank.val case_001349_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001349_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001350_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001350_mask : SignMask := ⟨8, by decide⟩
private def case_001350_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001350_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001350_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001350_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_001350_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001350_secondLine : StrictLin2 := { a := (-9/374), b := (-9/374), c := (-73/187) }

private theorem case_001350_rankWord :
    rankPairWord? case_001350_word = some case_001350_rank := by
  decide

private theorem case_001350_unrank :
    unrankPairWord case_001350_rank = case_001350_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001350_word case_001350_rank).1
    case_001350_rankWord |>.symm

private theorem case_001350_seqChoice :
    translationChoiceSeq case_001350_word case_001350_mask = case_001350_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001350_seqAtRank :
    translationSeqAtRankMask case_001350_rank case_001350_mask = case_001350_seq := by
  rw [translationSeqAtRankMask, case_001350_unrank]
  exact case_001350_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001350_bAtRank :
    translationBAtRankMask case_001350_rank case_001350_mask = case_001350_b := by
  rw [translationBAtRankMask, case_001350_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001350_b, case_001350_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001350_firstLine_eq :
    case_001350_support.firstLine case_001350_seq case_001350_b = case_001350_firstLine := by
  norm_num [case_001350_firstLine, case_001350_support, case_001350_seq, case_001350_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001350_secondLine_eq :
    case_001350_support.secondLine case_001350_seq case_001350_b = case_001350_secondLine := by
  norm_num [case_001350_secondLine, case_001350_support, case_001350_seq, case_001350_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001350_sourceAgrees :
    SourceAgrees case_001350_support case_001350_rank.val case_001350_mask := by
  intro hlt
  have hrank : (⟨case_001350_rank.val, hlt⟩ : Fin numPairWords) = case_001350_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001350_rank.val, hlt⟩ case_001350_mask =
        case_001350_seq := by
    simpa [hrank] using case_001350_seqAtRank
  simp [SourceChecks, hseq, case_001350_support,
    checkTranslationConstraintSource, case_001350_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001350_rows :
    EqEqPosVarSecondRows case_001350_support case_001350_rank.val case_001350_mask := by
  intro hlt
  have hrank : (⟨case_001350_rank.val, hlt⟩ : Fin numPairWords) = case_001350_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001350_rank.val, hlt⟩ case_001350_mask =
        case_001350_seq := by
    simpa [hrank] using case_001350_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001350_rank.val, hlt⟩ case_001350_mask =
        case_001350_b := by
    simpa [hrank] using case_001350_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001350_support case_001350_rank.val hlt
          case_001350_mask = case_001350_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001350_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001350_support case_001350_rank.val hlt
          case_001350_mask = case_001350_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001350_secondLine_eq]
  have case_001350_fixedFirst :
      FixedRow (FirstLineAt case_001350_support case_001350_rank.val hlt case_001350_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001350_firstLine, FixedRow]
  have case_001350_rowSecond :
      EqEqPosRow (SecondLineAt case_001350_support case_001350_rank.val hlt case_001350_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001350_secondLine, EqEqPosRow]
  exact ⟨case_001350_fixedFirst, case_001350_rowSecond⟩

private theorem case_001350_existsRows :
    ExistsEqEqPosVarSecondRows case_001350_rank.val case_001350_mask :=
  ⟨case_001350_support, case_001350_sourceAgrees, case_001350_rows⟩

private theorem case_001350_covered :
    RowPropertyParametricCovered case_001350_rank.val case_001350_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001350_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001351_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001351_mask : SignMask := ⟨9, by decide⟩
private def case_001351_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001351_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001351_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001351_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_001351_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001351_secondLine : StrictLin2 := { a := (-9/110), b := (-9/110), c := (-52/55) }

private theorem case_001351_rankWord :
    rankPairWord? case_001351_word = some case_001351_rank := by
  decide

private theorem case_001351_unrank :
    unrankPairWord case_001351_rank = case_001351_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001351_word case_001351_rank).1
    case_001351_rankWord |>.symm

private theorem case_001351_seqChoice :
    translationChoiceSeq case_001351_word case_001351_mask = case_001351_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001351_seqAtRank :
    translationSeqAtRankMask case_001351_rank case_001351_mask = case_001351_seq := by
  rw [translationSeqAtRankMask, case_001351_unrank]
  exact case_001351_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001351_bAtRank :
    translationBAtRankMask case_001351_rank case_001351_mask = case_001351_b := by
  rw [translationBAtRankMask, case_001351_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001351_b, case_001351_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001351_firstLine_eq :
    case_001351_support.firstLine case_001351_seq case_001351_b = case_001351_firstLine := by
  norm_num [case_001351_firstLine, case_001351_support, case_001351_seq, case_001351_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001351_secondLine_eq :
    case_001351_support.secondLine case_001351_seq case_001351_b = case_001351_secondLine := by
  norm_num [case_001351_secondLine, case_001351_support, case_001351_seq, case_001351_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001351_sourceAgrees :
    SourceAgrees case_001351_support case_001351_rank.val case_001351_mask := by
  intro hlt
  have hrank : (⟨case_001351_rank.val, hlt⟩ : Fin numPairWords) = case_001351_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001351_rank.val, hlt⟩ case_001351_mask =
        case_001351_seq := by
    simpa [hrank] using case_001351_seqAtRank
  simp [SourceChecks, hseq, case_001351_support,
    checkTranslationConstraintSource, case_001351_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001351_rows :
    EqEqPosVarSecondRows case_001351_support case_001351_rank.val case_001351_mask := by
  intro hlt
  have hrank : (⟨case_001351_rank.val, hlt⟩ : Fin numPairWords) = case_001351_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001351_rank.val, hlt⟩ case_001351_mask =
        case_001351_seq := by
    simpa [hrank] using case_001351_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001351_rank.val, hlt⟩ case_001351_mask =
        case_001351_b := by
    simpa [hrank] using case_001351_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001351_support case_001351_rank.val hlt
          case_001351_mask = case_001351_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001351_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001351_support case_001351_rank.val hlt
          case_001351_mask = case_001351_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001351_secondLine_eq]
  have case_001351_fixedFirst :
      FixedRow (FirstLineAt case_001351_support case_001351_rank.val hlt case_001351_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001351_firstLine, FixedRow]
  have case_001351_rowSecond :
      EqEqPosRow (SecondLineAt case_001351_support case_001351_rank.val hlt case_001351_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001351_secondLine, EqEqPosRow]
  exact ⟨case_001351_fixedFirst, case_001351_rowSecond⟩

private theorem case_001351_existsRows :
    ExistsEqEqPosVarSecondRows case_001351_rank.val case_001351_mask :=
  ⟨case_001351_support, case_001351_sourceAgrees, case_001351_rows⟩

private theorem case_001351_covered :
    RowPropertyParametricCovered case_001351_rank.val case_001351_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001351_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001352_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001352_mask : SignMask := ⟨13, by decide⟩
private def case_001352_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001352_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001352_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001352_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_001352_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001352_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_001352_rankWord :
    rankPairWord? case_001352_word = some case_001352_rank := by
  decide

private theorem case_001352_unrank :
    unrankPairWord case_001352_rank = case_001352_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001352_word case_001352_rank).1
    case_001352_rankWord |>.symm

private theorem case_001352_seqChoice :
    translationChoiceSeq case_001352_word case_001352_mask = case_001352_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001352_seqAtRank :
    translationSeqAtRankMask case_001352_rank case_001352_mask = case_001352_seq := by
  rw [translationSeqAtRankMask, case_001352_unrank]
  exact case_001352_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001352_bAtRank :
    translationBAtRankMask case_001352_rank case_001352_mask = case_001352_b := by
  rw [translationBAtRankMask, case_001352_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001352_b, case_001352_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001352_firstLine_eq :
    case_001352_support.firstLine case_001352_seq case_001352_b = case_001352_firstLine := by
  norm_num [case_001352_firstLine, case_001352_support, case_001352_seq, case_001352_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001352_secondLine_eq :
    case_001352_support.secondLine case_001352_seq case_001352_b = case_001352_secondLine := by
  norm_num [case_001352_secondLine, case_001352_support, case_001352_seq, case_001352_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001352_sourceAgrees :
    SourceAgrees case_001352_support case_001352_rank.val case_001352_mask := by
  intro hlt
  have hrank : (⟨case_001352_rank.val, hlt⟩ : Fin numPairWords) = case_001352_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001352_rank.val, hlt⟩ case_001352_mask =
        case_001352_seq := by
    simpa [hrank] using case_001352_seqAtRank
  simp [SourceChecks, hseq, case_001352_support,
    checkTranslationConstraintSource, case_001352_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001352_rows :
    EqEqPosVarSecondRows case_001352_support case_001352_rank.val case_001352_mask := by
  intro hlt
  have hrank : (⟨case_001352_rank.val, hlt⟩ : Fin numPairWords) = case_001352_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001352_rank.val, hlt⟩ case_001352_mask =
        case_001352_seq := by
    simpa [hrank] using case_001352_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001352_rank.val, hlt⟩ case_001352_mask =
        case_001352_b := by
    simpa [hrank] using case_001352_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001352_support case_001352_rank.val hlt
          case_001352_mask = case_001352_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001352_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001352_support case_001352_rank.val hlt
          case_001352_mask = case_001352_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001352_secondLine_eq]
  have case_001352_fixedFirst :
      FixedRow (FirstLineAt case_001352_support case_001352_rank.val hlt case_001352_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001352_firstLine, FixedRow]
  have case_001352_rowSecond :
      EqEqPosRow (SecondLineAt case_001352_support case_001352_rank.val hlt case_001352_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001352_secondLine, EqEqPosRow]
  exact ⟨case_001352_fixedFirst, case_001352_rowSecond⟩

private theorem case_001352_existsRows :
    ExistsEqEqPosVarSecondRows case_001352_rank.val case_001352_mask :=
  ⟨case_001352_support, case_001352_sourceAgrees, case_001352_rows⟩

private theorem case_001352_covered :
    RowPropertyParametricCovered case_001352_rank.val case_001352_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001352_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001353_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001353_mask : SignMask := ⟨16, by decide⟩
private def case_001353_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001353_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001353_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001353_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_001353_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001353_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001353_rankWord :
    rankPairWord? case_001353_word = some case_001353_rank := by
  decide

private theorem case_001353_unrank :
    unrankPairWord case_001353_rank = case_001353_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001353_word case_001353_rank).1
    case_001353_rankWord |>.symm

private theorem case_001353_seqChoice :
    translationChoiceSeq case_001353_word case_001353_mask = case_001353_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001353_seqAtRank :
    translationSeqAtRankMask case_001353_rank case_001353_mask = case_001353_seq := by
  rw [translationSeqAtRankMask, case_001353_unrank]
  exact case_001353_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001353_bAtRank :
    translationBAtRankMask case_001353_rank case_001353_mask = case_001353_b := by
  rw [translationBAtRankMask, case_001353_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001353_b, case_001353_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001353_firstLine_eq :
    case_001353_support.firstLine case_001353_seq case_001353_b = case_001353_firstLine := by
  norm_num [case_001353_firstLine, case_001353_support, case_001353_seq, case_001353_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001353_secondLine_eq :
    case_001353_support.secondLine case_001353_seq case_001353_b = case_001353_secondLine := by
  norm_num [case_001353_secondLine, case_001353_support, case_001353_seq, case_001353_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001353_sourceAgrees :
    SourceAgrees case_001353_support case_001353_rank.val case_001353_mask := by
  intro hlt
  have hrank : (⟨case_001353_rank.val, hlt⟩ : Fin numPairWords) = case_001353_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001353_rank.val, hlt⟩ case_001353_mask =
        case_001353_seq := by
    simpa [hrank] using case_001353_seqAtRank
  simp [SourceChecks, hseq, case_001353_support,
    checkTranslationConstraintSource, case_001353_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001353_rows :
    EqEqPosVarFirstRows case_001353_support case_001353_rank.val case_001353_mask := by
  intro hlt
  have hrank : (⟨case_001353_rank.val, hlt⟩ : Fin numPairWords) = case_001353_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001353_rank.val, hlt⟩ case_001353_mask =
        case_001353_seq := by
    simpa [hrank] using case_001353_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001353_rank.val, hlt⟩ case_001353_mask =
        case_001353_b := by
    simpa [hrank] using case_001353_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001353_support case_001353_rank.val hlt
          case_001353_mask = case_001353_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001353_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001353_support case_001353_rank.val hlt
          case_001353_mask = case_001353_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001353_secondLine_eq]
  have case_001353_rowFirst :
      EqEqPosRow (FirstLineAt case_001353_support case_001353_rank.val hlt case_001353_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001353_firstLine, EqEqPosRow]
  have case_001353_fixedSecond :
      FixedRow (SecondLineAt case_001353_support case_001353_rank.val hlt case_001353_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001353_secondLine, FixedRow]
  exact ⟨case_001353_rowFirst, case_001353_fixedSecond⟩

private theorem case_001353_existsRows :
    ExistsEqEqPosVarFirstRows case_001353_rank.val case_001353_mask :=
  ⟨case_001353_support, case_001353_sourceAgrees, case_001353_rows⟩

private theorem case_001353_covered :
    RowPropertyParametricCovered case_001353_rank.val case_001353_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001353_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001354_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001354_mask : SignMask := ⟨18, by decide⟩
private def case_001354_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001354_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001354_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001354_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_001354_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001354_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001354_rankWord :
    rankPairWord? case_001354_word = some case_001354_rank := by
  decide

private theorem case_001354_unrank :
    unrankPairWord case_001354_rank = case_001354_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001354_word case_001354_rank).1
    case_001354_rankWord |>.symm

private theorem case_001354_seqChoice :
    translationChoiceSeq case_001354_word case_001354_mask = case_001354_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001354_seqAtRank :
    translationSeqAtRankMask case_001354_rank case_001354_mask = case_001354_seq := by
  rw [translationSeqAtRankMask, case_001354_unrank]
  exact case_001354_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001354_bAtRank :
    translationBAtRankMask case_001354_rank case_001354_mask = case_001354_b := by
  rw [translationBAtRankMask, case_001354_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001354_b, case_001354_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001354_firstLine_eq :
    case_001354_support.firstLine case_001354_seq case_001354_b = case_001354_firstLine := by
  norm_num [case_001354_firstLine, case_001354_support, case_001354_seq, case_001354_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001354_secondLine_eq :
    case_001354_support.secondLine case_001354_seq case_001354_b = case_001354_secondLine := by
  norm_num [case_001354_secondLine, case_001354_support, case_001354_seq, case_001354_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001354_sourceAgrees :
    SourceAgrees case_001354_support case_001354_rank.val case_001354_mask := by
  intro hlt
  have hrank : (⟨case_001354_rank.val, hlt⟩ : Fin numPairWords) = case_001354_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001354_rank.val, hlt⟩ case_001354_mask =
        case_001354_seq := by
    simpa [hrank] using case_001354_seqAtRank
  simp [SourceChecks, hseq, case_001354_support,
    checkTranslationConstraintSource, case_001354_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001354_rows :
    EqEqPosVarFirstRows case_001354_support case_001354_rank.val case_001354_mask := by
  intro hlt
  have hrank : (⟨case_001354_rank.val, hlt⟩ : Fin numPairWords) = case_001354_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001354_rank.val, hlt⟩ case_001354_mask =
        case_001354_seq := by
    simpa [hrank] using case_001354_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001354_rank.val, hlt⟩ case_001354_mask =
        case_001354_b := by
    simpa [hrank] using case_001354_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001354_support case_001354_rank.val hlt
          case_001354_mask = case_001354_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001354_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001354_support case_001354_rank.val hlt
          case_001354_mask = case_001354_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001354_secondLine_eq]
  have case_001354_rowFirst :
      EqEqPosRow (FirstLineAt case_001354_support case_001354_rank.val hlt case_001354_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001354_firstLine, EqEqPosRow]
  have case_001354_fixedSecond :
      FixedRow (SecondLineAt case_001354_support case_001354_rank.val hlt case_001354_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001354_secondLine, FixedRow]
  exact ⟨case_001354_rowFirst, case_001354_fixedSecond⟩

private theorem case_001354_existsRows :
    ExistsEqEqPosVarFirstRows case_001354_rank.val case_001354_mask :=
  ⟨case_001354_support, case_001354_sourceAgrees, case_001354_rows⟩

private theorem case_001354_covered :
    RowPropertyParametricCovered case_001354_rank.val case_001354_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001354_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001355_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001355_mask : SignMask := ⟨22, by decide⟩
private def case_001355_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001355_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001355_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001355_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_001355_firstLine : StrictLin2 := { a := -1, b := 1, c := -3 }
private def case_001355_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001355_rankWord :
    rankPairWord? case_001355_word = some case_001355_rank := by
  decide

private theorem case_001355_unrank :
    unrankPairWord case_001355_rank = case_001355_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001355_word case_001355_rank).1
    case_001355_rankWord |>.symm

private theorem case_001355_seqChoice :
    translationChoiceSeq case_001355_word case_001355_mask = case_001355_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001355_seqAtRank :
    translationSeqAtRankMask case_001355_rank case_001355_mask = case_001355_seq := by
  rw [translationSeqAtRankMask, case_001355_unrank]
  exact case_001355_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001355_bAtRank :
    translationBAtRankMask case_001355_rank case_001355_mask = case_001355_b := by
  rw [translationBAtRankMask, case_001355_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001355_b, case_001355_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001355_firstLine_eq :
    case_001355_support.firstLine case_001355_seq case_001355_b = case_001355_firstLine := by
  norm_num [case_001355_firstLine, case_001355_support, case_001355_seq, case_001355_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001355_secondLine_eq :
    case_001355_support.secondLine case_001355_seq case_001355_b = case_001355_secondLine := by
  norm_num [case_001355_secondLine, case_001355_support, case_001355_seq, case_001355_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001355_sourceAgrees :
    SourceAgrees case_001355_support case_001355_rank.val case_001355_mask := by
  intro hlt
  have hrank : (⟨case_001355_rank.val, hlt⟩ : Fin numPairWords) = case_001355_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001355_rank.val, hlt⟩ case_001355_mask =
        case_001355_seq := by
    simpa [hrank] using case_001355_seqAtRank
  simp [SourceChecks, hseq, case_001355_support,
    checkTranslationConstraintSource, case_001355_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001355_rows :
    OppOneMinusVarFirstRows case_001355_support case_001355_rank.val case_001355_mask := by
  intro hlt
  have hrank : (⟨case_001355_rank.val, hlt⟩ : Fin numPairWords) = case_001355_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001355_rank.val, hlt⟩ case_001355_mask =
        case_001355_seq := by
    simpa [hrank] using case_001355_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001355_rank.val, hlt⟩ case_001355_mask =
        case_001355_b := by
    simpa [hrank] using case_001355_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001355_support case_001355_rank.val hlt
          case_001355_mask = case_001355_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001355_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001355_support case_001355_rank.val hlt
          case_001355_mask = case_001355_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001355_secondLine_eq]
  have case_001355_rowFirst :
      OppPosRow (FirstLineAt case_001355_support case_001355_rank.val hlt case_001355_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001355_firstLine, OppPosRow]
  have case_001355_fixedSecond :
      FixedRow (SecondLineAt case_001355_support case_001355_rank.val hlt case_001355_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001355_secondLine, FixedRow]
  exact ⟨case_001355_rowFirst, case_001355_fixedSecond⟩

private theorem case_001355_existsRows :
    ExistsOppOneMinusVarFirstRows case_001355_rank.val case_001355_mask :=
  ⟨case_001355_support, case_001355_sourceAgrees, case_001355_rows⟩

private theorem case_001355_covered :
    RowPropertyParametricCovered case_001355_rank.val case_001355_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001355_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001356_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001356_mask : SignMask := ⟨24, by decide⟩
private def case_001356_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001356_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001356_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001356_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_001356_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_001356_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001356_rankWord :
    rankPairWord? case_001356_word = some case_001356_rank := by
  decide

private theorem case_001356_unrank :
    unrankPairWord case_001356_rank = case_001356_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001356_word case_001356_rank).1
    case_001356_rankWord |>.symm

private theorem case_001356_seqChoice :
    translationChoiceSeq case_001356_word case_001356_mask = case_001356_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001356_seqAtRank :
    translationSeqAtRankMask case_001356_rank case_001356_mask = case_001356_seq := by
  rw [translationSeqAtRankMask, case_001356_unrank]
  exact case_001356_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001356_bAtRank :
    translationBAtRankMask case_001356_rank case_001356_mask = case_001356_b := by
  rw [translationBAtRankMask, case_001356_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001356_b, case_001356_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001356_firstLine_eq :
    case_001356_support.firstLine case_001356_seq case_001356_b = case_001356_firstLine := by
  norm_num [case_001356_firstLine, case_001356_support, case_001356_seq, case_001356_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001356_secondLine_eq :
    case_001356_support.secondLine case_001356_seq case_001356_b = case_001356_secondLine := by
  norm_num [case_001356_secondLine, case_001356_support, case_001356_seq, case_001356_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001356_sourceAgrees :
    SourceAgrees case_001356_support case_001356_rank.val case_001356_mask := by
  intro hlt
  have hrank : (⟨case_001356_rank.val, hlt⟩ : Fin numPairWords) = case_001356_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001356_rank.val, hlt⟩ case_001356_mask =
        case_001356_seq := by
    simpa [hrank] using case_001356_seqAtRank
  simp [SourceChecks, hseq, case_001356_support,
    checkTranslationConstraintSource, case_001356_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001356_rows :
    EqEqPosVarFirstRows case_001356_support case_001356_rank.val case_001356_mask := by
  intro hlt
  have hrank : (⟨case_001356_rank.val, hlt⟩ : Fin numPairWords) = case_001356_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001356_rank.val, hlt⟩ case_001356_mask =
        case_001356_seq := by
    simpa [hrank] using case_001356_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001356_rank.val, hlt⟩ case_001356_mask =
        case_001356_b := by
    simpa [hrank] using case_001356_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001356_support case_001356_rank.val hlt
          case_001356_mask = case_001356_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001356_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001356_support case_001356_rank.val hlt
          case_001356_mask = case_001356_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001356_secondLine_eq]
  have case_001356_rowFirst :
      EqEqPosRow (FirstLineAt case_001356_support case_001356_rank.val hlt case_001356_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001356_firstLine, EqEqPosRow]
  have case_001356_fixedSecond :
      FixedRow (SecondLineAt case_001356_support case_001356_rank.val hlt case_001356_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001356_secondLine, FixedRow]
  exact ⟨case_001356_rowFirst, case_001356_fixedSecond⟩

private theorem case_001356_existsRows :
    ExistsEqEqPosVarFirstRows case_001356_rank.val case_001356_mask :=
  ⟨case_001356_support, case_001356_sourceAgrees, case_001356_rows⟩

private theorem case_001356_covered :
    RowPropertyParametricCovered case_001356_rank.val case_001356_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001356_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001357_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001357_mask : SignMask := ⟨28, by decide⟩
private def case_001357_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001357_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001357_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001357_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_001357_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_001357_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001357_rankWord :
    rankPairWord? case_001357_word = some case_001357_rank := by
  decide

private theorem case_001357_unrank :
    unrankPairWord case_001357_rank = case_001357_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001357_word case_001357_rank).1
    case_001357_rankWord |>.symm

private theorem case_001357_seqChoice :
    translationChoiceSeq case_001357_word case_001357_mask = case_001357_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001357_seqAtRank :
    translationSeqAtRankMask case_001357_rank case_001357_mask = case_001357_seq := by
  rw [translationSeqAtRankMask, case_001357_unrank]
  exact case_001357_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001357_bAtRank :
    translationBAtRankMask case_001357_rank case_001357_mask = case_001357_b := by
  rw [translationBAtRankMask, case_001357_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001357_b, case_001357_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001357_firstLine_eq :
    case_001357_support.firstLine case_001357_seq case_001357_b = case_001357_firstLine := by
  norm_num [case_001357_firstLine, case_001357_support, case_001357_seq, case_001357_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001357_secondLine_eq :
    case_001357_support.secondLine case_001357_seq case_001357_b = case_001357_secondLine := by
  norm_num [case_001357_secondLine, case_001357_support, case_001357_seq, case_001357_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001357_sourceAgrees :
    SourceAgrees case_001357_support case_001357_rank.val case_001357_mask := by
  intro hlt
  have hrank : (⟨case_001357_rank.val, hlt⟩ : Fin numPairWords) = case_001357_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001357_rank.val, hlt⟩ case_001357_mask =
        case_001357_seq := by
    simpa [hrank] using case_001357_seqAtRank
  simp [SourceChecks, hseq, case_001357_support,
    checkTranslationConstraintSource, case_001357_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001357_rows :
    OppOneMinusVarFirstRows case_001357_support case_001357_rank.val case_001357_mask := by
  intro hlt
  have hrank : (⟨case_001357_rank.val, hlt⟩ : Fin numPairWords) = case_001357_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001357_rank.val, hlt⟩ case_001357_mask =
        case_001357_seq := by
    simpa [hrank] using case_001357_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001357_rank.val, hlt⟩ case_001357_mask =
        case_001357_b := by
    simpa [hrank] using case_001357_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001357_support case_001357_rank.val hlt
          case_001357_mask = case_001357_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001357_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001357_support case_001357_rank.val hlt
          case_001357_mask = case_001357_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001357_secondLine_eq]
  have case_001357_rowFirst :
      OppPosRow (FirstLineAt case_001357_support case_001357_rank.val hlt case_001357_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001357_firstLine, OppPosRow]
  have case_001357_fixedSecond :
      FixedRow (SecondLineAt case_001357_support case_001357_rank.val hlt case_001357_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001357_secondLine, FixedRow]
  exact ⟨case_001357_rowFirst, case_001357_fixedSecond⟩

private theorem case_001357_existsRows :
    ExistsOppOneMinusVarFirstRows case_001357_rank.val case_001357_mask :=
  ⟨case_001357_support, case_001357_sourceAgrees, case_001357_rows⟩

private theorem case_001357_covered :
    RowPropertyParametricCovered case_001357_rank.val case_001357_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001357_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001358_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001358_mask : SignMask := ⟨29, by decide⟩
private def case_001358_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001358_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001358_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001358_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_001358_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001358_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_001358_rankWord :
    rankPairWord? case_001358_word = some case_001358_rank := by
  decide

private theorem case_001358_unrank :
    unrankPairWord case_001358_rank = case_001358_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001358_word case_001358_rank).1
    case_001358_rankWord |>.symm

private theorem case_001358_seqChoice :
    translationChoiceSeq case_001358_word case_001358_mask = case_001358_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001358_seqAtRank :
    translationSeqAtRankMask case_001358_rank case_001358_mask = case_001358_seq := by
  rw [translationSeqAtRankMask, case_001358_unrank]
  exact case_001358_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001358_bAtRank :
    translationBAtRankMask case_001358_rank case_001358_mask = case_001358_b := by
  rw [translationBAtRankMask, case_001358_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001358_b, case_001358_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001358_firstLine_eq :
    case_001358_support.firstLine case_001358_seq case_001358_b = case_001358_firstLine := by
  norm_num [case_001358_firstLine, case_001358_support, case_001358_seq, case_001358_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001358_secondLine_eq :
    case_001358_support.secondLine case_001358_seq case_001358_b = case_001358_secondLine := by
  norm_num [case_001358_secondLine, case_001358_support, case_001358_seq, case_001358_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001358_sourceAgrees :
    SourceAgrees case_001358_support case_001358_rank.val case_001358_mask := by
  intro hlt
  have hrank : (⟨case_001358_rank.val, hlt⟩ : Fin numPairWords) = case_001358_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001358_rank.val, hlt⟩ case_001358_mask =
        case_001358_seq := by
    simpa [hrank] using case_001358_seqAtRank
  simp [SourceChecks, hseq, case_001358_support,
    checkTranslationConstraintSource, case_001358_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001358_rows :
    EqEqPosVarSecondRows case_001358_support case_001358_rank.val case_001358_mask := by
  intro hlt
  have hrank : (⟨case_001358_rank.val, hlt⟩ : Fin numPairWords) = case_001358_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001358_rank.val, hlt⟩ case_001358_mask =
        case_001358_seq := by
    simpa [hrank] using case_001358_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001358_rank.val, hlt⟩ case_001358_mask =
        case_001358_b := by
    simpa [hrank] using case_001358_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001358_support case_001358_rank.val hlt
          case_001358_mask = case_001358_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001358_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001358_support case_001358_rank.val hlt
          case_001358_mask = case_001358_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001358_secondLine_eq]
  have case_001358_fixedFirst :
      FixedRow (FirstLineAt case_001358_support case_001358_rank.val hlt case_001358_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001358_firstLine, FixedRow]
  have case_001358_rowSecond :
      EqEqPosRow (SecondLineAt case_001358_support case_001358_rank.val hlt case_001358_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001358_secondLine, EqEqPosRow]
  exact ⟨case_001358_fixedFirst, case_001358_rowSecond⟩

private theorem case_001358_existsRows :
    ExistsEqEqPosVarSecondRows case_001358_rank.val case_001358_mask :=
  ⟨case_001358_support, case_001358_sourceAgrees, case_001358_rows⟩

private theorem case_001358_covered :
    RowPropertyParametricCovered case_001358_rank.val case_001358_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001358_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001359_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001359_mask : SignMask := ⟨30, by decide⟩
private def case_001359_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001359_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001359_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001359_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_001359_firstLine : StrictLin2 := { a := (-22/17), b := (22/17), c := (-88/51) }
private def case_001359_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001359_rankWord :
    rankPairWord? case_001359_word = some case_001359_rank := by
  decide

private theorem case_001359_unrank :
    unrankPairWord case_001359_rank = case_001359_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001359_word case_001359_rank).1
    case_001359_rankWord |>.symm

private theorem case_001359_seqChoice :
    translationChoiceSeq case_001359_word case_001359_mask = case_001359_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001359_seqAtRank :
    translationSeqAtRankMask case_001359_rank case_001359_mask = case_001359_seq := by
  rw [translationSeqAtRankMask, case_001359_unrank]
  exact case_001359_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001359_bAtRank :
    translationBAtRankMask case_001359_rank case_001359_mask = case_001359_b := by
  rw [translationBAtRankMask, case_001359_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001359_b, case_001359_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001359_firstLine_eq :
    case_001359_support.firstLine case_001359_seq case_001359_b = case_001359_firstLine := by
  norm_num [case_001359_firstLine, case_001359_support, case_001359_seq, case_001359_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001359_secondLine_eq :
    case_001359_support.secondLine case_001359_seq case_001359_b = case_001359_secondLine := by
  norm_num [case_001359_secondLine, case_001359_support, case_001359_seq, case_001359_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001359_sourceAgrees :
    SourceAgrees case_001359_support case_001359_rank.val case_001359_mask := by
  intro hlt
  have hrank : (⟨case_001359_rank.val, hlt⟩ : Fin numPairWords) = case_001359_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001359_rank.val, hlt⟩ case_001359_mask =
        case_001359_seq := by
    simpa [hrank] using case_001359_seqAtRank
  simp [SourceChecks, hseq, case_001359_support,
    checkTranslationConstraintSource, case_001359_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001359_rows :
    OppOneMinusVarFirstRows case_001359_support case_001359_rank.val case_001359_mask := by
  intro hlt
  have hrank : (⟨case_001359_rank.val, hlt⟩ : Fin numPairWords) = case_001359_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001359_rank.val, hlt⟩ case_001359_mask =
        case_001359_seq := by
    simpa [hrank] using case_001359_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001359_rank.val, hlt⟩ case_001359_mask =
        case_001359_b := by
    simpa [hrank] using case_001359_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001359_support case_001359_rank.val hlt
          case_001359_mask = case_001359_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001359_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001359_support case_001359_rank.val hlt
          case_001359_mask = case_001359_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001359_secondLine_eq]
  have case_001359_rowFirst :
      OppPosRow (FirstLineAt case_001359_support case_001359_rank.val hlt case_001359_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001359_firstLine, OppPosRow]
  have case_001359_fixedSecond :
      FixedRow (SecondLineAt case_001359_support case_001359_rank.val hlt case_001359_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001359_secondLine, FixedRow]
  exact ⟨case_001359_rowFirst, case_001359_fixedSecond⟩

private theorem case_001359_existsRows :
    ExistsOppOneMinusVarFirstRows case_001359_rank.val case_001359_mask :=
  ⟨case_001359_support, case_001359_sourceAgrees, case_001359_rows⟩

private theorem case_001359_covered :
    RowPropertyParametricCovered case_001359_rank.val case_001359_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001359_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001360_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001360_mask : SignMask := ⟨31, by decide⟩
private def case_001360_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001360_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001360_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001360_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_001360_firstLine : StrictLin2 := { a := (-11/5), b := (-11/5), c := (-27/5) }
private def case_001360_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001360_rankWord :
    rankPairWord? case_001360_word = some case_001360_rank := by
  decide

private theorem case_001360_unrank :
    unrankPairWord case_001360_rank = case_001360_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001360_word case_001360_rank).1
    case_001360_rankWord |>.symm

private theorem case_001360_seqChoice :
    translationChoiceSeq case_001360_word case_001360_mask = case_001360_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001360_seqAtRank :
    translationSeqAtRankMask case_001360_rank case_001360_mask = case_001360_seq := by
  rw [translationSeqAtRankMask, case_001360_unrank]
  exact case_001360_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001360_bAtRank :
    translationBAtRankMask case_001360_rank case_001360_mask = case_001360_b := by
  rw [translationBAtRankMask, case_001360_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001360_b, case_001360_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001360_firstLine_eq :
    case_001360_support.firstLine case_001360_seq case_001360_b = case_001360_firstLine := by
  norm_num [case_001360_firstLine, case_001360_support, case_001360_seq, case_001360_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001360_secondLine_eq :
    case_001360_support.secondLine case_001360_seq case_001360_b = case_001360_secondLine := by
  norm_num [case_001360_secondLine, case_001360_support, case_001360_seq, case_001360_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001360_sourceAgrees :
    SourceAgrees case_001360_support case_001360_rank.val case_001360_mask := by
  intro hlt
  have hrank : (⟨case_001360_rank.val, hlt⟩ : Fin numPairWords) = case_001360_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001360_rank.val, hlt⟩ case_001360_mask =
        case_001360_seq := by
    simpa [hrank] using case_001360_seqAtRank
  simp [SourceChecks, hseq, case_001360_support,
    checkTranslationConstraintSource, case_001360_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001360_rows :
    EqEqPosVarFirstRows case_001360_support case_001360_rank.val case_001360_mask := by
  intro hlt
  have hrank : (⟨case_001360_rank.val, hlt⟩ : Fin numPairWords) = case_001360_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001360_rank.val, hlt⟩ case_001360_mask =
        case_001360_seq := by
    simpa [hrank] using case_001360_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001360_rank.val, hlt⟩ case_001360_mask =
        case_001360_b := by
    simpa [hrank] using case_001360_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001360_support case_001360_rank.val hlt
          case_001360_mask = case_001360_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001360_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001360_support case_001360_rank.val hlt
          case_001360_mask = case_001360_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001360_secondLine_eq]
  have case_001360_rowFirst :
      EqEqPosRow (FirstLineAt case_001360_support case_001360_rank.val hlt case_001360_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001360_firstLine, EqEqPosRow]
  have case_001360_fixedSecond :
      FixedRow (SecondLineAt case_001360_support case_001360_rank.val hlt case_001360_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001360_secondLine, FixedRow]
  exact ⟨case_001360_rowFirst, case_001360_fixedSecond⟩

private theorem case_001360_existsRows :
    ExistsEqEqPosVarFirstRows case_001360_rank.val case_001360_mask :=
  ⟨case_001360_support, case_001360_sourceAgrees, case_001360_rows⟩

private theorem case_001360_covered :
    RowPropertyParametricCovered case_001360_rank.val case_001360_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001360_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001361_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001361_mask : SignMask := ⟨45, by decide⟩
private def case_001361_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001361_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001361_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001361_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_001361_firstLine : StrictLin2 := { a := 1, b := -1, c := (-25/3) }
private def case_001361_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001361_rankWord :
    rankPairWord? case_001361_word = some case_001361_rank := by
  decide

private theorem case_001361_unrank :
    unrankPairWord case_001361_rank = case_001361_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001361_word case_001361_rank).1
    case_001361_rankWord |>.symm

private theorem case_001361_seqChoice :
    translationChoiceSeq case_001361_word case_001361_mask = case_001361_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001361_seqAtRank :
    translationSeqAtRankMask case_001361_rank case_001361_mask = case_001361_seq := by
  rw [translationSeqAtRankMask, case_001361_unrank]
  exact case_001361_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001361_bAtRank :
    translationBAtRankMask case_001361_rank case_001361_mask = case_001361_b := by
  rw [translationBAtRankMask, case_001361_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001361_b, case_001361_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001361_firstLine_eq :
    case_001361_support.firstLine case_001361_seq case_001361_b = case_001361_firstLine := by
  norm_num [case_001361_firstLine, case_001361_support, case_001361_seq, case_001361_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001361_secondLine_eq :
    case_001361_support.secondLine case_001361_seq case_001361_b = case_001361_secondLine := by
  norm_num [case_001361_secondLine, case_001361_support, case_001361_seq, case_001361_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001361_sourceAgrees :
    SourceAgrees case_001361_support case_001361_rank.val case_001361_mask := by
  intro hlt
  have hrank : (⟨case_001361_rank.val, hlt⟩ : Fin numPairWords) = case_001361_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001361_rank.val, hlt⟩ case_001361_mask =
        case_001361_seq := by
    simpa [hrank] using case_001361_seqAtRank
  simp [SourceChecks, hseq, case_001361_support,
    checkTranslationConstraintSource, case_001361_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001361_rows :
    OppMinusOneVarFirstRows case_001361_support case_001361_rank.val case_001361_mask := by
  intro hlt
  have hrank : (⟨case_001361_rank.val, hlt⟩ : Fin numPairWords) = case_001361_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001361_rank.val, hlt⟩ case_001361_mask =
        case_001361_seq := by
    simpa [hrank] using case_001361_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001361_rank.val, hlt⟩ case_001361_mask =
        case_001361_b := by
    simpa [hrank] using case_001361_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001361_support case_001361_rank.val hlt
          case_001361_mask = case_001361_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001361_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001361_support case_001361_rank.val hlt
          case_001361_mask = case_001361_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001361_secondLine_eq]
  have case_001361_rowFirst :
      OppNegRow (FirstLineAt case_001361_support case_001361_rank.val hlt case_001361_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001361_firstLine, OppNegRow]
  have case_001361_fixedSecond :
      FixedRow (SecondLineAt case_001361_support case_001361_rank.val hlt case_001361_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001361_secondLine, FixedRow]
  exact ⟨case_001361_rowFirst, case_001361_fixedSecond⟩

private theorem case_001361_existsRows :
    ExistsOppMinusOneVarFirstRows case_001361_rank.val case_001361_mask :=
  ⟨case_001361_support, case_001361_sourceAgrees, case_001361_rows⟩

private theorem case_001361_covered :
    RowPropertyParametricCovered case_001361_rank.val case_001361_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001361_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001362_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001362_mask : SignMask := ⟨47, by decide⟩
private def case_001362_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001362_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001362_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001362_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_001362_firstLine : StrictLin2 := { a := 1, b := -1, c := (-13/3) }
private def case_001362_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001362_rankWord :
    rankPairWord? case_001362_word = some case_001362_rank := by
  decide

private theorem case_001362_unrank :
    unrankPairWord case_001362_rank = case_001362_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001362_word case_001362_rank).1
    case_001362_rankWord |>.symm

private theorem case_001362_seqChoice :
    translationChoiceSeq case_001362_word case_001362_mask = case_001362_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001362_seqAtRank :
    translationSeqAtRankMask case_001362_rank case_001362_mask = case_001362_seq := by
  rw [translationSeqAtRankMask, case_001362_unrank]
  exact case_001362_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001362_bAtRank :
    translationBAtRankMask case_001362_rank case_001362_mask = case_001362_b := by
  rw [translationBAtRankMask, case_001362_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001362_b, case_001362_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001362_firstLine_eq :
    case_001362_support.firstLine case_001362_seq case_001362_b = case_001362_firstLine := by
  norm_num [case_001362_firstLine, case_001362_support, case_001362_seq, case_001362_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001362_secondLine_eq :
    case_001362_support.secondLine case_001362_seq case_001362_b = case_001362_secondLine := by
  norm_num [case_001362_secondLine, case_001362_support, case_001362_seq, case_001362_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001362_sourceAgrees :
    SourceAgrees case_001362_support case_001362_rank.val case_001362_mask := by
  intro hlt
  have hrank : (⟨case_001362_rank.val, hlt⟩ : Fin numPairWords) = case_001362_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001362_rank.val, hlt⟩ case_001362_mask =
        case_001362_seq := by
    simpa [hrank] using case_001362_seqAtRank
  simp [SourceChecks, hseq, case_001362_support,
    checkTranslationConstraintSource, case_001362_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001362_rows :
    OppMinusOneVarFirstRows case_001362_support case_001362_rank.val case_001362_mask := by
  intro hlt
  have hrank : (⟨case_001362_rank.val, hlt⟩ : Fin numPairWords) = case_001362_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001362_rank.val, hlt⟩ case_001362_mask =
        case_001362_seq := by
    simpa [hrank] using case_001362_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001362_rank.val, hlt⟩ case_001362_mask =
        case_001362_b := by
    simpa [hrank] using case_001362_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001362_support case_001362_rank.val hlt
          case_001362_mask = case_001362_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001362_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001362_support case_001362_rank.val hlt
          case_001362_mask = case_001362_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001362_secondLine_eq]
  have case_001362_rowFirst :
      OppNegRow (FirstLineAt case_001362_support case_001362_rank.val hlt case_001362_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001362_firstLine, OppNegRow]
  have case_001362_fixedSecond :
      FixedRow (SecondLineAt case_001362_support case_001362_rank.val hlt case_001362_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001362_secondLine, FixedRow]
  exact ⟨case_001362_rowFirst, case_001362_fixedSecond⟩

private theorem case_001362_existsRows :
    ExistsOppMinusOneVarFirstRows case_001362_rank.val case_001362_mask :=
  ⟨case_001362_support, case_001362_sourceAgrees, case_001362_rows⟩

private theorem case_001362_covered :
    RowPropertyParametricCovered case_001362_rank.val case_001362_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001362_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001363_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001363_mask : SignMask := ⟨54, by decide⟩
private def case_001363_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001363_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001363_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001363_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_001363_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001363_secondLine : StrictLin2 := { a := (-9/110), b := (-9/110), c := (-28/55) }

private theorem case_001363_rankWord :
    rankPairWord? case_001363_word = some case_001363_rank := by
  decide

private theorem case_001363_unrank :
    unrankPairWord case_001363_rank = case_001363_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001363_word case_001363_rank).1
    case_001363_rankWord |>.symm

private theorem case_001363_seqChoice :
    translationChoiceSeq case_001363_word case_001363_mask = case_001363_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001363_seqAtRank :
    translationSeqAtRankMask case_001363_rank case_001363_mask = case_001363_seq := by
  rw [translationSeqAtRankMask, case_001363_unrank]
  exact case_001363_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001363_bAtRank :
    translationBAtRankMask case_001363_rank case_001363_mask = case_001363_b := by
  rw [translationBAtRankMask, case_001363_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001363_b, case_001363_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001363_firstLine_eq :
    case_001363_support.firstLine case_001363_seq case_001363_b = case_001363_firstLine := by
  norm_num [case_001363_firstLine, case_001363_support, case_001363_seq, case_001363_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001363_secondLine_eq :
    case_001363_support.secondLine case_001363_seq case_001363_b = case_001363_secondLine := by
  norm_num [case_001363_secondLine, case_001363_support, case_001363_seq, case_001363_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001363_sourceAgrees :
    SourceAgrees case_001363_support case_001363_rank.val case_001363_mask := by
  intro hlt
  have hrank : (⟨case_001363_rank.val, hlt⟩ : Fin numPairWords) = case_001363_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001363_rank.val, hlt⟩ case_001363_mask =
        case_001363_seq := by
    simpa [hrank] using case_001363_seqAtRank
  simp [SourceChecks, hseq, case_001363_support,
    checkTranslationConstraintSource, case_001363_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001363_rows :
    EqEqPosVarSecondRows case_001363_support case_001363_rank.val case_001363_mask := by
  intro hlt
  have hrank : (⟨case_001363_rank.val, hlt⟩ : Fin numPairWords) = case_001363_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001363_rank.val, hlt⟩ case_001363_mask =
        case_001363_seq := by
    simpa [hrank] using case_001363_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001363_rank.val, hlt⟩ case_001363_mask =
        case_001363_b := by
    simpa [hrank] using case_001363_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001363_support case_001363_rank.val hlt
          case_001363_mask = case_001363_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001363_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001363_support case_001363_rank.val hlt
          case_001363_mask = case_001363_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001363_secondLine_eq]
  have case_001363_fixedFirst :
      FixedRow (FirstLineAt case_001363_support case_001363_rank.val hlt case_001363_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001363_firstLine, FixedRow]
  have case_001363_rowSecond :
      EqEqPosRow (SecondLineAt case_001363_support case_001363_rank.val hlt case_001363_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001363_secondLine, EqEqPosRow]
  exact ⟨case_001363_fixedFirst, case_001363_rowSecond⟩

private theorem case_001363_existsRows :
    ExistsEqEqPosVarSecondRows case_001363_rank.val case_001363_mask :=
  ⟨case_001363_support, case_001363_sourceAgrees, case_001363_rows⟩

private theorem case_001363_covered :
    RowPropertyParametricCovered case_001363_rank.val case_001363_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001363_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001364_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001364_mask : SignMask := ⟨55, by decide⟩
private def case_001364_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001364_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001364_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001364_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_001364_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001364_secondLine : StrictLin2 := { a := (-9/374), b := (-9/374), c := (-67/187) }

private theorem case_001364_rankWord :
    rankPairWord? case_001364_word = some case_001364_rank := by
  decide

private theorem case_001364_unrank :
    unrankPairWord case_001364_rank = case_001364_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001364_word case_001364_rank).1
    case_001364_rankWord |>.symm

private theorem case_001364_seqChoice :
    translationChoiceSeq case_001364_word case_001364_mask = case_001364_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001364_seqAtRank :
    translationSeqAtRankMask case_001364_rank case_001364_mask = case_001364_seq := by
  rw [translationSeqAtRankMask, case_001364_unrank]
  exact case_001364_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001364_bAtRank :
    translationBAtRankMask case_001364_rank case_001364_mask = case_001364_b := by
  rw [translationBAtRankMask, case_001364_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001364_b, case_001364_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001364_firstLine_eq :
    case_001364_support.firstLine case_001364_seq case_001364_b = case_001364_firstLine := by
  norm_num [case_001364_firstLine, case_001364_support, case_001364_seq, case_001364_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001364_secondLine_eq :
    case_001364_support.secondLine case_001364_seq case_001364_b = case_001364_secondLine := by
  norm_num [case_001364_secondLine, case_001364_support, case_001364_seq, case_001364_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001364_sourceAgrees :
    SourceAgrees case_001364_support case_001364_rank.val case_001364_mask := by
  intro hlt
  have hrank : (⟨case_001364_rank.val, hlt⟩ : Fin numPairWords) = case_001364_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001364_rank.val, hlt⟩ case_001364_mask =
        case_001364_seq := by
    simpa [hrank] using case_001364_seqAtRank
  simp [SourceChecks, hseq, case_001364_support,
    checkTranslationConstraintSource, case_001364_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001364_rows :
    EqEqPosVarSecondRows case_001364_support case_001364_rank.val case_001364_mask := by
  intro hlt
  have hrank : (⟨case_001364_rank.val, hlt⟩ : Fin numPairWords) = case_001364_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001364_rank.val, hlt⟩ case_001364_mask =
        case_001364_seq := by
    simpa [hrank] using case_001364_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001364_rank.val, hlt⟩ case_001364_mask =
        case_001364_b := by
    simpa [hrank] using case_001364_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001364_support case_001364_rank.val hlt
          case_001364_mask = case_001364_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001364_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001364_support case_001364_rank.val hlt
          case_001364_mask = case_001364_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001364_secondLine_eq]
  have case_001364_fixedFirst :
      FixedRow (FirstLineAt case_001364_support case_001364_rank.val hlt case_001364_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001364_firstLine, FixedRow]
  have case_001364_rowSecond :
      EqEqPosRow (SecondLineAt case_001364_support case_001364_rank.val hlt case_001364_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001364_secondLine, EqEqPosRow]
  exact ⟨case_001364_fixedFirst, case_001364_rowSecond⟩

private theorem case_001364_existsRows :
    ExistsEqEqPosVarSecondRows case_001364_rank.val case_001364_mask :=
  ⟨case_001364_support, case_001364_sourceAgrees, case_001364_rows⟩

private theorem case_001364_covered :
    RowPropertyParametricCovered case_001364_rank.val case_001364_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001364_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001365_rank : Fin numPairWords := ⟨894, by decide⟩
private def case_001365_mask : SignMask := ⟨63, by decide⟩
private def case_001365_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001365_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001365_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001365_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_001365_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001365_secondLine : StrictLin2 := { a := (-1/14), b := (-1/14), c := (-5/21) }

private theorem case_001365_rankWord :
    rankPairWord? case_001365_word = some case_001365_rank := by
  decide

private theorem case_001365_unrank :
    unrankPairWord case_001365_rank = case_001365_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001365_word case_001365_rank).1
    case_001365_rankWord |>.symm

private theorem case_001365_seqChoice :
    translationChoiceSeq case_001365_word case_001365_mask = case_001365_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001365_seqAtRank :
    translationSeqAtRankMask case_001365_rank case_001365_mask = case_001365_seq := by
  rw [translationSeqAtRankMask, case_001365_unrank]
  exact case_001365_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001365_bAtRank :
    translationBAtRankMask case_001365_rank case_001365_mask = case_001365_b := by
  rw [translationBAtRankMask, case_001365_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001365_b, case_001365_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001365_firstLine_eq :
    case_001365_support.firstLine case_001365_seq case_001365_b = case_001365_firstLine := by
  norm_num [case_001365_firstLine, case_001365_support, case_001365_seq, case_001365_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001365_secondLine_eq :
    case_001365_support.secondLine case_001365_seq case_001365_b = case_001365_secondLine := by
  norm_num [case_001365_secondLine, case_001365_support, case_001365_seq, case_001365_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001365_sourceAgrees :
    SourceAgrees case_001365_support case_001365_rank.val case_001365_mask := by
  intro hlt
  have hrank : (⟨case_001365_rank.val, hlt⟩ : Fin numPairWords) = case_001365_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001365_rank.val, hlt⟩ case_001365_mask =
        case_001365_seq := by
    simpa [hrank] using case_001365_seqAtRank
  simp [SourceChecks, hseq, case_001365_support,
    checkTranslationConstraintSource, case_001365_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001365_rows :
    EqEqPosVarSecondRows case_001365_support case_001365_rank.val case_001365_mask := by
  intro hlt
  have hrank : (⟨case_001365_rank.val, hlt⟩ : Fin numPairWords) = case_001365_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001365_rank.val, hlt⟩ case_001365_mask =
        case_001365_seq := by
    simpa [hrank] using case_001365_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001365_rank.val, hlt⟩ case_001365_mask =
        case_001365_b := by
    simpa [hrank] using case_001365_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001365_support case_001365_rank.val hlt
          case_001365_mask = case_001365_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001365_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001365_support case_001365_rank.val hlt
          case_001365_mask = case_001365_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001365_secondLine_eq]
  have case_001365_fixedFirst :
      FixedRow (FirstLineAt case_001365_support case_001365_rank.val hlt case_001365_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001365_firstLine, FixedRow]
  have case_001365_rowSecond :
      EqEqPosRow (SecondLineAt case_001365_support case_001365_rank.val hlt case_001365_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001365_secondLine, EqEqPosRow]
  exact ⟨case_001365_fixedFirst, case_001365_rowSecond⟩

private theorem case_001365_existsRows :
    ExistsEqEqPosVarSecondRows case_001365_rank.val case_001365_mask :=
  ⟨case_001365_support, case_001365_sourceAgrees, case_001365_rows⟩

private theorem case_001365_covered :
    RowPropertyParametricCovered case_001365_rank.val case_001365_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001365_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001366_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001366_mask : SignMask := ⟨9, by decide⟩
private def case_001366_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001366_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001366_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def case_001366_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_001366_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001366_secondLine : StrictLin2 := { a := (-39/58), b := (-39/58), c := (-48/29) }

private theorem case_001366_rankWord :
    rankPairWord? case_001366_word = some case_001366_rank := by
  decide

private theorem case_001366_unrank :
    unrankPairWord case_001366_rank = case_001366_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001366_word case_001366_rank).1
    case_001366_rankWord |>.symm

private theorem case_001366_seqChoice :
    translationChoiceSeq case_001366_word case_001366_mask = case_001366_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001366_seqAtRank :
    translationSeqAtRankMask case_001366_rank case_001366_mask = case_001366_seq := by
  rw [translationSeqAtRankMask, case_001366_unrank]
  exact case_001366_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001366_bAtRank :
    translationBAtRankMask case_001366_rank case_001366_mask = case_001366_b := by
  rw [translationBAtRankMask, case_001366_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001366_b, case_001366_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001366_firstLine_eq :
    case_001366_support.firstLine case_001366_seq case_001366_b = case_001366_firstLine := by
  norm_num [case_001366_firstLine, case_001366_support, case_001366_seq, case_001366_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001366_secondLine_eq :
    case_001366_support.secondLine case_001366_seq case_001366_b = case_001366_secondLine := by
  norm_num [case_001366_secondLine, case_001366_support, case_001366_seq, case_001366_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001366_sourceAgrees :
    SourceAgrees case_001366_support case_001366_rank.val case_001366_mask := by
  intro hlt
  have hrank : (⟨case_001366_rank.val, hlt⟩ : Fin numPairWords) = case_001366_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001366_rank.val, hlt⟩ case_001366_mask =
        case_001366_seq := by
    simpa [hrank] using case_001366_seqAtRank
  simp [SourceChecks, hseq, case_001366_support,
    checkTranslationConstraintSource, case_001366_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001366_rows :
    EqEqPosVarSecondRows case_001366_support case_001366_rank.val case_001366_mask := by
  intro hlt
  have hrank : (⟨case_001366_rank.val, hlt⟩ : Fin numPairWords) = case_001366_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001366_rank.val, hlt⟩ case_001366_mask =
        case_001366_seq := by
    simpa [hrank] using case_001366_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001366_rank.val, hlt⟩ case_001366_mask =
        case_001366_b := by
    simpa [hrank] using case_001366_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001366_support case_001366_rank.val hlt
          case_001366_mask = case_001366_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001366_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001366_support case_001366_rank.val hlt
          case_001366_mask = case_001366_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001366_secondLine_eq]
  have case_001366_fixedFirst :
      FixedRow (FirstLineAt case_001366_support case_001366_rank.val hlt case_001366_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001366_firstLine, FixedRow]
  have case_001366_rowSecond :
      EqEqPosRow (SecondLineAt case_001366_support case_001366_rank.val hlt case_001366_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001366_secondLine, EqEqPosRow]
  exact ⟨case_001366_fixedFirst, case_001366_rowSecond⟩

private theorem case_001366_existsRows :
    ExistsEqEqPosVarSecondRows case_001366_rank.val case_001366_mask :=
  ⟨case_001366_support, case_001366_sourceAgrees, case_001366_rows⟩

private theorem case_001366_covered :
    RowPropertyParametricCovered case_001366_rank.val case_001366_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001366_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001367_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001367_mask : SignMask := ⟨13, by decide⟩
private def case_001367_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001367_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001367_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_001367_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_001367_firstLine : StrictLin2 := { a := (-25/67), b := (25/67), c := (-57/67) }
private def case_001367_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001367_rankWord :
    rankPairWord? case_001367_word = some case_001367_rank := by
  decide

private theorem case_001367_unrank :
    unrankPairWord case_001367_rank = case_001367_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001367_word case_001367_rank).1
    case_001367_rankWord |>.symm

private theorem case_001367_seqChoice :
    translationChoiceSeq case_001367_word case_001367_mask = case_001367_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001367_seqAtRank :
    translationSeqAtRankMask case_001367_rank case_001367_mask = case_001367_seq := by
  rw [translationSeqAtRankMask, case_001367_unrank]
  exact case_001367_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001367_bAtRank :
    translationBAtRankMask case_001367_rank case_001367_mask = case_001367_b := by
  rw [translationBAtRankMask, case_001367_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001367_b, case_001367_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001367_firstLine_eq :
    case_001367_support.firstLine case_001367_seq case_001367_b = case_001367_firstLine := by
  norm_num [case_001367_firstLine, case_001367_support, case_001367_seq, case_001367_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001367_secondLine_eq :
    case_001367_support.secondLine case_001367_seq case_001367_b = case_001367_secondLine := by
  norm_num [case_001367_secondLine, case_001367_support, case_001367_seq, case_001367_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001367_sourceAgrees :
    SourceAgrees case_001367_support case_001367_rank.val case_001367_mask := by
  intro hlt
  have hrank : (⟨case_001367_rank.val, hlt⟩ : Fin numPairWords) = case_001367_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001367_rank.val, hlt⟩ case_001367_mask =
        case_001367_seq := by
    simpa [hrank] using case_001367_seqAtRank
  simp [SourceChecks, hseq, case_001367_support,
    checkTranslationConstraintSource, case_001367_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001367_rows :
    OppOneMinusVarFirstRows case_001367_support case_001367_rank.val case_001367_mask := by
  intro hlt
  have hrank : (⟨case_001367_rank.val, hlt⟩ : Fin numPairWords) = case_001367_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001367_rank.val, hlt⟩ case_001367_mask =
        case_001367_seq := by
    simpa [hrank] using case_001367_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001367_rank.val, hlt⟩ case_001367_mask =
        case_001367_b := by
    simpa [hrank] using case_001367_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001367_support case_001367_rank.val hlt
          case_001367_mask = case_001367_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001367_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001367_support case_001367_rank.val hlt
          case_001367_mask = case_001367_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001367_secondLine_eq]
  have case_001367_rowFirst :
      OppPosRow (FirstLineAt case_001367_support case_001367_rank.val hlt case_001367_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001367_firstLine, OppPosRow]
  have case_001367_fixedSecond :
      FixedRow (SecondLineAt case_001367_support case_001367_rank.val hlt case_001367_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001367_secondLine, FixedRow]
  exact ⟨case_001367_rowFirst, case_001367_fixedSecond⟩

private theorem case_001367_existsRows :
    ExistsOppOneMinusVarFirstRows case_001367_rank.val case_001367_mask :=
  ⟨case_001367_support, case_001367_sourceAgrees, case_001367_rows⟩

private theorem case_001367_covered :
    RowPropertyParametricCovered case_001367_rank.val case_001367_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001367_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001368_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001368_mask : SignMask := ⟨16, by decide⟩
private def case_001368_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001368_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001368_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_001368_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (-52/9) }
private def case_001368_firstLine : StrictLin2 := { a := -1, b := -1, c := -19 }
private def case_001368_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001368_rankWord :
    rankPairWord? case_001368_word = some case_001368_rank := by
  decide

private theorem case_001368_unrank :
    unrankPairWord case_001368_rank = case_001368_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001368_word case_001368_rank).1
    case_001368_rankWord |>.symm

private theorem case_001368_seqChoice :
    translationChoiceSeq case_001368_word case_001368_mask = case_001368_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001368_seqAtRank :
    translationSeqAtRankMask case_001368_rank case_001368_mask = case_001368_seq := by
  rw [translationSeqAtRankMask, case_001368_unrank]
  exact case_001368_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001368_bAtRank :
    translationBAtRankMask case_001368_rank case_001368_mask = case_001368_b := by
  rw [translationBAtRankMask, case_001368_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001368_b, case_001368_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001368_firstLine_eq :
    case_001368_support.firstLine case_001368_seq case_001368_b = case_001368_firstLine := by
  norm_num [case_001368_firstLine, case_001368_support, case_001368_seq, case_001368_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001368_secondLine_eq :
    case_001368_support.secondLine case_001368_seq case_001368_b = case_001368_secondLine := by
  norm_num [case_001368_secondLine, case_001368_support, case_001368_seq, case_001368_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001368_sourceAgrees :
    SourceAgrees case_001368_support case_001368_rank.val case_001368_mask := by
  intro hlt
  have hrank : (⟨case_001368_rank.val, hlt⟩ : Fin numPairWords) = case_001368_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001368_rank.val, hlt⟩ case_001368_mask =
        case_001368_seq := by
    simpa [hrank] using case_001368_seqAtRank
  simp [SourceChecks, hseq, case_001368_support,
    checkTranslationConstraintSource, case_001368_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001368_rows :
    EqEqPosVarFirstRows case_001368_support case_001368_rank.val case_001368_mask := by
  intro hlt
  have hrank : (⟨case_001368_rank.val, hlt⟩ : Fin numPairWords) = case_001368_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001368_rank.val, hlt⟩ case_001368_mask =
        case_001368_seq := by
    simpa [hrank] using case_001368_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001368_rank.val, hlt⟩ case_001368_mask =
        case_001368_b := by
    simpa [hrank] using case_001368_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001368_support case_001368_rank.val hlt
          case_001368_mask = case_001368_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001368_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001368_support case_001368_rank.val hlt
          case_001368_mask = case_001368_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001368_secondLine_eq]
  have case_001368_rowFirst :
      EqEqPosRow (FirstLineAt case_001368_support case_001368_rank.val hlt case_001368_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001368_firstLine, EqEqPosRow]
  have case_001368_fixedSecond :
      FixedRow (SecondLineAt case_001368_support case_001368_rank.val hlt case_001368_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001368_secondLine, FixedRow]
  exact ⟨case_001368_rowFirst, case_001368_fixedSecond⟩

private theorem case_001368_existsRows :
    ExistsEqEqPosVarFirstRows case_001368_rank.val case_001368_mask :=
  ⟨case_001368_support, case_001368_sourceAgrees, case_001368_rows⟩

private theorem case_001368_covered :
    RowPropertyParametricCovered case_001368_rank.val case_001368_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001368_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001369_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001369_mask : SignMask := ⟨18, by decide⟩
private def case_001369_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001369_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001369_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_001369_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (20/9) }
private def case_001369_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001369_secondLine : StrictLin2 := { a := (-5/222), b := (-5/222), c := (-8/333) }

private theorem case_001369_rankWord :
    rankPairWord? case_001369_word = some case_001369_rank := by
  decide

private theorem case_001369_unrank :
    unrankPairWord case_001369_rank = case_001369_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001369_word case_001369_rank).1
    case_001369_rankWord |>.symm

private theorem case_001369_seqChoice :
    translationChoiceSeq case_001369_word case_001369_mask = case_001369_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001369_seqAtRank :
    translationSeqAtRankMask case_001369_rank case_001369_mask = case_001369_seq := by
  rw [translationSeqAtRankMask, case_001369_unrank]
  exact case_001369_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001369_bAtRank :
    translationBAtRankMask case_001369_rank case_001369_mask = case_001369_b := by
  rw [translationBAtRankMask, case_001369_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001369_b, case_001369_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001369_firstLine_eq :
    case_001369_support.firstLine case_001369_seq case_001369_b = case_001369_firstLine := by
  norm_num [case_001369_firstLine, case_001369_support, case_001369_seq, case_001369_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001369_secondLine_eq :
    case_001369_support.secondLine case_001369_seq case_001369_b = case_001369_secondLine := by
  norm_num [case_001369_secondLine, case_001369_support, case_001369_seq, case_001369_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001369_sourceAgrees :
    SourceAgrees case_001369_support case_001369_rank.val case_001369_mask := by
  intro hlt
  have hrank : (⟨case_001369_rank.val, hlt⟩ : Fin numPairWords) = case_001369_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001369_rank.val, hlt⟩ case_001369_mask =
        case_001369_seq := by
    simpa [hrank] using case_001369_seqAtRank
  simp [SourceChecks, hseq, case_001369_support,
    checkTranslationConstraintSource, case_001369_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001369_rows :
    EqEqPosVarSecondRows case_001369_support case_001369_rank.val case_001369_mask := by
  intro hlt
  have hrank : (⟨case_001369_rank.val, hlt⟩ : Fin numPairWords) = case_001369_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001369_rank.val, hlt⟩ case_001369_mask =
        case_001369_seq := by
    simpa [hrank] using case_001369_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001369_rank.val, hlt⟩ case_001369_mask =
        case_001369_b := by
    simpa [hrank] using case_001369_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001369_support case_001369_rank.val hlt
          case_001369_mask = case_001369_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001369_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001369_support case_001369_rank.val hlt
          case_001369_mask = case_001369_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001369_secondLine_eq]
  have case_001369_fixedFirst :
      FixedRow (FirstLineAt case_001369_support case_001369_rank.val hlt case_001369_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001369_firstLine, FixedRow]
  have case_001369_rowSecond :
      EqEqPosRow (SecondLineAt case_001369_support case_001369_rank.val hlt case_001369_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001369_secondLine, EqEqPosRow]
  exact ⟨case_001369_fixedFirst, case_001369_rowSecond⟩

private theorem case_001369_existsRows :
    ExistsEqEqPosVarSecondRows case_001369_rank.val case_001369_mask :=
  ⟨case_001369_support, case_001369_sourceAgrees, case_001369_rows⟩

private theorem case_001369_covered :
    RowPropertyParametricCovered case_001369_rank.val case_001369_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001369_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001370_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001370_mask : SignMask := ⟨22, by decide⟩
private def case_001370_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001370_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001370_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001370_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (68/9) }
private def case_001370_firstLine : StrictLin2 := { a := -1, b := 1, c := (-67/17) }
private def case_001370_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001370_rankWord :
    rankPairWord? case_001370_word = some case_001370_rank := by
  decide

private theorem case_001370_unrank :
    unrankPairWord case_001370_rank = case_001370_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001370_word case_001370_rank).1
    case_001370_rankWord |>.symm

private theorem case_001370_seqChoice :
    translationChoiceSeq case_001370_word case_001370_mask = case_001370_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001370_seqAtRank :
    translationSeqAtRankMask case_001370_rank case_001370_mask = case_001370_seq := by
  rw [translationSeqAtRankMask, case_001370_unrank]
  exact case_001370_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001370_bAtRank :
    translationBAtRankMask case_001370_rank case_001370_mask = case_001370_b := by
  rw [translationBAtRankMask, case_001370_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001370_b, case_001370_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001370_firstLine_eq :
    case_001370_support.firstLine case_001370_seq case_001370_b = case_001370_firstLine := by
  norm_num [case_001370_firstLine, case_001370_support, case_001370_seq, case_001370_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001370_secondLine_eq :
    case_001370_support.secondLine case_001370_seq case_001370_b = case_001370_secondLine := by
  norm_num [case_001370_secondLine, case_001370_support, case_001370_seq, case_001370_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001370_sourceAgrees :
    SourceAgrees case_001370_support case_001370_rank.val case_001370_mask := by
  intro hlt
  have hrank : (⟨case_001370_rank.val, hlt⟩ : Fin numPairWords) = case_001370_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001370_rank.val, hlt⟩ case_001370_mask =
        case_001370_seq := by
    simpa [hrank] using case_001370_seqAtRank
  simp [SourceChecks, hseq, case_001370_support,
    checkTranslationConstraintSource, case_001370_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001370_rows :
    OppOneMinusVarFirstRows case_001370_support case_001370_rank.val case_001370_mask := by
  intro hlt
  have hrank : (⟨case_001370_rank.val, hlt⟩ : Fin numPairWords) = case_001370_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001370_rank.val, hlt⟩ case_001370_mask =
        case_001370_seq := by
    simpa [hrank] using case_001370_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001370_rank.val, hlt⟩ case_001370_mask =
        case_001370_b := by
    simpa [hrank] using case_001370_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001370_support case_001370_rank.val hlt
          case_001370_mask = case_001370_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001370_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001370_support case_001370_rank.val hlt
          case_001370_mask = case_001370_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001370_secondLine_eq]
  have case_001370_rowFirst :
      OppPosRow (FirstLineAt case_001370_support case_001370_rank.val hlt case_001370_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001370_firstLine, OppPosRow]
  have case_001370_fixedSecond :
      FixedRow (SecondLineAt case_001370_support case_001370_rank.val hlt case_001370_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001370_secondLine, FixedRow]
  exact ⟨case_001370_rowFirst, case_001370_fixedSecond⟩

private theorem case_001370_existsRows :
    ExistsOppOneMinusVarFirstRows case_001370_rank.val case_001370_mask :=
  ⟨case_001370_support, case_001370_sourceAgrees, case_001370_rows⟩

private theorem case_001370_covered :
    RowPropertyParametricCovered case_001370_rank.val case_001370_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001370_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001371_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001371_mask : SignMask := ⟨24, by decide⟩
private def case_001371_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001371_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001371_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_001371_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_001371_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001371_secondLine : StrictLin2 := { a := (-51/1474), b := (-51/1474), c := (-135/737) }

private theorem case_001371_rankWord :
    rankPairWord? case_001371_word = some case_001371_rank := by
  decide

private theorem case_001371_unrank :
    unrankPairWord case_001371_rank = case_001371_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001371_word case_001371_rank).1
    case_001371_rankWord |>.symm

private theorem case_001371_seqChoice :
    translationChoiceSeq case_001371_word case_001371_mask = case_001371_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001371_seqAtRank :
    translationSeqAtRankMask case_001371_rank case_001371_mask = case_001371_seq := by
  rw [translationSeqAtRankMask, case_001371_unrank]
  exact case_001371_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001371_bAtRank :
    translationBAtRankMask case_001371_rank case_001371_mask = case_001371_b := by
  rw [translationBAtRankMask, case_001371_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001371_b, case_001371_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001371_firstLine_eq :
    case_001371_support.firstLine case_001371_seq case_001371_b = case_001371_firstLine := by
  norm_num [case_001371_firstLine, case_001371_support, case_001371_seq, case_001371_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001371_secondLine_eq :
    case_001371_support.secondLine case_001371_seq case_001371_b = case_001371_secondLine := by
  norm_num [case_001371_secondLine, case_001371_support, case_001371_seq, case_001371_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001371_sourceAgrees :
    SourceAgrees case_001371_support case_001371_rank.val case_001371_mask := by
  intro hlt
  have hrank : (⟨case_001371_rank.val, hlt⟩ : Fin numPairWords) = case_001371_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001371_rank.val, hlt⟩ case_001371_mask =
        case_001371_seq := by
    simpa [hrank] using case_001371_seqAtRank
  simp [SourceChecks, hseq, case_001371_support,
    checkTranslationConstraintSource, case_001371_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001371_rows :
    EqEqPosVarSecondRows case_001371_support case_001371_rank.val case_001371_mask := by
  intro hlt
  have hrank : (⟨case_001371_rank.val, hlt⟩ : Fin numPairWords) = case_001371_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001371_rank.val, hlt⟩ case_001371_mask =
        case_001371_seq := by
    simpa [hrank] using case_001371_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001371_rank.val, hlt⟩ case_001371_mask =
        case_001371_b := by
    simpa [hrank] using case_001371_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001371_support case_001371_rank.val hlt
          case_001371_mask = case_001371_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001371_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001371_support case_001371_rank.val hlt
          case_001371_mask = case_001371_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001371_secondLine_eq]
  have case_001371_fixedFirst :
      FixedRow (FirstLineAt case_001371_support case_001371_rank.val hlt case_001371_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001371_firstLine, FixedRow]
  have case_001371_rowSecond :
      EqEqPosRow (SecondLineAt case_001371_support case_001371_rank.val hlt case_001371_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001371_secondLine, EqEqPosRow]
  exact ⟨case_001371_fixedFirst, case_001371_rowSecond⟩

private theorem case_001371_existsRows :
    ExistsEqEqPosVarSecondRows case_001371_rank.val case_001371_mask :=
  ⟨case_001371_support, case_001371_sourceAgrees, case_001371_rows⟩

private theorem case_001371_covered :
    RowPropertyParametricCovered case_001371_rank.val case_001371_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001371_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001372_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001372_mask : SignMask := ⟨28, by decide⟩
private def case_001372_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001372_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001372_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001372_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_001372_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_001372_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001372_rankWord :
    rankPairWord? case_001372_word = some case_001372_rank := by
  decide

private theorem case_001372_unrank :
    unrankPairWord case_001372_rank = case_001372_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001372_word case_001372_rank).1
    case_001372_rankWord |>.symm

private theorem case_001372_seqChoice :
    translationChoiceSeq case_001372_word case_001372_mask = case_001372_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001372_seqAtRank :
    translationSeqAtRankMask case_001372_rank case_001372_mask = case_001372_seq := by
  rw [translationSeqAtRankMask, case_001372_unrank]
  exact case_001372_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001372_bAtRank :
    translationBAtRankMask case_001372_rank case_001372_mask = case_001372_b := by
  rw [translationBAtRankMask, case_001372_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001372_b, case_001372_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001372_firstLine_eq :
    case_001372_support.firstLine case_001372_seq case_001372_b = case_001372_firstLine := by
  norm_num [case_001372_firstLine, case_001372_support, case_001372_seq, case_001372_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001372_secondLine_eq :
    case_001372_support.secondLine case_001372_seq case_001372_b = case_001372_secondLine := by
  norm_num [case_001372_secondLine, case_001372_support, case_001372_seq, case_001372_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001372_sourceAgrees :
    SourceAgrees case_001372_support case_001372_rank.val case_001372_mask := by
  intro hlt
  have hrank : (⟨case_001372_rank.val, hlt⟩ : Fin numPairWords) = case_001372_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001372_rank.val, hlt⟩ case_001372_mask =
        case_001372_seq := by
    simpa [hrank] using case_001372_seqAtRank
  simp [SourceChecks, hseq, case_001372_support,
    checkTranslationConstraintSource, case_001372_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001372_rows :
    OppOneMinusVarFirstRows case_001372_support case_001372_rank.val case_001372_mask := by
  intro hlt
  have hrank : (⟨case_001372_rank.val, hlt⟩ : Fin numPairWords) = case_001372_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001372_rank.val, hlt⟩ case_001372_mask =
        case_001372_seq := by
    simpa [hrank] using case_001372_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001372_rank.val, hlt⟩ case_001372_mask =
        case_001372_b := by
    simpa [hrank] using case_001372_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001372_support case_001372_rank.val hlt
          case_001372_mask = case_001372_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001372_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001372_support case_001372_rank.val hlt
          case_001372_mask = case_001372_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001372_secondLine_eq]
  have case_001372_rowFirst :
      OppPosRow (FirstLineAt case_001372_support case_001372_rank.val hlt case_001372_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001372_firstLine, OppPosRow]
  have case_001372_fixedSecond :
      FixedRow (SecondLineAt case_001372_support case_001372_rank.val hlt case_001372_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001372_secondLine, FixedRow]
  exact ⟨case_001372_rowFirst, case_001372_fixedSecond⟩

private theorem case_001372_existsRows :
    ExistsOppOneMinusVarFirstRows case_001372_rank.val case_001372_mask :=
  ⟨case_001372_support, case_001372_sourceAgrees, case_001372_rows⟩

private theorem case_001372_covered :
    RowPropertyParametricCovered case_001372_rank.val case_001372_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001372_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001373_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001373_mask : SignMask := ⟨30, by decide⟩
private def case_001373_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001373_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001373_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001373_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (20/9) }
private def case_001373_firstLine : StrictLin2 := { a := (29/11), b := (-29/11), c := (-109/11) }
private def case_001373_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001373_rankWord :
    rankPairWord? case_001373_word = some case_001373_rank := by
  decide

private theorem case_001373_unrank :
    unrankPairWord case_001373_rank = case_001373_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001373_word case_001373_rank).1
    case_001373_rankWord |>.symm

private theorem case_001373_seqChoice :
    translationChoiceSeq case_001373_word case_001373_mask = case_001373_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001373_seqAtRank :
    translationSeqAtRankMask case_001373_rank case_001373_mask = case_001373_seq := by
  rw [translationSeqAtRankMask, case_001373_unrank]
  exact case_001373_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001373_bAtRank :
    translationBAtRankMask case_001373_rank case_001373_mask = case_001373_b := by
  rw [translationBAtRankMask, case_001373_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001373_b, case_001373_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001373_firstLine_eq :
    case_001373_support.firstLine case_001373_seq case_001373_b = case_001373_firstLine := by
  norm_num [case_001373_firstLine, case_001373_support, case_001373_seq, case_001373_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001373_secondLine_eq :
    case_001373_support.secondLine case_001373_seq case_001373_b = case_001373_secondLine := by
  norm_num [case_001373_secondLine, case_001373_support, case_001373_seq, case_001373_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001373_sourceAgrees :
    SourceAgrees case_001373_support case_001373_rank.val case_001373_mask := by
  intro hlt
  have hrank : (⟨case_001373_rank.val, hlt⟩ : Fin numPairWords) = case_001373_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001373_rank.val, hlt⟩ case_001373_mask =
        case_001373_seq := by
    simpa [hrank] using case_001373_seqAtRank
  simp [SourceChecks, hseq, case_001373_support,
    checkTranslationConstraintSource, case_001373_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001373_rows :
    OppMinusOneVarFirstRows case_001373_support case_001373_rank.val case_001373_mask := by
  intro hlt
  have hrank : (⟨case_001373_rank.val, hlt⟩ : Fin numPairWords) = case_001373_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001373_rank.val, hlt⟩ case_001373_mask =
        case_001373_seq := by
    simpa [hrank] using case_001373_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001373_rank.val, hlt⟩ case_001373_mask =
        case_001373_b := by
    simpa [hrank] using case_001373_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001373_support case_001373_rank.val hlt
          case_001373_mask = case_001373_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001373_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001373_support case_001373_rank.val hlt
          case_001373_mask = case_001373_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001373_secondLine_eq]
  have case_001373_rowFirst :
      OppNegRow (FirstLineAt case_001373_support case_001373_rank.val hlt case_001373_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001373_firstLine, OppNegRow]
  have case_001373_fixedSecond :
      FixedRow (SecondLineAt case_001373_support case_001373_rank.val hlt case_001373_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001373_secondLine, FixedRow]
  exact ⟨case_001373_rowFirst, case_001373_fixedSecond⟩

private theorem case_001373_existsRows :
    ExistsOppMinusOneVarFirstRows case_001373_rank.val case_001373_mask :=
  ⟨case_001373_support, case_001373_sourceAgrees, case_001373_rows⟩

private theorem case_001373_covered :
    RowPropertyParametricCovered case_001373_rank.val case_001373_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001373_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001374_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001374_mask : SignMask := ⟨31, by decide⟩
private def case_001374_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001374_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001374_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001374_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_001374_firstLine : StrictLin2 := { a := (-29/19), b := (-29/19), c := (-295/57) }
private def case_001374_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001374_rankWord :
    rankPairWord? case_001374_word = some case_001374_rank := by
  decide

private theorem case_001374_unrank :
    unrankPairWord case_001374_rank = case_001374_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001374_word case_001374_rank).1
    case_001374_rankWord |>.symm

private theorem case_001374_seqChoice :
    translationChoiceSeq case_001374_word case_001374_mask = case_001374_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001374_seqAtRank :
    translationSeqAtRankMask case_001374_rank case_001374_mask = case_001374_seq := by
  rw [translationSeqAtRankMask, case_001374_unrank]
  exact case_001374_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001374_bAtRank :
    translationBAtRankMask case_001374_rank case_001374_mask = case_001374_b := by
  rw [translationBAtRankMask, case_001374_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001374_b, case_001374_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001374_firstLine_eq :
    case_001374_support.firstLine case_001374_seq case_001374_b = case_001374_firstLine := by
  norm_num [case_001374_firstLine, case_001374_support, case_001374_seq, case_001374_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001374_secondLine_eq :
    case_001374_support.secondLine case_001374_seq case_001374_b = case_001374_secondLine := by
  norm_num [case_001374_secondLine, case_001374_support, case_001374_seq, case_001374_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001374_sourceAgrees :
    SourceAgrees case_001374_support case_001374_rank.val case_001374_mask := by
  intro hlt
  have hrank : (⟨case_001374_rank.val, hlt⟩ : Fin numPairWords) = case_001374_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001374_rank.val, hlt⟩ case_001374_mask =
        case_001374_seq := by
    simpa [hrank] using case_001374_seqAtRank
  simp [SourceChecks, hseq, case_001374_support,
    checkTranslationConstraintSource, case_001374_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001374_rows :
    EqEqPosVarFirstRows case_001374_support case_001374_rank.val case_001374_mask := by
  intro hlt
  have hrank : (⟨case_001374_rank.val, hlt⟩ : Fin numPairWords) = case_001374_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001374_rank.val, hlt⟩ case_001374_mask =
        case_001374_seq := by
    simpa [hrank] using case_001374_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001374_rank.val, hlt⟩ case_001374_mask =
        case_001374_b := by
    simpa [hrank] using case_001374_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001374_support case_001374_rank.val hlt
          case_001374_mask = case_001374_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001374_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001374_support case_001374_rank.val hlt
          case_001374_mask = case_001374_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001374_secondLine_eq]
  have case_001374_rowFirst :
      EqEqPosRow (FirstLineAt case_001374_support case_001374_rank.val hlt case_001374_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001374_firstLine, EqEqPosRow]
  have case_001374_fixedSecond :
      FixedRow (SecondLineAt case_001374_support case_001374_rank.val hlt case_001374_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001374_secondLine, FixedRow]
  exact ⟨case_001374_rowFirst, case_001374_fixedSecond⟩

private theorem case_001374_existsRows :
    ExistsEqEqPosVarFirstRows case_001374_rank.val case_001374_mask :=
  ⟨case_001374_support, case_001374_sourceAgrees, case_001374_rows⟩

private theorem case_001374_covered :
    RowPropertyParametricCovered case_001374_rank.val case_001374_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001374_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001375_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_001375_mask : SignMask := ⟨45, by decide⟩
private def case_001375_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001375_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001375_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_001375_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (-20/9) }
private def case_001375_firstLine : StrictLin2 := { a := 1, b := -1, c := (-71/13) }
private def case_001375_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001375_rankWord :
    rankPairWord? case_001375_word = some case_001375_rank := by
  decide

private theorem case_001375_unrank :
    unrankPairWord case_001375_rank = case_001375_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001375_word case_001375_rank).1
    case_001375_rankWord |>.symm

private theorem case_001375_seqChoice :
    translationChoiceSeq case_001375_word case_001375_mask = case_001375_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001375_seqAtRank :
    translationSeqAtRankMask case_001375_rank case_001375_mask = case_001375_seq := by
  rw [translationSeqAtRankMask, case_001375_unrank]
  exact case_001375_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001375_bAtRank :
    translationBAtRankMask case_001375_rank case_001375_mask = case_001375_b := by
  rw [translationBAtRankMask, case_001375_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001375_b, case_001375_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001375_firstLine_eq :
    case_001375_support.firstLine case_001375_seq case_001375_b = case_001375_firstLine := by
  norm_num [case_001375_firstLine, case_001375_support, case_001375_seq, case_001375_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001375_secondLine_eq :
    case_001375_support.secondLine case_001375_seq case_001375_b = case_001375_secondLine := by
  norm_num [case_001375_secondLine, case_001375_support, case_001375_seq, case_001375_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001375_sourceAgrees :
    SourceAgrees case_001375_support case_001375_rank.val case_001375_mask := by
  intro hlt
  have hrank : (⟨case_001375_rank.val, hlt⟩ : Fin numPairWords) = case_001375_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001375_rank.val, hlt⟩ case_001375_mask =
        case_001375_seq := by
    simpa [hrank] using case_001375_seqAtRank
  simp [SourceChecks, hseq, case_001375_support,
    checkTranslationConstraintSource, case_001375_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001375_rows :
    OppMinusOneVarFirstRows case_001375_support case_001375_rank.val case_001375_mask := by
  intro hlt
  have hrank : (⟨case_001375_rank.val, hlt⟩ : Fin numPairWords) = case_001375_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001375_rank.val, hlt⟩ case_001375_mask =
        case_001375_seq := by
    simpa [hrank] using case_001375_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001375_rank.val, hlt⟩ case_001375_mask =
        case_001375_b := by
    simpa [hrank] using case_001375_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001375_support case_001375_rank.val hlt
          case_001375_mask = case_001375_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001375_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001375_support case_001375_rank.val hlt
          case_001375_mask = case_001375_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001375_secondLine_eq]
  have case_001375_rowFirst :
      OppNegRow (FirstLineAt case_001375_support case_001375_rank.val hlt case_001375_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001375_firstLine, OppNegRow]
  have case_001375_fixedSecond :
      FixedRow (SecondLineAt case_001375_support case_001375_rank.val hlt case_001375_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001375_secondLine, FixedRow]
  exact ⟨case_001375_rowFirst, case_001375_fixedSecond⟩

private theorem case_001375_existsRows :
    ExistsOppMinusOneVarFirstRows case_001375_rank.val case_001375_mask :=
  ⟨case_001375_support, case_001375_sourceAgrees, case_001375_rows⟩

private theorem case_001375_covered :
    RowPropertyParametricCovered case_001375_rank.val case_001375_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001375_existsRows

inductive Group042Covered : Nat -> SignMask -> Prop
  | case_001344 : Group042Covered case_001344_rank.val case_001344_mask
  | case_001345 : Group042Covered case_001345_rank.val case_001345_mask
  | case_001346 : Group042Covered case_001346_rank.val case_001346_mask
  | case_001347 : Group042Covered case_001347_rank.val case_001347_mask
  | case_001348 : Group042Covered case_001348_rank.val case_001348_mask
  | case_001349 : Group042Covered case_001349_rank.val case_001349_mask
  | case_001350 : Group042Covered case_001350_rank.val case_001350_mask
  | case_001351 : Group042Covered case_001351_rank.val case_001351_mask
  | case_001352 : Group042Covered case_001352_rank.val case_001352_mask
  | case_001353 : Group042Covered case_001353_rank.val case_001353_mask
  | case_001354 : Group042Covered case_001354_rank.val case_001354_mask
  | case_001355 : Group042Covered case_001355_rank.val case_001355_mask
  | case_001356 : Group042Covered case_001356_rank.val case_001356_mask
  | case_001357 : Group042Covered case_001357_rank.val case_001357_mask
  | case_001358 : Group042Covered case_001358_rank.val case_001358_mask
  | case_001359 : Group042Covered case_001359_rank.val case_001359_mask
  | case_001360 : Group042Covered case_001360_rank.val case_001360_mask
  | case_001361 : Group042Covered case_001361_rank.val case_001361_mask
  | case_001362 : Group042Covered case_001362_rank.val case_001362_mask
  | case_001363 : Group042Covered case_001363_rank.val case_001363_mask
  | case_001364 : Group042Covered case_001364_rank.val case_001364_mask
  | case_001365 : Group042Covered case_001365_rank.val case_001365_mask
  | case_001366 : Group042Covered case_001366_rank.val case_001366_mask
  | case_001367 : Group042Covered case_001367_rank.val case_001367_mask
  | case_001368 : Group042Covered case_001368_rank.val case_001368_mask
  | case_001369 : Group042Covered case_001369_rank.val case_001369_mask
  | case_001370 : Group042Covered case_001370_rank.val case_001370_mask
  | case_001371 : Group042Covered case_001371_rank.val case_001371_mask
  | case_001372 : Group042Covered case_001372_rank.val case_001372_mask
  | case_001373 : Group042Covered case_001373_rank.val case_001373_mask
  | case_001374 : Group042Covered case_001374_rank.val case_001374_mask
  | case_001375 : Group042Covered case_001375_rank.val case_001375_mask

theorem Group042GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group042Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001344 =>
      exact RowPropertyParametricCovered.kills case_001344_covered
  | case_001345 =>
      exact RowPropertyParametricCovered.kills case_001345_covered
  | case_001346 =>
      exact RowPropertyParametricCovered.kills case_001346_covered
  | case_001347 =>
      exact RowPropertyParametricCovered.kills case_001347_covered
  | case_001348 =>
      exact RowPropertyParametricCovered.kills case_001348_covered
  | case_001349 =>
      exact RowPropertyParametricCovered.kills case_001349_covered
  | case_001350 =>
      exact RowPropertyParametricCovered.kills case_001350_covered
  | case_001351 =>
      exact RowPropertyParametricCovered.kills case_001351_covered
  | case_001352 =>
      exact RowPropertyParametricCovered.kills case_001352_covered
  | case_001353 =>
      exact RowPropertyParametricCovered.kills case_001353_covered
  | case_001354 =>
      exact RowPropertyParametricCovered.kills case_001354_covered
  | case_001355 =>
      exact RowPropertyParametricCovered.kills case_001355_covered
  | case_001356 =>
      exact RowPropertyParametricCovered.kills case_001356_covered
  | case_001357 =>
      exact RowPropertyParametricCovered.kills case_001357_covered
  | case_001358 =>
      exact RowPropertyParametricCovered.kills case_001358_covered
  | case_001359 =>
      exact RowPropertyParametricCovered.kills case_001359_covered
  | case_001360 =>
      exact RowPropertyParametricCovered.kills case_001360_covered
  | case_001361 =>
      exact RowPropertyParametricCovered.kills case_001361_covered
  | case_001362 =>
      exact RowPropertyParametricCovered.kills case_001362_covered
  | case_001363 =>
      exact RowPropertyParametricCovered.kills case_001363_covered
  | case_001364 =>
      exact RowPropertyParametricCovered.kills case_001364_covered
  | case_001365 =>
      exact RowPropertyParametricCovered.kills case_001365_covered
  | case_001366 =>
      exact RowPropertyParametricCovered.kills case_001366_covered
  | case_001367 =>
      exact RowPropertyParametricCovered.kills case_001367_covered
  | case_001368 =>
      exact RowPropertyParametricCovered.kills case_001368_covered
  | case_001369 =>
      exact RowPropertyParametricCovered.kills case_001369_covered
  | case_001370 =>
      exact RowPropertyParametricCovered.kills case_001370_covered
  | case_001371 =>
      exact RowPropertyParametricCovered.kills case_001371_covered
  | case_001372 =>
      exact RowPropertyParametricCovered.kills case_001372_covered
  | case_001373 =>
      exact RowPropertyParametricCovered.kills case_001373_covered
  | case_001374 =>
      exact RowPropertyParametricCovered.kills case_001374_covered
  | case_001375 =>
      exact RowPropertyParametricCovered.kills case_001375_covered

theorem Group042_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group042
