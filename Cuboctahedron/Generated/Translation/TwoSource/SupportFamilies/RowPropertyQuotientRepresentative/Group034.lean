import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group034

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001088_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001088_mask : SignMask := ⟨55, by decide⟩
private def case_001088_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001088_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001088_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_001088_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (148/9) }
private def case_001088_firstLine : StrictLin2 := { a := -1, b := 1, c := (-43/5) }
private def case_001088_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001088_rankWord :
    rankPairWord? case_001088_word = some case_001088_rank := by
  decide

private theorem case_001088_unrank :
    unrankPairWord case_001088_rank = case_001088_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001088_word case_001088_rank).1
    case_001088_rankWord |>.symm

private theorem case_001088_seqChoice :
    translationChoiceSeq case_001088_word case_001088_mask = case_001088_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001088_seqAtRank :
    translationSeqAtRankMask case_001088_rank case_001088_mask = case_001088_seq := by
  rw [translationSeqAtRankMask, case_001088_unrank]
  exact case_001088_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001088_bAtRank :
    translationBAtRankMask case_001088_rank case_001088_mask = case_001088_b := by
  rw [translationBAtRankMask, case_001088_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001088_b, case_001088_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001088_firstLine_eq :
    case_001088_support.firstLine case_001088_seq case_001088_b = case_001088_firstLine := by
  norm_num [case_001088_firstLine, case_001088_support, case_001088_seq, case_001088_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001088_secondLine_eq :
    case_001088_support.secondLine case_001088_seq case_001088_b = case_001088_secondLine := by
  norm_num [case_001088_secondLine, case_001088_support, case_001088_seq, case_001088_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001088_sourceAgrees :
    SourceAgrees case_001088_support case_001088_rank.val case_001088_mask := by
  intro hlt
  have hrank : (⟨case_001088_rank.val, hlt⟩ : Fin numPairWords) = case_001088_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001088_rank.val, hlt⟩ case_001088_mask =
        case_001088_seq := by
    simpa [hrank] using case_001088_seqAtRank
  simp [SourceChecks, hseq, case_001088_support,
    checkTranslationConstraintSource, case_001088_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001088_rows :
    OppOneMinusVarFirstRows case_001088_support case_001088_rank.val case_001088_mask := by
  intro hlt
  have hrank : (⟨case_001088_rank.val, hlt⟩ : Fin numPairWords) = case_001088_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001088_rank.val, hlt⟩ case_001088_mask =
        case_001088_seq := by
    simpa [hrank] using case_001088_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001088_rank.val, hlt⟩ case_001088_mask =
        case_001088_b := by
    simpa [hrank] using case_001088_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001088_support case_001088_rank.val hlt
          case_001088_mask = case_001088_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001088_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001088_support case_001088_rank.val hlt
          case_001088_mask = case_001088_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001088_secondLine_eq]
  have case_001088_rowFirst :
      OppPosRow (FirstLineAt case_001088_support case_001088_rank.val hlt case_001088_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001088_firstLine, OppPosRow]
  have case_001088_fixedSecond :
      FixedRow (SecondLineAt case_001088_support case_001088_rank.val hlt case_001088_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001088_secondLine, FixedRow]
  exact ⟨case_001088_rowFirst, case_001088_fixedSecond⟩

private theorem case_001088_existsRows :
    ExistsOppOneMinusVarFirstRows case_001088_rank.val case_001088_mask :=
  ⟨case_001088_support, case_001088_sourceAgrees, case_001088_rows⟩

private theorem case_001088_covered :
    RowPropertyParametricCovered case_001088_rank.val case_001088_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001088_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001089_rank : Fin numPairWords := ⟨813, by decide⟩
private def case_001089_mask : SignMask := ⟨63, by decide⟩
private def case_001089_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001089_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001089_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_001089_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (100/9) }
private def case_001089_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001089_secondLine : StrictLin2 := { a := (-9/100), b := (9/100), c := (-9/50) }

private theorem case_001089_rankWord :
    rankPairWord? case_001089_word = some case_001089_rank := by
  decide

private theorem case_001089_unrank :
    unrankPairWord case_001089_rank = case_001089_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001089_word case_001089_rank).1
    case_001089_rankWord |>.symm

private theorem case_001089_seqChoice :
    translationChoiceSeq case_001089_word case_001089_mask = case_001089_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001089_seqAtRank :
    translationSeqAtRankMask case_001089_rank case_001089_mask = case_001089_seq := by
  rw [translationSeqAtRankMask, case_001089_unrank]
  exact case_001089_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001089_bAtRank :
    translationBAtRankMask case_001089_rank case_001089_mask = case_001089_b := by
  rw [translationBAtRankMask, case_001089_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001089_b, case_001089_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001089_firstLine_eq :
    case_001089_support.firstLine case_001089_seq case_001089_b = case_001089_firstLine := by
  norm_num [case_001089_firstLine, case_001089_support, case_001089_seq, case_001089_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001089_secondLine_eq :
    case_001089_support.secondLine case_001089_seq case_001089_b = case_001089_secondLine := by
  norm_num [case_001089_secondLine, case_001089_support, case_001089_seq, case_001089_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001089_sourceAgrees :
    SourceAgrees case_001089_support case_001089_rank.val case_001089_mask := by
  intro hlt
  have hrank : (⟨case_001089_rank.val, hlt⟩ : Fin numPairWords) = case_001089_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001089_rank.val, hlt⟩ case_001089_mask =
        case_001089_seq := by
    simpa [hrank] using case_001089_seqAtRank
  simp [SourceChecks, hseq, case_001089_support,
    checkTranslationConstraintSource, case_001089_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001089_rows :
    OppOneMinusVarSecondRows case_001089_support case_001089_rank.val case_001089_mask := by
  intro hlt
  have hrank : (⟨case_001089_rank.val, hlt⟩ : Fin numPairWords) = case_001089_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001089_rank.val, hlt⟩ case_001089_mask =
        case_001089_seq := by
    simpa [hrank] using case_001089_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001089_rank.val, hlt⟩ case_001089_mask =
        case_001089_b := by
    simpa [hrank] using case_001089_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001089_support case_001089_rank.val hlt
          case_001089_mask = case_001089_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001089_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001089_support case_001089_rank.val hlt
          case_001089_mask = case_001089_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001089_secondLine_eq]
  have case_001089_fixedFirst :
      FixedRow (FirstLineAt case_001089_support case_001089_rank.val hlt case_001089_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001089_firstLine, FixedRow]
  have case_001089_rowSecond :
      OppPosRow (SecondLineAt case_001089_support case_001089_rank.val hlt case_001089_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001089_secondLine, OppPosRow]
  exact ⟨case_001089_fixedFirst, case_001089_rowSecond⟩

private theorem case_001089_existsRows :
    ExistsOppOneMinusVarSecondRows case_001089_rank.val case_001089_mask :=
  ⟨case_001089_support, case_001089_sourceAgrees, case_001089_rows⟩

private theorem case_001089_covered :
    RowPropertyParametricCovered case_001089_rank.val case_001089_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001089_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001090_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001090_mask : SignMask := ⟨8, by decide⟩
private def case_001090_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001090_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001090_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001090_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_001090_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001090_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001090_rankWord :
    rankPairWord? case_001090_word = some case_001090_rank := by
  decide

private theorem case_001090_unrank :
    unrankPairWord case_001090_rank = case_001090_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001090_word case_001090_rank).1
    case_001090_rankWord |>.symm

private theorem case_001090_seqChoice :
    translationChoiceSeq case_001090_word case_001090_mask = case_001090_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001090_seqAtRank :
    translationSeqAtRankMask case_001090_rank case_001090_mask = case_001090_seq := by
  rw [translationSeqAtRankMask, case_001090_unrank]
  exact case_001090_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001090_bAtRank :
    translationBAtRankMask case_001090_rank case_001090_mask = case_001090_b := by
  rw [translationBAtRankMask, case_001090_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001090_b, case_001090_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001090_firstLine_eq :
    case_001090_support.firstLine case_001090_seq case_001090_b = case_001090_firstLine := by
  norm_num [case_001090_firstLine, case_001090_support, case_001090_seq, case_001090_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001090_secondLine_eq :
    case_001090_support.secondLine case_001090_seq case_001090_b = case_001090_secondLine := by
  norm_num [case_001090_secondLine, case_001090_support, case_001090_seq, case_001090_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001090_sourceAgrees :
    SourceAgrees case_001090_support case_001090_rank.val case_001090_mask := by
  intro hlt
  have hrank : (⟨case_001090_rank.val, hlt⟩ : Fin numPairWords) = case_001090_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001090_rank.val, hlt⟩ case_001090_mask =
        case_001090_seq := by
    simpa [hrank] using case_001090_seqAtRank
  simp [SourceChecks, hseq, case_001090_support,
    checkTranslationConstraintSource, case_001090_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001090_rows :
    EqEqPosVarFirstRows case_001090_support case_001090_rank.val case_001090_mask := by
  intro hlt
  have hrank : (⟨case_001090_rank.val, hlt⟩ : Fin numPairWords) = case_001090_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001090_rank.val, hlt⟩ case_001090_mask =
        case_001090_seq := by
    simpa [hrank] using case_001090_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001090_rank.val, hlt⟩ case_001090_mask =
        case_001090_b := by
    simpa [hrank] using case_001090_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001090_support case_001090_rank.val hlt
          case_001090_mask = case_001090_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001090_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001090_support case_001090_rank.val hlt
          case_001090_mask = case_001090_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001090_secondLine_eq]
  have case_001090_rowFirst :
      EqEqPosRow (FirstLineAt case_001090_support case_001090_rank.val hlt case_001090_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001090_firstLine, EqEqPosRow]
  have case_001090_fixedSecond :
      FixedRow (SecondLineAt case_001090_support case_001090_rank.val hlt case_001090_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001090_secondLine, FixedRow]
  exact ⟨case_001090_rowFirst, case_001090_fixedSecond⟩

private theorem case_001090_existsRows :
    ExistsEqEqPosVarFirstRows case_001090_rank.val case_001090_mask :=
  ⟨case_001090_support, case_001090_sourceAgrees, case_001090_rows⟩

private theorem case_001090_covered :
    RowPropertyParametricCovered case_001090_rank.val case_001090_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001090_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001091_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001091_mask : SignMask := ⟨9, by decide⟩
private def case_001091_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001091_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001091_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001091_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_001091_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001091_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001091_rankWord :
    rankPairWord? case_001091_word = some case_001091_rank := by
  decide

private theorem case_001091_unrank :
    unrankPairWord case_001091_rank = case_001091_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001091_word case_001091_rank).1
    case_001091_rankWord |>.symm

private theorem case_001091_seqChoice :
    translationChoiceSeq case_001091_word case_001091_mask = case_001091_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001091_seqAtRank :
    translationSeqAtRankMask case_001091_rank case_001091_mask = case_001091_seq := by
  rw [translationSeqAtRankMask, case_001091_unrank]
  exact case_001091_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001091_bAtRank :
    translationBAtRankMask case_001091_rank case_001091_mask = case_001091_b := by
  rw [translationBAtRankMask, case_001091_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001091_b, case_001091_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001091_firstLine_eq :
    case_001091_support.firstLine case_001091_seq case_001091_b = case_001091_firstLine := by
  norm_num [case_001091_firstLine, case_001091_support, case_001091_seq, case_001091_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001091_secondLine_eq :
    case_001091_support.secondLine case_001091_seq case_001091_b = case_001091_secondLine := by
  norm_num [case_001091_secondLine, case_001091_support, case_001091_seq, case_001091_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001091_sourceAgrees :
    SourceAgrees case_001091_support case_001091_rank.val case_001091_mask := by
  intro hlt
  have hrank : (⟨case_001091_rank.val, hlt⟩ : Fin numPairWords) = case_001091_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001091_rank.val, hlt⟩ case_001091_mask =
        case_001091_seq := by
    simpa [hrank] using case_001091_seqAtRank
  simp [SourceChecks, hseq, case_001091_support,
    checkTranslationConstraintSource, case_001091_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001091_rows :
    EqEqPosVarFirstRows case_001091_support case_001091_rank.val case_001091_mask := by
  intro hlt
  have hrank : (⟨case_001091_rank.val, hlt⟩ : Fin numPairWords) = case_001091_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001091_rank.val, hlt⟩ case_001091_mask =
        case_001091_seq := by
    simpa [hrank] using case_001091_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001091_rank.val, hlt⟩ case_001091_mask =
        case_001091_b := by
    simpa [hrank] using case_001091_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001091_support case_001091_rank.val hlt
          case_001091_mask = case_001091_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001091_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001091_support case_001091_rank.val hlt
          case_001091_mask = case_001091_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001091_secondLine_eq]
  have case_001091_rowFirst :
      EqEqPosRow (FirstLineAt case_001091_support case_001091_rank.val hlt case_001091_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001091_firstLine, EqEqPosRow]
  have case_001091_fixedSecond :
      FixedRow (SecondLineAt case_001091_support case_001091_rank.val hlt case_001091_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001091_secondLine, FixedRow]
  exact ⟨case_001091_rowFirst, case_001091_fixedSecond⟩

private theorem case_001091_existsRows :
    ExistsEqEqPosVarFirstRows case_001091_rank.val case_001091_mask :=
  ⟨case_001091_support, case_001091_sourceAgrees, case_001091_rows⟩

private theorem case_001091_covered :
    RowPropertyParametricCovered case_001091_rank.val case_001091_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001091_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001092_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001092_mask : SignMask := ⟨13, by decide⟩
private def case_001092_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001092_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001092_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001092_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_001092_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001092_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_001092_rankWord :
    rankPairWord? case_001092_word = some case_001092_rank := by
  decide

private theorem case_001092_unrank :
    unrankPairWord case_001092_rank = case_001092_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001092_word case_001092_rank).1
    case_001092_rankWord |>.symm

private theorem case_001092_seqChoice :
    translationChoiceSeq case_001092_word case_001092_mask = case_001092_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001092_seqAtRank :
    translationSeqAtRankMask case_001092_rank case_001092_mask = case_001092_seq := by
  rw [translationSeqAtRankMask, case_001092_unrank]
  exact case_001092_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001092_bAtRank :
    translationBAtRankMask case_001092_rank case_001092_mask = case_001092_b := by
  rw [translationBAtRankMask, case_001092_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001092_b, case_001092_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001092_firstLine_eq :
    case_001092_support.firstLine case_001092_seq case_001092_b = case_001092_firstLine := by
  norm_num [case_001092_firstLine, case_001092_support, case_001092_seq, case_001092_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001092_secondLine_eq :
    case_001092_support.secondLine case_001092_seq case_001092_b = case_001092_secondLine := by
  norm_num [case_001092_secondLine, case_001092_support, case_001092_seq, case_001092_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001092_sourceAgrees :
    SourceAgrees case_001092_support case_001092_rank.val case_001092_mask := by
  intro hlt
  have hrank : (⟨case_001092_rank.val, hlt⟩ : Fin numPairWords) = case_001092_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001092_rank.val, hlt⟩ case_001092_mask =
        case_001092_seq := by
    simpa [hrank] using case_001092_seqAtRank
  simp [SourceChecks, hseq, case_001092_support,
    checkTranslationConstraintSource, case_001092_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001092_rows :
    EqEqPosVarSecondRows case_001092_support case_001092_rank.val case_001092_mask := by
  intro hlt
  have hrank : (⟨case_001092_rank.val, hlt⟩ : Fin numPairWords) = case_001092_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001092_rank.val, hlt⟩ case_001092_mask =
        case_001092_seq := by
    simpa [hrank] using case_001092_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001092_rank.val, hlt⟩ case_001092_mask =
        case_001092_b := by
    simpa [hrank] using case_001092_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001092_support case_001092_rank.val hlt
          case_001092_mask = case_001092_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001092_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001092_support case_001092_rank.val hlt
          case_001092_mask = case_001092_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001092_secondLine_eq]
  have case_001092_fixedFirst :
      FixedRow (FirstLineAt case_001092_support case_001092_rank.val hlt case_001092_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001092_firstLine, FixedRow]
  have case_001092_rowSecond :
      EqEqPosRow (SecondLineAt case_001092_support case_001092_rank.val hlt case_001092_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001092_secondLine, EqEqPosRow]
  exact ⟨case_001092_fixedFirst, case_001092_rowSecond⟩

private theorem case_001092_existsRows :
    ExistsEqEqPosVarSecondRows case_001092_rank.val case_001092_mask :=
  ⟨case_001092_support, case_001092_sourceAgrees, case_001092_rows⟩

private theorem case_001092_covered :
    RowPropertyParametricCovered case_001092_rank.val case_001092_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001092_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001093_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001093_mask : SignMask := ⟨16, by decide⟩
private def case_001093_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001093_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001093_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001093_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_001093_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001093_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001093_rankWord :
    rankPairWord? case_001093_word = some case_001093_rank := by
  decide

private theorem case_001093_unrank :
    unrankPairWord case_001093_rank = case_001093_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001093_word case_001093_rank).1
    case_001093_rankWord |>.symm

private theorem case_001093_seqChoice :
    translationChoiceSeq case_001093_word case_001093_mask = case_001093_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001093_seqAtRank :
    translationSeqAtRankMask case_001093_rank case_001093_mask = case_001093_seq := by
  rw [translationSeqAtRankMask, case_001093_unrank]
  exact case_001093_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001093_bAtRank :
    translationBAtRankMask case_001093_rank case_001093_mask = case_001093_b := by
  rw [translationBAtRankMask, case_001093_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001093_b, case_001093_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001093_firstLine_eq :
    case_001093_support.firstLine case_001093_seq case_001093_b = case_001093_firstLine := by
  norm_num [case_001093_firstLine, case_001093_support, case_001093_seq, case_001093_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001093_secondLine_eq :
    case_001093_support.secondLine case_001093_seq case_001093_b = case_001093_secondLine := by
  norm_num [case_001093_secondLine, case_001093_support, case_001093_seq, case_001093_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001093_sourceAgrees :
    SourceAgrees case_001093_support case_001093_rank.val case_001093_mask := by
  intro hlt
  have hrank : (⟨case_001093_rank.val, hlt⟩ : Fin numPairWords) = case_001093_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001093_rank.val, hlt⟩ case_001093_mask =
        case_001093_seq := by
    simpa [hrank] using case_001093_seqAtRank
  simp [SourceChecks, hseq, case_001093_support,
    checkTranslationConstraintSource, case_001093_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001093_rows :
    EqEqPosVarFirstRows case_001093_support case_001093_rank.val case_001093_mask := by
  intro hlt
  have hrank : (⟨case_001093_rank.val, hlt⟩ : Fin numPairWords) = case_001093_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001093_rank.val, hlt⟩ case_001093_mask =
        case_001093_seq := by
    simpa [hrank] using case_001093_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001093_rank.val, hlt⟩ case_001093_mask =
        case_001093_b := by
    simpa [hrank] using case_001093_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001093_support case_001093_rank.val hlt
          case_001093_mask = case_001093_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001093_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001093_support case_001093_rank.val hlt
          case_001093_mask = case_001093_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001093_secondLine_eq]
  have case_001093_rowFirst :
      EqEqPosRow (FirstLineAt case_001093_support case_001093_rank.val hlt case_001093_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001093_firstLine, EqEqPosRow]
  have case_001093_fixedSecond :
      FixedRow (SecondLineAt case_001093_support case_001093_rank.val hlt case_001093_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001093_secondLine, FixedRow]
  exact ⟨case_001093_rowFirst, case_001093_fixedSecond⟩

private theorem case_001093_existsRows :
    ExistsEqEqPosVarFirstRows case_001093_rank.val case_001093_mask :=
  ⟨case_001093_support, case_001093_sourceAgrees, case_001093_rows⟩

private theorem case_001093_covered :
    RowPropertyParametricCovered case_001093_rank.val case_001093_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001093_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001094_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001094_mask : SignMask := ⟨18, by decide⟩
private def case_001094_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001094_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001094_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001094_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_001094_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001094_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001094_rankWord :
    rankPairWord? case_001094_word = some case_001094_rank := by
  decide

private theorem case_001094_unrank :
    unrankPairWord case_001094_rank = case_001094_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001094_word case_001094_rank).1
    case_001094_rankWord |>.symm

private theorem case_001094_seqChoice :
    translationChoiceSeq case_001094_word case_001094_mask = case_001094_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001094_seqAtRank :
    translationSeqAtRankMask case_001094_rank case_001094_mask = case_001094_seq := by
  rw [translationSeqAtRankMask, case_001094_unrank]
  exact case_001094_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001094_bAtRank :
    translationBAtRankMask case_001094_rank case_001094_mask = case_001094_b := by
  rw [translationBAtRankMask, case_001094_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001094_b, case_001094_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001094_firstLine_eq :
    case_001094_support.firstLine case_001094_seq case_001094_b = case_001094_firstLine := by
  norm_num [case_001094_firstLine, case_001094_support, case_001094_seq, case_001094_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001094_secondLine_eq :
    case_001094_support.secondLine case_001094_seq case_001094_b = case_001094_secondLine := by
  norm_num [case_001094_secondLine, case_001094_support, case_001094_seq, case_001094_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001094_sourceAgrees :
    SourceAgrees case_001094_support case_001094_rank.val case_001094_mask := by
  intro hlt
  have hrank : (⟨case_001094_rank.val, hlt⟩ : Fin numPairWords) = case_001094_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001094_rank.val, hlt⟩ case_001094_mask =
        case_001094_seq := by
    simpa [hrank] using case_001094_seqAtRank
  simp [SourceChecks, hseq, case_001094_support,
    checkTranslationConstraintSource, case_001094_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001094_rows :
    EqEqPosVarFirstRows case_001094_support case_001094_rank.val case_001094_mask := by
  intro hlt
  have hrank : (⟨case_001094_rank.val, hlt⟩ : Fin numPairWords) = case_001094_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001094_rank.val, hlt⟩ case_001094_mask =
        case_001094_seq := by
    simpa [hrank] using case_001094_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001094_rank.val, hlt⟩ case_001094_mask =
        case_001094_b := by
    simpa [hrank] using case_001094_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001094_support case_001094_rank.val hlt
          case_001094_mask = case_001094_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001094_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001094_support case_001094_rank.val hlt
          case_001094_mask = case_001094_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001094_secondLine_eq]
  have case_001094_rowFirst :
      EqEqPosRow (FirstLineAt case_001094_support case_001094_rank.val hlt case_001094_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001094_firstLine, EqEqPosRow]
  have case_001094_fixedSecond :
      FixedRow (SecondLineAt case_001094_support case_001094_rank.val hlt case_001094_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001094_secondLine, FixedRow]
  exact ⟨case_001094_rowFirst, case_001094_fixedSecond⟩

private theorem case_001094_existsRows :
    ExistsEqEqPosVarFirstRows case_001094_rank.val case_001094_mask :=
  ⟨case_001094_support, case_001094_sourceAgrees, case_001094_rows⟩

private theorem case_001094_covered :
    RowPropertyParametricCovered case_001094_rank.val case_001094_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001094_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001095_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001095_mask : SignMask := ⟨22, by decide⟩
private def case_001095_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001095_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001095_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001095_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_001095_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001095_secondLine : StrictLin2 := { a := (-3/14), b := (-3/14), c := (-5/7) }

private theorem case_001095_rankWord :
    rankPairWord? case_001095_word = some case_001095_rank := by
  decide

private theorem case_001095_unrank :
    unrankPairWord case_001095_rank = case_001095_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001095_word case_001095_rank).1
    case_001095_rankWord |>.symm

private theorem case_001095_seqChoice :
    translationChoiceSeq case_001095_word case_001095_mask = case_001095_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001095_seqAtRank :
    translationSeqAtRankMask case_001095_rank case_001095_mask = case_001095_seq := by
  rw [translationSeqAtRankMask, case_001095_unrank]
  exact case_001095_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001095_bAtRank :
    translationBAtRankMask case_001095_rank case_001095_mask = case_001095_b := by
  rw [translationBAtRankMask, case_001095_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001095_b, case_001095_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001095_firstLine_eq :
    case_001095_support.firstLine case_001095_seq case_001095_b = case_001095_firstLine := by
  norm_num [case_001095_firstLine, case_001095_support, case_001095_seq, case_001095_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001095_secondLine_eq :
    case_001095_support.secondLine case_001095_seq case_001095_b = case_001095_secondLine := by
  norm_num [case_001095_secondLine, case_001095_support, case_001095_seq, case_001095_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001095_sourceAgrees :
    SourceAgrees case_001095_support case_001095_rank.val case_001095_mask := by
  intro hlt
  have hrank : (⟨case_001095_rank.val, hlt⟩ : Fin numPairWords) = case_001095_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001095_rank.val, hlt⟩ case_001095_mask =
        case_001095_seq := by
    simpa [hrank] using case_001095_seqAtRank
  simp [SourceChecks, hseq, case_001095_support,
    checkTranslationConstraintSource, case_001095_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001095_rows :
    EqEqPosVarSecondRows case_001095_support case_001095_rank.val case_001095_mask := by
  intro hlt
  have hrank : (⟨case_001095_rank.val, hlt⟩ : Fin numPairWords) = case_001095_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001095_rank.val, hlt⟩ case_001095_mask =
        case_001095_seq := by
    simpa [hrank] using case_001095_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001095_rank.val, hlt⟩ case_001095_mask =
        case_001095_b := by
    simpa [hrank] using case_001095_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001095_support case_001095_rank.val hlt
          case_001095_mask = case_001095_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001095_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001095_support case_001095_rank.val hlt
          case_001095_mask = case_001095_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001095_secondLine_eq]
  have case_001095_fixedFirst :
      FixedRow (FirstLineAt case_001095_support case_001095_rank.val hlt case_001095_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001095_firstLine, FixedRow]
  have case_001095_rowSecond :
      EqEqPosRow (SecondLineAt case_001095_support case_001095_rank.val hlt case_001095_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001095_secondLine, EqEqPosRow]
  exact ⟨case_001095_fixedFirst, case_001095_rowSecond⟩

private theorem case_001095_existsRows :
    ExistsEqEqPosVarSecondRows case_001095_rank.val case_001095_mask :=
  ⟨case_001095_support, case_001095_sourceAgrees, case_001095_rows⟩

private theorem case_001095_covered :
    RowPropertyParametricCovered case_001095_rank.val case_001095_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001095_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001096_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001096_mask : SignMask := ⟨24, by decide⟩
private def case_001096_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001096_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001096_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001096_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_001096_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_001096_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001096_rankWord :
    rankPairWord? case_001096_word = some case_001096_rank := by
  decide

private theorem case_001096_unrank :
    unrankPairWord case_001096_rank = case_001096_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001096_word case_001096_rank).1
    case_001096_rankWord |>.symm

private theorem case_001096_seqChoice :
    translationChoiceSeq case_001096_word case_001096_mask = case_001096_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001096_seqAtRank :
    translationSeqAtRankMask case_001096_rank case_001096_mask = case_001096_seq := by
  rw [translationSeqAtRankMask, case_001096_unrank]
  exact case_001096_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001096_bAtRank :
    translationBAtRankMask case_001096_rank case_001096_mask = case_001096_b := by
  rw [translationBAtRankMask, case_001096_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001096_b, case_001096_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001096_firstLine_eq :
    case_001096_support.firstLine case_001096_seq case_001096_b = case_001096_firstLine := by
  norm_num [case_001096_firstLine, case_001096_support, case_001096_seq, case_001096_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001096_secondLine_eq :
    case_001096_support.secondLine case_001096_seq case_001096_b = case_001096_secondLine := by
  norm_num [case_001096_secondLine, case_001096_support, case_001096_seq, case_001096_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001096_sourceAgrees :
    SourceAgrees case_001096_support case_001096_rank.val case_001096_mask := by
  intro hlt
  have hrank : (⟨case_001096_rank.val, hlt⟩ : Fin numPairWords) = case_001096_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001096_rank.val, hlt⟩ case_001096_mask =
        case_001096_seq := by
    simpa [hrank] using case_001096_seqAtRank
  simp [SourceChecks, hseq, case_001096_support,
    checkTranslationConstraintSource, case_001096_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001096_rows :
    EqEqPosVarFirstRows case_001096_support case_001096_rank.val case_001096_mask := by
  intro hlt
  have hrank : (⟨case_001096_rank.val, hlt⟩ : Fin numPairWords) = case_001096_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001096_rank.val, hlt⟩ case_001096_mask =
        case_001096_seq := by
    simpa [hrank] using case_001096_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001096_rank.val, hlt⟩ case_001096_mask =
        case_001096_b := by
    simpa [hrank] using case_001096_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001096_support case_001096_rank.val hlt
          case_001096_mask = case_001096_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001096_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001096_support case_001096_rank.val hlt
          case_001096_mask = case_001096_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001096_secondLine_eq]
  have case_001096_rowFirst :
      EqEqPosRow (FirstLineAt case_001096_support case_001096_rank.val hlt case_001096_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001096_firstLine, EqEqPosRow]
  have case_001096_fixedSecond :
      FixedRow (SecondLineAt case_001096_support case_001096_rank.val hlt case_001096_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001096_secondLine, FixedRow]
  exact ⟨case_001096_rowFirst, case_001096_fixedSecond⟩

private theorem case_001096_existsRows :
    ExistsEqEqPosVarFirstRows case_001096_rank.val case_001096_mask :=
  ⟨case_001096_support, case_001096_sourceAgrees, case_001096_rows⟩

private theorem case_001096_covered :
    RowPropertyParametricCovered case_001096_rank.val case_001096_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001096_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001097_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001097_mask : SignMask := ⟨28, by decide⟩
private def case_001097_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001097_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001097_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001097_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_001097_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_001097_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001097_rankWord :
    rankPairWord? case_001097_word = some case_001097_rank := by
  decide

private theorem case_001097_unrank :
    unrankPairWord case_001097_rank = case_001097_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001097_word case_001097_rank).1
    case_001097_rankWord |>.symm

private theorem case_001097_seqChoice :
    translationChoiceSeq case_001097_word case_001097_mask = case_001097_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001097_seqAtRank :
    translationSeqAtRankMask case_001097_rank case_001097_mask = case_001097_seq := by
  rw [translationSeqAtRankMask, case_001097_unrank]
  exact case_001097_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001097_bAtRank :
    translationBAtRankMask case_001097_rank case_001097_mask = case_001097_b := by
  rw [translationBAtRankMask, case_001097_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001097_b, case_001097_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001097_firstLine_eq :
    case_001097_support.firstLine case_001097_seq case_001097_b = case_001097_firstLine := by
  norm_num [case_001097_firstLine, case_001097_support, case_001097_seq, case_001097_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001097_secondLine_eq :
    case_001097_support.secondLine case_001097_seq case_001097_b = case_001097_secondLine := by
  norm_num [case_001097_secondLine, case_001097_support, case_001097_seq, case_001097_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001097_sourceAgrees :
    SourceAgrees case_001097_support case_001097_rank.val case_001097_mask := by
  intro hlt
  have hrank : (⟨case_001097_rank.val, hlt⟩ : Fin numPairWords) = case_001097_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001097_rank.val, hlt⟩ case_001097_mask =
        case_001097_seq := by
    simpa [hrank] using case_001097_seqAtRank
  simp [SourceChecks, hseq, case_001097_support,
    checkTranslationConstraintSource, case_001097_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001097_rows :
    OppOneMinusVarFirstRows case_001097_support case_001097_rank.val case_001097_mask := by
  intro hlt
  have hrank : (⟨case_001097_rank.val, hlt⟩ : Fin numPairWords) = case_001097_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001097_rank.val, hlt⟩ case_001097_mask =
        case_001097_seq := by
    simpa [hrank] using case_001097_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001097_rank.val, hlt⟩ case_001097_mask =
        case_001097_b := by
    simpa [hrank] using case_001097_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001097_support case_001097_rank.val hlt
          case_001097_mask = case_001097_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001097_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001097_support case_001097_rank.val hlt
          case_001097_mask = case_001097_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001097_secondLine_eq]
  have case_001097_rowFirst :
      OppPosRow (FirstLineAt case_001097_support case_001097_rank.val hlt case_001097_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001097_firstLine, OppPosRow]
  have case_001097_fixedSecond :
      FixedRow (SecondLineAt case_001097_support case_001097_rank.val hlt case_001097_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001097_secondLine, FixedRow]
  exact ⟨case_001097_rowFirst, case_001097_fixedSecond⟩

private theorem case_001097_existsRows :
    ExistsOppOneMinusVarFirstRows case_001097_rank.val case_001097_mask :=
  ⟨case_001097_support, case_001097_sourceAgrees, case_001097_rows⟩

private theorem case_001097_covered :
    RowPropertyParametricCovered case_001097_rank.val case_001097_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001097_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001098_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001098_mask : SignMask := ⟨29, by decide⟩
private def case_001098_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001098_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001098_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001098_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_001098_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001098_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_001098_rankWord :
    rankPairWord? case_001098_word = some case_001098_rank := by
  decide

private theorem case_001098_unrank :
    unrankPairWord case_001098_rank = case_001098_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001098_word case_001098_rank).1
    case_001098_rankWord |>.symm

private theorem case_001098_seqChoice :
    translationChoiceSeq case_001098_word case_001098_mask = case_001098_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001098_seqAtRank :
    translationSeqAtRankMask case_001098_rank case_001098_mask = case_001098_seq := by
  rw [translationSeqAtRankMask, case_001098_unrank]
  exact case_001098_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001098_bAtRank :
    translationBAtRankMask case_001098_rank case_001098_mask = case_001098_b := by
  rw [translationBAtRankMask, case_001098_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001098_b, case_001098_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001098_firstLine_eq :
    case_001098_support.firstLine case_001098_seq case_001098_b = case_001098_firstLine := by
  norm_num [case_001098_firstLine, case_001098_support, case_001098_seq, case_001098_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001098_secondLine_eq :
    case_001098_support.secondLine case_001098_seq case_001098_b = case_001098_secondLine := by
  norm_num [case_001098_secondLine, case_001098_support, case_001098_seq, case_001098_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001098_sourceAgrees :
    SourceAgrees case_001098_support case_001098_rank.val case_001098_mask := by
  intro hlt
  have hrank : (⟨case_001098_rank.val, hlt⟩ : Fin numPairWords) = case_001098_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001098_rank.val, hlt⟩ case_001098_mask =
        case_001098_seq := by
    simpa [hrank] using case_001098_seqAtRank
  simp [SourceChecks, hseq, case_001098_support,
    checkTranslationConstraintSource, case_001098_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001098_rows :
    EqEqPosVarSecondRows case_001098_support case_001098_rank.val case_001098_mask := by
  intro hlt
  have hrank : (⟨case_001098_rank.val, hlt⟩ : Fin numPairWords) = case_001098_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001098_rank.val, hlt⟩ case_001098_mask =
        case_001098_seq := by
    simpa [hrank] using case_001098_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001098_rank.val, hlt⟩ case_001098_mask =
        case_001098_b := by
    simpa [hrank] using case_001098_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001098_support case_001098_rank.val hlt
          case_001098_mask = case_001098_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001098_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001098_support case_001098_rank.val hlt
          case_001098_mask = case_001098_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001098_secondLine_eq]
  have case_001098_fixedFirst :
      FixedRow (FirstLineAt case_001098_support case_001098_rank.val hlt case_001098_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001098_firstLine, FixedRow]
  have case_001098_rowSecond :
      EqEqPosRow (SecondLineAt case_001098_support case_001098_rank.val hlt case_001098_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001098_secondLine, EqEqPosRow]
  exact ⟨case_001098_fixedFirst, case_001098_rowSecond⟩

private theorem case_001098_existsRows :
    ExistsEqEqPosVarSecondRows case_001098_rank.val case_001098_mask :=
  ⟨case_001098_support, case_001098_sourceAgrees, case_001098_rows⟩

private theorem case_001098_covered :
    RowPropertyParametricCovered case_001098_rank.val case_001098_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001098_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001099_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001099_mask : SignMask := ⟨30, by decide⟩
private def case_001099_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001099_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001099_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001099_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_001099_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001099_secondLine : StrictLin2 := { a := (-3/22), b := (-3/22), c := (-5/11) }

private theorem case_001099_rankWord :
    rankPairWord? case_001099_word = some case_001099_rank := by
  decide

private theorem case_001099_unrank :
    unrankPairWord case_001099_rank = case_001099_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001099_word case_001099_rank).1
    case_001099_rankWord |>.symm

private theorem case_001099_seqChoice :
    translationChoiceSeq case_001099_word case_001099_mask = case_001099_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001099_seqAtRank :
    translationSeqAtRankMask case_001099_rank case_001099_mask = case_001099_seq := by
  rw [translationSeqAtRankMask, case_001099_unrank]
  exact case_001099_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001099_bAtRank :
    translationBAtRankMask case_001099_rank case_001099_mask = case_001099_b := by
  rw [translationBAtRankMask, case_001099_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001099_b, case_001099_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001099_firstLine_eq :
    case_001099_support.firstLine case_001099_seq case_001099_b = case_001099_firstLine := by
  norm_num [case_001099_firstLine, case_001099_support, case_001099_seq, case_001099_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001099_secondLine_eq :
    case_001099_support.secondLine case_001099_seq case_001099_b = case_001099_secondLine := by
  norm_num [case_001099_secondLine, case_001099_support, case_001099_seq, case_001099_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001099_sourceAgrees :
    SourceAgrees case_001099_support case_001099_rank.val case_001099_mask := by
  intro hlt
  have hrank : (⟨case_001099_rank.val, hlt⟩ : Fin numPairWords) = case_001099_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001099_rank.val, hlt⟩ case_001099_mask =
        case_001099_seq := by
    simpa [hrank] using case_001099_seqAtRank
  simp [SourceChecks, hseq, case_001099_support,
    checkTranslationConstraintSource, case_001099_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001099_rows :
    EqEqPosVarSecondRows case_001099_support case_001099_rank.val case_001099_mask := by
  intro hlt
  have hrank : (⟨case_001099_rank.val, hlt⟩ : Fin numPairWords) = case_001099_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001099_rank.val, hlt⟩ case_001099_mask =
        case_001099_seq := by
    simpa [hrank] using case_001099_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001099_rank.val, hlt⟩ case_001099_mask =
        case_001099_b := by
    simpa [hrank] using case_001099_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001099_support case_001099_rank.val hlt
          case_001099_mask = case_001099_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001099_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001099_support case_001099_rank.val hlt
          case_001099_mask = case_001099_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001099_secondLine_eq]
  have case_001099_fixedFirst :
      FixedRow (FirstLineAt case_001099_support case_001099_rank.val hlt case_001099_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001099_firstLine, FixedRow]
  have case_001099_rowSecond :
      EqEqPosRow (SecondLineAt case_001099_support case_001099_rank.val hlt case_001099_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001099_secondLine, EqEqPosRow]
  exact ⟨case_001099_fixedFirst, case_001099_rowSecond⟩

private theorem case_001099_existsRows :
    ExistsEqEqPosVarSecondRows case_001099_rank.val case_001099_mask :=
  ⟨case_001099_support, case_001099_sourceAgrees, case_001099_rows⟩

private theorem case_001099_covered :
    RowPropertyParametricCovered case_001099_rank.val case_001099_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001099_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001100_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001100_mask : SignMask := ⟨31, by decide⟩
private def case_001100_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001100_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_001100_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001100_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_001100_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001100_secondLine : StrictLin2 := { a := (-33/170), b := (-33/170), c := (-112/85) }

private theorem case_001100_rankWord :
    rankPairWord? case_001100_word = some case_001100_rank := by
  decide

private theorem case_001100_unrank :
    unrankPairWord case_001100_rank = case_001100_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001100_word case_001100_rank).1
    case_001100_rankWord |>.symm

private theorem case_001100_seqChoice :
    translationChoiceSeq case_001100_word case_001100_mask = case_001100_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001100_seqAtRank :
    translationSeqAtRankMask case_001100_rank case_001100_mask = case_001100_seq := by
  rw [translationSeqAtRankMask, case_001100_unrank]
  exact case_001100_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001100_bAtRank :
    translationBAtRankMask case_001100_rank case_001100_mask = case_001100_b := by
  rw [translationBAtRankMask, case_001100_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001100_b, case_001100_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001100_firstLine_eq :
    case_001100_support.firstLine case_001100_seq case_001100_b = case_001100_firstLine := by
  norm_num [case_001100_firstLine, case_001100_support, case_001100_seq, case_001100_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001100_secondLine_eq :
    case_001100_support.secondLine case_001100_seq case_001100_b = case_001100_secondLine := by
  norm_num [case_001100_secondLine, case_001100_support, case_001100_seq, case_001100_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001100_sourceAgrees :
    SourceAgrees case_001100_support case_001100_rank.val case_001100_mask := by
  intro hlt
  have hrank : (⟨case_001100_rank.val, hlt⟩ : Fin numPairWords) = case_001100_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001100_rank.val, hlt⟩ case_001100_mask =
        case_001100_seq := by
    simpa [hrank] using case_001100_seqAtRank
  simp [SourceChecks, hseq, case_001100_support,
    checkTranslationConstraintSource, case_001100_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001100_rows :
    EqEqPosVarSecondRows case_001100_support case_001100_rank.val case_001100_mask := by
  intro hlt
  have hrank : (⟨case_001100_rank.val, hlt⟩ : Fin numPairWords) = case_001100_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001100_rank.val, hlt⟩ case_001100_mask =
        case_001100_seq := by
    simpa [hrank] using case_001100_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001100_rank.val, hlt⟩ case_001100_mask =
        case_001100_b := by
    simpa [hrank] using case_001100_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001100_support case_001100_rank.val hlt
          case_001100_mask = case_001100_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001100_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001100_support case_001100_rank.val hlt
          case_001100_mask = case_001100_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001100_secondLine_eq]
  have case_001100_fixedFirst :
      FixedRow (FirstLineAt case_001100_support case_001100_rank.val hlt case_001100_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001100_firstLine, FixedRow]
  have case_001100_rowSecond :
      EqEqPosRow (SecondLineAt case_001100_support case_001100_rank.val hlt case_001100_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001100_secondLine, EqEqPosRow]
  exact ⟨case_001100_fixedFirst, case_001100_rowSecond⟩

private theorem case_001100_existsRows :
    ExistsEqEqPosVarSecondRows case_001100_rank.val case_001100_mask :=
  ⟨case_001100_support, case_001100_sourceAgrees, case_001100_rows⟩

private theorem case_001100_covered :
    RowPropertyParametricCovered case_001100_rank.val case_001100_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001100_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001101_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001101_mask : SignMask := ⟨45, by decide⟩
private def case_001101_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001101_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001101_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001101_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_001101_firstLine : StrictLin2 := { a := 1, b := -1, c := (-25/3) }
private def case_001101_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001101_rankWord :
    rankPairWord? case_001101_word = some case_001101_rank := by
  decide

private theorem case_001101_unrank :
    unrankPairWord case_001101_rank = case_001101_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001101_word case_001101_rank).1
    case_001101_rankWord |>.symm

private theorem case_001101_seqChoice :
    translationChoiceSeq case_001101_word case_001101_mask = case_001101_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001101_seqAtRank :
    translationSeqAtRankMask case_001101_rank case_001101_mask = case_001101_seq := by
  rw [translationSeqAtRankMask, case_001101_unrank]
  exact case_001101_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001101_bAtRank :
    translationBAtRankMask case_001101_rank case_001101_mask = case_001101_b := by
  rw [translationBAtRankMask, case_001101_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001101_b, case_001101_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001101_firstLine_eq :
    case_001101_support.firstLine case_001101_seq case_001101_b = case_001101_firstLine := by
  norm_num [case_001101_firstLine, case_001101_support, case_001101_seq, case_001101_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001101_secondLine_eq :
    case_001101_support.secondLine case_001101_seq case_001101_b = case_001101_secondLine := by
  norm_num [case_001101_secondLine, case_001101_support, case_001101_seq, case_001101_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001101_sourceAgrees :
    SourceAgrees case_001101_support case_001101_rank.val case_001101_mask := by
  intro hlt
  have hrank : (⟨case_001101_rank.val, hlt⟩ : Fin numPairWords) = case_001101_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001101_rank.val, hlt⟩ case_001101_mask =
        case_001101_seq := by
    simpa [hrank] using case_001101_seqAtRank
  simp [SourceChecks, hseq, case_001101_support,
    checkTranslationConstraintSource, case_001101_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001101_rows :
    OppMinusOneVarFirstRows case_001101_support case_001101_rank.val case_001101_mask := by
  intro hlt
  have hrank : (⟨case_001101_rank.val, hlt⟩ : Fin numPairWords) = case_001101_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001101_rank.val, hlt⟩ case_001101_mask =
        case_001101_seq := by
    simpa [hrank] using case_001101_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001101_rank.val, hlt⟩ case_001101_mask =
        case_001101_b := by
    simpa [hrank] using case_001101_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001101_support case_001101_rank.val hlt
          case_001101_mask = case_001101_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001101_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001101_support case_001101_rank.val hlt
          case_001101_mask = case_001101_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001101_secondLine_eq]
  have case_001101_rowFirst :
      OppNegRow (FirstLineAt case_001101_support case_001101_rank.val hlt case_001101_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001101_firstLine, OppNegRow]
  have case_001101_fixedSecond :
      FixedRow (SecondLineAt case_001101_support case_001101_rank.val hlt case_001101_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001101_secondLine, FixedRow]
  exact ⟨case_001101_rowFirst, case_001101_fixedSecond⟩

private theorem case_001101_existsRows :
    ExistsOppMinusOneVarFirstRows case_001101_rank.val case_001101_mask :=
  ⟨case_001101_support, case_001101_sourceAgrees, case_001101_rows⟩

private theorem case_001101_covered :
    RowPropertyParametricCovered case_001101_rank.val case_001101_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001101_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001102_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001102_mask : SignMask := ⟨47, by decide⟩
private def case_001102_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001102_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001102_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001102_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_001102_firstLine : StrictLin2 := { a := 1, b := -1, c := (-13/3) }
private def case_001102_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001102_rankWord :
    rankPairWord? case_001102_word = some case_001102_rank := by
  decide

private theorem case_001102_unrank :
    unrankPairWord case_001102_rank = case_001102_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001102_word case_001102_rank).1
    case_001102_rankWord |>.symm

private theorem case_001102_seqChoice :
    translationChoiceSeq case_001102_word case_001102_mask = case_001102_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001102_seqAtRank :
    translationSeqAtRankMask case_001102_rank case_001102_mask = case_001102_seq := by
  rw [translationSeqAtRankMask, case_001102_unrank]
  exact case_001102_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001102_bAtRank :
    translationBAtRankMask case_001102_rank case_001102_mask = case_001102_b := by
  rw [translationBAtRankMask, case_001102_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001102_b, case_001102_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001102_firstLine_eq :
    case_001102_support.firstLine case_001102_seq case_001102_b = case_001102_firstLine := by
  norm_num [case_001102_firstLine, case_001102_support, case_001102_seq, case_001102_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001102_secondLine_eq :
    case_001102_support.secondLine case_001102_seq case_001102_b = case_001102_secondLine := by
  norm_num [case_001102_secondLine, case_001102_support, case_001102_seq, case_001102_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001102_sourceAgrees :
    SourceAgrees case_001102_support case_001102_rank.val case_001102_mask := by
  intro hlt
  have hrank : (⟨case_001102_rank.val, hlt⟩ : Fin numPairWords) = case_001102_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001102_rank.val, hlt⟩ case_001102_mask =
        case_001102_seq := by
    simpa [hrank] using case_001102_seqAtRank
  simp [SourceChecks, hseq, case_001102_support,
    checkTranslationConstraintSource, case_001102_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001102_rows :
    OppMinusOneVarFirstRows case_001102_support case_001102_rank.val case_001102_mask := by
  intro hlt
  have hrank : (⟨case_001102_rank.val, hlt⟩ : Fin numPairWords) = case_001102_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001102_rank.val, hlt⟩ case_001102_mask =
        case_001102_seq := by
    simpa [hrank] using case_001102_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001102_rank.val, hlt⟩ case_001102_mask =
        case_001102_b := by
    simpa [hrank] using case_001102_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001102_support case_001102_rank.val hlt
          case_001102_mask = case_001102_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001102_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001102_support case_001102_rank.val hlt
          case_001102_mask = case_001102_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001102_secondLine_eq]
  have case_001102_rowFirst :
      OppNegRow (FirstLineAt case_001102_support case_001102_rank.val hlt case_001102_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001102_firstLine, OppNegRow]
  have case_001102_fixedSecond :
      FixedRow (SecondLineAt case_001102_support case_001102_rank.val hlt case_001102_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001102_secondLine, FixedRow]
  exact ⟨case_001102_rowFirst, case_001102_fixedSecond⟩

private theorem case_001102_existsRows :
    ExistsOppMinusOneVarFirstRows case_001102_rank.val case_001102_mask :=
  ⟨case_001102_support, case_001102_sourceAgrees, case_001102_rows⟩

private theorem case_001102_covered :
    RowPropertyParametricCovered case_001102_rank.val case_001102_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001102_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001103_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001103_mask : SignMask := ⟨54, by decide⟩
private def case_001103_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001103_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001103_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001103_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_001103_firstLine : StrictLin2 := { a := (-3/5), b := (-3/5), c := (-11/3) }
private def case_001103_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001103_rankWord :
    rankPairWord? case_001103_word = some case_001103_rank := by
  decide

private theorem case_001103_unrank :
    unrankPairWord case_001103_rank = case_001103_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001103_word case_001103_rank).1
    case_001103_rankWord |>.symm

private theorem case_001103_seqChoice :
    translationChoiceSeq case_001103_word case_001103_mask = case_001103_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001103_seqAtRank :
    translationSeqAtRankMask case_001103_rank case_001103_mask = case_001103_seq := by
  rw [translationSeqAtRankMask, case_001103_unrank]
  exact case_001103_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001103_bAtRank :
    translationBAtRankMask case_001103_rank case_001103_mask = case_001103_b := by
  rw [translationBAtRankMask, case_001103_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001103_b, case_001103_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001103_firstLine_eq :
    case_001103_support.firstLine case_001103_seq case_001103_b = case_001103_firstLine := by
  norm_num [case_001103_firstLine, case_001103_support, case_001103_seq, case_001103_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001103_secondLine_eq :
    case_001103_support.secondLine case_001103_seq case_001103_b = case_001103_secondLine := by
  norm_num [case_001103_secondLine, case_001103_support, case_001103_seq, case_001103_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001103_sourceAgrees :
    SourceAgrees case_001103_support case_001103_rank.val case_001103_mask := by
  intro hlt
  have hrank : (⟨case_001103_rank.val, hlt⟩ : Fin numPairWords) = case_001103_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001103_rank.val, hlt⟩ case_001103_mask =
        case_001103_seq := by
    simpa [hrank] using case_001103_seqAtRank
  simp [SourceChecks, hseq, case_001103_support,
    checkTranslationConstraintSource, case_001103_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001103_rows :
    EqEqPosVarFirstRows case_001103_support case_001103_rank.val case_001103_mask := by
  intro hlt
  have hrank : (⟨case_001103_rank.val, hlt⟩ : Fin numPairWords) = case_001103_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001103_rank.val, hlt⟩ case_001103_mask =
        case_001103_seq := by
    simpa [hrank] using case_001103_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001103_rank.val, hlt⟩ case_001103_mask =
        case_001103_b := by
    simpa [hrank] using case_001103_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001103_support case_001103_rank.val hlt
          case_001103_mask = case_001103_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001103_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001103_support case_001103_rank.val hlt
          case_001103_mask = case_001103_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001103_secondLine_eq]
  have case_001103_rowFirst :
      EqEqPosRow (FirstLineAt case_001103_support case_001103_rank.val hlt case_001103_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001103_firstLine, EqEqPosRow]
  have case_001103_fixedSecond :
      FixedRow (SecondLineAt case_001103_support case_001103_rank.val hlt case_001103_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001103_secondLine, FixedRow]
  exact ⟨case_001103_rowFirst, case_001103_fixedSecond⟩

private theorem case_001103_existsRows :
    ExistsEqEqPosVarFirstRows case_001103_rank.val case_001103_mask :=
  ⟨case_001103_support, case_001103_sourceAgrees, case_001103_rows⟩

private theorem case_001103_covered :
    RowPropertyParametricCovered case_001103_rank.val case_001103_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001103_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001104_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001104_mask : SignMask := ⟨55, by decide⟩
private def case_001104_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001104_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001104_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001104_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_001104_firstLine : StrictLin2 := { a := (-3/17), b := (-3/17), c := (-25/51) }
private def case_001104_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001104_rankWord :
    rankPairWord? case_001104_word = some case_001104_rank := by
  decide

private theorem case_001104_unrank :
    unrankPairWord case_001104_rank = case_001104_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001104_word case_001104_rank).1
    case_001104_rankWord |>.symm

private theorem case_001104_seqChoice :
    translationChoiceSeq case_001104_word case_001104_mask = case_001104_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001104_seqAtRank :
    translationSeqAtRankMask case_001104_rank case_001104_mask = case_001104_seq := by
  rw [translationSeqAtRankMask, case_001104_unrank]
  exact case_001104_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001104_bAtRank :
    translationBAtRankMask case_001104_rank case_001104_mask = case_001104_b := by
  rw [translationBAtRankMask, case_001104_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001104_b, case_001104_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001104_firstLine_eq :
    case_001104_support.firstLine case_001104_seq case_001104_b = case_001104_firstLine := by
  norm_num [case_001104_firstLine, case_001104_support, case_001104_seq, case_001104_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001104_secondLine_eq :
    case_001104_support.secondLine case_001104_seq case_001104_b = case_001104_secondLine := by
  norm_num [case_001104_secondLine, case_001104_support, case_001104_seq, case_001104_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001104_sourceAgrees :
    SourceAgrees case_001104_support case_001104_rank.val case_001104_mask := by
  intro hlt
  have hrank : (⟨case_001104_rank.val, hlt⟩ : Fin numPairWords) = case_001104_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001104_rank.val, hlt⟩ case_001104_mask =
        case_001104_seq := by
    simpa [hrank] using case_001104_seqAtRank
  simp [SourceChecks, hseq, case_001104_support,
    checkTranslationConstraintSource, case_001104_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001104_rows :
    EqEqPosVarFirstRows case_001104_support case_001104_rank.val case_001104_mask := by
  intro hlt
  have hrank : (⟨case_001104_rank.val, hlt⟩ : Fin numPairWords) = case_001104_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001104_rank.val, hlt⟩ case_001104_mask =
        case_001104_seq := by
    simpa [hrank] using case_001104_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001104_rank.val, hlt⟩ case_001104_mask =
        case_001104_b := by
    simpa [hrank] using case_001104_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001104_support case_001104_rank.val hlt
          case_001104_mask = case_001104_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001104_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001104_support case_001104_rank.val hlt
          case_001104_mask = case_001104_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001104_secondLine_eq]
  have case_001104_rowFirst :
      EqEqPosRow (FirstLineAt case_001104_support case_001104_rank.val hlt case_001104_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001104_firstLine, EqEqPosRow]
  have case_001104_fixedSecond :
      FixedRow (SecondLineAt case_001104_support case_001104_rank.val hlt case_001104_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001104_secondLine, FixedRow]
  exact ⟨case_001104_rowFirst, case_001104_fixedSecond⟩

private theorem case_001104_existsRows :
    ExistsEqEqPosVarFirstRows case_001104_rank.val case_001104_mask :=
  ⟨case_001104_support, case_001104_sourceAgrees, case_001104_rows⟩

private theorem case_001104_covered :
    RowPropertyParametricCovered case_001104_rank.val case_001104_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001104_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001105_rank : Fin numPairWords := ⟨815, by decide⟩
private def case_001105_mask : SignMask := ⟨63, by decide⟩
private def case_001105_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001105_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001105_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001105_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_001105_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001105_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001105_rankWord :
    rankPairWord? case_001105_word = some case_001105_rank := by
  decide

private theorem case_001105_unrank :
    unrankPairWord case_001105_rank = case_001105_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001105_word case_001105_rank).1
    case_001105_rankWord |>.symm

private theorem case_001105_seqChoice :
    translationChoiceSeq case_001105_word case_001105_mask = case_001105_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001105_seqAtRank :
    translationSeqAtRankMask case_001105_rank case_001105_mask = case_001105_seq := by
  rw [translationSeqAtRankMask, case_001105_unrank]
  exact case_001105_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001105_bAtRank :
    translationBAtRankMask case_001105_rank case_001105_mask = case_001105_b := by
  rw [translationBAtRankMask, case_001105_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001105_b, case_001105_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001105_firstLine_eq :
    case_001105_support.firstLine case_001105_seq case_001105_b = case_001105_firstLine := by
  norm_num [case_001105_firstLine, case_001105_support, case_001105_seq, case_001105_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001105_secondLine_eq :
    case_001105_support.secondLine case_001105_seq case_001105_b = case_001105_secondLine := by
  norm_num [case_001105_secondLine, case_001105_support, case_001105_seq, case_001105_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001105_sourceAgrees :
    SourceAgrees case_001105_support case_001105_rank.val case_001105_mask := by
  intro hlt
  have hrank : (⟨case_001105_rank.val, hlt⟩ : Fin numPairWords) = case_001105_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001105_rank.val, hlt⟩ case_001105_mask =
        case_001105_seq := by
    simpa [hrank] using case_001105_seqAtRank
  simp [SourceChecks, hseq, case_001105_support,
    checkTranslationConstraintSource, case_001105_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001105_rows :
    EqEqPosVarFirstRows case_001105_support case_001105_rank.val case_001105_mask := by
  intro hlt
  have hrank : (⟨case_001105_rank.val, hlt⟩ : Fin numPairWords) = case_001105_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001105_rank.val, hlt⟩ case_001105_mask =
        case_001105_seq := by
    simpa [hrank] using case_001105_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001105_rank.val, hlt⟩ case_001105_mask =
        case_001105_b := by
    simpa [hrank] using case_001105_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001105_support case_001105_rank.val hlt
          case_001105_mask = case_001105_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001105_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001105_support case_001105_rank.val hlt
          case_001105_mask = case_001105_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001105_secondLine_eq]
  have case_001105_rowFirst :
      EqEqPosRow (FirstLineAt case_001105_support case_001105_rank.val hlt case_001105_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001105_firstLine, EqEqPosRow]
  have case_001105_fixedSecond :
      FixedRow (SecondLineAt case_001105_support case_001105_rank.val hlt case_001105_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001105_secondLine, FixedRow]
  exact ⟨case_001105_rowFirst, case_001105_fixedSecond⟩

private theorem case_001105_existsRows :
    ExistsEqEqPosVarFirstRows case_001105_rank.val case_001105_mask :=
  ⟨case_001105_support, case_001105_sourceAgrees, case_001105_rows⟩

private theorem case_001105_covered :
    RowPropertyParametricCovered case_001105_rank.val case_001105_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001105_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001106_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001106_mask : SignMask := ⟨9, by decide⟩
private def case_001106_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001106_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001106_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001106_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_001106_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_001106_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001106_rankWord :
    rankPairWord? case_001106_word = some case_001106_rank := by
  decide

private theorem case_001106_unrank :
    unrankPairWord case_001106_rank = case_001106_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001106_word case_001106_rank).1
    case_001106_rankWord |>.symm

private theorem case_001106_seqChoice :
    translationChoiceSeq case_001106_word case_001106_mask = case_001106_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001106_seqAtRank :
    translationSeqAtRankMask case_001106_rank case_001106_mask = case_001106_seq := by
  rw [translationSeqAtRankMask, case_001106_unrank]
  exact case_001106_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001106_bAtRank :
    translationBAtRankMask case_001106_rank case_001106_mask = case_001106_b := by
  rw [translationBAtRankMask, case_001106_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001106_b, case_001106_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001106_firstLine_eq :
    case_001106_support.firstLine case_001106_seq case_001106_b = case_001106_firstLine := by
  norm_num [case_001106_firstLine, case_001106_support, case_001106_seq, case_001106_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001106_secondLine_eq :
    case_001106_support.secondLine case_001106_seq case_001106_b = case_001106_secondLine := by
  norm_num [case_001106_secondLine, case_001106_support, case_001106_seq, case_001106_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001106_sourceAgrees :
    SourceAgrees case_001106_support case_001106_rank.val case_001106_mask := by
  intro hlt
  have hrank : (⟨case_001106_rank.val, hlt⟩ : Fin numPairWords) = case_001106_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001106_rank.val, hlt⟩ case_001106_mask =
        case_001106_seq := by
    simpa [hrank] using case_001106_seqAtRank
  simp [SourceChecks, hseq, case_001106_support,
    checkTranslationConstraintSource, case_001106_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001106_rows :
    EqEqPosVarFirstRows case_001106_support case_001106_rank.val case_001106_mask := by
  intro hlt
  have hrank : (⟨case_001106_rank.val, hlt⟩ : Fin numPairWords) = case_001106_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001106_rank.val, hlt⟩ case_001106_mask =
        case_001106_seq := by
    simpa [hrank] using case_001106_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001106_rank.val, hlt⟩ case_001106_mask =
        case_001106_b := by
    simpa [hrank] using case_001106_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001106_support case_001106_rank.val hlt
          case_001106_mask = case_001106_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001106_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001106_support case_001106_rank.val hlt
          case_001106_mask = case_001106_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001106_secondLine_eq]
  have case_001106_rowFirst :
      EqEqPosRow (FirstLineAt case_001106_support case_001106_rank.val hlt case_001106_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001106_firstLine, EqEqPosRow]
  have case_001106_fixedSecond :
      FixedRow (SecondLineAt case_001106_support case_001106_rank.val hlt case_001106_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001106_secondLine, FixedRow]
  exact ⟨case_001106_rowFirst, case_001106_fixedSecond⟩

private theorem case_001106_existsRows :
    ExistsEqEqPosVarFirstRows case_001106_rank.val case_001106_mask :=
  ⟨case_001106_support, case_001106_sourceAgrees, case_001106_rows⟩

private theorem case_001106_covered :
    RowPropertyParametricCovered case_001106_rank.val case_001106_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001106_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001107_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001107_mask : SignMask := ⟨13, by decide⟩
private def case_001107_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001107_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001107_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001107_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_001107_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001107_secondLine : StrictLin2 := { a := (-75/374), b := (-75/374), c := (-169/187) }

private theorem case_001107_rankWord :
    rankPairWord? case_001107_word = some case_001107_rank := by
  decide

private theorem case_001107_unrank :
    unrankPairWord case_001107_rank = case_001107_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001107_word case_001107_rank).1
    case_001107_rankWord |>.symm

private theorem case_001107_seqChoice :
    translationChoiceSeq case_001107_word case_001107_mask = case_001107_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001107_seqAtRank :
    translationSeqAtRankMask case_001107_rank case_001107_mask = case_001107_seq := by
  rw [translationSeqAtRankMask, case_001107_unrank]
  exact case_001107_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001107_bAtRank :
    translationBAtRankMask case_001107_rank case_001107_mask = case_001107_b := by
  rw [translationBAtRankMask, case_001107_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001107_b, case_001107_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001107_firstLine_eq :
    case_001107_support.firstLine case_001107_seq case_001107_b = case_001107_firstLine := by
  norm_num [case_001107_firstLine, case_001107_support, case_001107_seq, case_001107_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001107_secondLine_eq :
    case_001107_support.secondLine case_001107_seq case_001107_b = case_001107_secondLine := by
  norm_num [case_001107_secondLine, case_001107_support, case_001107_seq, case_001107_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001107_sourceAgrees :
    SourceAgrees case_001107_support case_001107_rank.val case_001107_mask := by
  intro hlt
  have hrank : (⟨case_001107_rank.val, hlt⟩ : Fin numPairWords) = case_001107_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001107_rank.val, hlt⟩ case_001107_mask =
        case_001107_seq := by
    simpa [hrank] using case_001107_seqAtRank
  simp [SourceChecks, hseq, case_001107_support,
    checkTranslationConstraintSource, case_001107_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001107_rows :
    EqEqPosVarSecondRows case_001107_support case_001107_rank.val case_001107_mask := by
  intro hlt
  have hrank : (⟨case_001107_rank.val, hlt⟩ : Fin numPairWords) = case_001107_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001107_rank.val, hlt⟩ case_001107_mask =
        case_001107_seq := by
    simpa [hrank] using case_001107_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001107_rank.val, hlt⟩ case_001107_mask =
        case_001107_b := by
    simpa [hrank] using case_001107_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001107_support case_001107_rank.val hlt
          case_001107_mask = case_001107_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001107_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001107_support case_001107_rank.val hlt
          case_001107_mask = case_001107_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001107_secondLine_eq]
  have case_001107_fixedFirst :
      FixedRow (FirstLineAt case_001107_support case_001107_rank.val hlt case_001107_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001107_firstLine, FixedRow]
  have case_001107_rowSecond :
      EqEqPosRow (SecondLineAt case_001107_support case_001107_rank.val hlt case_001107_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001107_secondLine, EqEqPosRow]
  exact ⟨case_001107_fixedFirst, case_001107_rowSecond⟩

private theorem case_001107_existsRows :
    ExistsEqEqPosVarSecondRows case_001107_rank.val case_001107_mask :=
  ⟨case_001107_support, case_001107_sourceAgrees, case_001107_rows⟩

private theorem case_001107_covered :
    RowPropertyParametricCovered case_001107_rank.val case_001107_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001107_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001108_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001108_mask : SignMask := ⟨16, by decide⟩
private def case_001108_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001108_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001108_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001108_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (-52/9) }
private def case_001108_firstLine : StrictLin2 := { a := -1, b := -1, c := -19 }
private def case_001108_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001108_rankWord :
    rankPairWord? case_001108_word = some case_001108_rank := by
  decide

private theorem case_001108_unrank :
    unrankPairWord case_001108_rank = case_001108_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001108_word case_001108_rank).1
    case_001108_rankWord |>.symm

private theorem case_001108_seqChoice :
    translationChoiceSeq case_001108_word case_001108_mask = case_001108_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001108_seqAtRank :
    translationSeqAtRankMask case_001108_rank case_001108_mask = case_001108_seq := by
  rw [translationSeqAtRankMask, case_001108_unrank]
  exact case_001108_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001108_bAtRank :
    translationBAtRankMask case_001108_rank case_001108_mask = case_001108_b := by
  rw [translationBAtRankMask, case_001108_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001108_b, case_001108_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001108_firstLine_eq :
    case_001108_support.firstLine case_001108_seq case_001108_b = case_001108_firstLine := by
  norm_num [case_001108_firstLine, case_001108_support, case_001108_seq, case_001108_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001108_secondLine_eq :
    case_001108_support.secondLine case_001108_seq case_001108_b = case_001108_secondLine := by
  norm_num [case_001108_secondLine, case_001108_support, case_001108_seq, case_001108_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001108_sourceAgrees :
    SourceAgrees case_001108_support case_001108_rank.val case_001108_mask := by
  intro hlt
  have hrank : (⟨case_001108_rank.val, hlt⟩ : Fin numPairWords) = case_001108_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001108_rank.val, hlt⟩ case_001108_mask =
        case_001108_seq := by
    simpa [hrank] using case_001108_seqAtRank
  simp [SourceChecks, hseq, case_001108_support,
    checkTranslationConstraintSource, case_001108_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001108_rows :
    EqEqPosVarFirstRows case_001108_support case_001108_rank.val case_001108_mask := by
  intro hlt
  have hrank : (⟨case_001108_rank.val, hlt⟩ : Fin numPairWords) = case_001108_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001108_rank.val, hlt⟩ case_001108_mask =
        case_001108_seq := by
    simpa [hrank] using case_001108_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001108_rank.val, hlt⟩ case_001108_mask =
        case_001108_b := by
    simpa [hrank] using case_001108_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001108_support case_001108_rank.val hlt
          case_001108_mask = case_001108_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001108_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001108_support case_001108_rank.val hlt
          case_001108_mask = case_001108_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001108_secondLine_eq]
  have case_001108_rowFirst :
      EqEqPosRow (FirstLineAt case_001108_support case_001108_rank.val hlt case_001108_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001108_firstLine, EqEqPosRow]
  have case_001108_fixedSecond :
      FixedRow (SecondLineAt case_001108_support case_001108_rank.val hlt case_001108_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001108_secondLine, FixedRow]
  exact ⟨case_001108_rowFirst, case_001108_fixedSecond⟩

private theorem case_001108_existsRows :
    ExistsEqEqPosVarFirstRows case_001108_rank.val case_001108_mask :=
  ⟨case_001108_support, case_001108_sourceAgrees, case_001108_rows⟩

private theorem case_001108_covered :
    RowPropertyParametricCovered case_001108_rank.val case_001108_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001108_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001109_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001109_mask : SignMask := ⟨18, by decide⟩
private def case_001109_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001109_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001109_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001109_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (20/9) }
private def case_001109_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/5) }
private def case_001109_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001109_rankWord :
    rankPairWord? case_001109_word = some case_001109_rank := by
  decide

private theorem case_001109_unrank :
    unrankPairWord case_001109_rank = case_001109_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001109_word case_001109_rank).1
    case_001109_rankWord |>.symm

private theorem case_001109_seqChoice :
    translationChoiceSeq case_001109_word case_001109_mask = case_001109_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001109_seqAtRank :
    translationSeqAtRankMask case_001109_rank case_001109_mask = case_001109_seq := by
  rw [translationSeqAtRankMask, case_001109_unrank]
  exact case_001109_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001109_bAtRank :
    translationBAtRankMask case_001109_rank case_001109_mask = case_001109_b := by
  rw [translationBAtRankMask, case_001109_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001109_b, case_001109_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001109_firstLine_eq :
    case_001109_support.firstLine case_001109_seq case_001109_b = case_001109_firstLine := by
  norm_num [case_001109_firstLine, case_001109_support, case_001109_seq, case_001109_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001109_secondLine_eq :
    case_001109_support.secondLine case_001109_seq case_001109_b = case_001109_secondLine := by
  norm_num [case_001109_secondLine, case_001109_support, case_001109_seq, case_001109_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001109_sourceAgrees :
    SourceAgrees case_001109_support case_001109_rank.val case_001109_mask := by
  intro hlt
  have hrank : (⟨case_001109_rank.val, hlt⟩ : Fin numPairWords) = case_001109_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001109_rank.val, hlt⟩ case_001109_mask =
        case_001109_seq := by
    simpa [hrank] using case_001109_seqAtRank
  simp [SourceChecks, hseq, case_001109_support,
    checkTranslationConstraintSource, case_001109_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001109_rows :
    EqEqPosVarFirstRows case_001109_support case_001109_rank.val case_001109_mask := by
  intro hlt
  have hrank : (⟨case_001109_rank.val, hlt⟩ : Fin numPairWords) = case_001109_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001109_rank.val, hlt⟩ case_001109_mask =
        case_001109_seq := by
    simpa [hrank] using case_001109_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001109_rank.val, hlt⟩ case_001109_mask =
        case_001109_b := by
    simpa [hrank] using case_001109_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001109_support case_001109_rank.val hlt
          case_001109_mask = case_001109_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001109_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001109_support case_001109_rank.val hlt
          case_001109_mask = case_001109_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001109_secondLine_eq]
  have case_001109_rowFirst :
      EqEqPosRow (FirstLineAt case_001109_support case_001109_rank.val hlt case_001109_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001109_firstLine, EqEqPosRow]
  have case_001109_fixedSecond :
      FixedRow (SecondLineAt case_001109_support case_001109_rank.val hlt case_001109_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001109_secondLine, FixedRow]
  exact ⟨case_001109_rowFirst, case_001109_fixedSecond⟩

private theorem case_001109_existsRows :
    ExistsEqEqPosVarFirstRows case_001109_rank.val case_001109_mask :=
  ⟨case_001109_support, case_001109_sourceAgrees, case_001109_rows⟩

private theorem case_001109_covered :
    RowPropertyParametricCovered case_001109_rank.val case_001109_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001109_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001110_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001110_mask : SignMask := ⟨22, by decide⟩
private def case_001110_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001110_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001110_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001110_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (68/9) }
private def case_001110_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001110_secondLine : StrictLin2 := { a := (-17/50), b := (-17/50), c := (-41/75) }

private theorem case_001110_rankWord :
    rankPairWord? case_001110_word = some case_001110_rank := by
  decide

private theorem case_001110_unrank :
    unrankPairWord case_001110_rank = case_001110_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001110_word case_001110_rank).1
    case_001110_rankWord |>.symm

private theorem case_001110_seqChoice :
    translationChoiceSeq case_001110_word case_001110_mask = case_001110_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001110_seqAtRank :
    translationSeqAtRankMask case_001110_rank case_001110_mask = case_001110_seq := by
  rw [translationSeqAtRankMask, case_001110_unrank]
  exact case_001110_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001110_bAtRank :
    translationBAtRankMask case_001110_rank case_001110_mask = case_001110_b := by
  rw [translationBAtRankMask, case_001110_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001110_b, case_001110_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001110_firstLine_eq :
    case_001110_support.firstLine case_001110_seq case_001110_b = case_001110_firstLine := by
  norm_num [case_001110_firstLine, case_001110_support, case_001110_seq, case_001110_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001110_secondLine_eq :
    case_001110_support.secondLine case_001110_seq case_001110_b = case_001110_secondLine := by
  norm_num [case_001110_secondLine, case_001110_support, case_001110_seq, case_001110_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001110_sourceAgrees :
    SourceAgrees case_001110_support case_001110_rank.val case_001110_mask := by
  intro hlt
  have hrank : (⟨case_001110_rank.val, hlt⟩ : Fin numPairWords) = case_001110_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001110_rank.val, hlt⟩ case_001110_mask =
        case_001110_seq := by
    simpa [hrank] using case_001110_seqAtRank
  simp [SourceChecks, hseq, case_001110_support,
    checkTranslationConstraintSource, case_001110_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001110_rows :
    EqEqPosVarSecondRows case_001110_support case_001110_rank.val case_001110_mask := by
  intro hlt
  have hrank : (⟨case_001110_rank.val, hlt⟩ : Fin numPairWords) = case_001110_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001110_rank.val, hlt⟩ case_001110_mask =
        case_001110_seq := by
    simpa [hrank] using case_001110_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001110_rank.val, hlt⟩ case_001110_mask =
        case_001110_b := by
    simpa [hrank] using case_001110_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001110_support case_001110_rank.val hlt
          case_001110_mask = case_001110_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001110_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001110_support case_001110_rank.val hlt
          case_001110_mask = case_001110_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001110_secondLine_eq]
  have case_001110_fixedFirst :
      FixedRow (FirstLineAt case_001110_support case_001110_rank.val hlt case_001110_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001110_firstLine, FixedRow]
  have case_001110_rowSecond :
      EqEqPosRow (SecondLineAt case_001110_support case_001110_rank.val hlt case_001110_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001110_secondLine, EqEqPosRow]
  exact ⟨case_001110_fixedFirst, case_001110_rowSecond⟩

private theorem case_001110_existsRows :
    ExistsEqEqPosVarSecondRows case_001110_rank.val case_001110_mask :=
  ⟨case_001110_support, case_001110_sourceAgrees, case_001110_rows⟩

private theorem case_001110_covered :
    RowPropertyParametricCovered case_001110_rank.val case_001110_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001110_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001111_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001111_mask : SignMask := ⟨24, by decide⟩
private def case_001111_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001111_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001111_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001111_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_001111_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_001111_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001111_rankWord :
    rankPairWord? case_001111_word = some case_001111_rank := by
  decide

private theorem case_001111_unrank :
    unrankPairWord case_001111_rank = case_001111_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001111_word case_001111_rank).1
    case_001111_rankWord |>.symm

private theorem case_001111_seqChoice :
    translationChoiceSeq case_001111_word case_001111_mask = case_001111_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001111_seqAtRank :
    translationSeqAtRankMask case_001111_rank case_001111_mask = case_001111_seq := by
  rw [translationSeqAtRankMask, case_001111_unrank]
  exact case_001111_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001111_bAtRank :
    translationBAtRankMask case_001111_rank case_001111_mask = case_001111_b := by
  rw [translationBAtRankMask, case_001111_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001111_b, case_001111_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001111_firstLine_eq :
    case_001111_support.firstLine case_001111_seq case_001111_b = case_001111_firstLine := by
  norm_num [case_001111_firstLine, case_001111_support, case_001111_seq, case_001111_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001111_secondLine_eq :
    case_001111_support.secondLine case_001111_seq case_001111_b = case_001111_secondLine := by
  norm_num [case_001111_secondLine, case_001111_support, case_001111_seq, case_001111_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001111_sourceAgrees :
    SourceAgrees case_001111_support case_001111_rank.val case_001111_mask := by
  intro hlt
  have hrank : (⟨case_001111_rank.val, hlt⟩ : Fin numPairWords) = case_001111_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001111_rank.val, hlt⟩ case_001111_mask =
        case_001111_seq := by
    simpa [hrank] using case_001111_seqAtRank
  simp [SourceChecks, hseq, case_001111_support,
    checkTranslationConstraintSource, case_001111_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001111_rows :
    EqEqPosVarFirstRows case_001111_support case_001111_rank.val case_001111_mask := by
  intro hlt
  have hrank : (⟨case_001111_rank.val, hlt⟩ : Fin numPairWords) = case_001111_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001111_rank.val, hlt⟩ case_001111_mask =
        case_001111_seq := by
    simpa [hrank] using case_001111_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001111_rank.val, hlt⟩ case_001111_mask =
        case_001111_b := by
    simpa [hrank] using case_001111_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001111_support case_001111_rank.val hlt
          case_001111_mask = case_001111_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001111_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001111_support case_001111_rank.val hlt
          case_001111_mask = case_001111_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001111_secondLine_eq]
  have case_001111_rowFirst :
      EqEqPosRow (FirstLineAt case_001111_support case_001111_rank.val hlt case_001111_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001111_firstLine, EqEqPosRow]
  have case_001111_fixedSecond :
      FixedRow (SecondLineAt case_001111_support case_001111_rank.val hlt case_001111_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001111_secondLine, FixedRow]
  exact ⟨case_001111_rowFirst, case_001111_fixedSecond⟩

private theorem case_001111_existsRows :
    ExistsEqEqPosVarFirstRows case_001111_rank.val case_001111_mask :=
  ⟨case_001111_support, case_001111_sourceAgrees, case_001111_rows⟩

private theorem case_001111_covered :
    RowPropertyParametricCovered case_001111_rank.val case_001111_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001111_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001112_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001112_mask : SignMask := ⟨28, by decide⟩
private def case_001112_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001112_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001112_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001112_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_001112_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_001112_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001112_rankWord :
    rankPairWord? case_001112_word = some case_001112_rank := by
  decide

private theorem case_001112_unrank :
    unrankPairWord case_001112_rank = case_001112_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001112_word case_001112_rank).1
    case_001112_rankWord |>.symm

private theorem case_001112_seqChoice :
    translationChoiceSeq case_001112_word case_001112_mask = case_001112_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001112_seqAtRank :
    translationSeqAtRankMask case_001112_rank case_001112_mask = case_001112_seq := by
  rw [translationSeqAtRankMask, case_001112_unrank]
  exact case_001112_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001112_bAtRank :
    translationBAtRankMask case_001112_rank case_001112_mask = case_001112_b := by
  rw [translationBAtRankMask, case_001112_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001112_b, case_001112_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001112_firstLine_eq :
    case_001112_support.firstLine case_001112_seq case_001112_b = case_001112_firstLine := by
  norm_num [case_001112_firstLine, case_001112_support, case_001112_seq, case_001112_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001112_secondLine_eq :
    case_001112_support.secondLine case_001112_seq case_001112_b = case_001112_secondLine := by
  norm_num [case_001112_secondLine, case_001112_support, case_001112_seq, case_001112_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001112_sourceAgrees :
    SourceAgrees case_001112_support case_001112_rank.val case_001112_mask := by
  intro hlt
  have hrank : (⟨case_001112_rank.val, hlt⟩ : Fin numPairWords) = case_001112_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001112_rank.val, hlt⟩ case_001112_mask =
        case_001112_seq := by
    simpa [hrank] using case_001112_seqAtRank
  simp [SourceChecks, hseq, case_001112_support,
    checkTranslationConstraintSource, case_001112_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001112_rows :
    OppOneMinusVarFirstRows case_001112_support case_001112_rank.val case_001112_mask := by
  intro hlt
  have hrank : (⟨case_001112_rank.val, hlt⟩ : Fin numPairWords) = case_001112_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001112_rank.val, hlt⟩ case_001112_mask =
        case_001112_seq := by
    simpa [hrank] using case_001112_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001112_rank.val, hlt⟩ case_001112_mask =
        case_001112_b := by
    simpa [hrank] using case_001112_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001112_support case_001112_rank.val hlt
          case_001112_mask = case_001112_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001112_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001112_support case_001112_rank.val hlt
          case_001112_mask = case_001112_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001112_secondLine_eq]
  have case_001112_rowFirst :
      OppPosRow (FirstLineAt case_001112_support case_001112_rank.val hlt case_001112_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001112_firstLine, OppPosRow]
  have case_001112_fixedSecond :
      FixedRow (SecondLineAt case_001112_support case_001112_rank.val hlt case_001112_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001112_secondLine, FixedRow]
  exact ⟨case_001112_rowFirst, case_001112_fixedSecond⟩

private theorem case_001112_existsRows :
    ExistsOppOneMinusVarFirstRows case_001112_rank.val case_001112_mask :=
  ⟨case_001112_support, case_001112_sourceAgrees, case_001112_rows⟩

private theorem case_001112_covered :
    RowPropertyParametricCovered case_001112_rank.val case_001112_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001112_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001113_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001113_mask : SignMask := ⟨30, by decide⟩
private def case_001113_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001113_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001113_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001113_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (20/9) }
private def case_001113_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001113_secondLine : StrictLin2 := { a := (-87/518), b := (-87/518), c := (-101/259) }

private theorem case_001113_rankWord :
    rankPairWord? case_001113_word = some case_001113_rank := by
  decide

private theorem case_001113_unrank :
    unrankPairWord case_001113_rank = case_001113_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001113_word case_001113_rank).1
    case_001113_rankWord |>.symm

private theorem case_001113_seqChoice :
    translationChoiceSeq case_001113_word case_001113_mask = case_001113_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001113_seqAtRank :
    translationSeqAtRankMask case_001113_rank case_001113_mask = case_001113_seq := by
  rw [translationSeqAtRankMask, case_001113_unrank]
  exact case_001113_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001113_bAtRank :
    translationBAtRankMask case_001113_rank case_001113_mask = case_001113_b := by
  rw [translationBAtRankMask, case_001113_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001113_b, case_001113_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001113_firstLine_eq :
    case_001113_support.firstLine case_001113_seq case_001113_b = case_001113_firstLine := by
  norm_num [case_001113_firstLine, case_001113_support, case_001113_seq, case_001113_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001113_secondLine_eq :
    case_001113_support.secondLine case_001113_seq case_001113_b = case_001113_secondLine := by
  norm_num [case_001113_secondLine, case_001113_support, case_001113_seq, case_001113_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001113_sourceAgrees :
    SourceAgrees case_001113_support case_001113_rank.val case_001113_mask := by
  intro hlt
  have hrank : (⟨case_001113_rank.val, hlt⟩ : Fin numPairWords) = case_001113_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001113_rank.val, hlt⟩ case_001113_mask =
        case_001113_seq := by
    simpa [hrank] using case_001113_seqAtRank
  simp [SourceChecks, hseq, case_001113_support,
    checkTranslationConstraintSource, case_001113_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001113_rows :
    EqEqPosVarSecondRows case_001113_support case_001113_rank.val case_001113_mask := by
  intro hlt
  have hrank : (⟨case_001113_rank.val, hlt⟩ : Fin numPairWords) = case_001113_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001113_rank.val, hlt⟩ case_001113_mask =
        case_001113_seq := by
    simpa [hrank] using case_001113_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001113_rank.val, hlt⟩ case_001113_mask =
        case_001113_b := by
    simpa [hrank] using case_001113_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001113_support case_001113_rank.val hlt
          case_001113_mask = case_001113_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001113_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001113_support case_001113_rank.val hlt
          case_001113_mask = case_001113_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001113_secondLine_eq]
  have case_001113_fixedFirst :
      FixedRow (FirstLineAt case_001113_support case_001113_rank.val hlt case_001113_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001113_firstLine, FixedRow]
  have case_001113_rowSecond :
      EqEqPosRow (SecondLineAt case_001113_support case_001113_rank.val hlt case_001113_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001113_secondLine, EqEqPosRow]
  exact ⟨case_001113_fixedFirst, case_001113_rowSecond⟩

private theorem case_001113_existsRows :
    ExistsEqEqPosVarSecondRows case_001113_rank.val case_001113_mask :=
  ⟨case_001113_support, case_001113_sourceAgrees, case_001113_rows⟩

private theorem case_001113_covered :
    RowPropertyParametricCovered case_001113_rank.val case_001113_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001113_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001114_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001114_mask : SignMask := ⟨31, by decide⟩
private def case_001114_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001114_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001114_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001114_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_001114_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001114_secondLine : StrictLin2 := { a := (-87/494), b := (-87/494), c := (-200/247) }

private theorem case_001114_rankWord :
    rankPairWord? case_001114_word = some case_001114_rank := by
  decide

private theorem case_001114_unrank :
    unrankPairWord case_001114_rank = case_001114_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001114_word case_001114_rank).1
    case_001114_rankWord |>.symm

private theorem case_001114_seqChoice :
    translationChoiceSeq case_001114_word case_001114_mask = case_001114_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001114_seqAtRank :
    translationSeqAtRankMask case_001114_rank case_001114_mask = case_001114_seq := by
  rw [translationSeqAtRankMask, case_001114_unrank]
  exact case_001114_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001114_bAtRank :
    translationBAtRankMask case_001114_rank case_001114_mask = case_001114_b := by
  rw [translationBAtRankMask, case_001114_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001114_b, case_001114_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001114_firstLine_eq :
    case_001114_support.firstLine case_001114_seq case_001114_b = case_001114_firstLine := by
  norm_num [case_001114_firstLine, case_001114_support, case_001114_seq, case_001114_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001114_secondLine_eq :
    case_001114_support.secondLine case_001114_seq case_001114_b = case_001114_secondLine := by
  norm_num [case_001114_secondLine, case_001114_support, case_001114_seq, case_001114_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001114_sourceAgrees :
    SourceAgrees case_001114_support case_001114_rank.val case_001114_mask := by
  intro hlt
  have hrank : (⟨case_001114_rank.val, hlt⟩ : Fin numPairWords) = case_001114_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001114_rank.val, hlt⟩ case_001114_mask =
        case_001114_seq := by
    simpa [hrank] using case_001114_seqAtRank
  simp [SourceChecks, hseq, case_001114_support,
    checkTranslationConstraintSource, case_001114_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001114_rows :
    EqEqPosVarSecondRows case_001114_support case_001114_rank.val case_001114_mask := by
  intro hlt
  have hrank : (⟨case_001114_rank.val, hlt⟩ : Fin numPairWords) = case_001114_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001114_rank.val, hlt⟩ case_001114_mask =
        case_001114_seq := by
    simpa [hrank] using case_001114_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001114_rank.val, hlt⟩ case_001114_mask =
        case_001114_b := by
    simpa [hrank] using case_001114_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001114_support case_001114_rank.val hlt
          case_001114_mask = case_001114_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001114_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001114_support case_001114_rank.val hlt
          case_001114_mask = case_001114_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001114_secondLine_eq]
  have case_001114_fixedFirst :
      FixedRow (FirstLineAt case_001114_support case_001114_rank.val hlt case_001114_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001114_firstLine, FixedRow]
  have case_001114_rowSecond :
      EqEqPosRow (SecondLineAt case_001114_support case_001114_rank.val hlt case_001114_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001114_secondLine, EqEqPosRow]
  exact ⟨case_001114_fixedFirst, case_001114_rowSecond⟩

private theorem case_001114_existsRows :
    ExistsEqEqPosVarSecondRows case_001114_rank.val case_001114_mask :=
  ⟨case_001114_support, case_001114_sourceAgrees, case_001114_rows⟩

private theorem case_001114_covered :
    RowPropertyParametricCovered case_001114_rank.val case_001114_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001114_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001115_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001115_mask : SignMask := ⟨45, by decide⟩
private def case_001115_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001115_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001115_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001115_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (-20/9) }
private def case_001115_firstLine : StrictLin2 := { a := 1, b := -1, c := (-71/13) }
private def case_001115_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001115_rankWord :
    rankPairWord? case_001115_word = some case_001115_rank := by
  decide

private theorem case_001115_unrank :
    unrankPairWord case_001115_rank = case_001115_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001115_word case_001115_rank).1
    case_001115_rankWord |>.symm

private theorem case_001115_seqChoice :
    translationChoiceSeq case_001115_word case_001115_mask = case_001115_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001115_seqAtRank :
    translationSeqAtRankMask case_001115_rank case_001115_mask = case_001115_seq := by
  rw [translationSeqAtRankMask, case_001115_unrank]
  exact case_001115_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001115_bAtRank :
    translationBAtRankMask case_001115_rank case_001115_mask = case_001115_b := by
  rw [translationBAtRankMask, case_001115_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001115_b, case_001115_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001115_firstLine_eq :
    case_001115_support.firstLine case_001115_seq case_001115_b = case_001115_firstLine := by
  norm_num [case_001115_firstLine, case_001115_support, case_001115_seq, case_001115_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001115_secondLine_eq :
    case_001115_support.secondLine case_001115_seq case_001115_b = case_001115_secondLine := by
  norm_num [case_001115_secondLine, case_001115_support, case_001115_seq, case_001115_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001115_sourceAgrees :
    SourceAgrees case_001115_support case_001115_rank.val case_001115_mask := by
  intro hlt
  have hrank : (⟨case_001115_rank.val, hlt⟩ : Fin numPairWords) = case_001115_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001115_rank.val, hlt⟩ case_001115_mask =
        case_001115_seq := by
    simpa [hrank] using case_001115_seqAtRank
  simp [SourceChecks, hseq, case_001115_support,
    checkTranslationConstraintSource, case_001115_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001115_rows :
    OppMinusOneVarFirstRows case_001115_support case_001115_rank.val case_001115_mask := by
  intro hlt
  have hrank : (⟨case_001115_rank.val, hlt⟩ : Fin numPairWords) = case_001115_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001115_rank.val, hlt⟩ case_001115_mask =
        case_001115_seq := by
    simpa [hrank] using case_001115_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001115_rank.val, hlt⟩ case_001115_mask =
        case_001115_b := by
    simpa [hrank] using case_001115_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001115_support case_001115_rank.val hlt
          case_001115_mask = case_001115_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001115_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001115_support case_001115_rank.val hlt
          case_001115_mask = case_001115_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001115_secondLine_eq]
  have case_001115_rowFirst :
      OppNegRow (FirstLineAt case_001115_support case_001115_rank.val hlt case_001115_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001115_firstLine, OppNegRow]
  have case_001115_fixedSecond :
      FixedRow (SecondLineAt case_001115_support case_001115_rank.val hlt case_001115_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001115_secondLine, FixedRow]
  exact ⟨case_001115_rowFirst, case_001115_fixedSecond⟩

private theorem case_001115_existsRows :
    ExistsOppMinusOneVarFirstRows case_001115_rank.val case_001115_mask :=
  ⟨case_001115_support, case_001115_sourceAgrees, case_001115_rows⟩

private theorem case_001115_covered :
    RowPropertyParametricCovered case_001115_rank.val case_001115_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001115_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001116_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001116_mask : SignMask := ⟨47, by decide⟩
private def case_001116_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001116_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001116_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001116_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (52/9) }
private def case_001116_firstLine : StrictLin2 := { a := 1, b := -1, c := (-35/13) }
private def case_001116_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001116_rankWord :
    rankPairWord? case_001116_word = some case_001116_rank := by
  decide

private theorem case_001116_unrank :
    unrankPairWord case_001116_rank = case_001116_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001116_word case_001116_rank).1
    case_001116_rankWord |>.symm

private theorem case_001116_seqChoice :
    translationChoiceSeq case_001116_word case_001116_mask = case_001116_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001116_seqAtRank :
    translationSeqAtRankMask case_001116_rank case_001116_mask = case_001116_seq := by
  rw [translationSeqAtRankMask, case_001116_unrank]
  exact case_001116_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001116_bAtRank :
    translationBAtRankMask case_001116_rank case_001116_mask = case_001116_b := by
  rw [translationBAtRankMask, case_001116_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001116_b, case_001116_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001116_firstLine_eq :
    case_001116_support.firstLine case_001116_seq case_001116_b = case_001116_firstLine := by
  norm_num [case_001116_firstLine, case_001116_support, case_001116_seq, case_001116_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001116_secondLine_eq :
    case_001116_support.secondLine case_001116_seq case_001116_b = case_001116_secondLine := by
  norm_num [case_001116_secondLine, case_001116_support, case_001116_seq, case_001116_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001116_sourceAgrees :
    SourceAgrees case_001116_support case_001116_rank.val case_001116_mask := by
  intro hlt
  have hrank : (⟨case_001116_rank.val, hlt⟩ : Fin numPairWords) = case_001116_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001116_rank.val, hlt⟩ case_001116_mask =
        case_001116_seq := by
    simpa [hrank] using case_001116_seqAtRank
  simp [SourceChecks, hseq, case_001116_support,
    checkTranslationConstraintSource, case_001116_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001116_rows :
    OppMinusOneVarFirstRows case_001116_support case_001116_rank.val case_001116_mask := by
  intro hlt
  have hrank : (⟨case_001116_rank.val, hlt⟩ : Fin numPairWords) = case_001116_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001116_rank.val, hlt⟩ case_001116_mask =
        case_001116_seq := by
    simpa [hrank] using case_001116_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001116_rank.val, hlt⟩ case_001116_mask =
        case_001116_b := by
    simpa [hrank] using case_001116_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001116_support case_001116_rank.val hlt
          case_001116_mask = case_001116_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001116_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001116_support case_001116_rank.val hlt
          case_001116_mask = case_001116_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001116_secondLine_eq]
  have case_001116_rowFirst :
      OppNegRow (FirstLineAt case_001116_support case_001116_rank.val hlt case_001116_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001116_firstLine, OppNegRow]
  have case_001116_fixedSecond :
      FixedRow (SecondLineAt case_001116_support case_001116_rank.val hlt case_001116_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001116_secondLine, FixedRow]
  exact ⟨case_001116_rowFirst, case_001116_fixedSecond⟩

private theorem case_001116_existsRows :
    ExistsOppMinusOneVarFirstRows case_001116_rank.val case_001116_mask :=
  ⟨case_001116_support, case_001116_sourceAgrees, case_001116_rows⟩

private theorem case_001116_covered :
    RowPropertyParametricCovered case_001116_rank.val case_001116_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001116_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001117_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001117_mask : SignMask := ⟨54, by decide⟩
private def case_001117_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001117_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001117_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001117_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (116/9) }
private def case_001117_firstLine : StrictLin2 := { a := -1, b := 1, c := (-79/5) }
private def case_001117_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001117_rankWord :
    rankPairWord? case_001117_word = some case_001117_rank := by
  decide

private theorem case_001117_unrank :
    unrankPairWord case_001117_rank = case_001117_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001117_word case_001117_rank).1
    case_001117_rankWord |>.symm

private theorem case_001117_seqChoice :
    translationChoiceSeq case_001117_word case_001117_mask = case_001117_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001117_seqAtRank :
    translationSeqAtRankMask case_001117_rank case_001117_mask = case_001117_seq := by
  rw [translationSeqAtRankMask, case_001117_unrank]
  exact case_001117_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001117_bAtRank :
    translationBAtRankMask case_001117_rank case_001117_mask = case_001117_b := by
  rw [translationBAtRankMask, case_001117_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001117_b, case_001117_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001117_firstLine_eq :
    case_001117_support.firstLine case_001117_seq case_001117_b = case_001117_firstLine := by
  norm_num [case_001117_firstLine, case_001117_support, case_001117_seq, case_001117_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001117_secondLine_eq :
    case_001117_support.secondLine case_001117_seq case_001117_b = case_001117_secondLine := by
  norm_num [case_001117_secondLine, case_001117_support, case_001117_seq, case_001117_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001117_sourceAgrees :
    SourceAgrees case_001117_support case_001117_rank.val case_001117_mask := by
  intro hlt
  have hrank : (⟨case_001117_rank.val, hlt⟩ : Fin numPairWords) = case_001117_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001117_rank.val, hlt⟩ case_001117_mask =
        case_001117_seq := by
    simpa [hrank] using case_001117_seqAtRank
  simp [SourceChecks, hseq, case_001117_support,
    checkTranslationConstraintSource, case_001117_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001117_rows :
    OppOneMinusVarFirstRows case_001117_support case_001117_rank.val case_001117_mask := by
  intro hlt
  have hrank : (⟨case_001117_rank.val, hlt⟩ : Fin numPairWords) = case_001117_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001117_rank.val, hlt⟩ case_001117_mask =
        case_001117_seq := by
    simpa [hrank] using case_001117_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001117_rank.val, hlt⟩ case_001117_mask =
        case_001117_b := by
    simpa [hrank] using case_001117_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001117_support case_001117_rank.val hlt
          case_001117_mask = case_001117_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001117_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001117_support case_001117_rank.val hlt
          case_001117_mask = case_001117_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001117_secondLine_eq]
  have case_001117_rowFirst :
      OppPosRow (FirstLineAt case_001117_support case_001117_rank.val hlt case_001117_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001117_firstLine, OppPosRow]
  have case_001117_fixedSecond :
      FixedRow (SecondLineAt case_001117_support case_001117_rank.val hlt case_001117_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001117_secondLine, FixedRow]
  exact ⟨case_001117_rowFirst, case_001117_fixedSecond⟩

private theorem case_001117_existsRows :
    ExistsOppOneMinusVarFirstRows case_001117_rank.val case_001117_mask :=
  ⟨case_001117_support, case_001117_sourceAgrees, case_001117_rows⟩

private theorem case_001117_covered :
    RowPropertyParametricCovered case_001117_rank.val case_001117_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001117_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001118_rank : Fin numPairWords := ⟨819, by decide⟩
private def case_001118_mask : SignMask := ⟨55, by decide⟩
private def case_001118_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001118_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001118_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001118_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_001118_firstLine : StrictLin2 := { a := -1, b := 1, c := (-43/5) }
private def case_001118_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001118_rankWord :
    rankPairWord? case_001118_word = some case_001118_rank := by
  decide

private theorem case_001118_unrank :
    unrankPairWord case_001118_rank = case_001118_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001118_word case_001118_rank).1
    case_001118_rankWord |>.symm

private theorem case_001118_seqChoice :
    translationChoiceSeq case_001118_word case_001118_mask = case_001118_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001118_seqAtRank :
    translationSeqAtRankMask case_001118_rank case_001118_mask = case_001118_seq := by
  rw [translationSeqAtRankMask, case_001118_unrank]
  exact case_001118_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001118_bAtRank :
    translationBAtRankMask case_001118_rank case_001118_mask = case_001118_b := by
  rw [translationBAtRankMask, case_001118_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001118_b, case_001118_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001118_firstLine_eq :
    case_001118_support.firstLine case_001118_seq case_001118_b = case_001118_firstLine := by
  norm_num [case_001118_firstLine, case_001118_support, case_001118_seq, case_001118_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001118_secondLine_eq :
    case_001118_support.secondLine case_001118_seq case_001118_b = case_001118_secondLine := by
  norm_num [case_001118_secondLine, case_001118_support, case_001118_seq, case_001118_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001118_sourceAgrees :
    SourceAgrees case_001118_support case_001118_rank.val case_001118_mask := by
  intro hlt
  have hrank : (⟨case_001118_rank.val, hlt⟩ : Fin numPairWords) = case_001118_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001118_rank.val, hlt⟩ case_001118_mask =
        case_001118_seq := by
    simpa [hrank] using case_001118_seqAtRank
  simp [SourceChecks, hseq, case_001118_support,
    checkTranslationConstraintSource, case_001118_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001118_rows :
    OppOneMinusVarFirstRows case_001118_support case_001118_rank.val case_001118_mask := by
  intro hlt
  have hrank : (⟨case_001118_rank.val, hlt⟩ : Fin numPairWords) = case_001118_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001118_rank.val, hlt⟩ case_001118_mask =
        case_001118_seq := by
    simpa [hrank] using case_001118_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001118_rank.val, hlt⟩ case_001118_mask =
        case_001118_b := by
    simpa [hrank] using case_001118_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001118_support case_001118_rank.val hlt
          case_001118_mask = case_001118_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001118_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001118_support case_001118_rank.val hlt
          case_001118_mask = case_001118_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001118_secondLine_eq]
  have case_001118_rowFirst :
      OppPosRow (FirstLineAt case_001118_support case_001118_rank.val hlt case_001118_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001118_firstLine, OppPosRow]
  have case_001118_fixedSecond :
      FixedRow (SecondLineAt case_001118_support case_001118_rank.val hlt case_001118_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001118_secondLine, FixedRow]
  exact ⟨case_001118_rowFirst, case_001118_fixedSecond⟩

private theorem case_001118_existsRows :
    ExistsOppOneMinusVarFirstRows case_001118_rank.val case_001118_mask :=
  ⟨case_001118_support, case_001118_sourceAgrees, case_001118_rows⟩

private theorem case_001118_covered :
    RowPropertyParametricCovered case_001118_rank.val case_001118_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001118_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001119_rank : Fin numPairWords := ⟨821, by decide⟩
private def case_001119_mask : SignMask := ⟨8, by decide⟩
private def case_001119_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001119_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001119_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001119_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (-100/9) }
private def case_001119_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/17) }
private def case_001119_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001119_rankWord :
    rankPairWord? case_001119_word = some case_001119_rank := by
  decide

private theorem case_001119_unrank :
    unrankPairWord case_001119_rank = case_001119_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001119_word case_001119_rank).1
    case_001119_rankWord |>.symm

private theorem case_001119_seqChoice :
    translationChoiceSeq case_001119_word case_001119_mask = case_001119_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001119_seqAtRank :
    translationSeqAtRankMask case_001119_rank case_001119_mask = case_001119_seq := by
  rw [translationSeqAtRankMask, case_001119_unrank]
  exact case_001119_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001119_bAtRank :
    translationBAtRankMask case_001119_rank case_001119_mask = case_001119_b := by
  rw [translationBAtRankMask, case_001119_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001119_b, case_001119_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001119_firstLine_eq :
    case_001119_support.firstLine case_001119_seq case_001119_b = case_001119_firstLine := by
  norm_num [case_001119_firstLine, case_001119_support, case_001119_seq, case_001119_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001119_secondLine_eq :
    case_001119_support.secondLine case_001119_seq case_001119_b = case_001119_secondLine := by
  norm_num [case_001119_secondLine, case_001119_support, case_001119_seq, case_001119_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001119_sourceAgrees :
    SourceAgrees case_001119_support case_001119_rank.val case_001119_mask := by
  intro hlt
  have hrank : (⟨case_001119_rank.val, hlt⟩ : Fin numPairWords) = case_001119_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001119_rank.val, hlt⟩ case_001119_mask =
        case_001119_seq := by
    simpa [hrank] using case_001119_seqAtRank
  simp [SourceChecks, hseq, case_001119_support,
    checkTranslationConstraintSource, case_001119_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001119_rows :
    EqEqPosVarFirstRows case_001119_support case_001119_rank.val case_001119_mask := by
  intro hlt
  have hrank : (⟨case_001119_rank.val, hlt⟩ : Fin numPairWords) = case_001119_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001119_rank.val, hlt⟩ case_001119_mask =
        case_001119_seq := by
    simpa [hrank] using case_001119_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001119_rank.val, hlt⟩ case_001119_mask =
        case_001119_b := by
    simpa [hrank] using case_001119_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001119_support case_001119_rank.val hlt
          case_001119_mask = case_001119_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001119_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001119_support case_001119_rank.val hlt
          case_001119_mask = case_001119_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001119_secondLine_eq]
  have case_001119_rowFirst :
      EqEqPosRow (FirstLineAt case_001119_support case_001119_rank.val hlt case_001119_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001119_firstLine, EqEqPosRow]
  have case_001119_fixedSecond :
      FixedRow (SecondLineAt case_001119_support case_001119_rank.val hlt case_001119_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001119_secondLine, FixedRow]
  exact ⟨case_001119_rowFirst, case_001119_fixedSecond⟩

private theorem case_001119_existsRows :
    ExistsEqEqPosVarFirstRows case_001119_rank.val case_001119_mask :=
  ⟨case_001119_support, case_001119_sourceAgrees, case_001119_rows⟩

private theorem case_001119_covered :
    RowPropertyParametricCovered case_001119_rank.val case_001119_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001119_existsRows

inductive Group034Covered : Nat -> SignMask -> Prop
  | case_001088 : Group034Covered case_001088_rank.val case_001088_mask
  | case_001089 : Group034Covered case_001089_rank.val case_001089_mask
  | case_001090 : Group034Covered case_001090_rank.val case_001090_mask
  | case_001091 : Group034Covered case_001091_rank.val case_001091_mask
  | case_001092 : Group034Covered case_001092_rank.val case_001092_mask
  | case_001093 : Group034Covered case_001093_rank.val case_001093_mask
  | case_001094 : Group034Covered case_001094_rank.val case_001094_mask
  | case_001095 : Group034Covered case_001095_rank.val case_001095_mask
  | case_001096 : Group034Covered case_001096_rank.val case_001096_mask
  | case_001097 : Group034Covered case_001097_rank.val case_001097_mask
  | case_001098 : Group034Covered case_001098_rank.val case_001098_mask
  | case_001099 : Group034Covered case_001099_rank.val case_001099_mask
  | case_001100 : Group034Covered case_001100_rank.val case_001100_mask
  | case_001101 : Group034Covered case_001101_rank.val case_001101_mask
  | case_001102 : Group034Covered case_001102_rank.val case_001102_mask
  | case_001103 : Group034Covered case_001103_rank.val case_001103_mask
  | case_001104 : Group034Covered case_001104_rank.val case_001104_mask
  | case_001105 : Group034Covered case_001105_rank.val case_001105_mask
  | case_001106 : Group034Covered case_001106_rank.val case_001106_mask
  | case_001107 : Group034Covered case_001107_rank.val case_001107_mask
  | case_001108 : Group034Covered case_001108_rank.val case_001108_mask
  | case_001109 : Group034Covered case_001109_rank.val case_001109_mask
  | case_001110 : Group034Covered case_001110_rank.val case_001110_mask
  | case_001111 : Group034Covered case_001111_rank.val case_001111_mask
  | case_001112 : Group034Covered case_001112_rank.val case_001112_mask
  | case_001113 : Group034Covered case_001113_rank.val case_001113_mask
  | case_001114 : Group034Covered case_001114_rank.val case_001114_mask
  | case_001115 : Group034Covered case_001115_rank.val case_001115_mask
  | case_001116 : Group034Covered case_001116_rank.val case_001116_mask
  | case_001117 : Group034Covered case_001117_rank.val case_001117_mask
  | case_001118 : Group034Covered case_001118_rank.val case_001118_mask
  | case_001119 : Group034Covered case_001119_rank.val case_001119_mask

theorem Group034GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group034Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001088 =>
      exact RowPropertyParametricCovered.kills case_001088_covered
  | case_001089 =>
      exact RowPropertyParametricCovered.kills case_001089_covered
  | case_001090 =>
      exact RowPropertyParametricCovered.kills case_001090_covered
  | case_001091 =>
      exact RowPropertyParametricCovered.kills case_001091_covered
  | case_001092 =>
      exact RowPropertyParametricCovered.kills case_001092_covered
  | case_001093 =>
      exact RowPropertyParametricCovered.kills case_001093_covered
  | case_001094 =>
      exact RowPropertyParametricCovered.kills case_001094_covered
  | case_001095 =>
      exact RowPropertyParametricCovered.kills case_001095_covered
  | case_001096 =>
      exact RowPropertyParametricCovered.kills case_001096_covered
  | case_001097 =>
      exact RowPropertyParametricCovered.kills case_001097_covered
  | case_001098 =>
      exact RowPropertyParametricCovered.kills case_001098_covered
  | case_001099 =>
      exact RowPropertyParametricCovered.kills case_001099_covered
  | case_001100 =>
      exact RowPropertyParametricCovered.kills case_001100_covered
  | case_001101 =>
      exact RowPropertyParametricCovered.kills case_001101_covered
  | case_001102 =>
      exact RowPropertyParametricCovered.kills case_001102_covered
  | case_001103 =>
      exact RowPropertyParametricCovered.kills case_001103_covered
  | case_001104 =>
      exact RowPropertyParametricCovered.kills case_001104_covered
  | case_001105 =>
      exact RowPropertyParametricCovered.kills case_001105_covered
  | case_001106 =>
      exact RowPropertyParametricCovered.kills case_001106_covered
  | case_001107 =>
      exact RowPropertyParametricCovered.kills case_001107_covered
  | case_001108 =>
      exact RowPropertyParametricCovered.kills case_001108_covered
  | case_001109 =>
      exact RowPropertyParametricCovered.kills case_001109_covered
  | case_001110 =>
      exact RowPropertyParametricCovered.kills case_001110_covered
  | case_001111 =>
      exact RowPropertyParametricCovered.kills case_001111_covered
  | case_001112 =>
      exact RowPropertyParametricCovered.kills case_001112_covered
  | case_001113 =>
      exact RowPropertyParametricCovered.kills case_001113_covered
  | case_001114 =>
      exact RowPropertyParametricCovered.kills case_001114_covered
  | case_001115 =>
      exact RowPropertyParametricCovered.kills case_001115_covered
  | case_001116 =>
      exact RowPropertyParametricCovered.kills case_001116_covered
  | case_001117 =>
      exact RowPropertyParametricCovered.kills case_001117_covered
  | case_001118 =>
      exact RowPropertyParametricCovered.kills case_001118_covered
  | case_001119 =>
      exact RowPropertyParametricCovered.kills case_001119_covered

theorem Group034_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group034
