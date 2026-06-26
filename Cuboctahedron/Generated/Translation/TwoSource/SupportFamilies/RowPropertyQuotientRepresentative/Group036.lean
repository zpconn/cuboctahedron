import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group036

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
private def case_001152_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001152_mask : SignMask := ⟨29, by decide⟩
private def case_001152_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001152_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001152_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001152_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (-20/9) }
private def case_001152_firstLine : StrictLin2 := { a := (-37/55), b := (37/55), c := (-261/55) }
private def case_001152_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001152_rankWord :
    rankPairWord? case_001152_word = some case_001152_rank := by
  decide

private theorem case_001152_unrank :
    unrankPairWord case_001152_rank = case_001152_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001152_word case_001152_rank).1
    case_001152_rankWord |>.symm

private theorem case_001152_seqChoice :
    translationChoiceSeq case_001152_word case_001152_mask = case_001152_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001152_seqAtRank :
    translationSeqAtRankMask case_001152_rank case_001152_mask = case_001152_seq := by
  rw [translationSeqAtRankMask, case_001152_unrank]
  exact case_001152_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001152_bAtRank :
    translationBAtRankMask case_001152_rank case_001152_mask = case_001152_b := by
  rw [translationBAtRankMask, case_001152_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001152_b, case_001152_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001152_firstLine_eq :
    case_001152_support.firstLine case_001152_seq case_001152_b = case_001152_firstLine := by
  norm_num [case_001152_firstLine, case_001152_support, case_001152_seq, case_001152_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001152_secondLine_eq :
    case_001152_support.secondLine case_001152_seq case_001152_b = case_001152_secondLine := by
  norm_num [case_001152_secondLine, case_001152_support, case_001152_seq, case_001152_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001152_sourceAgrees :
    SourceAgrees case_001152_support case_001152_rank.val case_001152_mask := by
  intro hlt
  have hrank : (⟨case_001152_rank.val, hlt⟩ : Fin numPairWords) = case_001152_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001152_rank.val, hlt⟩ case_001152_mask =
        case_001152_seq := by
    simpa [hrank] using case_001152_seqAtRank
  simp [SourceChecks, hseq, case_001152_support,
    checkTranslationConstraintSource, case_001152_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001152_rows :
    OppOneMinusVarFirstRows case_001152_support case_001152_rank.val case_001152_mask := by
  intro hlt
  have hrank : (⟨case_001152_rank.val, hlt⟩ : Fin numPairWords) = case_001152_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001152_rank.val, hlt⟩ case_001152_mask =
        case_001152_seq := by
    simpa [hrank] using case_001152_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001152_rank.val, hlt⟩ case_001152_mask =
        case_001152_b := by
    simpa [hrank] using case_001152_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001152_support case_001152_rank.val hlt
          case_001152_mask = case_001152_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001152_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001152_support case_001152_rank.val hlt
          case_001152_mask = case_001152_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001152_secondLine_eq]
  have case_001152_rowFirst :
      OppPosRow (FirstLineAt case_001152_support case_001152_rank.val hlt case_001152_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001152_firstLine, OppPosRow]
  have case_001152_fixedSecond :
      FixedRow (SecondLineAt case_001152_support case_001152_rank.val hlt case_001152_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001152_secondLine, FixedRow]
  exact ⟨case_001152_rowFirst, case_001152_fixedSecond⟩

private theorem case_001152_existsRows :
    ExistsOppOneMinusVarFirstRows case_001152_rank.val case_001152_mask :=
  ⟨case_001152_support, case_001152_sourceAgrees, case_001152_rows⟩

private theorem case_001152_covered :
    RowPropertyParametricCovered case_001152_rank.val case_001152_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001152_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001153_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001153_mask : SignMask := ⟨30, by decide⟩
private def case_001153_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001153_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001153_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001153_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (52/9) }
private def case_001153_firstLine : StrictLin2 := { a := (-74/55), b := (74/55), c := (-344/165) }
private def case_001153_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001153_rankWord :
    rankPairWord? case_001153_word = some case_001153_rank := by
  decide

private theorem case_001153_unrank :
    unrankPairWord case_001153_rank = case_001153_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001153_word case_001153_rank).1
    case_001153_rankWord |>.symm

private theorem case_001153_seqChoice :
    translationChoiceSeq case_001153_word case_001153_mask = case_001153_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001153_seqAtRank :
    translationSeqAtRankMask case_001153_rank case_001153_mask = case_001153_seq := by
  rw [translationSeqAtRankMask, case_001153_unrank]
  exact case_001153_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001153_bAtRank :
    translationBAtRankMask case_001153_rank case_001153_mask = case_001153_b := by
  rw [translationBAtRankMask, case_001153_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001153_b, case_001153_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001153_firstLine_eq :
    case_001153_support.firstLine case_001153_seq case_001153_b = case_001153_firstLine := by
  norm_num [case_001153_firstLine, case_001153_support, case_001153_seq, case_001153_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001153_secondLine_eq :
    case_001153_support.secondLine case_001153_seq case_001153_b = case_001153_secondLine := by
  norm_num [case_001153_secondLine, case_001153_support, case_001153_seq, case_001153_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001153_sourceAgrees :
    SourceAgrees case_001153_support case_001153_rank.val case_001153_mask := by
  intro hlt
  have hrank : (⟨case_001153_rank.val, hlt⟩ : Fin numPairWords) = case_001153_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001153_rank.val, hlt⟩ case_001153_mask =
        case_001153_seq := by
    simpa [hrank] using case_001153_seqAtRank
  simp [SourceChecks, hseq, case_001153_support,
    checkTranslationConstraintSource, case_001153_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001153_rows :
    OppOneMinusVarFirstRows case_001153_support case_001153_rank.val case_001153_mask := by
  intro hlt
  have hrank : (⟨case_001153_rank.val, hlt⟩ : Fin numPairWords) = case_001153_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001153_rank.val, hlt⟩ case_001153_mask =
        case_001153_seq := by
    simpa [hrank] using case_001153_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001153_rank.val, hlt⟩ case_001153_mask =
        case_001153_b := by
    simpa [hrank] using case_001153_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001153_support case_001153_rank.val hlt
          case_001153_mask = case_001153_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001153_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001153_support case_001153_rank.val hlt
          case_001153_mask = case_001153_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001153_secondLine_eq]
  have case_001153_rowFirst :
      OppPosRow (FirstLineAt case_001153_support case_001153_rank.val hlt case_001153_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001153_firstLine, OppPosRow]
  have case_001153_fixedSecond :
      FixedRow (SecondLineAt case_001153_support case_001153_rank.val hlt case_001153_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001153_secondLine, FixedRow]
  exact ⟨case_001153_rowFirst, case_001153_fixedSecond⟩

private theorem case_001153_existsRows :
    ExistsOppOneMinusVarFirstRows case_001153_rank.val case_001153_mask :=
  ⟨case_001153_support, case_001153_sourceAgrees, case_001153_rows⟩

private theorem case_001153_covered :
    RowPropertyParametricCovered case_001153_rank.val case_001153_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001153_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001154_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001154_mask : SignMask := ⟨31, by decide⟩
private def case_001154_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001154_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_001154_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001154_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (52/9) }
private def case_001154_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001154_secondLine : StrictLin2 := { a := (-37/742), b := (-37/742), c := (-145/1113) }

private theorem case_001154_rankWord :
    rankPairWord? case_001154_word = some case_001154_rank := by
  decide

private theorem case_001154_unrank :
    unrankPairWord case_001154_rank = case_001154_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001154_word case_001154_rank).1
    case_001154_rankWord |>.symm

private theorem case_001154_seqChoice :
    translationChoiceSeq case_001154_word case_001154_mask = case_001154_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001154_seqAtRank :
    translationSeqAtRankMask case_001154_rank case_001154_mask = case_001154_seq := by
  rw [translationSeqAtRankMask, case_001154_unrank]
  exact case_001154_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001154_bAtRank :
    translationBAtRankMask case_001154_rank case_001154_mask = case_001154_b := by
  rw [translationBAtRankMask, case_001154_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001154_b, case_001154_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001154_firstLine_eq :
    case_001154_support.firstLine case_001154_seq case_001154_b = case_001154_firstLine := by
  norm_num [case_001154_firstLine, case_001154_support, case_001154_seq, case_001154_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001154_secondLine_eq :
    case_001154_support.secondLine case_001154_seq case_001154_b = case_001154_secondLine := by
  norm_num [case_001154_secondLine, case_001154_support, case_001154_seq, case_001154_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001154_sourceAgrees :
    SourceAgrees case_001154_support case_001154_rank.val case_001154_mask := by
  intro hlt
  have hrank : (⟨case_001154_rank.val, hlt⟩ : Fin numPairWords) = case_001154_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001154_rank.val, hlt⟩ case_001154_mask =
        case_001154_seq := by
    simpa [hrank] using case_001154_seqAtRank
  simp [SourceChecks, hseq, case_001154_support,
    checkTranslationConstraintSource, case_001154_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001154_rows :
    EqEqPosVarSecondRows case_001154_support case_001154_rank.val case_001154_mask := by
  intro hlt
  have hrank : (⟨case_001154_rank.val, hlt⟩ : Fin numPairWords) = case_001154_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001154_rank.val, hlt⟩ case_001154_mask =
        case_001154_seq := by
    simpa [hrank] using case_001154_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001154_rank.val, hlt⟩ case_001154_mask =
        case_001154_b := by
    simpa [hrank] using case_001154_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001154_support case_001154_rank.val hlt
          case_001154_mask = case_001154_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001154_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001154_support case_001154_rank.val hlt
          case_001154_mask = case_001154_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001154_secondLine_eq]
  have case_001154_fixedFirst :
      FixedRow (FirstLineAt case_001154_support case_001154_rank.val hlt case_001154_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001154_firstLine, FixedRow]
  have case_001154_rowSecond :
      EqEqPosRow (SecondLineAt case_001154_support case_001154_rank.val hlt case_001154_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001154_secondLine, EqEqPosRow]
  exact ⟨case_001154_fixedFirst, case_001154_rowSecond⟩

private theorem case_001154_existsRows :
    ExistsEqEqPosVarSecondRows case_001154_rank.val case_001154_mask :=
  ⟨case_001154_support, case_001154_sourceAgrees, case_001154_rows⟩

private theorem case_001154_covered :
    RowPropertyParametricCovered case_001154_rank.val case_001154_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001154_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001155_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001155_mask : SignMask := ⟨47, by decide⟩
private def case_001155_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001155_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001155_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001155_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_001155_firstLine : StrictLin2 := { a := 1, b := -1, c := (-43/5) }
private def case_001155_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001155_rankWord :
    rankPairWord? case_001155_word = some case_001155_rank := by
  decide

private theorem case_001155_unrank :
    unrankPairWord case_001155_rank = case_001155_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001155_word case_001155_rank).1
    case_001155_rankWord |>.symm

private theorem case_001155_seqChoice :
    translationChoiceSeq case_001155_word case_001155_mask = case_001155_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001155_seqAtRank :
    translationSeqAtRankMask case_001155_rank case_001155_mask = case_001155_seq := by
  rw [translationSeqAtRankMask, case_001155_unrank]
  exact case_001155_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001155_bAtRank :
    translationBAtRankMask case_001155_rank case_001155_mask = case_001155_b := by
  rw [translationBAtRankMask, case_001155_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001155_b, case_001155_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001155_firstLine_eq :
    case_001155_support.firstLine case_001155_seq case_001155_b = case_001155_firstLine := by
  norm_num [case_001155_firstLine, case_001155_support, case_001155_seq, case_001155_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001155_secondLine_eq :
    case_001155_support.secondLine case_001155_seq case_001155_b = case_001155_secondLine := by
  norm_num [case_001155_secondLine, case_001155_support, case_001155_seq, case_001155_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001155_sourceAgrees :
    SourceAgrees case_001155_support case_001155_rank.val case_001155_mask := by
  intro hlt
  have hrank : (⟨case_001155_rank.val, hlt⟩ : Fin numPairWords) = case_001155_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001155_rank.val, hlt⟩ case_001155_mask =
        case_001155_seq := by
    simpa [hrank] using case_001155_seqAtRank
  simp [SourceChecks, hseq, case_001155_support,
    checkTranslationConstraintSource, case_001155_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001155_rows :
    OppMinusOneVarFirstRows case_001155_support case_001155_rank.val case_001155_mask := by
  intro hlt
  have hrank : (⟨case_001155_rank.val, hlt⟩ : Fin numPairWords) = case_001155_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001155_rank.val, hlt⟩ case_001155_mask =
        case_001155_seq := by
    simpa [hrank] using case_001155_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001155_rank.val, hlt⟩ case_001155_mask =
        case_001155_b := by
    simpa [hrank] using case_001155_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001155_support case_001155_rank.val hlt
          case_001155_mask = case_001155_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001155_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001155_support case_001155_rank.val hlt
          case_001155_mask = case_001155_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001155_secondLine_eq]
  have case_001155_rowFirst :
      OppNegRow (FirstLineAt case_001155_support case_001155_rank.val hlt case_001155_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001155_firstLine, OppNegRow]
  have case_001155_fixedSecond :
      FixedRow (SecondLineAt case_001155_support case_001155_rank.val hlt case_001155_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001155_secondLine, FixedRow]
  exact ⟨case_001155_rowFirst, case_001155_fixedSecond⟩

private theorem case_001155_existsRows :
    ExistsOppMinusOneVarFirstRows case_001155_rank.val case_001155_mask :=
  ⟨case_001155_support, case_001155_sourceAgrees, case_001155_rows⟩

private theorem case_001155_covered :
    RowPropertyParametricCovered case_001155_rank.val case_001155_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001155_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001156_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001156_mask : SignMask := ⟨55, by decide⟩
private def case_001156_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001156_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001156_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001156_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_001156_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001156_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-172/39) }

private theorem case_001156_rankWord :
    rankPairWord? case_001156_word = some case_001156_rank := by
  decide

private theorem case_001156_unrank :
    unrankPairWord case_001156_rank = case_001156_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001156_word case_001156_rank).1
    case_001156_rankWord |>.symm

private theorem case_001156_seqChoice :
    translationChoiceSeq case_001156_word case_001156_mask = case_001156_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001156_seqAtRank :
    translationSeqAtRankMask case_001156_rank case_001156_mask = case_001156_seq := by
  rw [translationSeqAtRankMask, case_001156_unrank]
  exact case_001156_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001156_bAtRank :
    translationBAtRankMask case_001156_rank case_001156_mask = case_001156_b := by
  rw [translationBAtRankMask, case_001156_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001156_b, case_001156_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001156_firstLine_eq :
    case_001156_support.firstLine case_001156_seq case_001156_b = case_001156_firstLine := by
  norm_num [case_001156_firstLine, case_001156_support, case_001156_seq, case_001156_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001156_secondLine_eq :
    case_001156_support.secondLine case_001156_seq case_001156_b = case_001156_secondLine := by
  norm_num [case_001156_secondLine, case_001156_support, case_001156_seq, case_001156_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001156_sourceAgrees :
    SourceAgrees case_001156_support case_001156_rank.val case_001156_mask := by
  intro hlt
  have hrank : (⟨case_001156_rank.val, hlt⟩ : Fin numPairWords) = case_001156_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001156_rank.val, hlt⟩ case_001156_mask =
        case_001156_seq := by
    simpa [hrank] using case_001156_seqAtRank
  simp [SourceChecks, hseq, case_001156_support,
    checkTranslationConstraintSource, case_001156_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001156_rows :
    EqEqPosVarSecondRows case_001156_support case_001156_rank.val case_001156_mask := by
  intro hlt
  have hrank : (⟨case_001156_rank.val, hlt⟩ : Fin numPairWords) = case_001156_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001156_rank.val, hlt⟩ case_001156_mask =
        case_001156_seq := by
    simpa [hrank] using case_001156_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001156_rank.val, hlt⟩ case_001156_mask =
        case_001156_b := by
    simpa [hrank] using case_001156_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001156_support case_001156_rank.val hlt
          case_001156_mask = case_001156_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001156_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001156_support case_001156_rank.val hlt
          case_001156_mask = case_001156_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001156_secondLine_eq]
  have case_001156_fixedFirst :
      FixedRow (FirstLineAt case_001156_support case_001156_rank.val hlt case_001156_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001156_firstLine, FixedRow]
  have case_001156_rowSecond :
      EqEqPosRow (SecondLineAt case_001156_support case_001156_rank.val hlt case_001156_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001156_secondLine, EqEqPosRow]
  exact ⟨case_001156_fixedFirst, case_001156_rowSecond⟩

private theorem case_001156_existsRows :
    ExistsEqEqPosVarSecondRows case_001156_rank.val case_001156_mask :=
  ⟨case_001156_support, case_001156_sourceAgrees, case_001156_rows⟩

private theorem case_001156_covered :
    RowPropertyParametricCovered case_001156_rank.val case_001156_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001156_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001157_rank : Fin numPairWords := ⟨839, by decide⟩
private def case_001157_mask : SignMask := ⟨8, by decide⟩
private def case_001157_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001157_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001157_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def case_001157_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (-100/9) }
private def case_001157_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/17) }
private def case_001157_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001157_rankWord :
    rankPairWord? case_001157_word = some case_001157_rank := by
  decide

private theorem case_001157_unrank :
    unrankPairWord case_001157_rank = case_001157_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001157_word case_001157_rank).1
    case_001157_rankWord |>.symm

private theorem case_001157_seqChoice :
    translationChoiceSeq case_001157_word case_001157_mask = case_001157_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001157_seqAtRank :
    translationSeqAtRankMask case_001157_rank case_001157_mask = case_001157_seq := by
  rw [translationSeqAtRankMask, case_001157_unrank]
  exact case_001157_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001157_bAtRank :
    translationBAtRankMask case_001157_rank case_001157_mask = case_001157_b := by
  rw [translationBAtRankMask, case_001157_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001157_b, case_001157_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001157_firstLine_eq :
    case_001157_support.firstLine case_001157_seq case_001157_b = case_001157_firstLine := by
  norm_num [case_001157_firstLine, case_001157_support, case_001157_seq, case_001157_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001157_secondLine_eq :
    case_001157_support.secondLine case_001157_seq case_001157_b = case_001157_secondLine := by
  norm_num [case_001157_secondLine, case_001157_support, case_001157_seq, case_001157_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001157_sourceAgrees :
    SourceAgrees case_001157_support case_001157_rank.val case_001157_mask := by
  intro hlt
  have hrank : (⟨case_001157_rank.val, hlt⟩ : Fin numPairWords) = case_001157_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001157_rank.val, hlt⟩ case_001157_mask =
        case_001157_seq := by
    simpa [hrank] using case_001157_seqAtRank
  simp [SourceChecks, hseq, case_001157_support,
    checkTranslationConstraintSource, case_001157_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001157_rows :
    EqEqPosVarFirstRows case_001157_support case_001157_rank.val case_001157_mask := by
  intro hlt
  have hrank : (⟨case_001157_rank.val, hlt⟩ : Fin numPairWords) = case_001157_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001157_rank.val, hlt⟩ case_001157_mask =
        case_001157_seq := by
    simpa [hrank] using case_001157_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001157_rank.val, hlt⟩ case_001157_mask =
        case_001157_b := by
    simpa [hrank] using case_001157_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001157_support case_001157_rank.val hlt
          case_001157_mask = case_001157_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001157_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001157_support case_001157_rank.val hlt
          case_001157_mask = case_001157_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001157_secondLine_eq]
  have case_001157_rowFirst :
      EqEqPosRow (FirstLineAt case_001157_support case_001157_rank.val hlt case_001157_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001157_firstLine, EqEqPosRow]
  have case_001157_fixedSecond :
      FixedRow (SecondLineAt case_001157_support case_001157_rank.val hlt case_001157_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001157_secondLine, FixedRow]
  exact ⟨case_001157_rowFirst, case_001157_fixedSecond⟩

private theorem case_001157_existsRows :
    ExistsEqEqPosVarFirstRows case_001157_rank.val case_001157_mask :=
  ⟨case_001157_support, case_001157_sourceAgrees, case_001157_rows⟩

private theorem case_001157_covered :
    RowPropertyParametricCovered case_001157_rank.val case_001157_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001157_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001158_rank : Fin numPairWords := ⟨839, by decide⟩
private def case_001158_mask : SignMask := ⟨13, by decide⟩
private def case_001158_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001158_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001158_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_001158_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (-52/9) }
private def case_001158_firstLine : StrictLin2 := { a := (-29/71), b := (29/71), c := (-93/71) }
private def case_001158_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001158_rankWord :
    rankPairWord? case_001158_word = some case_001158_rank := by
  decide

private theorem case_001158_unrank :
    unrankPairWord case_001158_rank = case_001158_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001158_word case_001158_rank).1
    case_001158_rankWord |>.symm

private theorem case_001158_seqChoice :
    translationChoiceSeq case_001158_word case_001158_mask = case_001158_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001158_seqAtRank :
    translationSeqAtRankMask case_001158_rank case_001158_mask = case_001158_seq := by
  rw [translationSeqAtRankMask, case_001158_unrank]
  exact case_001158_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001158_bAtRank :
    translationBAtRankMask case_001158_rank case_001158_mask = case_001158_b := by
  rw [translationBAtRankMask, case_001158_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001158_b, case_001158_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001158_firstLine_eq :
    case_001158_support.firstLine case_001158_seq case_001158_b = case_001158_firstLine := by
  norm_num [case_001158_firstLine, case_001158_support, case_001158_seq, case_001158_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001158_secondLine_eq :
    case_001158_support.secondLine case_001158_seq case_001158_b = case_001158_secondLine := by
  norm_num [case_001158_secondLine, case_001158_support, case_001158_seq, case_001158_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001158_sourceAgrees :
    SourceAgrees case_001158_support case_001158_rank.val case_001158_mask := by
  intro hlt
  have hrank : (⟨case_001158_rank.val, hlt⟩ : Fin numPairWords) = case_001158_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001158_rank.val, hlt⟩ case_001158_mask =
        case_001158_seq := by
    simpa [hrank] using case_001158_seqAtRank
  simp [SourceChecks, hseq, case_001158_support,
    checkTranslationConstraintSource, case_001158_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001158_rows :
    OppOneMinusVarFirstRows case_001158_support case_001158_rank.val case_001158_mask := by
  intro hlt
  have hrank : (⟨case_001158_rank.val, hlt⟩ : Fin numPairWords) = case_001158_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001158_rank.val, hlt⟩ case_001158_mask =
        case_001158_seq := by
    simpa [hrank] using case_001158_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001158_rank.val, hlt⟩ case_001158_mask =
        case_001158_b := by
    simpa [hrank] using case_001158_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001158_support case_001158_rank.val hlt
          case_001158_mask = case_001158_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001158_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001158_support case_001158_rank.val hlt
          case_001158_mask = case_001158_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001158_secondLine_eq]
  have case_001158_rowFirst :
      OppPosRow (FirstLineAt case_001158_support case_001158_rank.val hlt case_001158_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001158_firstLine, OppPosRow]
  have case_001158_fixedSecond :
      FixedRow (SecondLineAt case_001158_support case_001158_rank.val hlt case_001158_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001158_secondLine, FixedRow]
  exact ⟨case_001158_rowFirst, case_001158_fixedSecond⟩

private theorem case_001158_existsRows :
    ExistsOppOneMinusVarFirstRows case_001158_rank.val case_001158_mask :=
  ⟨case_001158_support, case_001158_sourceAgrees, case_001158_rows⟩

private theorem case_001158_covered :
    RowPropertyParametricCovered case_001158_rank.val case_001158_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001158_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001159_rank : Fin numPairWords := ⟨839, by decide⟩
private def case_001159_mask : SignMask := ⟨15, by decide⟩
private def case_001159_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001159_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001159_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_001159_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (20/9) }
private def case_001159_firstLine : StrictLin2 := { a := (-29/63), b := (-29/63), c := (-103/189) }
private def case_001159_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001159_rankWord :
    rankPairWord? case_001159_word = some case_001159_rank := by
  decide

private theorem case_001159_unrank :
    unrankPairWord case_001159_rank = case_001159_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001159_word case_001159_rank).1
    case_001159_rankWord |>.symm

private theorem case_001159_seqChoice :
    translationChoiceSeq case_001159_word case_001159_mask = case_001159_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001159_seqAtRank :
    translationSeqAtRankMask case_001159_rank case_001159_mask = case_001159_seq := by
  rw [translationSeqAtRankMask, case_001159_unrank]
  exact case_001159_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001159_bAtRank :
    translationBAtRankMask case_001159_rank case_001159_mask = case_001159_b := by
  rw [translationBAtRankMask, case_001159_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001159_b, case_001159_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001159_firstLine_eq :
    case_001159_support.firstLine case_001159_seq case_001159_b = case_001159_firstLine := by
  norm_num [case_001159_firstLine, case_001159_support, case_001159_seq, case_001159_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001159_secondLine_eq :
    case_001159_support.secondLine case_001159_seq case_001159_b = case_001159_secondLine := by
  norm_num [case_001159_secondLine, case_001159_support, case_001159_seq, case_001159_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001159_sourceAgrees :
    SourceAgrees case_001159_support case_001159_rank.val case_001159_mask := by
  intro hlt
  have hrank : (⟨case_001159_rank.val, hlt⟩ : Fin numPairWords) = case_001159_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001159_rank.val, hlt⟩ case_001159_mask =
        case_001159_seq := by
    simpa [hrank] using case_001159_seqAtRank
  simp [SourceChecks, hseq, case_001159_support,
    checkTranslationConstraintSource, case_001159_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001159_rows :
    EqEqPosVarFirstRows case_001159_support case_001159_rank.val case_001159_mask := by
  intro hlt
  have hrank : (⟨case_001159_rank.val, hlt⟩ : Fin numPairWords) = case_001159_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001159_rank.val, hlt⟩ case_001159_mask =
        case_001159_seq := by
    simpa [hrank] using case_001159_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001159_rank.val, hlt⟩ case_001159_mask =
        case_001159_b := by
    simpa [hrank] using case_001159_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001159_support case_001159_rank.val hlt
          case_001159_mask = case_001159_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001159_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001159_support case_001159_rank.val hlt
          case_001159_mask = case_001159_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001159_secondLine_eq]
  have case_001159_rowFirst :
      EqEqPosRow (FirstLineAt case_001159_support case_001159_rank.val hlt case_001159_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001159_firstLine, EqEqPosRow]
  have case_001159_fixedSecond :
      FixedRow (SecondLineAt case_001159_support case_001159_rank.val hlt case_001159_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001159_secondLine, FixedRow]
  exact ⟨case_001159_rowFirst, case_001159_fixedSecond⟩

private theorem case_001159_existsRows :
    ExistsEqEqPosVarFirstRows case_001159_rank.val case_001159_mask :=
  ⟨case_001159_support, case_001159_sourceAgrees, case_001159_rows⟩

private theorem case_001159_covered :
    RowPropertyParametricCovered case_001159_rank.val case_001159_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001159_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001160_rank : Fin numPairWords := ⟨839, by decide⟩
private def case_001160_mask : SignMask := ⟨16, by decide⟩
private def case_001160_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001160_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001160_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_001160_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_001160_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001160_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001160_rankWord :
    rankPairWord? case_001160_word = some case_001160_rank := by
  decide

private theorem case_001160_unrank :
    unrankPairWord case_001160_rank = case_001160_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001160_word case_001160_rank).1
    case_001160_rankWord |>.symm

private theorem case_001160_seqChoice :
    translationChoiceSeq case_001160_word case_001160_mask = case_001160_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001160_seqAtRank :
    translationSeqAtRankMask case_001160_rank case_001160_mask = case_001160_seq := by
  rw [translationSeqAtRankMask, case_001160_unrank]
  exact case_001160_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001160_bAtRank :
    translationBAtRankMask case_001160_rank case_001160_mask = case_001160_b := by
  rw [translationBAtRankMask, case_001160_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001160_b, case_001160_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001160_firstLine_eq :
    case_001160_support.firstLine case_001160_seq case_001160_b = case_001160_firstLine := by
  norm_num [case_001160_firstLine, case_001160_support, case_001160_seq, case_001160_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001160_secondLine_eq :
    case_001160_support.secondLine case_001160_seq case_001160_b = case_001160_secondLine := by
  norm_num [case_001160_secondLine, case_001160_support, case_001160_seq, case_001160_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001160_sourceAgrees :
    SourceAgrees case_001160_support case_001160_rank.val case_001160_mask := by
  intro hlt
  have hrank : (⟨case_001160_rank.val, hlt⟩ : Fin numPairWords) = case_001160_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001160_rank.val, hlt⟩ case_001160_mask =
        case_001160_seq := by
    simpa [hrank] using case_001160_seqAtRank
  simp [SourceChecks, hseq, case_001160_support,
    checkTranslationConstraintSource, case_001160_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001160_rows :
    EqEqPosVarFirstRows case_001160_support case_001160_rank.val case_001160_mask := by
  intro hlt
  have hrank : (⟨case_001160_rank.val, hlt⟩ : Fin numPairWords) = case_001160_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001160_rank.val, hlt⟩ case_001160_mask =
        case_001160_seq := by
    simpa [hrank] using case_001160_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001160_rank.val, hlt⟩ case_001160_mask =
        case_001160_b := by
    simpa [hrank] using case_001160_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001160_support case_001160_rank.val hlt
          case_001160_mask = case_001160_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001160_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001160_support case_001160_rank.val hlt
          case_001160_mask = case_001160_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001160_secondLine_eq]
  have case_001160_rowFirst :
      EqEqPosRow (FirstLineAt case_001160_support case_001160_rank.val hlt case_001160_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001160_firstLine, EqEqPosRow]
  have case_001160_fixedSecond :
      FixedRow (SecondLineAt case_001160_support case_001160_rank.val hlt case_001160_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001160_secondLine, FixedRow]
  exact ⟨case_001160_rowFirst, case_001160_fixedSecond⟩

private theorem case_001160_existsRows :
    ExistsEqEqPosVarFirstRows case_001160_rank.val case_001160_mask :=
  ⟨case_001160_support, case_001160_sourceAgrees, case_001160_rows⟩

private theorem case_001160_covered :
    RowPropertyParametricCovered case_001160_rank.val case_001160_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001160_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001161_rank : Fin numPairWords := ⟨839, by decide⟩
private def case_001161_mask : SignMask := ⟨18, by decide⟩
private def case_001161_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001161_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001161_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_001161_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_001161_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001161_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001161_rankWord :
    rankPairWord? case_001161_word = some case_001161_rank := by
  decide

private theorem case_001161_unrank :
    unrankPairWord case_001161_rank = case_001161_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001161_word case_001161_rank).1
    case_001161_rankWord |>.symm

private theorem case_001161_seqChoice :
    translationChoiceSeq case_001161_word case_001161_mask = case_001161_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001161_seqAtRank :
    translationSeqAtRankMask case_001161_rank case_001161_mask = case_001161_seq := by
  rw [translationSeqAtRankMask, case_001161_unrank]
  exact case_001161_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001161_bAtRank :
    translationBAtRankMask case_001161_rank case_001161_mask = case_001161_b := by
  rw [translationBAtRankMask, case_001161_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001161_b, case_001161_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001161_firstLine_eq :
    case_001161_support.firstLine case_001161_seq case_001161_b = case_001161_firstLine := by
  norm_num [case_001161_firstLine, case_001161_support, case_001161_seq, case_001161_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001161_secondLine_eq :
    case_001161_support.secondLine case_001161_seq case_001161_b = case_001161_secondLine := by
  norm_num [case_001161_secondLine, case_001161_support, case_001161_seq, case_001161_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001161_sourceAgrees :
    SourceAgrees case_001161_support case_001161_rank.val case_001161_mask := by
  intro hlt
  have hrank : (⟨case_001161_rank.val, hlt⟩ : Fin numPairWords) = case_001161_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001161_rank.val, hlt⟩ case_001161_mask =
        case_001161_seq := by
    simpa [hrank] using case_001161_seqAtRank
  simp [SourceChecks, hseq, case_001161_support,
    checkTranslationConstraintSource, case_001161_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001161_rows :
    EqEqPosVarFirstRows case_001161_support case_001161_rank.val case_001161_mask := by
  intro hlt
  have hrank : (⟨case_001161_rank.val, hlt⟩ : Fin numPairWords) = case_001161_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001161_rank.val, hlt⟩ case_001161_mask =
        case_001161_seq := by
    simpa [hrank] using case_001161_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001161_rank.val, hlt⟩ case_001161_mask =
        case_001161_b := by
    simpa [hrank] using case_001161_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001161_support case_001161_rank.val hlt
          case_001161_mask = case_001161_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001161_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001161_support case_001161_rank.val hlt
          case_001161_mask = case_001161_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001161_secondLine_eq]
  have case_001161_rowFirst :
      EqEqPosRow (FirstLineAt case_001161_support case_001161_rank.val hlt case_001161_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001161_firstLine, EqEqPosRow]
  have case_001161_fixedSecond :
      FixedRow (SecondLineAt case_001161_support case_001161_rank.val hlt case_001161_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001161_secondLine, FixedRow]
  exact ⟨case_001161_rowFirst, case_001161_fixedSecond⟩

private theorem case_001161_existsRows :
    ExistsEqEqPosVarFirstRows case_001161_rank.val case_001161_mask :=
  ⟨case_001161_support, case_001161_sourceAgrees, case_001161_rows⟩

private theorem case_001161_covered :
    RowPropertyParametricCovered case_001161_rank.val case_001161_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001161_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001162_rank : Fin numPairWords := ⟨839, by decide⟩
private def case_001162_mask : SignMask := ⟨22, by decide⟩
private def case_001162_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001162_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001162_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001162_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_001162_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001162_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001162_rankWord :
    rankPairWord? case_001162_word = some case_001162_rank := by
  decide

private theorem case_001162_unrank :
    unrankPairWord case_001162_rank = case_001162_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001162_word case_001162_rank).1
    case_001162_rankWord |>.symm

private theorem case_001162_seqChoice :
    translationChoiceSeq case_001162_word case_001162_mask = case_001162_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001162_seqAtRank :
    translationSeqAtRankMask case_001162_rank case_001162_mask = case_001162_seq := by
  rw [translationSeqAtRankMask, case_001162_unrank]
  exact case_001162_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001162_bAtRank :
    translationBAtRankMask case_001162_rank case_001162_mask = case_001162_b := by
  rw [translationBAtRankMask, case_001162_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001162_b, case_001162_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001162_firstLine_eq :
    case_001162_support.firstLine case_001162_seq case_001162_b = case_001162_firstLine := by
  norm_num [case_001162_firstLine, case_001162_support, case_001162_seq, case_001162_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001162_secondLine_eq :
    case_001162_support.secondLine case_001162_seq case_001162_b = case_001162_secondLine := by
  norm_num [case_001162_secondLine, case_001162_support, case_001162_seq, case_001162_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001162_sourceAgrees :
    SourceAgrees case_001162_support case_001162_rank.val case_001162_mask := by
  intro hlt
  have hrank : (⟨case_001162_rank.val, hlt⟩ : Fin numPairWords) = case_001162_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001162_rank.val, hlt⟩ case_001162_mask =
        case_001162_seq := by
    simpa [hrank] using case_001162_seqAtRank
  simp [SourceChecks, hseq, case_001162_support,
    checkTranslationConstraintSource, case_001162_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001162_rows :
    EqEqPosVarFirstRows case_001162_support case_001162_rank.val case_001162_mask := by
  intro hlt
  have hrank : (⟨case_001162_rank.val, hlt⟩ : Fin numPairWords) = case_001162_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001162_rank.val, hlt⟩ case_001162_mask =
        case_001162_seq := by
    simpa [hrank] using case_001162_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001162_rank.val, hlt⟩ case_001162_mask =
        case_001162_b := by
    simpa [hrank] using case_001162_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001162_support case_001162_rank.val hlt
          case_001162_mask = case_001162_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001162_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001162_support case_001162_rank.val hlt
          case_001162_mask = case_001162_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001162_secondLine_eq]
  have case_001162_rowFirst :
      EqEqPosRow (FirstLineAt case_001162_support case_001162_rank.val hlt case_001162_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001162_firstLine, EqEqPosRow]
  have case_001162_fixedSecond :
      FixedRow (SecondLineAt case_001162_support case_001162_rank.val hlt case_001162_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001162_secondLine, FixedRow]
  exact ⟨case_001162_rowFirst, case_001162_fixedSecond⟩

private theorem case_001162_existsRows :
    ExistsEqEqPosVarFirstRows case_001162_rank.val case_001162_mask :=
  ⟨case_001162_support, case_001162_sourceAgrees, case_001162_rows⟩

private theorem case_001162_covered :
    RowPropertyParametricCovered case_001162_rank.val case_001162_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001162_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001163_rank : Fin numPairWords := ⟨839, by decide⟩
private def case_001163_mask : SignMask := ⟨24, by decide⟩
private def case_001163_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001163_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001163_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_001163_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_001163_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_001163_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001163_rankWord :
    rankPairWord? case_001163_word = some case_001163_rank := by
  decide

private theorem case_001163_unrank :
    unrankPairWord case_001163_rank = case_001163_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001163_word case_001163_rank).1
    case_001163_rankWord |>.symm

private theorem case_001163_seqChoice :
    translationChoiceSeq case_001163_word case_001163_mask = case_001163_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001163_seqAtRank :
    translationSeqAtRankMask case_001163_rank case_001163_mask = case_001163_seq := by
  rw [translationSeqAtRankMask, case_001163_unrank]
  exact case_001163_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001163_bAtRank :
    translationBAtRankMask case_001163_rank case_001163_mask = case_001163_b := by
  rw [translationBAtRankMask, case_001163_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001163_b, case_001163_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001163_firstLine_eq :
    case_001163_support.firstLine case_001163_seq case_001163_b = case_001163_firstLine := by
  norm_num [case_001163_firstLine, case_001163_support, case_001163_seq, case_001163_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001163_secondLine_eq :
    case_001163_support.secondLine case_001163_seq case_001163_b = case_001163_secondLine := by
  norm_num [case_001163_secondLine, case_001163_support, case_001163_seq, case_001163_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001163_sourceAgrees :
    SourceAgrees case_001163_support case_001163_rank.val case_001163_mask := by
  intro hlt
  have hrank : (⟨case_001163_rank.val, hlt⟩ : Fin numPairWords) = case_001163_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001163_rank.val, hlt⟩ case_001163_mask =
        case_001163_seq := by
    simpa [hrank] using case_001163_seqAtRank
  simp [SourceChecks, hseq, case_001163_support,
    checkTranslationConstraintSource, case_001163_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001163_rows :
    EqEqPosVarFirstRows case_001163_support case_001163_rank.val case_001163_mask := by
  intro hlt
  have hrank : (⟨case_001163_rank.val, hlt⟩ : Fin numPairWords) = case_001163_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001163_rank.val, hlt⟩ case_001163_mask =
        case_001163_seq := by
    simpa [hrank] using case_001163_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001163_rank.val, hlt⟩ case_001163_mask =
        case_001163_b := by
    simpa [hrank] using case_001163_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001163_support case_001163_rank.val hlt
          case_001163_mask = case_001163_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001163_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001163_support case_001163_rank.val hlt
          case_001163_mask = case_001163_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001163_secondLine_eq]
  have case_001163_rowFirst :
      EqEqPosRow (FirstLineAt case_001163_support case_001163_rank.val hlt case_001163_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001163_firstLine, EqEqPosRow]
  have case_001163_fixedSecond :
      FixedRow (SecondLineAt case_001163_support case_001163_rank.val hlt case_001163_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001163_secondLine, FixedRow]
  exact ⟨case_001163_rowFirst, case_001163_fixedSecond⟩

private theorem case_001163_existsRows :
    ExistsEqEqPosVarFirstRows case_001163_rank.val case_001163_mask :=
  ⟨case_001163_support, case_001163_sourceAgrees, case_001163_rows⟩

private theorem case_001163_covered :
    RowPropertyParametricCovered case_001163_rank.val case_001163_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001163_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001164_rank : Fin numPairWords := ⟨839, by decide⟩
private def case_001164_mask : SignMask := ⟨28, by decide⟩
private def case_001164_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001164_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001164_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001164_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_001164_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_001164_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001164_rankWord :
    rankPairWord? case_001164_word = some case_001164_rank := by
  decide

private theorem case_001164_unrank :
    unrankPairWord case_001164_rank = case_001164_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001164_word case_001164_rank).1
    case_001164_rankWord |>.symm

private theorem case_001164_seqChoice :
    translationChoiceSeq case_001164_word case_001164_mask = case_001164_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001164_seqAtRank :
    translationSeqAtRankMask case_001164_rank case_001164_mask = case_001164_seq := by
  rw [translationSeqAtRankMask, case_001164_unrank]
  exact case_001164_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001164_bAtRank :
    translationBAtRankMask case_001164_rank case_001164_mask = case_001164_b := by
  rw [translationBAtRankMask, case_001164_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001164_b, case_001164_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001164_firstLine_eq :
    case_001164_support.firstLine case_001164_seq case_001164_b = case_001164_firstLine := by
  norm_num [case_001164_firstLine, case_001164_support, case_001164_seq, case_001164_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001164_secondLine_eq :
    case_001164_support.secondLine case_001164_seq case_001164_b = case_001164_secondLine := by
  norm_num [case_001164_secondLine, case_001164_support, case_001164_seq, case_001164_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001164_sourceAgrees :
    SourceAgrees case_001164_support case_001164_rank.val case_001164_mask := by
  intro hlt
  have hrank : (⟨case_001164_rank.val, hlt⟩ : Fin numPairWords) = case_001164_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001164_rank.val, hlt⟩ case_001164_mask =
        case_001164_seq := by
    simpa [hrank] using case_001164_seqAtRank
  simp [SourceChecks, hseq, case_001164_support,
    checkTranslationConstraintSource, case_001164_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001164_rows :
    OppOneMinusVarFirstRows case_001164_support case_001164_rank.val case_001164_mask := by
  intro hlt
  have hrank : (⟨case_001164_rank.val, hlt⟩ : Fin numPairWords) = case_001164_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001164_rank.val, hlt⟩ case_001164_mask =
        case_001164_seq := by
    simpa [hrank] using case_001164_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001164_rank.val, hlt⟩ case_001164_mask =
        case_001164_b := by
    simpa [hrank] using case_001164_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001164_support case_001164_rank.val hlt
          case_001164_mask = case_001164_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001164_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001164_support case_001164_rank.val hlt
          case_001164_mask = case_001164_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001164_secondLine_eq]
  have case_001164_rowFirst :
      OppPosRow (FirstLineAt case_001164_support case_001164_rank.val hlt case_001164_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001164_firstLine, OppPosRow]
  have case_001164_fixedSecond :
      FixedRow (SecondLineAt case_001164_support case_001164_rank.val hlt case_001164_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001164_secondLine, FixedRow]
  exact ⟨case_001164_rowFirst, case_001164_fixedSecond⟩

private theorem case_001164_existsRows :
    ExistsOppOneMinusVarFirstRows case_001164_rank.val case_001164_mask :=
  ⟨case_001164_support, case_001164_sourceAgrees, case_001164_rows⟩

private theorem case_001164_covered :
    RowPropertyParametricCovered case_001164_rank.val case_001164_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001164_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001165_rank : Fin numPairWords := ⟨839, by decide⟩
private def case_001165_mask : SignMask := ⟨30, by decide⟩
private def case_001165_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001165_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001165_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001165_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_001165_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001165_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001165_rankWord :
    rankPairWord? case_001165_word = some case_001165_rank := by
  decide

private theorem case_001165_unrank :
    unrankPairWord case_001165_rank = case_001165_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001165_word case_001165_rank).1
    case_001165_rankWord |>.symm

private theorem case_001165_seqChoice :
    translationChoiceSeq case_001165_word case_001165_mask = case_001165_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001165_seqAtRank :
    translationSeqAtRankMask case_001165_rank case_001165_mask = case_001165_seq := by
  rw [translationSeqAtRankMask, case_001165_unrank]
  exact case_001165_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001165_bAtRank :
    translationBAtRankMask case_001165_rank case_001165_mask = case_001165_b := by
  rw [translationBAtRankMask, case_001165_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001165_b, case_001165_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001165_firstLine_eq :
    case_001165_support.firstLine case_001165_seq case_001165_b = case_001165_firstLine := by
  norm_num [case_001165_firstLine, case_001165_support, case_001165_seq, case_001165_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001165_secondLine_eq :
    case_001165_support.secondLine case_001165_seq case_001165_b = case_001165_secondLine := by
  norm_num [case_001165_secondLine, case_001165_support, case_001165_seq, case_001165_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001165_sourceAgrees :
    SourceAgrees case_001165_support case_001165_rank.val case_001165_mask := by
  intro hlt
  have hrank : (⟨case_001165_rank.val, hlt⟩ : Fin numPairWords) = case_001165_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001165_rank.val, hlt⟩ case_001165_mask =
        case_001165_seq := by
    simpa [hrank] using case_001165_seqAtRank
  simp [SourceChecks, hseq, case_001165_support,
    checkTranslationConstraintSource, case_001165_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001165_rows :
    EqEqPosVarFirstRows case_001165_support case_001165_rank.val case_001165_mask := by
  intro hlt
  have hrank : (⟨case_001165_rank.val, hlt⟩ : Fin numPairWords) = case_001165_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001165_rank.val, hlt⟩ case_001165_mask =
        case_001165_seq := by
    simpa [hrank] using case_001165_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001165_rank.val, hlt⟩ case_001165_mask =
        case_001165_b := by
    simpa [hrank] using case_001165_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001165_support case_001165_rank.val hlt
          case_001165_mask = case_001165_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001165_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001165_support case_001165_rank.val hlt
          case_001165_mask = case_001165_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001165_secondLine_eq]
  have case_001165_rowFirst :
      EqEqPosRow (FirstLineAt case_001165_support case_001165_rank.val hlt case_001165_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001165_firstLine, EqEqPosRow]
  have case_001165_fixedSecond :
      FixedRow (SecondLineAt case_001165_support case_001165_rank.val hlt case_001165_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001165_secondLine, FixedRow]
  exact ⟨case_001165_rowFirst, case_001165_fixedSecond⟩

private theorem case_001165_existsRows :
    ExistsEqEqPosVarFirstRows case_001165_rank.val case_001165_mask :=
  ⟨case_001165_support, case_001165_sourceAgrees, case_001165_rows⟩

private theorem case_001165_covered :
    RowPropertyParametricCovered case_001165_rank.val case_001165_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001165_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001166_rank : Fin numPairWords := ⟨839, by decide⟩
private def case_001166_mask : SignMask := ⟨54, by decide⟩
private def case_001166_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001166_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001166_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001166_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (100/9) }
private def case_001166_firstLine : StrictLin2 := { a := -1, b := -1, c := (-47/3) }
private def case_001166_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001166_rankWord :
    rankPairWord? case_001166_word = some case_001166_rank := by
  decide

private theorem case_001166_unrank :
    unrankPairWord case_001166_rank = case_001166_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001166_word case_001166_rank).1
    case_001166_rankWord |>.symm

private theorem case_001166_seqChoice :
    translationChoiceSeq case_001166_word case_001166_mask = case_001166_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001166_seqAtRank :
    translationSeqAtRankMask case_001166_rank case_001166_mask = case_001166_seq := by
  rw [translationSeqAtRankMask, case_001166_unrank]
  exact case_001166_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001166_bAtRank :
    translationBAtRankMask case_001166_rank case_001166_mask = case_001166_b := by
  rw [translationBAtRankMask, case_001166_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001166_b, case_001166_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001166_firstLine_eq :
    case_001166_support.firstLine case_001166_seq case_001166_b = case_001166_firstLine := by
  norm_num [case_001166_firstLine, case_001166_support, case_001166_seq, case_001166_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001166_secondLine_eq :
    case_001166_support.secondLine case_001166_seq case_001166_b = case_001166_secondLine := by
  norm_num [case_001166_secondLine, case_001166_support, case_001166_seq, case_001166_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001166_sourceAgrees :
    SourceAgrees case_001166_support case_001166_rank.val case_001166_mask := by
  intro hlt
  have hrank : (⟨case_001166_rank.val, hlt⟩ : Fin numPairWords) = case_001166_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001166_rank.val, hlt⟩ case_001166_mask =
        case_001166_seq := by
    simpa [hrank] using case_001166_seqAtRank
  simp [SourceChecks, hseq, case_001166_support,
    checkTranslationConstraintSource, case_001166_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001166_rows :
    EqEqPosVarFirstRows case_001166_support case_001166_rank.val case_001166_mask := by
  intro hlt
  have hrank : (⟨case_001166_rank.val, hlt⟩ : Fin numPairWords) = case_001166_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001166_rank.val, hlt⟩ case_001166_mask =
        case_001166_seq := by
    simpa [hrank] using case_001166_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001166_rank.val, hlt⟩ case_001166_mask =
        case_001166_b := by
    simpa [hrank] using case_001166_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001166_support case_001166_rank.val hlt
          case_001166_mask = case_001166_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001166_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001166_support case_001166_rank.val hlt
          case_001166_mask = case_001166_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001166_secondLine_eq]
  have case_001166_rowFirst :
      EqEqPosRow (FirstLineAt case_001166_support case_001166_rank.val hlt case_001166_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001166_firstLine, EqEqPosRow]
  have case_001166_fixedSecond :
      FixedRow (SecondLineAt case_001166_support case_001166_rank.val hlt case_001166_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001166_secondLine, FixedRow]
  exact ⟨case_001166_rowFirst, case_001166_fixedSecond⟩

private theorem case_001166_existsRows :
    ExistsEqEqPosVarFirstRows case_001166_rank.val case_001166_mask :=
  ⟨case_001166_support, case_001166_sourceAgrees, case_001166_rows⟩

private theorem case_001166_covered :
    RowPropertyParametricCovered case_001166_rank.val case_001166_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001166_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001167_rank : Fin numPairWords := ⟨839, by decide⟩
private def case_001167_mask : SignMask := ⟨55, by decide⟩
private def case_001167_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_001167_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001167_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001167_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (100/9) }
private def case_001167_firstLine : StrictLin2 := { a := (-1/7), b := (-1/7), c := (-131/21) }
private def case_001167_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001167_rankWord :
    rankPairWord? case_001167_word = some case_001167_rank := by
  decide

private theorem case_001167_unrank :
    unrankPairWord case_001167_rank = case_001167_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001167_word case_001167_rank).1
    case_001167_rankWord |>.symm

private theorem case_001167_seqChoice :
    translationChoiceSeq case_001167_word case_001167_mask = case_001167_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001167_seqAtRank :
    translationSeqAtRankMask case_001167_rank case_001167_mask = case_001167_seq := by
  rw [translationSeqAtRankMask, case_001167_unrank]
  exact case_001167_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001167_bAtRank :
    translationBAtRankMask case_001167_rank case_001167_mask = case_001167_b := by
  rw [translationBAtRankMask, case_001167_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001167_b, case_001167_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001167_firstLine_eq :
    case_001167_support.firstLine case_001167_seq case_001167_b = case_001167_firstLine := by
  norm_num [case_001167_firstLine, case_001167_support, case_001167_seq, case_001167_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001167_secondLine_eq :
    case_001167_support.secondLine case_001167_seq case_001167_b = case_001167_secondLine := by
  norm_num [case_001167_secondLine, case_001167_support, case_001167_seq, case_001167_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001167_sourceAgrees :
    SourceAgrees case_001167_support case_001167_rank.val case_001167_mask := by
  intro hlt
  have hrank : (⟨case_001167_rank.val, hlt⟩ : Fin numPairWords) = case_001167_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001167_rank.val, hlt⟩ case_001167_mask =
        case_001167_seq := by
    simpa [hrank] using case_001167_seqAtRank
  simp [SourceChecks, hseq, case_001167_support,
    checkTranslationConstraintSource, case_001167_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001167_rows :
    EqEqPosVarFirstRows case_001167_support case_001167_rank.val case_001167_mask := by
  intro hlt
  have hrank : (⟨case_001167_rank.val, hlt⟩ : Fin numPairWords) = case_001167_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001167_rank.val, hlt⟩ case_001167_mask =
        case_001167_seq := by
    simpa [hrank] using case_001167_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001167_rank.val, hlt⟩ case_001167_mask =
        case_001167_b := by
    simpa [hrank] using case_001167_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001167_support case_001167_rank.val hlt
          case_001167_mask = case_001167_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001167_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001167_support case_001167_rank.val hlt
          case_001167_mask = case_001167_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001167_secondLine_eq]
  have case_001167_rowFirst :
      EqEqPosRow (FirstLineAt case_001167_support case_001167_rank.val hlt case_001167_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001167_firstLine, EqEqPosRow]
  have case_001167_fixedSecond :
      FixedRow (SecondLineAt case_001167_support case_001167_rank.val hlt case_001167_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001167_secondLine, FixedRow]
  exact ⟨case_001167_rowFirst, case_001167_fixedSecond⟩

private theorem case_001167_existsRows :
    ExistsEqEqPosVarFirstRows case_001167_rank.val case_001167_mask :=
  ⟨case_001167_support, case_001167_sourceAgrees, case_001167_rows⟩

private theorem case_001167_covered :
    RowPropertyParametricCovered case_001167_rank.val case_001167_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001167_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001168_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001168_mask : SignMask := ⟨8, by decide⟩
private def case_001168_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001168_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001168_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001168_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (-116/9) }
private def case_001168_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_001168_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001168_rankWord :
    rankPairWord? case_001168_word = some case_001168_rank := by
  decide

private theorem case_001168_unrank :
    unrankPairWord case_001168_rank = case_001168_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001168_word case_001168_rank).1
    case_001168_rankWord |>.symm

private theorem case_001168_seqChoice :
    translationChoiceSeq case_001168_word case_001168_mask = case_001168_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001168_seqAtRank :
    translationSeqAtRankMask case_001168_rank case_001168_mask = case_001168_seq := by
  rw [translationSeqAtRankMask, case_001168_unrank]
  exact case_001168_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001168_bAtRank :
    translationBAtRankMask case_001168_rank case_001168_mask = case_001168_b := by
  rw [translationBAtRankMask, case_001168_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001168_b, case_001168_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001168_firstLine_eq :
    case_001168_support.firstLine case_001168_seq case_001168_b = case_001168_firstLine := by
  norm_num [case_001168_firstLine, case_001168_support, case_001168_seq, case_001168_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001168_secondLine_eq :
    case_001168_support.secondLine case_001168_seq case_001168_b = case_001168_secondLine := by
  norm_num [case_001168_secondLine, case_001168_support, case_001168_seq, case_001168_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001168_sourceAgrees :
    SourceAgrees case_001168_support case_001168_rank.val case_001168_mask := by
  intro hlt
  have hrank : (⟨case_001168_rank.val, hlt⟩ : Fin numPairWords) = case_001168_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001168_rank.val, hlt⟩ case_001168_mask =
        case_001168_seq := by
    simpa [hrank] using case_001168_seqAtRank
  simp [SourceChecks, hseq, case_001168_support,
    checkTranslationConstraintSource, case_001168_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001168_rows :
    EqEqPosVarFirstRows case_001168_support case_001168_rank.val case_001168_mask := by
  intro hlt
  have hrank : (⟨case_001168_rank.val, hlt⟩ : Fin numPairWords) = case_001168_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001168_rank.val, hlt⟩ case_001168_mask =
        case_001168_seq := by
    simpa [hrank] using case_001168_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001168_rank.val, hlt⟩ case_001168_mask =
        case_001168_b := by
    simpa [hrank] using case_001168_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001168_support case_001168_rank.val hlt
          case_001168_mask = case_001168_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001168_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001168_support case_001168_rank.val hlt
          case_001168_mask = case_001168_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001168_secondLine_eq]
  have case_001168_rowFirst :
      EqEqPosRow (FirstLineAt case_001168_support case_001168_rank.val hlt case_001168_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001168_firstLine, EqEqPosRow]
  have case_001168_fixedSecond :
      FixedRow (SecondLineAt case_001168_support case_001168_rank.val hlt case_001168_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001168_secondLine, FixedRow]
  exact ⟨case_001168_rowFirst, case_001168_fixedSecond⟩

private theorem case_001168_existsRows :
    ExistsEqEqPosVarFirstRows case_001168_rank.val case_001168_mask :=
  ⟨case_001168_support, case_001168_sourceAgrees, case_001168_rows⟩

private theorem case_001168_covered :
    RowPropertyParametricCovered case_001168_rank.val case_001168_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001168_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001169_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001169_mask : SignMask := ⟨13, by decide⟩
private def case_001169_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001169_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001169_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001169_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (-100/9) }
private def case_001169_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001169_secondLine : StrictLin2 := { a := (-9/100), b := (-9/100), c := (-9/50) }

private theorem case_001169_rankWord :
    rankPairWord? case_001169_word = some case_001169_rank := by
  decide

private theorem case_001169_unrank :
    unrankPairWord case_001169_rank = case_001169_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001169_word case_001169_rank).1
    case_001169_rankWord |>.symm

private theorem case_001169_seqChoice :
    translationChoiceSeq case_001169_word case_001169_mask = case_001169_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001169_seqAtRank :
    translationSeqAtRankMask case_001169_rank case_001169_mask = case_001169_seq := by
  rw [translationSeqAtRankMask, case_001169_unrank]
  exact case_001169_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001169_bAtRank :
    translationBAtRankMask case_001169_rank case_001169_mask = case_001169_b := by
  rw [translationBAtRankMask, case_001169_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001169_b, case_001169_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001169_firstLine_eq :
    case_001169_support.firstLine case_001169_seq case_001169_b = case_001169_firstLine := by
  norm_num [case_001169_firstLine, case_001169_support, case_001169_seq, case_001169_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001169_secondLine_eq :
    case_001169_support.secondLine case_001169_seq case_001169_b = case_001169_secondLine := by
  norm_num [case_001169_secondLine, case_001169_support, case_001169_seq, case_001169_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001169_sourceAgrees :
    SourceAgrees case_001169_support case_001169_rank.val case_001169_mask := by
  intro hlt
  have hrank : (⟨case_001169_rank.val, hlt⟩ : Fin numPairWords) = case_001169_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001169_rank.val, hlt⟩ case_001169_mask =
        case_001169_seq := by
    simpa [hrank] using case_001169_seqAtRank
  simp [SourceChecks, hseq, case_001169_support,
    checkTranslationConstraintSource, case_001169_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001169_rows :
    EqEqPosVarSecondRows case_001169_support case_001169_rank.val case_001169_mask := by
  intro hlt
  have hrank : (⟨case_001169_rank.val, hlt⟩ : Fin numPairWords) = case_001169_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001169_rank.val, hlt⟩ case_001169_mask =
        case_001169_seq := by
    simpa [hrank] using case_001169_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001169_rank.val, hlt⟩ case_001169_mask =
        case_001169_b := by
    simpa [hrank] using case_001169_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001169_support case_001169_rank.val hlt
          case_001169_mask = case_001169_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001169_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001169_support case_001169_rank.val hlt
          case_001169_mask = case_001169_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001169_secondLine_eq]
  have case_001169_fixedFirst :
      FixedRow (FirstLineAt case_001169_support case_001169_rank.val hlt case_001169_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001169_firstLine, FixedRow]
  have case_001169_rowSecond :
      EqEqPosRow (SecondLineAt case_001169_support case_001169_rank.val hlt case_001169_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001169_secondLine, EqEqPosRow]
  exact ⟨case_001169_fixedFirst, case_001169_rowSecond⟩

private theorem case_001169_existsRows :
    ExistsEqEqPosVarSecondRows case_001169_rank.val case_001169_mask :=
  ⟨case_001169_support, case_001169_sourceAgrees, case_001169_rows⟩

private theorem case_001169_covered :
    RowPropertyParametricCovered case_001169_rank.val case_001169_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001169_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001170_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001170_mask : SignMask := ⟨16, by decide⟩
private def case_001170_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001170_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001170_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001170_b : Vec3 Rat := { x := (-52/9), y := (-148/9), z := (-20/9) }
private def case_001170_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_001170_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001170_rankWord :
    rankPairWord? case_001170_word = some case_001170_rank := by
  decide

private theorem case_001170_unrank :
    unrankPairWord case_001170_rank = case_001170_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001170_word case_001170_rank).1
    case_001170_rankWord |>.symm

private theorem case_001170_seqChoice :
    translationChoiceSeq case_001170_word case_001170_mask = case_001170_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001170_seqAtRank :
    translationSeqAtRankMask case_001170_rank case_001170_mask = case_001170_seq := by
  rw [translationSeqAtRankMask, case_001170_unrank]
  exact case_001170_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001170_bAtRank :
    translationBAtRankMask case_001170_rank case_001170_mask = case_001170_b := by
  rw [translationBAtRankMask, case_001170_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001170_b, case_001170_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001170_firstLine_eq :
    case_001170_support.firstLine case_001170_seq case_001170_b = case_001170_firstLine := by
  norm_num [case_001170_firstLine, case_001170_support, case_001170_seq, case_001170_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001170_secondLine_eq :
    case_001170_support.secondLine case_001170_seq case_001170_b = case_001170_secondLine := by
  norm_num [case_001170_secondLine, case_001170_support, case_001170_seq, case_001170_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001170_sourceAgrees :
    SourceAgrees case_001170_support case_001170_rank.val case_001170_mask := by
  intro hlt
  have hrank : (⟨case_001170_rank.val, hlt⟩ : Fin numPairWords) = case_001170_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001170_rank.val, hlt⟩ case_001170_mask =
        case_001170_seq := by
    simpa [hrank] using case_001170_seqAtRank
  simp [SourceChecks, hseq, case_001170_support,
    checkTranslationConstraintSource, case_001170_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001170_rows :
    EqEqPosVarFirstRows case_001170_support case_001170_rank.val case_001170_mask := by
  intro hlt
  have hrank : (⟨case_001170_rank.val, hlt⟩ : Fin numPairWords) = case_001170_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001170_rank.val, hlt⟩ case_001170_mask =
        case_001170_seq := by
    simpa [hrank] using case_001170_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001170_rank.val, hlt⟩ case_001170_mask =
        case_001170_b := by
    simpa [hrank] using case_001170_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001170_support case_001170_rank.val hlt
          case_001170_mask = case_001170_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001170_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001170_support case_001170_rank.val hlt
          case_001170_mask = case_001170_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001170_secondLine_eq]
  have case_001170_rowFirst :
      EqEqPosRow (FirstLineAt case_001170_support case_001170_rank.val hlt case_001170_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001170_firstLine, EqEqPosRow]
  have case_001170_fixedSecond :
      FixedRow (SecondLineAt case_001170_support case_001170_rank.val hlt case_001170_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001170_secondLine, FixedRow]
  exact ⟨case_001170_rowFirst, case_001170_fixedSecond⟩

private theorem case_001170_existsRows :
    ExistsEqEqPosVarFirstRows case_001170_rank.val case_001170_mask :=
  ⟨case_001170_support, case_001170_sourceAgrees, case_001170_rows⟩

private theorem case_001170_covered :
    RowPropertyParametricCovered case_001170_rank.val case_001170_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001170_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001171_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001171_mask : SignMask := ⟨18, by decide⟩
private def case_001171_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001171_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001171_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001171_b : Vec3 Rat := { x := (-52/9), y := (-148/9), z := (52/9) }
private def case_001171_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/13) }
private def case_001171_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001171_rankWord :
    rankPairWord? case_001171_word = some case_001171_rank := by
  decide

private theorem case_001171_unrank :
    unrankPairWord case_001171_rank = case_001171_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001171_word case_001171_rank).1
    case_001171_rankWord |>.symm

private theorem case_001171_seqChoice :
    translationChoiceSeq case_001171_word case_001171_mask = case_001171_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001171_seqAtRank :
    translationSeqAtRankMask case_001171_rank case_001171_mask = case_001171_seq := by
  rw [translationSeqAtRankMask, case_001171_unrank]
  exact case_001171_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001171_bAtRank :
    translationBAtRankMask case_001171_rank case_001171_mask = case_001171_b := by
  rw [translationBAtRankMask, case_001171_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001171_b, case_001171_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001171_firstLine_eq :
    case_001171_support.firstLine case_001171_seq case_001171_b = case_001171_firstLine := by
  norm_num [case_001171_firstLine, case_001171_support, case_001171_seq, case_001171_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001171_secondLine_eq :
    case_001171_support.secondLine case_001171_seq case_001171_b = case_001171_secondLine := by
  norm_num [case_001171_secondLine, case_001171_support, case_001171_seq, case_001171_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001171_sourceAgrees :
    SourceAgrees case_001171_support case_001171_rank.val case_001171_mask := by
  intro hlt
  have hrank : (⟨case_001171_rank.val, hlt⟩ : Fin numPairWords) = case_001171_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001171_rank.val, hlt⟩ case_001171_mask =
        case_001171_seq := by
    simpa [hrank] using case_001171_seqAtRank
  simp [SourceChecks, hseq, case_001171_support,
    checkTranslationConstraintSource, case_001171_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001171_rows :
    EqEqPosVarFirstRows case_001171_support case_001171_rank.val case_001171_mask := by
  intro hlt
  have hrank : (⟨case_001171_rank.val, hlt⟩ : Fin numPairWords) = case_001171_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001171_rank.val, hlt⟩ case_001171_mask =
        case_001171_seq := by
    simpa [hrank] using case_001171_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001171_rank.val, hlt⟩ case_001171_mask =
        case_001171_b := by
    simpa [hrank] using case_001171_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001171_support case_001171_rank.val hlt
          case_001171_mask = case_001171_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001171_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001171_support case_001171_rank.val hlt
          case_001171_mask = case_001171_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001171_secondLine_eq]
  have case_001171_rowFirst :
      EqEqPosRow (FirstLineAt case_001171_support case_001171_rank.val hlt case_001171_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001171_firstLine, EqEqPosRow]
  have case_001171_fixedSecond :
      FixedRow (SecondLineAt case_001171_support case_001171_rank.val hlt case_001171_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001171_secondLine, FixedRow]
  exact ⟨case_001171_rowFirst, case_001171_fixedSecond⟩

private theorem case_001171_existsRows :
    ExistsEqEqPosVarFirstRows case_001171_rank.val case_001171_mask :=
  ⟨case_001171_support, case_001171_sourceAgrees, case_001171_rows⟩

private theorem case_001171_covered :
    RowPropertyParametricCovered case_001171_rank.val case_001171_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001171_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001172_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001172_mask : SignMask := ⟨24, by decide⟩
private def case_001172_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001172_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001172_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001172_b : Vec3 Rat := { x := (-100/9), y := (-100/9), z := (-68/9) }
private def case_001172_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_001172_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001172_rankWord :
    rankPairWord? case_001172_word = some case_001172_rank := by
  decide

private theorem case_001172_unrank :
    unrankPairWord case_001172_rank = case_001172_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001172_word case_001172_rank).1
    case_001172_rankWord |>.symm

private theorem case_001172_seqChoice :
    translationChoiceSeq case_001172_word case_001172_mask = case_001172_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001172_seqAtRank :
    translationSeqAtRankMask case_001172_rank case_001172_mask = case_001172_seq := by
  rw [translationSeqAtRankMask, case_001172_unrank]
  exact case_001172_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001172_bAtRank :
    translationBAtRankMask case_001172_rank case_001172_mask = case_001172_b := by
  rw [translationBAtRankMask, case_001172_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001172_b, case_001172_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001172_firstLine_eq :
    case_001172_support.firstLine case_001172_seq case_001172_b = case_001172_firstLine := by
  norm_num [case_001172_firstLine, case_001172_support, case_001172_seq, case_001172_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001172_secondLine_eq :
    case_001172_support.secondLine case_001172_seq case_001172_b = case_001172_secondLine := by
  norm_num [case_001172_secondLine, case_001172_support, case_001172_seq, case_001172_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001172_sourceAgrees :
    SourceAgrees case_001172_support case_001172_rank.val case_001172_mask := by
  intro hlt
  have hrank : (⟨case_001172_rank.val, hlt⟩ : Fin numPairWords) = case_001172_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001172_rank.val, hlt⟩ case_001172_mask =
        case_001172_seq := by
    simpa [hrank] using case_001172_seqAtRank
  simp [SourceChecks, hseq, case_001172_support,
    checkTranslationConstraintSource, case_001172_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001172_rows :
    EqEqPosVarFirstRows case_001172_support case_001172_rank.val case_001172_mask := by
  intro hlt
  have hrank : (⟨case_001172_rank.val, hlt⟩ : Fin numPairWords) = case_001172_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001172_rank.val, hlt⟩ case_001172_mask =
        case_001172_seq := by
    simpa [hrank] using case_001172_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001172_rank.val, hlt⟩ case_001172_mask =
        case_001172_b := by
    simpa [hrank] using case_001172_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001172_support case_001172_rank.val hlt
          case_001172_mask = case_001172_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001172_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001172_support case_001172_rank.val hlt
          case_001172_mask = case_001172_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001172_secondLine_eq]
  have case_001172_rowFirst :
      EqEqPosRow (FirstLineAt case_001172_support case_001172_rank.val hlt case_001172_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001172_firstLine, EqEqPosRow]
  have case_001172_fixedSecond :
      FixedRow (SecondLineAt case_001172_support case_001172_rank.val hlt case_001172_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001172_secondLine, FixedRow]
  exact ⟨case_001172_rowFirst, case_001172_fixedSecond⟩

private theorem case_001172_existsRows :
    ExistsEqEqPosVarFirstRows case_001172_rank.val case_001172_mask :=
  ⟨case_001172_support, case_001172_sourceAgrees, case_001172_rows⟩

private theorem case_001172_covered :
    RowPropertyParametricCovered case_001172_rank.val case_001172_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001172_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001173_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001173_mask : SignMask := ⟨29, by decide⟩
private def case_001173_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001173_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001173_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001173_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (-52/9) }
private def case_001173_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001173_secondLine : StrictLin2 := { a := (-9/52), b := (-9/52), c := (-9/26) }

private theorem case_001173_rankWord :
    rankPairWord? case_001173_word = some case_001173_rank := by
  decide

private theorem case_001173_unrank :
    unrankPairWord case_001173_rank = case_001173_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001173_word case_001173_rank).1
    case_001173_rankWord |>.symm

private theorem case_001173_seqChoice :
    translationChoiceSeq case_001173_word case_001173_mask = case_001173_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001173_seqAtRank :
    translationSeqAtRankMask case_001173_rank case_001173_mask = case_001173_seq := by
  rw [translationSeqAtRankMask, case_001173_unrank]
  exact case_001173_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001173_bAtRank :
    translationBAtRankMask case_001173_rank case_001173_mask = case_001173_b := by
  rw [translationBAtRankMask, case_001173_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001173_b, case_001173_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001173_firstLine_eq :
    case_001173_support.firstLine case_001173_seq case_001173_b = case_001173_firstLine := by
  norm_num [case_001173_firstLine, case_001173_support, case_001173_seq, case_001173_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001173_secondLine_eq :
    case_001173_support.secondLine case_001173_seq case_001173_b = case_001173_secondLine := by
  norm_num [case_001173_secondLine, case_001173_support, case_001173_seq, case_001173_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001173_sourceAgrees :
    SourceAgrees case_001173_support case_001173_rank.val case_001173_mask := by
  intro hlt
  have hrank : (⟨case_001173_rank.val, hlt⟩ : Fin numPairWords) = case_001173_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001173_rank.val, hlt⟩ case_001173_mask =
        case_001173_seq := by
    simpa [hrank] using case_001173_seqAtRank
  simp [SourceChecks, hseq, case_001173_support,
    checkTranslationConstraintSource, case_001173_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001173_rows :
    EqEqPosVarSecondRows case_001173_support case_001173_rank.val case_001173_mask := by
  intro hlt
  have hrank : (⟨case_001173_rank.val, hlt⟩ : Fin numPairWords) = case_001173_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001173_rank.val, hlt⟩ case_001173_mask =
        case_001173_seq := by
    simpa [hrank] using case_001173_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001173_rank.val, hlt⟩ case_001173_mask =
        case_001173_b := by
    simpa [hrank] using case_001173_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001173_support case_001173_rank.val hlt
          case_001173_mask = case_001173_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001173_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001173_support case_001173_rank.val hlt
          case_001173_mask = case_001173_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001173_secondLine_eq]
  have case_001173_fixedFirst :
      FixedRow (FirstLineAt case_001173_support case_001173_rank.val hlt case_001173_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001173_firstLine, FixedRow]
  have case_001173_rowSecond :
      EqEqPosRow (SecondLineAt case_001173_support case_001173_rank.val hlt case_001173_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001173_secondLine, EqEqPosRow]
  exact ⟨case_001173_fixedFirst, case_001173_rowSecond⟩

private theorem case_001173_existsRows :
    ExistsEqEqPosVarSecondRows case_001173_rank.val case_001173_mask :=
  ⟨case_001173_support, case_001173_sourceAgrees, case_001173_rows⟩

private theorem case_001173_covered :
    RowPropertyParametricCovered case_001173_rank.val case_001173_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001173_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001174_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001174_mask : SignMask := ⟨30, by decide⟩
private def case_001174_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001174_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001174_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001174_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (20/9) }
private def case_001174_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001174_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001174_rankWord :
    rankPairWord? case_001174_word = some case_001174_rank := by
  decide

private theorem case_001174_unrank :
    unrankPairWord case_001174_rank = case_001174_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001174_word case_001174_rank).1
    case_001174_rankWord |>.symm

private theorem case_001174_seqChoice :
    translationChoiceSeq case_001174_word case_001174_mask = case_001174_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001174_seqAtRank :
    translationSeqAtRankMask case_001174_rank case_001174_mask = case_001174_seq := by
  rw [translationSeqAtRankMask, case_001174_unrank]
  exact case_001174_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001174_bAtRank :
    translationBAtRankMask case_001174_rank case_001174_mask = case_001174_b := by
  rw [translationBAtRankMask, case_001174_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001174_b, case_001174_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001174_firstLine_eq :
    case_001174_support.firstLine case_001174_seq case_001174_b = case_001174_firstLine := by
  norm_num [case_001174_firstLine, case_001174_support, case_001174_seq, case_001174_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001174_secondLine_eq :
    case_001174_support.secondLine case_001174_seq case_001174_b = case_001174_secondLine := by
  norm_num [case_001174_secondLine, case_001174_support, case_001174_seq, case_001174_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001174_sourceAgrees :
    SourceAgrees case_001174_support case_001174_rank.val case_001174_mask := by
  intro hlt
  have hrank : (⟨case_001174_rank.val, hlt⟩ : Fin numPairWords) = case_001174_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001174_rank.val, hlt⟩ case_001174_mask =
        case_001174_seq := by
    simpa [hrank] using case_001174_seqAtRank
  simp [SourceChecks, hseq, case_001174_support,
    checkTranslationConstraintSource, case_001174_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001174_rows :
    EqEqPosVarFirstRows case_001174_support case_001174_rank.val case_001174_mask := by
  intro hlt
  have hrank : (⟨case_001174_rank.val, hlt⟩ : Fin numPairWords) = case_001174_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001174_rank.val, hlt⟩ case_001174_mask =
        case_001174_seq := by
    simpa [hrank] using case_001174_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001174_rank.val, hlt⟩ case_001174_mask =
        case_001174_b := by
    simpa [hrank] using case_001174_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001174_support case_001174_rank.val hlt
          case_001174_mask = case_001174_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001174_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001174_support case_001174_rank.val hlt
          case_001174_mask = case_001174_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001174_secondLine_eq]
  have case_001174_rowFirst :
      EqEqPosRow (FirstLineAt case_001174_support case_001174_rank.val hlt case_001174_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001174_firstLine, EqEqPosRow]
  have case_001174_fixedSecond :
      FixedRow (SecondLineAt case_001174_support case_001174_rank.val hlt case_001174_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001174_secondLine, FixedRow]
  exact ⟨case_001174_rowFirst, case_001174_fixedSecond⟩

private theorem case_001174_existsRows :
    ExistsEqEqPosVarFirstRows case_001174_rank.val case_001174_mask :=
  ⟨case_001174_support, case_001174_sourceAgrees, case_001174_rows⟩

private theorem case_001174_covered :
    RowPropertyParametricCovered case_001174_rank.val case_001174_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001174_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001175_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001175_mask : SignMask := ⟨31, by decide⟩
private def case_001175_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001175_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001175_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001175_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (20/9) }
private def case_001175_firstLine : StrictLin2 := { a := (-29/11), b := (-29/11), c := (-455/33) }
private def case_001175_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001175_rankWord :
    rankPairWord? case_001175_word = some case_001175_rank := by
  decide

private theorem case_001175_unrank :
    unrankPairWord case_001175_rank = case_001175_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001175_word case_001175_rank).1
    case_001175_rankWord |>.symm

private theorem case_001175_seqChoice :
    translationChoiceSeq case_001175_word case_001175_mask = case_001175_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001175_seqAtRank :
    translationSeqAtRankMask case_001175_rank case_001175_mask = case_001175_seq := by
  rw [translationSeqAtRankMask, case_001175_unrank]
  exact case_001175_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001175_bAtRank :
    translationBAtRankMask case_001175_rank case_001175_mask = case_001175_b := by
  rw [translationBAtRankMask, case_001175_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001175_b, case_001175_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001175_firstLine_eq :
    case_001175_support.firstLine case_001175_seq case_001175_b = case_001175_firstLine := by
  norm_num [case_001175_firstLine, case_001175_support, case_001175_seq, case_001175_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001175_secondLine_eq :
    case_001175_support.secondLine case_001175_seq case_001175_b = case_001175_secondLine := by
  norm_num [case_001175_secondLine, case_001175_support, case_001175_seq, case_001175_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001175_sourceAgrees :
    SourceAgrees case_001175_support case_001175_rank.val case_001175_mask := by
  intro hlt
  have hrank : (⟨case_001175_rank.val, hlt⟩ : Fin numPairWords) = case_001175_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001175_rank.val, hlt⟩ case_001175_mask =
        case_001175_seq := by
    simpa [hrank] using case_001175_seqAtRank
  simp [SourceChecks, hseq, case_001175_support,
    checkTranslationConstraintSource, case_001175_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001175_rows :
    EqEqPosVarFirstRows case_001175_support case_001175_rank.val case_001175_mask := by
  intro hlt
  have hrank : (⟨case_001175_rank.val, hlt⟩ : Fin numPairWords) = case_001175_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001175_rank.val, hlt⟩ case_001175_mask =
        case_001175_seq := by
    simpa [hrank] using case_001175_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001175_rank.val, hlt⟩ case_001175_mask =
        case_001175_b := by
    simpa [hrank] using case_001175_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001175_support case_001175_rank.val hlt
          case_001175_mask = case_001175_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001175_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001175_support case_001175_rank.val hlt
          case_001175_mask = case_001175_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001175_secondLine_eq]
  have case_001175_rowFirst :
      EqEqPosRow (FirstLineAt case_001175_support case_001175_rank.val hlt case_001175_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001175_firstLine, EqEqPosRow]
  have case_001175_fixedSecond :
      FixedRow (SecondLineAt case_001175_support case_001175_rank.val hlt case_001175_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001175_secondLine, FixedRow]
  exact ⟨case_001175_rowFirst, case_001175_fixedSecond⟩

private theorem case_001175_existsRows :
    ExistsEqEqPosVarFirstRows case_001175_rank.val case_001175_mask :=
  ⟨case_001175_support, case_001175_sourceAgrees, case_001175_rows⟩

private theorem case_001175_covered :
    RowPropertyParametricCovered case_001175_rank.val case_001175_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001175_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_001176_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001176_mask : SignMask := ⟨45, by decide⟩
private def case_001176_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001176_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001176_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001176_b : Vec3 Rat := { x := (-20/9), y := (148/9), z := (-52/9) }
private def case_001176_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_001176_secondLine : StrictLin2 := { a := (1/110), b := (-1/110), c := (-7/33) }

private theorem case_001176_rankWord :
    rankPairWord? case_001176_word = some case_001176_rank := by
  decide

private theorem case_001176_unrank :
    unrankPairWord case_001176_rank = case_001176_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001176_word case_001176_rank).1
    case_001176_rankWord |>.symm

private theorem case_001176_seqChoice :
    translationChoiceSeq case_001176_word case_001176_mask = case_001176_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001176_seqAtRank :
    translationSeqAtRankMask case_001176_rank case_001176_mask = case_001176_seq := by
  rw [translationSeqAtRankMask, case_001176_unrank]
  exact case_001176_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001176_bAtRank :
    translationBAtRankMask case_001176_rank case_001176_mask = case_001176_b := by
  rw [translationBAtRankMask, case_001176_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001176_b, case_001176_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001176_firstLine_eq :
    case_001176_support.firstLine case_001176_seq case_001176_b = case_001176_firstLine := by
  norm_num [case_001176_firstLine, case_001176_support, case_001176_seq, case_001176_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001176_secondLine_eq :
    case_001176_support.secondLine case_001176_seq case_001176_b = case_001176_secondLine := by
  norm_num [case_001176_secondLine, case_001176_support, case_001176_seq, case_001176_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001176_sourceAgrees :
    SourceAgrees case_001176_support case_001176_rank.val case_001176_mask := by
  intro hlt
  have hrank : (⟨case_001176_rank.val, hlt⟩ : Fin numPairWords) = case_001176_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001176_rank.val, hlt⟩ case_001176_mask =
        case_001176_seq := by
    simpa [hrank] using case_001176_seqAtRank
  simp [SourceChecks, hseq, case_001176_support,
    checkTranslationConstraintSource, case_001176_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001176_rows :
    OppMinusOneVarSecondRows case_001176_support case_001176_rank.val case_001176_mask := by
  intro hlt
  have hrank : (⟨case_001176_rank.val, hlt⟩ : Fin numPairWords) = case_001176_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001176_rank.val, hlt⟩ case_001176_mask =
        case_001176_seq := by
    simpa [hrank] using case_001176_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001176_rank.val, hlt⟩ case_001176_mask =
        case_001176_b := by
    simpa [hrank] using case_001176_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001176_support case_001176_rank.val hlt
          case_001176_mask = case_001176_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001176_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001176_support case_001176_rank.val hlt
          case_001176_mask = case_001176_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001176_secondLine_eq]
  have case_001176_fixedFirst :
      FixedRow (FirstLineAt case_001176_support case_001176_rank.val hlt case_001176_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001176_firstLine, FixedRow]
  have case_001176_rowSecond :
      OppNegRow (SecondLineAt case_001176_support case_001176_rank.val hlt case_001176_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001176_secondLine, OppNegRow]
  exact ⟨case_001176_fixedFirst, case_001176_rowSecond⟩

private theorem case_001176_existsRows :
    ExistsOppMinusOneVarSecondRows case_001176_rank.val case_001176_mask :=
  ⟨case_001176_support, case_001176_sourceAgrees, case_001176_rows⟩

private theorem case_001176_covered :
    RowPropertyParametricCovered case_001176_rank.val case_001176_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_001176_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_001177_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001177_mask : SignMask := ⟨47, by decide⟩
private def case_001177_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001177_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001177_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001177_b : Vec3 Rat := { x := (-20/9), y := (148/9), z := (20/9) }
private def case_001177_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_001177_secondLine : StrictLin2 := { a := (5/222), b := (-5/222), c := (-136/333) }

private theorem case_001177_rankWord :
    rankPairWord? case_001177_word = some case_001177_rank := by
  decide

private theorem case_001177_unrank :
    unrankPairWord case_001177_rank = case_001177_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001177_word case_001177_rank).1
    case_001177_rankWord |>.symm

private theorem case_001177_seqChoice :
    translationChoiceSeq case_001177_word case_001177_mask = case_001177_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001177_seqAtRank :
    translationSeqAtRankMask case_001177_rank case_001177_mask = case_001177_seq := by
  rw [translationSeqAtRankMask, case_001177_unrank]
  exact case_001177_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001177_bAtRank :
    translationBAtRankMask case_001177_rank case_001177_mask = case_001177_b := by
  rw [translationBAtRankMask, case_001177_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001177_b, case_001177_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001177_firstLine_eq :
    case_001177_support.firstLine case_001177_seq case_001177_b = case_001177_firstLine := by
  norm_num [case_001177_firstLine, case_001177_support, case_001177_seq, case_001177_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001177_secondLine_eq :
    case_001177_support.secondLine case_001177_seq case_001177_b = case_001177_secondLine := by
  norm_num [case_001177_secondLine, case_001177_support, case_001177_seq, case_001177_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001177_sourceAgrees :
    SourceAgrees case_001177_support case_001177_rank.val case_001177_mask := by
  intro hlt
  have hrank : (⟨case_001177_rank.val, hlt⟩ : Fin numPairWords) = case_001177_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001177_rank.val, hlt⟩ case_001177_mask =
        case_001177_seq := by
    simpa [hrank] using case_001177_seqAtRank
  simp [SourceChecks, hseq, case_001177_support,
    checkTranslationConstraintSource, case_001177_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001177_rows :
    OppMinusOneVarSecondRows case_001177_support case_001177_rank.val case_001177_mask := by
  intro hlt
  have hrank : (⟨case_001177_rank.val, hlt⟩ : Fin numPairWords) = case_001177_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001177_rank.val, hlt⟩ case_001177_mask =
        case_001177_seq := by
    simpa [hrank] using case_001177_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001177_rank.val, hlt⟩ case_001177_mask =
        case_001177_b := by
    simpa [hrank] using case_001177_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001177_support case_001177_rank.val hlt
          case_001177_mask = case_001177_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001177_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001177_support case_001177_rank.val hlt
          case_001177_mask = case_001177_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001177_secondLine_eq]
  have case_001177_fixedFirst :
      FixedRow (FirstLineAt case_001177_support case_001177_rank.val hlt case_001177_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001177_firstLine, FixedRow]
  have case_001177_rowSecond :
      OppNegRow (SecondLineAt case_001177_support case_001177_rank.val hlt case_001177_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001177_secondLine, OppNegRow]
  exact ⟨case_001177_fixedFirst, case_001177_rowSecond⟩

private theorem case_001177_existsRows :
    ExistsOppMinusOneVarSecondRows case_001177_rank.val case_001177_mask :=
  ⟨case_001177_support, case_001177_sourceAgrees, case_001177_rows⟩

private theorem case_001177_covered :
    RowPropertyParametricCovered case_001177_rank.val case_001177_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_001177_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001178_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001178_mask : SignMask := ⟨54, by decide⟩
private def case_001178_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001178_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001178_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001178_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (116/9) }
private def case_001178_firstLine : StrictLin2 := { a := -1, b := 1, c := (-63/5) }
private def case_001178_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001178_rankWord :
    rankPairWord? case_001178_word = some case_001178_rank := by
  decide

private theorem case_001178_unrank :
    unrankPairWord case_001178_rank = case_001178_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001178_word case_001178_rank).1
    case_001178_rankWord |>.symm

private theorem case_001178_seqChoice :
    translationChoiceSeq case_001178_word case_001178_mask = case_001178_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001178_seqAtRank :
    translationSeqAtRankMask case_001178_rank case_001178_mask = case_001178_seq := by
  rw [translationSeqAtRankMask, case_001178_unrank]
  exact case_001178_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001178_bAtRank :
    translationBAtRankMask case_001178_rank case_001178_mask = case_001178_b := by
  rw [translationBAtRankMask, case_001178_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001178_b, case_001178_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001178_firstLine_eq :
    case_001178_support.firstLine case_001178_seq case_001178_b = case_001178_firstLine := by
  norm_num [case_001178_firstLine, case_001178_support, case_001178_seq, case_001178_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001178_secondLine_eq :
    case_001178_support.secondLine case_001178_seq case_001178_b = case_001178_secondLine := by
  norm_num [case_001178_secondLine, case_001178_support, case_001178_seq, case_001178_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001178_sourceAgrees :
    SourceAgrees case_001178_support case_001178_rank.val case_001178_mask := by
  intro hlt
  have hrank : (⟨case_001178_rank.val, hlt⟩ : Fin numPairWords) = case_001178_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001178_rank.val, hlt⟩ case_001178_mask =
        case_001178_seq := by
    simpa [hrank] using case_001178_seqAtRank
  simp [SourceChecks, hseq, case_001178_support,
    checkTranslationConstraintSource, case_001178_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001178_rows :
    OppOneMinusVarFirstRows case_001178_support case_001178_rank.val case_001178_mask := by
  intro hlt
  have hrank : (⟨case_001178_rank.val, hlt⟩ : Fin numPairWords) = case_001178_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001178_rank.val, hlt⟩ case_001178_mask =
        case_001178_seq := by
    simpa [hrank] using case_001178_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001178_rank.val, hlt⟩ case_001178_mask =
        case_001178_b := by
    simpa [hrank] using case_001178_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001178_support case_001178_rank.val hlt
          case_001178_mask = case_001178_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001178_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001178_support case_001178_rank.val hlt
          case_001178_mask = case_001178_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001178_secondLine_eq]
  have case_001178_rowFirst :
      OppPosRow (FirstLineAt case_001178_support case_001178_rank.val hlt case_001178_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001178_firstLine, OppPosRow]
  have case_001178_fixedSecond :
      FixedRow (SecondLineAt case_001178_support case_001178_rank.val hlt case_001178_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001178_secondLine, FixedRow]
  exact ⟨case_001178_rowFirst, case_001178_fixedSecond⟩

private theorem case_001178_existsRows :
    ExistsOppOneMinusVarFirstRows case_001178_rank.val case_001178_mask :=
  ⟨case_001178_support, case_001178_sourceAgrees, case_001178_rows⟩

private theorem case_001178_covered :
    RowPropertyParametricCovered case_001178_rank.val case_001178_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001178_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001179_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001179_mask : SignMask := ⟨55, by decide⟩
private def case_001179_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001179_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001179_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001179_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (116/9) }
private def case_001179_firstLine : StrictLin2 := { a := -1, b := 1, c := (-27/5) }
private def case_001179_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001179_rankWord :
    rankPairWord? case_001179_word = some case_001179_rank := by
  decide

private theorem case_001179_unrank :
    unrankPairWord case_001179_rank = case_001179_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001179_word case_001179_rank).1
    case_001179_rankWord |>.symm

private theorem case_001179_seqChoice :
    translationChoiceSeq case_001179_word case_001179_mask = case_001179_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001179_seqAtRank :
    translationSeqAtRankMask case_001179_rank case_001179_mask = case_001179_seq := by
  rw [translationSeqAtRankMask, case_001179_unrank]
  exact case_001179_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001179_bAtRank :
    translationBAtRankMask case_001179_rank case_001179_mask = case_001179_b := by
  rw [translationBAtRankMask, case_001179_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001179_b, case_001179_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001179_firstLine_eq :
    case_001179_support.firstLine case_001179_seq case_001179_b = case_001179_firstLine := by
  norm_num [case_001179_firstLine, case_001179_support, case_001179_seq, case_001179_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001179_secondLine_eq :
    case_001179_support.secondLine case_001179_seq case_001179_b = case_001179_secondLine := by
  norm_num [case_001179_secondLine, case_001179_support, case_001179_seq, case_001179_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001179_sourceAgrees :
    SourceAgrees case_001179_support case_001179_rank.val case_001179_mask := by
  intro hlt
  have hrank : (⟨case_001179_rank.val, hlt⟩ : Fin numPairWords) = case_001179_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001179_rank.val, hlt⟩ case_001179_mask =
        case_001179_seq := by
    simpa [hrank] using case_001179_seqAtRank
  simp [SourceChecks, hseq, case_001179_support,
    checkTranslationConstraintSource, case_001179_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001179_rows :
    OppOneMinusVarFirstRows case_001179_support case_001179_rank.val case_001179_mask := by
  intro hlt
  have hrank : (⟨case_001179_rank.val, hlt⟩ : Fin numPairWords) = case_001179_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001179_rank.val, hlt⟩ case_001179_mask =
        case_001179_seq := by
    simpa [hrank] using case_001179_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001179_rank.val, hlt⟩ case_001179_mask =
        case_001179_b := by
    simpa [hrank] using case_001179_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001179_support case_001179_rank.val hlt
          case_001179_mask = case_001179_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001179_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001179_support case_001179_rank.val hlt
          case_001179_mask = case_001179_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001179_secondLine_eq]
  have case_001179_rowFirst :
      OppPosRow (FirstLineAt case_001179_support case_001179_rank.val hlt case_001179_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001179_firstLine, OppPosRow]
  have case_001179_fixedSecond :
      FixedRow (SecondLineAt case_001179_support case_001179_rank.val hlt case_001179_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001179_secondLine, FixedRow]
  exact ⟨case_001179_rowFirst, case_001179_fixedSecond⟩

private theorem case_001179_existsRows :
    ExistsOppOneMinusVarFirstRows case_001179_rank.val case_001179_mask :=
  ⟨case_001179_support, case_001179_sourceAgrees, case_001179_rows⟩

private theorem case_001179_covered :
    RowPropertyParametricCovered case_001179_rank.val case_001179_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001179_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_001180_rank : Fin numPairWords := ⟨840, by decide⟩
private def case_001180_mask : SignMask := ⟨63, by decide⟩
private def case_001180_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_001180_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_001180_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001180_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (68/9) }
private def case_001180_firstLine : StrictLin2 := { a := 1, b := 1, c := (-67/17) }
private def case_001180_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_001180_rankWord :
    rankPairWord? case_001180_word = some case_001180_rank := by
  decide

private theorem case_001180_unrank :
    unrankPairWord case_001180_rank = case_001180_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001180_word case_001180_rank).1
    case_001180_rankWord |>.symm

private theorem case_001180_seqChoice :
    translationChoiceSeq case_001180_word case_001180_mask = case_001180_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001180_seqAtRank :
    translationSeqAtRankMask case_001180_rank case_001180_mask = case_001180_seq := by
  rw [translationSeqAtRankMask, case_001180_unrank]
  exact case_001180_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001180_bAtRank :
    translationBAtRankMask case_001180_rank case_001180_mask = case_001180_b := by
  rw [translationBAtRankMask, case_001180_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001180_b, case_001180_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001180_firstLine_eq :
    case_001180_support.firstLine case_001180_seq case_001180_b = case_001180_firstLine := by
  norm_num [case_001180_firstLine, case_001180_support, case_001180_seq, case_001180_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001180_secondLine_eq :
    case_001180_support.secondLine case_001180_seq case_001180_b = case_001180_secondLine := by
  norm_num [case_001180_secondLine, case_001180_support, case_001180_seq, case_001180_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001180_sourceAgrees :
    SourceAgrees case_001180_support case_001180_rank.val case_001180_mask := by
  intro hlt
  have hrank : (⟨case_001180_rank.val, hlt⟩ : Fin numPairWords) = case_001180_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001180_rank.val, hlt⟩ case_001180_mask =
        case_001180_seq := by
    simpa [hrank] using case_001180_seqAtRank
  simp [SourceChecks, hseq, case_001180_support,
    checkTranslationConstraintSource, case_001180_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001180_rows :
    EqEqNegVarFirstRows case_001180_support case_001180_rank.val case_001180_mask := by
  intro hlt
  have hrank : (⟨case_001180_rank.val, hlt⟩ : Fin numPairWords) = case_001180_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001180_rank.val, hlt⟩ case_001180_mask =
        case_001180_seq := by
    simpa [hrank] using case_001180_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001180_rank.val, hlt⟩ case_001180_mask =
        case_001180_b := by
    simpa [hrank] using case_001180_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001180_support case_001180_rank.val hlt
          case_001180_mask = case_001180_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001180_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001180_support case_001180_rank.val hlt
          case_001180_mask = case_001180_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001180_secondLine_eq]
  have case_001180_rowFirst :
      EqEqNegRow (FirstLineAt case_001180_support case_001180_rank.val hlt case_001180_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001180_firstLine, EqEqNegRow]
  have case_001180_fixedSecond :
      FixedRow (SecondLineAt case_001180_support case_001180_rank.val hlt case_001180_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001180_secondLine, FixedRow]
  exact ⟨case_001180_rowFirst, case_001180_fixedSecond⟩

private theorem case_001180_existsRows :
    ExistsEqEqNegVarFirstRows case_001180_rank.val case_001180_mask :=
  ⟨case_001180_support, case_001180_sourceAgrees, case_001180_rows⟩

private theorem case_001180_covered :
    RowPropertyParametricCovered case_001180_rank.val case_001180_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_001180_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001181_rank : Fin numPairWords := ⟨842, by decide⟩
private def case_001181_mask : SignMask := ⟨8, by decide⟩
private def case_001181_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001181_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001181_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_001181_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_001181_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001181_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001181_rankWord :
    rankPairWord? case_001181_word = some case_001181_rank := by
  decide

private theorem case_001181_unrank :
    unrankPairWord case_001181_rank = case_001181_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001181_word case_001181_rank).1
    case_001181_rankWord |>.symm

private theorem case_001181_seqChoice :
    translationChoiceSeq case_001181_word case_001181_mask = case_001181_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001181_seqAtRank :
    translationSeqAtRankMask case_001181_rank case_001181_mask = case_001181_seq := by
  rw [translationSeqAtRankMask, case_001181_unrank]
  exact case_001181_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001181_bAtRank :
    translationBAtRankMask case_001181_rank case_001181_mask = case_001181_b := by
  rw [translationBAtRankMask, case_001181_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001181_b, case_001181_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001181_firstLine_eq :
    case_001181_support.firstLine case_001181_seq case_001181_b = case_001181_firstLine := by
  norm_num [case_001181_firstLine, case_001181_support, case_001181_seq, case_001181_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001181_secondLine_eq :
    case_001181_support.secondLine case_001181_seq case_001181_b = case_001181_secondLine := by
  norm_num [case_001181_secondLine, case_001181_support, case_001181_seq, case_001181_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001181_sourceAgrees :
    SourceAgrees case_001181_support case_001181_rank.val case_001181_mask := by
  intro hlt
  have hrank : (⟨case_001181_rank.val, hlt⟩ : Fin numPairWords) = case_001181_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001181_rank.val, hlt⟩ case_001181_mask =
        case_001181_seq := by
    simpa [hrank] using case_001181_seqAtRank
  simp [SourceChecks, hseq, case_001181_support,
    checkTranslationConstraintSource, case_001181_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001181_rows :
    EqEqPosVarFirstRows case_001181_support case_001181_rank.val case_001181_mask := by
  intro hlt
  have hrank : (⟨case_001181_rank.val, hlt⟩ : Fin numPairWords) = case_001181_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001181_rank.val, hlt⟩ case_001181_mask =
        case_001181_seq := by
    simpa [hrank] using case_001181_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001181_rank.val, hlt⟩ case_001181_mask =
        case_001181_b := by
    simpa [hrank] using case_001181_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001181_support case_001181_rank.val hlt
          case_001181_mask = case_001181_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001181_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001181_support case_001181_rank.val hlt
          case_001181_mask = case_001181_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001181_secondLine_eq]
  have case_001181_rowFirst :
      EqEqPosRow (FirstLineAt case_001181_support case_001181_rank.val hlt case_001181_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001181_firstLine, EqEqPosRow]
  have case_001181_fixedSecond :
      FixedRow (SecondLineAt case_001181_support case_001181_rank.val hlt case_001181_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001181_secondLine, FixedRow]
  exact ⟨case_001181_rowFirst, case_001181_fixedSecond⟩

private theorem case_001181_existsRows :
    ExistsEqEqPosVarFirstRows case_001181_rank.val case_001181_mask :=
  ⟨case_001181_support, case_001181_sourceAgrees, case_001181_rows⟩

private theorem case_001181_covered :
    RowPropertyParametricCovered case_001181_rank.val case_001181_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001181_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001182_rank : Fin numPairWords := ⟨842, by decide⟩
private def case_001182_mask : SignMask := ⟨13, by decide⟩
private def case_001182_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001182_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001182_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_001182_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-116/9) }
private def case_001182_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001182_secondLine : StrictLin2 := { a := (-9/116), b := (-9/116), c := (-9/58) }

private theorem case_001182_rankWord :
    rankPairWord? case_001182_word = some case_001182_rank := by
  decide

private theorem case_001182_unrank :
    unrankPairWord case_001182_rank = case_001182_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001182_word case_001182_rank).1
    case_001182_rankWord |>.symm

private theorem case_001182_seqChoice :
    translationChoiceSeq case_001182_word case_001182_mask = case_001182_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001182_seqAtRank :
    translationSeqAtRankMask case_001182_rank case_001182_mask = case_001182_seq := by
  rw [translationSeqAtRankMask, case_001182_unrank]
  exact case_001182_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001182_bAtRank :
    translationBAtRankMask case_001182_rank case_001182_mask = case_001182_b := by
  rw [translationBAtRankMask, case_001182_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001182_b, case_001182_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001182_firstLine_eq :
    case_001182_support.firstLine case_001182_seq case_001182_b = case_001182_firstLine := by
  norm_num [case_001182_firstLine, case_001182_support, case_001182_seq, case_001182_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001182_secondLine_eq :
    case_001182_support.secondLine case_001182_seq case_001182_b = case_001182_secondLine := by
  norm_num [case_001182_secondLine, case_001182_support, case_001182_seq, case_001182_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001182_sourceAgrees :
    SourceAgrees case_001182_support case_001182_rank.val case_001182_mask := by
  intro hlt
  have hrank : (⟨case_001182_rank.val, hlt⟩ : Fin numPairWords) = case_001182_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001182_rank.val, hlt⟩ case_001182_mask =
        case_001182_seq := by
    simpa [hrank] using case_001182_seqAtRank
  simp [SourceChecks, hseq, case_001182_support,
    checkTranslationConstraintSource, case_001182_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001182_rows :
    EqEqPosVarSecondRows case_001182_support case_001182_rank.val case_001182_mask := by
  intro hlt
  have hrank : (⟨case_001182_rank.val, hlt⟩ : Fin numPairWords) = case_001182_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001182_rank.val, hlt⟩ case_001182_mask =
        case_001182_seq := by
    simpa [hrank] using case_001182_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001182_rank.val, hlt⟩ case_001182_mask =
        case_001182_b := by
    simpa [hrank] using case_001182_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001182_support case_001182_rank.val hlt
          case_001182_mask = case_001182_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001182_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001182_support case_001182_rank.val hlt
          case_001182_mask = case_001182_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001182_secondLine_eq]
  have case_001182_fixedFirst :
      FixedRow (FirstLineAt case_001182_support case_001182_rank.val hlt case_001182_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001182_firstLine, FixedRow]
  have case_001182_rowSecond :
      EqEqPosRow (SecondLineAt case_001182_support case_001182_rank.val hlt case_001182_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001182_secondLine, EqEqPosRow]
  exact ⟨case_001182_fixedFirst, case_001182_rowSecond⟩

private theorem case_001182_existsRows :
    ExistsEqEqPosVarSecondRows case_001182_rank.val case_001182_mask :=
  ⟨case_001182_support, case_001182_sourceAgrees, case_001182_rows⟩

private theorem case_001182_covered :
    RowPropertyParametricCovered case_001182_rank.val case_001182_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001182_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001183_rank : Fin numPairWords := ⟨842, by decide⟩
private def case_001183_mask : SignMask := ⟨16, by decide⟩
private def case_001183_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001183_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001183_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001183_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_001183_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001183_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001183_rankWord :
    rankPairWord? case_001183_word = some case_001183_rank := by
  decide

private theorem case_001183_unrank :
    unrankPairWord case_001183_rank = case_001183_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001183_word case_001183_rank).1
    case_001183_rankWord |>.symm

private theorem case_001183_seqChoice :
    translationChoiceSeq case_001183_word case_001183_mask = case_001183_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001183_seqAtRank :
    translationSeqAtRankMask case_001183_rank case_001183_mask = case_001183_seq := by
  rw [translationSeqAtRankMask, case_001183_unrank]
  exact case_001183_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001183_bAtRank :
    translationBAtRankMask case_001183_rank case_001183_mask = case_001183_b := by
  rw [translationBAtRankMask, case_001183_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001183_b, case_001183_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001183_firstLine_eq :
    case_001183_support.firstLine case_001183_seq case_001183_b = case_001183_firstLine := by
  norm_num [case_001183_firstLine, case_001183_support, case_001183_seq, case_001183_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001183_secondLine_eq :
    case_001183_support.secondLine case_001183_seq case_001183_b = case_001183_secondLine := by
  norm_num [case_001183_secondLine, case_001183_support, case_001183_seq, case_001183_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001183_sourceAgrees :
    SourceAgrees case_001183_support case_001183_rank.val case_001183_mask := by
  intro hlt
  have hrank : (⟨case_001183_rank.val, hlt⟩ : Fin numPairWords) = case_001183_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001183_rank.val, hlt⟩ case_001183_mask =
        case_001183_seq := by
    simpa [hrank] using case_001183_seqAtRank
  simp [SourceChecks, hseq, case_001183_support,
    checkTranslationConstraintSource, case_001183_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001183_rows :
    EqEqPosVarFirstRows case_001183_support case_001183_rank.val case_001183_mask := by
  intro hlt
  have hrank : (⟨case_001183_rank.val, hlt⟩ : Fin numPairWords) = case_001183_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001183_rank.val, hlt⟩ case_001183_mask =
        case_001183_seq := by
    simpa [hrank] using case_001183_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001183_rank.val, hlt⟩ case_001183_mask =
        case_001183_b := by
    simpa [hrank] using case_001183_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001183_support case_001183_rank.val hlt
          case_001183_mask = case_001183_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001183_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001183_support case_001183_rank.val hlt
          case_001183_mask = case_001183_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001183_secondLine_eq]
  have case_001183_rowFirst :
      EqEqPosRow (FirstLineAt case_001183_support case_001183_rank.val hlt case_001183_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001183_firstLine, EqEqPosRow]
  have case_001183_fixedSecond :
      FixedRow (SecondLineAt case_001183_support case_001183_rank.val hlt case_001183_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001183_secondLine, FixedRow]
  exact ⟨case_001183_rowFirst, case_001183_fixedSecond⟩

private theorem case_001183_existsRows :
    ExistsEqEqPosVarFirstRows case_001183_rank.val case_001183_mask :=
  ⟨case_001183_support, case_001183_sourceAgrees, case_001183_rows⟩

private theorem case_001183_covered :
    RowPropertyParametricCovered case_001183_rank.val case_001183_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001183_existsRows

inductive Group036Covered : Nat -> SignMask -> Prop
  | case_001152 : Group036Covered case_001152_rank.val case_001152_mask
  | case_001153 : Group036Covered case_001153_rank.val case_001153_mask
  | case_001154 : Group036Covered case_001154_rank.val case_001154_mask
  | case_001155 : Group036Covered case_001155_rank.val case_001155_mask
  | case_001156 : Group036Covered case_001156_rank.val case_001156_mask
  | case_001157 : Group036Covered case_001157_rank.val case_001157_mask
  | case_001158 : Group036Covered case_001158_rank.val case_001158_mask
  | case_001159 : Group036Covered case_001159_rank.val case_001159_mask
  | case_001160 : Group036Covered case_001160_rank.val case_001160_mask
  | case_001161 : Group036Covered case_001161_rank.val case_001161_mask
  | case_001162 : Group036Covered case_001162_rank.val case_001162_mask
  | case_001163 : Group036Covered case_001163_rank.val case_001163_mask
  | case_001164 : Group036Covered case_001164_rank.val case_001164_mask
  | case_001165 : Group036Covered case_001165_rank.val case_001165_mask
  | case_001166 : Group036Covered case_001166_rank.val case_001166_mask
  | case_001167 : Group036Covered case_001167_rank.val case_001167_mask
  | case_001168 : Group036Covered case_001168_rank.val case_001168_mask
  | case_001169 : Group036Covered case_001169_rank.val case_001169_mask
  | case_001170 : Group036Covered case_001170_rank.val case_001170_mask
  | case_001171 : Group036Covered case_001171_rank.val case_001171_mask
  | case_001172 : Group036Covered case_001172_rank.val case_001172_mask
  | case_001173 : Group036Covered case_001173_rank.val case_001173_mask
  | case_001174 : Group036Covered case_001174_rank.val case_001174_mask
  | case_001175 : Group036Covered case_001175_rank.val case_001175_mask
  | case_001176 : Group036Covered case_001176_rank.val case_001176_mask
  | case_001177 : Group036Covered case_001177_rank.val case_001177_mask
  | case_001178 : Group036Covered case_001178_rank.val case_001178_mask
  | case_001179 : Group036Covered case_001179_rank.val case_001179_mask
  | case_001180 : Group036Covered case_001180_rank.val case_001180_mask
  | case_001181 : Group036Covered case_001181_rank.val case_001181_mask
  | case_001182 : Group036Covered case_001182_rank.val case_001182_mask
  | case_001183 : Group036Covered case_001183_rank.val case_001183_mask

theorem Group036GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group036Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001152 =>
      exact RowPropertyParametricCovered.kills case_001152_covered
  | case_001153 =>
      exact RowPropertyParametricCovered.kills case_001153_covered
  | case_001154 =>
      exact RowPropertyParametricCovered.kills case_001154_covered
  | case_001155 =>
      exact RowPropertyParametricCovered.kills case_001155_covered
  | case_001156 =>
      exact RowPropertyParametricCovered.kills case_001156_covered
  | case_001157 =>
      exact RowPropertyParametricCovered.kills case_001157_covered
  | case_001158 =>
      exact RowPropertyParametricCovered.kills case_001158_covered
  | case_001159 =>
      exact RowPropertyParametricCovered.kills case_001159_covered
  | case_001160 =>
      exact RowPropertyParametricCovered.kills case_001160_covered
  | case_001161 =>
      exact RowPropertyParametricCovered.kills case_001161_covered
  | case_001162 =>
      exact RowPropertyParametricCovered.kills case_001162_covered
  | case_001163 =>
      exact RowPropertyParametricCovered.kills case_001163_covered
  | case_001164 =>
      exact RowPropertyParametricCovered.kills case_001164_covered
  | case_001165 =>
      exact RowPropertyParametricCovered.kills case_001165_covered
  | case_001166 =>
      exact RowPropertyParametricCovered.kills case_001166_covered
  | case_001167 =>
      exact RowPropertyParametricCovered.kills case_001167_covered
  | case_001168 =>
      exact RowPropertyParametricCovered.kills case_001168_covered
  | case_001169 =>
      exact RowPropertyParametricCovered.kills case_001169_covered
  | case_001170 =>
      exact RowPropertyParametricCovered.kills case_001170_covered
  | case_001171 =>
      exact RowPropertyParametricCovered.kills case_001171_covered
  | case_001172 =>
      exact RowPropertyParametricCovered.kills case_001172_covered
  | case_001173 =>
      exact RowPropertyParametricCovered.kills case_001173_covered
  | case_001174 =>
      exact RowPropertyParametricCovered.kills case_001174_covered
  | case_001175 =>
      exact RowPropertyParametricCovered.kills case_001175_covered
  | case_001176 =>
      exact RowPropertyParametricCovered.kills case_001176_covered
  | case_001177 =>
      exact RowPropertyParametricCovered.kills case_001177_covered
  | case_001178 =>
      exact RowPropertyParametricCovered.kills case_001178_covered
  | case_001179 =>
      exact RowPropertyParametricCovered.kills case_001179_covered
  | case_001180 =>
      exact RowPropertyParametricCovered.kills case_001180_covered
  | case_001181 =>
      exact RowPropertyParametricCovered.kills case_001181_covered
  | case_001182 =>
      exact RowPropertyParametricCovered.kills case_001182_covered
  | case_001183 =>
      exact RowPropertyParametricCovered.kills case_001183_covered

theorem Group036_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group036
