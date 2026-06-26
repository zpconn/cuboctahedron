import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group014

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
private def case_000448_rank : Fin numPairWords := ⟨147, by decide⟩
private def case_000448_mask : SignMask := ⟨24, by decide⟩
private def case_000448_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000448_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000448_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000448_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000448_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000448_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000448_rankWord :
    rankPairWord? case_000448_word = some case_000448_rank := by
  decide

private theorem case_000448_unrank :
    unrankPairWord case_000448_rank = case_000448_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000448_word case_000448_rank).1
    case_000448_rankWord |>.symm

private theorem case_000448_seqChoice :
    translationChoiceSeq case_000448_word case_000448_mask = case_000448_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000448_seqAtRank :
    translationSeqAtRankMask case_000448_rank case_000448_mask = case_000448_seq := by
  rw [translationSeqAtRankMask, case_000448_unrank]
  exact case_000448_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000448_bAtRank :
    translationBAtRankMask case_000448_rank case_000448_mask = case_000448_b := by
  rw [translationBAtRankMask, case_000448_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000448_b, case_000448_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000448_firstLine_eq :
    case_000448_support.firstLine case_000448_seq case_000448_b = case_000448_firstLine := by
  norm_num [case_000448_firstLine, case_000448_support, case_000448_seq, case_000448_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000448_secondLine_eq :
    case_000448_support.secondLine case_000448_seq case_000448_b = case_000448_secondLine := by
  norm_num [case_000448_secondLine, case_000448_support, case_000448_seq, case_000448_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000448_sourceAgrees :
    SourceAgrees case_000448_support case_000448_rank.val case_000448_mask := by
  intro hlt
  have hrank : (⟨case_000448_rank.val, hlt⟩ : Fin numPairWords) = case_000448_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000448_rank.val, hlt⟩ case_000448_mask =
        case_000448_seq := by
    simpa [hrank] using case_000448_seqAtRank
  simp [SourceChecks, hseq, case_000448_support,
    checkTranslationConstraintSource, case_000448_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000448_rows :
    EqEqPosVarFirstRows case_000448_support case_000448_rank.val case_000448_mask := by
  intro hlt
  have hrank : (⟨case_000448_rank.val, hlt⟩ : Fin numPairWords) = case_000448_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000448_rank.val, hlt⟩ case_000448_mask =
        case_000448_seq := by
    simpa [hrank] using case_000448_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000448_rank.val, hlt⟩ case_000448_mask =
        case_000448_b := by
    simpa [hrank] using case_000448_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000448_support case_000448_rank.val hlt
          case_000448_mask = case_000448_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000448_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000448_support case_000448_rank.val hlt
          case_000448_mask = case_000448_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000448_secondLine_eq]
  have case_000448_rowFirst :
      EqEqPosRow (FirstLineAt case_000448_support case_000448_rank.val hlt case_000448_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000448_firstLine, EqEqPosRow]
  have case_000448_fixedSecond :
      FixedRow (SecondLineAt case_000448_support case_000448_rank.val hlt case_000448_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000448_secondLine, FixedRow]
  exact ⟨case_000448_rowFirst, case_000448_fixedSecond⟩

private theorem case_000448_existsRows :
    ExistsEqEqPosVarFirstRows case_000448_rank.val case_000448_mask :=
  ⟨case_000448_support, case_000448_sourceAgrees, case_000448_rows⟩

private theorem case_000448_covered :
    RowPropertyParametricCovered case_000448_rank.val case_000448_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000448_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000449_rank : Fin numPairWords := ⟨147, by decide⟩
private def case_000449_mask : SignMask := ⟨28, by decide⟩
private def case_000449_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000449_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000449_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000449_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000449_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000449_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000449_rankWord :
    rankPairWord? case_000449_word = some case_000449_rank := by
  decide

private theorem case_000449_unrank :
    unrankPairWord case_000449_rank = case_000449_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000449_word case_000449_rank).1
    case_000449_rankWord |>.symm

private theorem case_000449_seqChoice :
    translationChoiceSeq case_000449_word case_000449_mask = case_000449_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000449_seqAtRank :
    translationSeqAtRankMask case_000449_rank case_000449_mask = case_000449_seq := by
  rw [translationSeqAtRankMask, case_000449_unrank]
  exact case_000449_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000449_bAtRank :
    translationBAtRankMask case_000449_rank case_000449_mask = case_000449_b := by
  rw [translationBAtRankMask, case_000449_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000449_b, case_000449_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000449_firstLine_eq :
    case_000449_support.firstLine case_000449_seq case_000449_b = case_000449_firstLine := by
  norm_num [case_000449_firstLine, case_000449_support, case_000449_seq, case_000449_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000449_secondLine_eq :
    case_000449_support.secondLine case_000449_seq case_000449_b = case_000449_secondLine := by
  norm_num [case_000449_secondLine, case_000449_support, case_000449_seq, case_000449_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000449_sourceAgrees :
    SourceAgrees case_000449_support case_000449_rank.val case_000449_mask := by
  intro hlt
  have hrank : (⟨case_000449_rank.val, hlt⟩ : Fin numPairWords) = case_000449_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000449_rank.val, hlt⟩ case_000449_mask =
        case_000449_seq := by
    simpa [hrank] using case_000449_seqAtRank
  simp [SourceChecks, hseq, case_000449_support,
    checkTranslationConstraintSource, case_000449_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000449_rows :
    OppOneMinusVarFirstRows case_000449_support case_000449_rank.val case_000449_mask := by
  intro hlt
  have hrank : (⟨case_000449_rank.val, hlt⟩ : Fin numPairWords) = case_000449_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000449_rank.val, hlt⟩ case_000449_mask =
        case_000449_seq := by
    simpa [hrank] using case_000449_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000449_rank.val, hlt⟩ case_000449_mask =
        case_000449_b := by
    simpa [hrank] using case_000449_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000449_support case_000449_rank.val hlt
          case_000449_mask = case_000449_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000449_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000449_support case_000449_rank.val hlt
          case_000449_mask = case_000449_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000449_secondLine_eq]
  have case_000449_rowFirst :
      OppPosRow (FirstLineAt case_000449_support case_000449_rank.val hlt case_000449_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000449_firstLine, OppPosRow]
  have case_000449_fixedSecond :
      FixedRow (SecondLineAt case_000449_support case_000449_rank.val hlt case_000449_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000449_secondLine, FixedRow]
  exact ⟨case_000449_rowFirst, case_000449_fixedSecond⟩

private theorem case_000449_existsRows :
    ExistsOppOneMinusVarFirstRows case_000449_rank.val case_000449_mask :=
  ⟨case_000449_support, case_000449_sourceAgrees, case_000449_rows⟩

private theorem case_000449_covered :
    RowPropertyParametricCovered case_000449_rank.val case_000449_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000449_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000450_rank : Fin numPairWords := ⟨147, by decide⟩
private def case_000450_mask : SignMask := ⟨29, by decide⟩
private def case_000450_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000450_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000450_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000450_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000450_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000450_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000450_rankWord :
    rankPairWord? case_000450_word = some case_000450_rank := by
  decide

private theorem case_000450_unrank :
    unrankPairWord case_000450_rank = case_000450_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000450_word case_000450_rank).1
    case_000450_rankWord |>.symm

private theorem case_000450_seqChoice :
    translationChoiceSeq case_000450_word case_000450_mask = case_000450_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000450_seqAtRank :
    translationSeqAtRankMask case_000450_rank case_000450_mask = case_000450_seq := by
  rw [translationSeqAtRankMask, case_000450_unrank]
  exact case_000450_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000450_bAtRank :
    translationBAtRankMask case_000450_rank case_000450_mask = case_000450_b := by
  rw [translationBAtRankMask, case_000450_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000450_b, case_000450_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000450_firstLine_eq :
    case_000450_support.firstLine case_000450_seq case_000450_b = case_000450_firstLine := by
  norm_num [case_000450_firstLine, case_000450_support, case_000450_seq, case_000450_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000450_secondLine_eq :
    case_000450_support.secondLine case_000450_seq case_000450_b = case_000450_secondLine := by
  norm_num [case_000450_secondLine, case_000450_support, case_000450_seq, case_000450_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000450_sourceAgrees :
    SourceAgrees case_000450_support case_000450_rank.val case_000450_mask := by
  intro hlt
  have hrank : (⟨case_000450_rank.val, hlt⟩ : Fin numPairWords) = case_000450_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000450_rank.val, hlt⟩ case_000450_mask =
        case_000450_seq := by
    simpa [hrank] using case_000450_seqAtRank
  simp [SourceChecks, hseq, case_000450_support,
    checkTranslationConstraintSource, case_000450_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000450_rows :
    EqEqPosVarSecondRows case_000450_support case_000450_rank.val case_000450_mask := by
  intro hlt
  have hrank : (⟨case_000450_rank.val, hlt⟩ : Fin numPairWords) = case_000450_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000450_rank.val, hlt⟩ case_000450_mask =
        case_000450_seq := by
    simpa [hrank] using case_000450_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000450_rank.val, hlt⟩ case_000450_mask =
        case_000450_b := by
    simpa [hrank] using case_000450_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000450_support case_000450_rank.val hlt
          case_000450_mask = case_000450_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000450_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000450_support case_000450_rank.val hlt
          case_000450_mask = case_000450_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000450_secondLine_eq]
  have case_000450_fixedFirst :
      FixedRow (FirstLineAt case_000450_support case_000450_rank.val hlt case_000450_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000450_firstLine, FixedRow]
  have case_000450_rowSecond :
      EqEqPosRow (SecondLineAt case_000450_support case_000450_rank.val hlt case_000450_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000450_secondLine, EqEqPosRow]
  exact ⟨case_000450_fixedFirst, case_000450_rowSecond⟩

private theorem case_000450_existsRows :
    ExistsEqEqPosVarSecondRows case_000450_rank.val case_000450_mask :=
  ⟨case_000450_support, case_000450_sourceAgrees, case_000450_rows⟩

private theorem case_000450_covered :
    RowPropertyParametricCovered case_000450_rank.val case_000450_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000450_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000451_rank : Fin numPairWords := ⟨147, by decide⟩
private def case_000451_mask : SignMask := ⟨45, by decide⟩
private def case_000451_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000451_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000451_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000451_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (-68/9) }
private def case_000451_firstLine : StrictLin2 := { a := 1, b := -1, c := -83 }
private def case_000451_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000451_rankWord :
    rankPairWord? case_000451_word = some case_000451_rank := by
  decide

private theorem case_000451_unrank :
    unrankPairWord case_000451_rank = case_000451_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000451_word case_000451_rank).1
    case_000451_rankWord |>.symm

private theorem case_000451_seqChoice :
    translationChoiceSeq case_000451_word case_000451_mask = case_000451_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000451_seqAtRank :
    translationSeqAtRankMask case_000451_rank case_000451_mask = case_000451_seq := by
  rw [translationSeqAtRankMask, case_000451_unrank]
  exact case_000451_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000451_bAtRank :
    translationBAtRankMask case_000451_rank case_000451_mask = case_000451_b := by
  rw [translationBAtRankMask, case_000451_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000451_b, case_000451_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000451_firstLine_eq :
    case_000451_support.firstLine case_000451_seq case_000451_b = case_000451_firstLine := by
  norm_num [case_000451_firstLine, case_000451_support, case_000451_seq, case_000451_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000451_secondLine_eq :
    case_000451_support.secondLine case_000451_seq case_000451_b = case_000451_secondLine := by
  norm_num [case_000451_secondLine, case_000451_support, case_000451_seq, case_000451_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000451_sourceAgrees :
    SourceAgrees case_000451_support case_000451_rank.val case_000451_mask := by
  intro hlt
  have hrank : (⟨case_000451_rank.val, hlt⟩ : Fin numPairWords) = case_000451_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000451_rank.val, hlt⟩ case_000451_mask =
        case_000451_seq := by
    simpa [hrank] using case_000451_seqAtRank
  simp [SourceChecks, hseq, case_000451_support,
    checkTranslationConstraintSource, case_000451_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000451_rows :
    OppMinusOneVarFirstRows case_000451_support case_000451_rank.val case_000451_mask := by
  intro hlt
  have hrank : (⟨case_000451_rank.val, hlt⟩ : Fin numPairWords) = case_000451_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000451_rank.val, hlt⟩ case_000451_mask =
        case_000451_seq := by
    simpa [hrank] using case_000451_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000451_rank.val, hlt⟩ case_000451_mask =
        case_000451_b := by
    simpa [hrank] using case_000451_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000451_support case_000451_rank.val hlt
          case_000451_mask = case_000451_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000451_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000451_support case_000451_rank.val hlt
          case_000451_mask = case_000451_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000451_secondLine_eq]
  have case_000451_rowFirst :
      OppNegRow (FirstLineAt case_000451_support case_000451_rank.val hlt case_000451_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000451_firstLine, OppNegRow]
  have case_000451_fixedSecond :
      FixedRow (SecondLineAt case_000451_support case_000451_rank.val hlt case_000451_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000451_secondLine, FixedRow]
  exact ⟨case_000451_rowFirst, case_000451_fixedSecond⟩

private theorem case_000451_existsRows :
    ExistsOppMinusOneVarFirstRows case_000451_rank.val case_000451_mask :=
  ⟨case_000451_support, case_000451_sourceAgrees, case_000451_rows⟩

private theorem case_000451_covered :
    RowPropertyParametricCovered case_000451_rank.val case_000451_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000451_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000452_rank : Fin numPairWords := ⟨147, by decide⟩
private def case_000452_mask : SignMask := ⟨47, by decide⟩
private def case_000452_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000452_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000452_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000452_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (4/9) }
private def case_000452_firstLine : StrictLin2 := { a := 1, b := -1, c := -47 }
private def case_000452_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000452_rankWord :
    rankPairWord? case_000452_word = some case_000452_rank := by
  decide

private theorem case_000452_unrank :
    unrankPairWord case_000452_rank = case_000452_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000452_word case_000452_rank).1
    case_000452_rankWord |>.symm

private theorem case_000452_seqChoice :
    translationChoiceSeq case_000452_word case_000452_mask = case_000452_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000452_seqAtRank :
    translationSeqAtRankMask case_000452_rank case_000452_mask = case_000452_seq := by
  rw [translationSeqAtRankMask, case_000452_unrank]
  exact case_000452_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000452_bAtRank :
    translationBAtRankMask case_000452_rank case_000452_mask = case_000452_b := by
  rw [translationBAtRankMask, case_000452_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000452_b, case_000452_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000452_firstLine_eq :
    case_000452_support.firstLine case_000452_seq case_000452_b = case_000452_firstLine := by
  norm_num [case_000452_firstLine, case_000452_support, case_000452_seq, case_000452_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000452_secondLine_eq :
    case_000452_support.secondLine case_000452_seq case_000452_b = case_000452_secondLine := by
  norm_num [case_000452_secondLine, case_000452_support, case_000452_seq, case_000452_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000452_sourceAgrees :
    SourceAgrees case_000452_support case_000452_rank.val case_000452_mask := by
  intro hlt
  have hrank : (⟨case_000452_rank.val, hlt⟩ : Fin numPairWords) = case_000452_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000452_rank.val, hlt⟩ case_000452_mask =
        case_000452_seq := by
    simpa [hrank] using case_000452_seqAtRank
  simp [SourceChecks, hseq, case_000452_support,
    checkTranslationConstraintSource, case_000452_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000452_rows :
    OppMinusOneVarFirstRows case_000452_support case_000452_rank.val case_000452_mask := by
  intro hlt
  have hrank : (⟨case_000452_rank.val, hlt⟩ : Fin numPairWords) = case_000452_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000452_rank.val, hlt⟩ case_000452_mask =
        case_000452_seq := by
    simpa [hrank] using case_000452_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000452_rank.val, hlt⟩ case_000452_mask =
        case_000452_b := by
    simpa [hrank] using case_000452_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000452_support case_000452_rank.val hlt
          case_000452_mask = case_000452_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000452_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000452_support case_000452_rank.val hlt
          case_000452_mask = case_000452_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000452_secondLine_eq]
  have case_000452_rowFirst :
      OppNegRow (FirstLineAt case_000452_support case_000452_rank.val hlt case_000452_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000452_firstLine, OppNegRow]
  have case_000452_fixedSecond :
      FixedRow (SecondLineAt case_000452_support case_000452_rank.val hlt case_000452_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000452_secondLine, FixedRow]
  exact ⟨case_000452_rowFirst, case_000452_fixedSecond⟩

private theorem case_000452_existsRows :
    ExistsOppMinusOneVarFirstRows case_000452_rank.val case_000452_mask :=
  ⟨case_000452_support, case_000452_sourceAgrees, case_000452_rows⟩

private theorem case_000452_covered :
    RowPropertyParametricCovered case_000452_rank.val case_000452_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000452_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000453_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000453_mask : SignMask := ⟨7, by decide⟩
private def case_000453_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000453_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000453_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000453_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000453_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000453_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000453_rankWord :
    rankPairWord? case_000453_word = some case_000453_rank := by
  decide

private theorem case_000453_unrank :
    unrankPairWord case_000453_rank = case_000453_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000453_word case_000453_rank).1
    case_000453_rankWord |>.symm

private theorem case_000453_seqChoice :
    translationChoiceSeq case_000453_word case_000453_mask = case_000453_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000453_seqAtRank :
    translationSeqAtRankMask case_000453_rank case_000453_mask = case_000453_seq := by
  rw [translationSeqAtRankMask, case_000453_unrank]
  exact case_000453_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000453_bAtRank :
    translationBAtRankMask case_000453_rank case_000453_mask = case_000453_b := by
  rw [translationBAtRankMask, case_000453_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000453_b, case_000453_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000453_firstLine_eq :
    case_000453_support.firstLine case_000453_seq case_000453_b = case_000453_firstLine := by
  norm_num [case_000453_firstLine, case_000453_support, case_000453_seq, case_000453_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000453_secondLine_eq :
    case_000453_support.secondLine case_000453_seq case_000453_b = case_000453_secondLine := by
  norm_num [case_000453_secondLine, case_000453_support, case_000453_seq, case_000453_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000453_sourceAgrees :
    SourceAgrees case_000453_support case_000453_rank.val case_000453_mask := by
  intro hlt
  have hrank : (⟨case_000453_rank.val, hlt⟩ : Fin numPairWords) = case_000453_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000453_rank.val, hlt⟩ case_000453_mask =
        case_000453_seq := by
    simpa [hrank] using case_000453_seqAtRank
  simp [SourceChecks, hseq, case_000453_support,
    checkTranslationConstraintSource, case_000453_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000453_rows :
    EqEqPosVarFirstRows case_000453_support case_000453_rank.val case_000453_mask := by
  intro hlt
  have hrank : (⟨case_000453_rank.val, hlt⟩ : Fin numPairWords) = case_000453_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000453_rank.val, hlt⟩ case_000453_mask =
        case_000453_seq := by
    simpa [hrank] using case_000453_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000453_rank.val, hlt⟩ case_000453_mask =
        case_000453_b := by
    simpa [hrank] using case_000453_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000453_support case_000453_rank.val hlt
          case_000453_mask = case_000453_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000453_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000453_support case_000453_rank.val hlt
          case_000453_mask = case_000453_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000453_secondLine_eq]
  have case_000453_rowFirst :
      EqEqPosRow (FirstLineAt case_000453_support case_000453_rank.val hlt case_000453_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000453_firstLine, EqEqPosRow]
  have case_000453_fixedSecond :
      FixedRow (SecondLineAt case_000453_support case_000453_rank.val hlt case_000453_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000453_secondLine, FixedRow]
  exact ⟨case_000453_rowFirst, case_000453_fixedSecond⟩

private theorem case_000453_existsRows :
    ExistsEqEqPosVarFirstRows case_000453_rank.val case_000453_mask :=
  ⟨case_000453_support, case_000453_sourceAgrees, case_000453_rows⟩

private theorem case_000453_covered :
    RowPropertyParametricCovered case_000453_rank.val case_000453_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000453_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000454_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000454_mask : SignMask := ⟨9, by decide⟩
private def case_000454_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000454_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000454_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def case_000454_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000454_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000454_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000454_rankWord :
    rankPairWord? case_000454_word = some case_000454_rank := by
  decide

private theorem case_000454_unrank :
    unrankPairWord case_000454_rank = case_000454_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000454_word case_000454_rank).1
    case_000454_rankWord |>.symm

private theorem case_000454_seqChoice :
    translationChoiceSeq case_000454_word case_000454_mask = case_000454_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000454_seqAtRank :
    translationSeqAtRankMask case_000454_rank case_000454_mask = case_000454_seq := by
  rw [translationSeqAtRankMask, case_000454_unrank]
  exact case_000454_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000454_bAtRank :
    translationBAtRankMask case_000454_rank case_000454_mask = case_000454_b := by
  rw [translationBAtRankMask, case_000454_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000454_b, case_000454_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000454_firstLine_eq :
    case_000454_support.firstLine case_000454_seq case_000454_b = case_000454_firstLine := by
  norm_num [case_000454_firstLine, case_000454_support, case_000454_seq, case_000454_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000454_secondLine_eq :
    case_000454_support.secondLine case_000454_seq case_000454_b = case_000454_secondLine := by
  norm_num [case_000454_secondLine, case_000454_support, case_000454_seq, case_000454_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000454_sourceAgrees :
    SourceAgrees case_000454_support case_000454_rank.val case_000454_mask := by
  intro hlt
  have hrank : (⟨case_000454_rank.val, hlt⟩ : Fin numPairWords) = case_000454_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000454_rank.val, hlt⟩ case_000454_mask =
        case_000454_seq := by
    simpa [hrank] using case_000454_seqAtRank
  simp [SourceChecks, hseq, case_000454_support,
    checkTranslationConstraintSource, case_000454_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000454_rows :
    EqEqPosVarFirstRows case_000454_support case_000454_rank.val case_000454_mask := by
  intro hlt
  have hrank : (⟨case_000454_rank.val, hlt⟩ : Fin numPairWords) = case_000454_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000454_rank.val, hlt⟩ case_000454_mask =
        case_000454_seq := by
    simpa [hrank] using case_000454_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000454_rank.val, hlt⟩ case_000454_mask =
        case_000454_b := by
    simpa [hrank] using case_000454_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000454_support case_000454_rank.val hlt
          case_000454_mask = case_000454_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000454_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000454_support case_000454_rank.val hlt
          case_000454_mask = case_000454_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000454_secondLine_eq]
  have case_000454_rowFirst :
      EqEqPosRow (FirstLineAt case_000454_support case_000454_rank.val hlt case_000454_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000454_firstLine, EqEqPosRow]
  have case_000454_fixedSecond :
      FixedRow (SecondLineAt case_000454_support case_000454_rank.val hlt case_000454_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000454_secondLine, FixedRow]
  exact ⟨case_000454_rowFirst, case_000454_fixedSecond⟩

private theorem case_000454_existsRows :
    ExistsEqEqPosVarFirstRows case_000454_rank.val case_000454_mask :=
  ⟨case_000454_support, case_000454_sourceAgrees, case_000454_rows⟩

private theorem case_000454_covered :
    RowPropertyParametricCovered case_000454_rank.val case_000454_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000454_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000455_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000455_mask : SignMask := ⟨13, by decide⟩
private def case_000455_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000455_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000455_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000455_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000455_firstLine : StrictLin2 := { a := 1, b := -1, c := (-59/25) }
private def case_000455_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000455_rankWord :
    rankPairWord? case_000455_word = some case_000455_rank := by
  decide

private theorem case_000455_unrank :
    unrankPairWord case_000455_rank = case_000455_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000455_word case_000455_rank).1
    case_000455_rankWord |>.symm

private theorem case_000455_seqChoice :
    translationChoiceSeq case_000455_word case_000455_mask = case_000455_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000455_seqAtRank :
    translationSeqAtRankMask case_000455_rank case_000455_mask = case_000455_seq := by
  rw [translationSeqAtRankMask, case_000455_unrank]
  exact case_000455_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000455_bAtRank :
    translationBAtRankMask case_000455_rank case_000455_mask = case_000455_b := by
  rw [translationBAtRankMask, case_000455_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000455_b, case_000455_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000455_firstLine_eq :
    case_000455_support.firstLine case_000455_seq case_000455_b = case_000455_firstLine := by
  norm_num [case_000455_firstLine, case_000455_support, case_000455_seq, case_000455_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000455_secondLine_eq :
    case_000455_support.secondLine case_000455_seq case_000455_b = case_000455_secondLine := by
  norm_num [case_000455_secondLine, case_000455_support, case_000455_seq, case_000455_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000455_sourceAgrees :
    SourceAgrees case_000455_support case_000455_rank.val case_000455_mask := by
  intro hlt
  have hrank : (⟨case_000455_rank.val, hlt⟩ : Fin numPairWords) = case_000455_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000455_rank.val, hlt⟩ case_000455_mask =
        case_000455_seq := by
    simpa [hrank] using case_000455_seqAtRank
  simp [SourceChecks, hseq, case_000455_support,
    checkTranslationConstraintSource, case_000455_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000455_rows :
    OppMinusOneVarFirstRows case_000455_support case_000455_rank.val case_000455_mask := by
  intro hlt
  have hrank : (⟨case_000455_rank.val, hlt⟩ : Fin numPairWords) = case_000455_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000455_rank.val, hlt⟩ case_000455_mask =
        case_000455_seq := by
    simpa [hrank] using case_000455_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000455_rank.val, hlt⟩ case_000455_mask =
        case_000455_b := by
    simpa [hrank] using case_000455_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000455_support case_000455_rank.val hlt
          case_000455_mask = case_000455_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000455_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000455_support case_000455_rank.val hlt
          case_000455_mask = case_000455_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000455_secondLine_eq]
  have case_000455_rowFirst :
      OppNegRow (FirstLineAt case_000455_support case_000455_rank.val hlt case_000455_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000455_firstLine, OppNegRow]
  have case_000455_fixedSecond :
      FixedRow (SecondLineAt case_000455_support case_000455_rank.val hlt case_000455_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000455_secondLine, FixedRow]
  exact ⟨case_000455_rowFirst, case_000455_fixedSecond⟩

private theorem case_000455_existsRows :
    ExistsOppMinusOneVarFirstRows case_000455_rank.val case_000455_mask :=
  ⟨case_000455_support, case_000455_sourceAgrees, case_000455_rows⟩

private theorem case_000455_covered :
    RowPropertyParametricCovered case_000455_rank.val case_000455_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000455_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000456_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000456_mask : SignMask := ⟨15, by decide⟩
private def case_000456_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000456_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000456_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000456_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (4/9) }
private def case_000456_firstLine : StrictLin2 := { a := (-25/51), b := (-25/51), c := (-121/51) }
private def case_000456_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000456_rankWord :
    rankPairWord? case_000456_word = some case_000456_rank := by
  decide

private theorem case_000456_unrank :
    unrankPairWord case_000456_rank = case_000456_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000456_word case_000456_rank).1
    case_000456_rankWord |>.symm

private theorem case_000456_seqChoice :
    translationChoiceSeq case_000456_word case_000456_mask = case_000456_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000456_seqAtRank :
    translationSeqAtRankMask case_000456_rank case_000456_mask = case_000456_seq := by
  rw [translationSeqAtRankMask, case_000456_unrank]
  exact case_000456_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000456_bAtRank :
    translationBAtRankMask case_000456_rank case_000456_mask = case_000456_b := by
  rw [translationBAtRankMask, case_000456_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000456_b, case_000456_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000456_firstLine_eq :
    case_000456_support.firstLine case_000456_seq case_000456_b = case_000456_firstLine := by
  norm_num [case_000456_firstLine, case_000456_support, case_000456_seq, case_000456_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000456_secondLine_eq :
    case_000456_support.secondLine case_000456_seq case_000456_b = case_000456_secondLine := by
  norm_num [case_000456_secondLine, case_000456_support, case_000456_seq, case_000456_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000456_sourceAgrees :
    SourceAgrees case_000456_support case_000456_rank.val case_000456_mask := by
  intro hlt
  have hrank : (⟨case_000456_rank.val, hlt⟩ : Fin numPairWords) = case_000456_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000456_rank.val, hlt⟩ case_000456_mask =
        case_000456_seq := by
    simpa [hrank] using case_000456_seqAtRank
  simp [SourceChecks, hseq, case_000456_support,
    checkTranslationConstraintSource, case_000456_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000456_rows :
    EqEqPosVarFirstRows case_000456_support case_000456_rank.val case_000456_mask := by
  intro hlt
  have hrank : (⟨case_000456_rank.val, hlt⟩ : Fin numPairWords) = case_000456_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000456_rank.val, hlt⟩ case_000456_mask =
        case_000456_seq := by
    simpa [hrank] using case_000456_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000456_rank.val, hlt⟩ case_000456_mask =
        case_000456_b := by
    simpa [hrank] using case_000456_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000456_support case_000456_rank.val hlt
          case_000456_mask = case_000456_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000456_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000456_support case_000456_rank.val hlt
          case_000456_mask = case_000456_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000456_secondLine_eq]
  have case_000456_rowFirst :
      EqEqPosRow (FirstLineAt case_000456_support case_000456_rank.val hlt case_000456_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000456_firstLine, EqEqPosRow]
  have case_000456_fixedSecond :
      FixedRow (SecondLineAt case_000456_support case_000456_rank.val hlt case_000456_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000456_secondLine, FixedRow]
  exact ⟨case_000456_rowFirst, case_000456_fixedSecond⟩

private theorem case_000456_existsRows :
    ExistsEqEqPosVarFirstRows case_000456_rank.val case_000456_mask :=
  ⟨case_000456_support, case_000456_sourceAgrees, case_000456_rows⟩

private theorem case_000456_covered :
    RowPropertyParametricCovered case_000456_rank.val case_000456_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000456_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000457_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000457_mask : SignMask := ⟨18, by decide⟩
private def case_000457_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000457_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000457_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000457_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000457_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000457_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000457_rankWord :
    rankPairWord? case_000457_word = some case_000457_rank := by
  decide

private theorem case_000457_unrank :
    unrankPairWord case_000457_rank = case_000457_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000457_word case_000457_rank).1
    case_000457_rankWord |>.symm

private theorem case_000457_seqChoice :
    translationChoiceSeq case_000457_word case_000457_mask = case_000457_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000457_seqAtRank :
    translationSeqAtRankMask case_000457_rank case_000457_mask = case_000457_seq := by
  rw [translationSeqAtRankMask, case_000457_unrank]
  exact case_000457_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000457_bAtRank :
    translationBAtRankMask case_000457_rank case_000457_mask = case_000457_b := by
  rw [translationBAtRankMask, case_000457_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000457_b, case_000457_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000457_firstLine_eq :
    case_000457_support.firstLine case_000457_seq case_000457_b = case_000457_firstLine := by
  norm_num [case_000457_firstLine, case_000457_support, case_000457_seq, case_000457_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000457_secondLine_eq :
    case_000457_support.secondLine case_000457_seq case_000457_b = case_000457_secondLine := by
  norm_num [case_000457_secondLine, case_000457_support, case_000457_seq, case_000457_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000457_sourceAgrees :
    SourceAgrees case_000457_support case_000457_rank.val case_000457_mask := by
  intro hlt
  have hrank : (⟨case_000457_rank.val, hlt⟩ : Fin numPairWords) = case_000457_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000457_rank.val, hlt⟩ case_000457_mask =
        case_000457_seq := by
    simpa [hrank] using case_000457_seqAtRank
  simp [SourceChecks, hseq, case_000457_support,
    checkTranslationConstraintSource, case_000457_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000457_rows :
    EqEqPosVarFirstRows case_000457_support case_000457_rank.val case_000457_mask := by
  intro hlt
  have hrank : (⟨case_000457_rank.val, hlt⟩ : Fin numPairWords) = case_000457_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000457_rank.val, hlt⟩ case_000457_mask =
        case_000457_seq := by
    simpa [hrank] using case_000457_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000457_rank.val, hlt⟩ case_000457_mask =
        case_000457_b := by
    simpa [hrank] using case_000457_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000457_support case_000457_rank.val hlt
          case_000457_mask = case_000457_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000457_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000457_support case_000457_rank.val hlt
          case_000457_mask = case_000457_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000457_secondLine_eq]
  have case_000457_rowFirst :
      EqEqPosRow (FirstLineAt case_000457_support case_000457_rank.val hlt case_000457_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000457_firstLine, EqEqPosRow]
  have case_000457_fixedSecond :
      FixedRow (SecondLineAt case_000457_support case_000457_rank.val hlt case_000457_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000457_secondLine, FixedRow]
  exact ⟨case_000457_rowFirst, case_000457_fixedSecond⟩

private theorem case_000457_existsRows :
    ExistsEqEqPosVarFirstRows case_000457_rank.val case_000457_mask :=
  ⟨case_000457_support, case_000457_sourceAgrees, case_000457_rows⟩

private theorem case_000457_covered :
    RowPropertyParametricCovered case_000457_rank.val case_000457_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000457_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000458_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000458_mask : SignMask := ⟨22, by decide⟩
private def case_000458_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000458_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000458_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000458_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000458_firstLine : StrictLin2 := { a := (-25/39), b := (-25/39), c := (-95/39) }
private def case_000458_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000458_rankWord :
    rankPairWord? case_000458_word = some case_000458_rank := by
  decide

private theorem case_000458_unrank :
    unrankPairWord case_000458_rank = case_000458_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000458_word case_000458_rank).1
    case_000458_rankWord |>.symm

private theorem case_000458_seqChoice :
    translationChoiceSeq case_000458_word case_000458_mask = case_000458_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000458_seqAtRank :
    translationSeqAtRankMask case_000458_rank case_000458_mask = case_000458_seq := by
  rw [translationSeqAtRankMask, case_000458_unrank]
  exact case_000458_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000458_bAtRank :
    translationBAtRankMask case_000458_rank case_000458_mask = case_000458_b := by
  rw [translationBAtRankMask, case_000458_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000458_b, case_000458_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000458_firstLine_eq :
    case_000458_support.firstLine case_000458_seq case_000458_b = case_000458_firstLine := by
  norm_num [case_000458_firstLine, case_000458_support, case_000458_seq, case_000458_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000458_secondLine_eq :
    case_000458_support.secondLine case_000458_seq case_000458_b = case_000458_secondLine := by
  norm_num [case_000458_secondLine, case_000458_support, case_000458_seq, case_000458_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000458_sourceAgrees :
    SourceAgrees case_000458_support case_000458_rank.val case_000458_mask := by
  intro hlt
  have hrank : (⟨case_000458_rank.val, hlt⟩ : Fin numPairWords) = case_000458_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000458_rank.val, hlt⟩ case_000458_mask =
        case_000458_seq := by
    simpa [hrank] using case_000458_seqAtRank
  simp [SourceChecks, hseq, case_000458_support,
    checkTranslationConstraintSource, case_000458_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000458_rows :
    EqEqPosVarFirstRows case_000458_support case_000458_rank.val case_000458_mask := by
  intro hlt
  have hrank : (⟨case_000458_rank.val, hlt⟩ : Fin numPairWords) = case_000458_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000458_rank.val, hlt⟩ case_000458_mask =
        case_000458_seq := by
    simpa [hrank] using case_000458_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000458_rank.val, hlt⟩ case_000458_mask =
        case_000458_b := by
    simpa [hrank] using case_000458_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000458_support case_000458_rank.val hlt
          case_000458_mask = case_000458_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000458_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000458_support case_000458_rank.val hlt
          case_000458_mask = case_000458_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000458_secondLine_eq]
  have case_000458_rowFirst :
      EqEqPosRow (FirstLineAt case_000458_support case_000458_rank.val hlt case_000458_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000458_firstLine, EqEqPosRow]
  have case_000458_fixedSecond :
      FixedRow (SecondLineAt case_000458_support case_000458_rank.val hlt case_000458_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000458_secondLine, FixedRow]
  exact ⟨case_000458_rowFirst, case_000458_fixedSecond⟩

private theorem case_000458_existsRows :
    ExistsEqEqPosVarFirstRows case_000458_rank.val case_000458_mask :=
  ⟨case_000458_support, case_000458_sourceAgrees, case_000458_rows⟩

private theorem case_000458_covered :
    RowPropertyParametricCovered case_000458_rank.val case_000458_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000458_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000459_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000459_mask : SignMask := ⟨23, by decide⟩
private def case_000459_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000459_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000459_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000459_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (100/9) }
private def case_000459_firstLine : StrictLin2 := { a := (-25/51), b := (-25/51), c := (-121/51) }
private def case_000459_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000459_rankWord :
    rankPairWord? case_000459_word = some case_000459_rank := by
  decide

private theorem case_000459_unrank :
    unrankPairWord case_000459_rank = case_000459_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000459_word case_000459_rank).1
    case_000459_rankWord |>.symm

private theorem case_000459_seqChoice :
    translationChoiceSeq case_000459_word case_000459_mask = case_000459_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000459_seqAtRank :
    translationSeqAtRankMask case_000459_rank case_000459_mask = case_000459_seq := by
  rw [translationSeqAtRankMask, case_000459_unrank]
  exact case_000459_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000459_bAtRank :
    translationBAtRankMask case_000459_rank case_000459_mask = case_000459_b := by
  rw [translationBAtRankMask, case_000459_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000459_b, case_000459_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000459_firstLine_eq :
    case_000459_support.firstLine case_000459_seq case_000459_b = case_000459_firstLine := by
  norm_num [case_000459_firstLine, case_000459_support, case_000459_seq, case_000459_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000459_secondLine_eq :
    case_000459_support.secondLine case_000459_seq case_000459_b = case_000459_secondLine := by
  norm_num [case_000459_secondLine, case_000459_support, case_000459_seq, case_000459_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000459_sourceAgrees :
    SourceAgrees case_000459_support case_000459_rank.val case_000459_mask := by
  intro hlt
  have hrank : (⟨case_000459_rank.val, hlt⟩ : Fin numPairWords) = case_000459_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000459_rank.val, hlt⟩ case_000459_mask =
        case_000459_seq := by
    simpa [hrank] using case_000459_seqAtRank
  simp [SourceChecks, hseq, case_000459_support,
    checkTranslationConstraintSource, case_000459_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000459_rows :
    EqEqPosVarFirstRows case_000459_support case_000459_rank.val case_000459_mask := by
  intro hlt
  have hrank : (⟨case_000459_rank.val, hlt⟩ : Fin numPairWords) = case_000459_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000459_rank.val, hlt⟩ case_000459_mask =
        case_000459_seq := by
    simpa [hrank] using case_000459_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000459_rank.val, hlt⟩ case_000459_mask =
        case_000459_b := by
    simpa [hrank] using case_000459_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000459_support case_000459_rank.val hlt
          case_000459_mask = case_000459_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000459_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000459_support case_000459_rank.val hlt
          case_000459_mask = case_000459_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000459_secondLine_eq]
  have case_000459_rowFirst :
      EqEqPosRow (FirstLineAt case_000459_support case_000459_rank.val hlt case_000459_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000459_firstLine, EqEqPosRow]
  have case_000459_fixedSecond :
      FixedRow (SecondLineAt case_000459_support case_000459_rank.val hlt case_000459_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000459_secondLine, FixedRow]
  exact ⟨case_000459_rowFirst, case_000459_fixedSecond⟩

private theorem case_000459_existsRows :
    ExistsEqEqPosVarFirstRows case_000459_rank.val case_000459_mask :=
  ⟨case_000459_support, case_000459_sourceAgrees, case_000459_rows⟩

private theorem case_000459_covered :
    RowPropertyParametricCovered case_000459_rank.val case_000459_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000459_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000460_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000460_mask : SignMask := ⟨24, by decide⟩
private def case_000460_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000460_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000460_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000460_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000460_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000460_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000460_rankWord :
    rankPairWord? case_000460_word = some case_000460_rank := by
  decide

private theorem case_000460_unrank :
    unrankPairWord case_000460_rank = case_000460_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000460_word case_000460_rank).1
    case_000460_rankWord |>.symm

private theorem case_000460_seqChoice :
    translationChoiceSeq case_000460_word case_000460_mask = case_000460_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000460_seqAtRank :
    translationSeqAtRankMask case_000460_rank case_000460_mask = case_000460_seq := by
  rw [translationSeqAtRankMask, case_000460_unrank]
  exact case_000460_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000460_bAtRank :
    translationBAtRankMask case_000460_rank case_000460_mask = case_000460_b := by
  rw [translationBAtRankMask, case_000460_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000460_b, case_000460_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000460_firstLine_eq :
    case_000460_support.firstLine case_000460_seq case_000460_b = case_000460_firstLine := by
  norm_num [case_000460_firstLine, case_000460_support, case_000460_seq, case_000460_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000460_secondLine_eq :
    case_000460_support.secondLine case_000460_seq case_000460_b = case_000460_secondLine := by
  norm_num [case_000460_secondLine, case_000460_support, case_000460_seq, case_000460_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000460_sourceAgrees :
    SourceAgrees case_000460_support case_000460_rank.val case_000460_mask := by
  intro hlt
  have hrank : (⟨case_000460_rank.val, hlt⟩ : Fin numPairWords) = case_000460_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000460_rank.val, hlt⟩ case_000460_mask =
        case_000460_seq := by
    simpa [hrank] using case_000460_seqAtRank
  simp [SourceChecks, hseq, case_000460_support,
    checkTranslationConstraintSource, case_000460_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000460_rows :
    EqEqPosVarFirstRows case_000460_support case_000460_rank.val case_000460_mask := by
  intro hlt
  have hrank : (⟨case_000460_rank.val, hlt⟩ : Fin numPairWords) = case_000460_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000460_rank.val, hlt⟩ case_000460_mask =
        case_000460_seq := by
    simpa [hrank] using case_000460_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000460_rank.val, hlt⟩ case_000460_mask =
        case_000460_b := by
    simpa [hrank] using case_000460_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000460_support case_000460_rank.val hlt
          case_000460_mask = case_000460_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000460_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000460_support case_000460_rank.val hlt
          case_000460_mask = case_000460_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000460_secondLine_eq]
  have case_000460_rowFirst :
      EqEqPosRow (FirstLineAt case_000460_support case_000460_rank.val hlt case_000460_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000460_firstLine, EqEqPosRow]
  have case_000460_fixedSecond :
      FixedRow (SecondLineAt case_000460_support case_000460_rank.val hlt case_000460_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000460_secondLine, FixedRow]
  exact ⟨case_000460_rowFirst, case_000460_fixedSecond⟩

private theorem case_000460_existsRows :
    ExistsEqEqPosVarFirstRows case_000460_rank.val case_000460_mask :=
  ⟨case_000460_support, case_000460_sourceAgrees, case_000460_rows⟩

private theorem case_000460_covered :
    RowPropertyParametricCovered case_000460_rank.val case_000460_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000460_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000461_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000461_mask : SignMask := ⟨28, by decide⟩
private def case_000461_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000461_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000461_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000461_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000461_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000461_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000461_rankWord :
    rankPairWord? case_000461_word = some case_000461_rank := by
  decide

private theorem case_000461_unrank :
    unrankPairWord case_000461_rank = case_000461_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000461_word case_000461_rank).1
    case_000461_rankWord |>.symm

private theorem case_000461_seqChoice :
    translationChoiceSeq case_000461_word case_000461_mask = case_000461_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000461_seqAtRank :
    translationSeqAtRankMask case_000461_rank case_000461_mask = case_000461_seq := by
  rw [translationSeqAtRankMask, case_000461_unrank]
  exact case_000461_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000461_bAtRank :
    translationBAtRankMask case_000461_rank case_000461_mask = case_000461_b := by
  rw [translationBAtRankMask, case_000461_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000461_b, case_000461_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000461_firstLine_eq :
    case_000461_support.firstLine case_000461_seq case_000461_b = case_000461_firstLine := by
  norm_num [case_000461_firstLine, case_000461_support, case_000461_seq, case_000461_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000461_secondLine_eq :
    case_000461_support.secondLine case_000461_seq case_000461_b = case_000461_secondLine := by
  norm_num [case_000461_secondLine, case_000461_support, case_000461_seq, case_000461_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000461_sourceAgrees :
    SourceAgrees case_000461_support case_000461_rank.val case_000461_mask := by
  intro hlt
  have hrank : (⟨case_000461_rank.val, hlt⟩ : Fin numPairWords) = case_000461_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000461_rank.val, hlt⟩ case_000461_mask =
        case_000461_seq := by
    simpa [hrank] using case_000461_seqAtRank
  simp [SourceChecks, hseq, case_000461_support,
    checkTranslationConstraintSource, case_000461_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000461_rows :
    OppOneMinusVarFirstRows case_000461_support case_000461_rank.val case_000461_mask := by
  intro hlt
  have hrank : (⟨case_000461_rank.val, hlt⟩ : Fin numPairWords) = case_000461_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000461_rank.val, hlt⟩ case_000461_mask =
        case_000461_seq := by
    simpa [hrank] using case_000461_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000461_rank.val, hlt⟩ case_000461_mask =
        case_000461_b := by
    simpa [hrank] using case_000461_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000461_support case_000461_rank.val hlt
          case_000461_mask = case_000461_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000461_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000461_support case_000461_rank.val hlt
          case_000461_mask = case_000461_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000461_secondLine_eq]
  have case_000461_rowFirst :
      OppPosRow (FirstLineAt case_000461_support case_000461_rank.val hlt case_000461_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000461_firstLine, OppPosRow]
  have case_000461_fixedSecond :
      FixedRow (SecondLineAt case_000461_support case_000461_rank.val hlt case_000461_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000461_secondLine, FixedRow]
  exact ⟨case_000461_rowFirst, case_000461_fixedSecond⟩

private theorem case_000461_existsRows :
    ExistsOppOneMinusVarFirstRows case_000461_rank.val case_000461_mask :=
  ⟨case_000461_support, case_000461_sourceAgrees, case_000461_rows⟩

private theorem case_000461_covered :
    RowPropertyParametricCovered case_000461_rank.val case_000461_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000461_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000462_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000462_mask : SignMask := ⟨31, by decide⟩
private def case_000462_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000462_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000462_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000462_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000462_firstLine : StrictLin2 := { a := (-29/39), b := (-29/39), c := (-17/3) }
private def case_000462_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000462_rankWord :
    rankPairWord? case_000462_word = some case_000462_rank := by
  decide

private theorem case_000462_unrank :
    unrankPairWord case_000462_rank = case_000462_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000462_word case_000462_rank).1
    case_000462_rankWord |>.symm

private theorem case_000462_seqChoice :
    translationChoiceSeq case_000462_word case_000462_mask = case_000462_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000462_seqAtRank :
    translationSeqAtRankMask case_000462_rank case_000462_mask = case_000462_seq := by
  rw [translationSeqAtRankMask, case_000462_unrank]
  exact case_000462_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000462_bAtRank :
    translationBAtRankMask case_000462_rank case_000462_mask = case_000462_b := by
  rw [translationBAtRankMask, case_000462_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000462_b, case_000462_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000462_firstLine_eq :
    case_000462_support.firstLine case_000462_seq case_000462_b = case_000462_firstLine := by
  norm_num [case_000462_firstLine, case_000462_support, case_000462_seq, case_000462_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000462_secondLine_eq :
    case_000462_support.secondLine case_000462_seq case_000462_b = case_000462_secondLine := by
  norm_num [case_000462_secondLine, case_000462_support, case_000462_seq, case_000462_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000462_sourceAgrees :
    SourceAgrees case_000462_support case_000462_rank.val case_000462_mask := by
  intro hlt
  have hrank : (⟨case_000462_rank.val, hlt⟩ : Fin numPairWords) = case_000462_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000462_rank.val, hlt⟩ case_000462_mask =
        case_000462_seq := by
    simpa [hrank] using case_000462_seqAtRank
  simp [SourceChecks, hseq, case_000462_support,
    checkTranslationConstraintSource, case_000462_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000462_rows :
    EqEqPosVarFirstRows case_000462_support case_000462_rank.val case_000462_mask := by
  intro hlt
  have hrank : (⟨case_000462_rank.val, hlt⟩ : Fin numPairWords) = case_000462_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000462_rank.val, hlt⟩ case_000462_mask =
        case_000462_seq := by
    simpa [hrank] using case_000462_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000462_rank.val, hlt⟩ case_000462_mask =
        case_000462_b := by
    simpa [hrank] using case_000462_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000462_support case_000462_rank.val hlt
          case_000462_mask = case_000462_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000462_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000462_support case_000462_rank.val hlt
          case_000462_mask = case_000462_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000462_secondLine_eq]
  have case_000462_rowFirst :
      EqEqPosRow (FirstLineAt case_000462_support case_000462_rank.val hlt case_000462_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000462_firstLine, EqEqPosRow]
  have case_000462_fixedSecond :
      FixedRow (SecondLineAt case_000462_support case_000462_rank.val hlt case_000462_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000462_secondLine, FixedRow]
  exact ⟨case_000462_rowFirst, case_000462_fixedSecond⟩

private theorem case_000462_existsRows :
    ExistsEqEqPosVarFirstRows case_000462_rank.val case_000462_mask :=
  ⟨case_000462_support, case_000462_sourceAgrees, case_000462_rows⟩

private theorem case_000462_covered :
    RowPropertyParametricCovered case_000462_rank.val case_000462_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000462_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000463_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000463_mask : SignMask := ⟨39, by decide⟩
private def case_000463_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000463_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000463_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000463_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (100/9) }
private def case_000463_firstLine : StrictLin2 := { a := (-2/51), b := (-2/51), c := (-32/17) }
private def case_000463_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000463_rankWord :
    rankPairWord? case_000463_word = some case_000463_rank := by
  decide

private theorem case_000463_unrank :
    unrankPairWord case_000463_rank = case_000463_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000463_word case_000463_rank).1
    case_000463_rankWord |>.symm

private theorem case_000463_seqChoice :
    translationChoiceSeq case_000463_word case_000463_mask = case_000463_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000463_seqAtRank :
    translationSeqAtRankMask case_000463_rank case_000463_mask = case_000463_seq := by
  rw [translationSeqAtRankMask, case_000463_unrank]
  exact case_000463_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000463_bAtRank :
    translationBAtRankMask case_000463_rank case_000463_mask = case_000463_b := by
  rw [translationBAtRankMask, case_000463_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000463_b, case_000463_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000463_firstLine_eq :
    case_000463_support.firstLine case_000463_seq case_000463_b = case_000463_firstLine := by
  norm_num [case_000463_firstLine, case_000463_support, case_000463_seq, case_000463_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000463_secondLine_eq :
    case_000463_support.secondLine case_000463_seq case_000463_b = case_000463_secondLine := by
  norm_num [case_000463_secondLine, case_000463_support, case_000463_seq, case_000463_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000463_sourceAgrees :
    SourceAgrees case_000463_support case_000463_rank.val case_000463_mask := by
  intro hlt
  have hrank : (⟨case_000463_rank.val, hlt⟩ : Fin numPairWords) = case_000463_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000463_rank.val, hlt⟩ case_000463_mask =
        case_000463_seq := by
    simpa [hrank] using case_000463_seqAtRank
  simp [SourceChecks, hseq, case_000463_support,
    checkTranslationConstraintSource, case_000463_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000463_rows :
    EqEqPosVarFirstRows case_000463_support case_000463_rank.val case_000463_mask := by
  intro hlt
  have hrank : (⟨case_000463_rank.val, hlt⟩ : Fin numPairWords) = case_000463_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000463_rank.val, hlt⟩ case_000463_mask =
        case_000463_seq := by
    simpa [hrank] using case_000463_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000463_rank.val, hlt⟩ case_000463_mask =
        case_000463_b := by
    simpa [hrank] using case_000463_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000463_support case_000463_rank.val hlt
          case_000463_mask = case_000463_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000463_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000463_support case_000463_rank.val hlt
          case_000463_mask = case_000463_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000463_secondLine_eq]
  have case_000463_rowFirst :
      EqEqPosRow (FirstLineAt case_000463_support case_000463_rank.val hlt case_000463_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000463_firstLine, EqEqPosRow]
  have case_000463_fixedSecond :
      FixedRow (SecondLineAt case_000463_support case_000463_rank.val hlt case_000463_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000463_secondLine, FixedRow]
  exact ⟨case_000463_rowFirst, case_000463_fixedSecond⟩

private theorem case_000463_existsRows :
    ExistsEqEqPosVarFirstRows case_000463_rank.val case_000463_mask :=
  ⟨case_000463_support, case_000463_sourceAgrees, case_000463_rows⟩

private theorem case_000463_covered :
    RowPropertyParametricCovered case_000463_rank.val case_000463_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000463_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000464_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000464_mask : SignMask := ⟨47, by decide⟩
private def case_000464_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000464_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000464_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000464_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000464_firstLine : StrictLin2 := { a := (-10/39), b := (-10/39), c := (-16/13) }
private def case_000464_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000464_rankWord :
    rankPairWord? case_000464_word = some case_000464_rank := by
  decide

private theorem case_000464_unrank :
    unrankPairWord case_000464_rank = case_000464_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000464_word case_000464_rank).1
    case_000464_rankWord |>.symm

private theorem case_000464_seqChoice :
    translationChoiceSeq case_000464_word case_000464_mask = case_000464_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000464_seqAtRank :
    translationSeqAtRankMask case_000464_rank case_000464_mask = case_000464_seq := by
  rw [translationSeqAtRankMask, case_000464_unrank]
  exact case_000464_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000464_bAtRank :
    translationBAtRankMask case_000464_rank case_000464_mask = case_000464_b := by
  rw [translationBAtRankMask, case_000464_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000464_b, case_000464_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000464_firstLine_eq :
    case_000464_support.firstLine case_000464_seq case_000464_b = case_000464_firstLine := by
  norm_num [case_000464_firstLine, case_000464_support, case_000464_seq, case_000464_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000464_secondLine_eq :
    case_000464_support.secondLine case_000464_seq case_000464_b = case_000464_secondLine := by
  norm_num [case_000464_secondLine, case_000464_support, case_000464_seq, case_000464_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000464_sourceAgrees :
    SourceAgrees case_000464_support case_000464_rank.val case_000464_mask := by
  intro hlt
  have hrank : (⟨case_000464_rank.val, hlt⟩ : Fin numPairWords) = case_000464_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000464_rank.val, hlt⟩ case_000464_mask =
        case_000464_seq := by
    simpa [hrank] using case_000464_seqAtRank
  simp [SourceChecks, hseq, case_000464_support,
    checkTranslationConstraintSource, case_000464_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000464_rows :
    EqEqPosVarFirstRows case_000464_support case_000464_rank.val case_000464_mask := by
  intro hlt
  have hrank : (⟨case_000464_rank.val, hlt⟩ : Fin numPairWords) = case_000464_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000464_rank.val, hlt⟩ case_000464_mask =
        case_000464_seq := by
    simpa [hrank] using case_000464_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000464_rank.val, hlt⟩ case_000464_mask =
        case_000464_b := by
    simpa [hrank] using case_000464_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000464_support case_000464_rank.val hlt
          case_000464_mask = case_000464_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000464_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000464_support case_000464_rank.val hlt
          case_000464_mask = case_000464_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000464_secondLine_eq]
  have case_000464_rowFirst :
      EqEqPosRow (FirstLineAt case_000464_support case_000464_rank.val hlt case_000464_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000464_firstLine, EqEqPosRow]
  have case_000464_fixedSecond :
      FixedRow (SecondLineAt case_000464_support case_000464_rank.val hlt case_000464_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000464_secondLine, FixedRow]
  exact ⟨case_000464_rowFirst, case_000464_fixedSecond⟩

private theorem case_000464_existsRows :
    ExistsEqEqPosVarFirstRows case_000464_rank.val case_000464_mask :=
  ⟨case_000464_support, case_000464_sourceAgrees, case_000464_rows⟩

private theorem case_000464_covered :
    RowPropertyParametricCovered case_000464_rank.val case_000464_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000464_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000465_rank : Fin numPairWords := ⟨149, by decide⟩
private def case_000465_mask : SignMask := ⟨55, by decide⟩
private def case_000465_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000465_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000465_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000465_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000465_firstLine : StrictLin2 := { a := (-5/3), b := (-5/3), c := -23 }
private def case_000465_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000465_rankWord :
    rankPairWord? case_000465_word = some case_000465_rank := by
  decide

private theorem case_000465_unrank :
    unrankPairWord case_000465_rank = case_000465_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000465_word case_000465_rank).1
    case_000465_rankWord |>.symm

private theorem case_000465_seqChoice :
    translationChoiceSeq case_000465_word case_000465_mask = case_000465_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000465_seqAtRank :
    translationSeqAtRankMask case_000465_rank case_000465_mask = case_000465_seq := by
  rw [translationSeqAtRankMask, case_000465_unrank]
  exact case_000465_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000465_bAtRank :
    translationBAtRankMask case_000465_rank case_000465_mask = case_000465_b := by
  rw [translationBAtRankMask, case_000465_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000465_b, case_000465_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000465_firstLine_eq :
    case_000465_support.firstLine case_000465_seq case_000465_b = case_000465_firstLine := by
  norm_num [case_000465_firstLine, case_000465_support, case_000465_seq, case_000465_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000465_secondLine_eq :
    case_000465_support.secondLine case_000465_seq case_000465_b = case_000465_secondLine := by
  norm_num [case_000465_secondLine, case_000465_support, case_000465_seq, case_000465_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000465_sourceAgrees :
    SourceAgrees case_000465_support case_000465_rank.val case_000465_mask := by
  intro hlt
  have hrank : (⟨case_000465_rank.val, hlt⟩ : Fin numPairWords) = case_000465_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000465_rank.val, hlt⟩ case_000465_mask =
        case_000465_seq := by
    simpa [hrank] using case_000465_seqAtRank
  simp [SourceChecks, hseq, case_000465_support,
    checkTranslationConstraintSource, case_000465_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000465_rows :
    EqEqPosVarFirstRows case_000465_support case_000465_rank.val case_000465_mask := by
  intro hlt
  have hrank : (⟨case_000465_rank.val, hlt⟩ : Fin numPairWords) = case_000465_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000465_rank.val, hlt⟩ case_000465_mask =
        case_000465_seq := by
    simpa [hrank] using case_000465_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000465_rank.val, hlt⟩ case_000465_mask =
        case_000465_b := by
    simpa [hrank] using case_000465_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000465_support case_000465_rank.val hlt
          case_000465_mask = case_000465_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000465_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000465_support case_000465_rank.val hlt
          case_000465_mask = case_000465_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000465_secondLine_eq]
  have case_000465_rowFirst :
      EqEqPosRow (FirstLineAt case_000465_support case_000465_rank.val hlt case_000465_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000465_firstLine, EqEqPosRow]
  have case_000465_fixedSecond :
      FixedRow (SecondLineAt case_000465_support case_000465_rank.val hlt case_000465_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000465_secondLine, FixedRow]
  exact ⟨case_000465_rowFirst, case_000465_fixedSecond⟩

private theorem case_000465_existsRows :
    ExistsEqEqPosVarFirstRows case_000465_rank.val case_000465_mask :=
  ⟨case_000465_support, case_000465_sourceAgrees, case_000465_rows⟩

private theorem case_000465_covered :
    RowPropertyParametricCovered case_000465_rank.val case_000465_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000465_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000466_rank : Fin numPairWords := ⟨177, by decide⟩
private def case_000466_mask : SignMask := ⟨13, by decide⟩
private def case_000466_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000466_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000466_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000466_b : Vec3 Rat := { x := (-236/27), y := (236/27), z := (-172/27) }
private def case_000466_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000466_secondLine : StrictLin2 := { a := (-531/2150), b := (-531/2150), c := (-1149/1075) }

private theorem case_000466_rankWord :
    rankPairWord? case_000466_word = some case_000466_rank := by
  decide

private theorem case_000466_unrank :
    unrankPairWord case_000466_rank = case_000466_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000466_word case_000466_rank).1
    case_000466_rankWord |>.symm

private theorem case_000466_seqChoice :
    translationChoiceSeq case_000466_word case_000466_mask = case_000466_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000466_seqAtRank :
    translationSeqAtRankMask case_000466_rank case_000466_mask = case_000466_seq := by
  rw [translationSeqAtRankMask, case_000466_unrank]
  exact case_000466_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000466_bAtRank :
    translationBAtRankMask case_000466_rank case_000466_mask = case_000466_b := by
  rw [translationBAtRankMask, case_000466_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000466_b, case_000466_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000466_firstLine_eq :
    case_000466_support.firstLine case_000466_seq case_000466_b = case_000466_firstLine := by
  norm_num [case_000466_firstLine, case_000466_support, case_000466_seq, case_000466_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000466_secondLine_eq :
    case_000466_support.secondLine case_000466_seq case_000466_b = case_000466_secondLine := by
  norm_num [case_000466_secondLine, case_000466_support, case_000466_seq, case_000466_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000466_sourceAgrees :
    SourceAgrees case_000466_support case_000466_rank.val case_000466_mask := by
  intro hlt
  have hrank : (⟨case_000466_rank.val, hlt⟩ : Fin numPairWords) = case_000466_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000466_rank.val, hlt⟩ case_000466_mask =
        case_000466_seq := by
    simpa [hrank] using case_000466_seqAtRank
  simp [SourceChecks, hseq, case_000466_support,
    checkTranslationConstraintSource, case_000466_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000466_rows :
    EqEqPosVarSecondRows case_000466_support case_000466_rank.val case_000466_mask := by
  intro hlt
  have hrank : (⟨case_000466_rank.val, hlt⟩ : Fin numPairWords) = case_000466_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000466_rank.val, hlt⟩ case_000466_mask =
        case_000466_seq := by
    simpa [hrank] using case_000466_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000466_rank.val, hlt⟩ case_000466_mask =
        case_000466_b := by
    simpa [hrank] using case_000466_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000466_support case_000466_rank.val hlt
          case_000466_mask = case_000466_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000466_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000466_support case_000466_rank.val hlt
          case_000466_mask = case_000466_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000466_secondLine_eq]
  have case_000466_fixedFirst :
      FixedRow (FirstLineAt case_000466_support case_000466_rank.val hlt case_000466_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000466_firstLine, FixedRow]
  have case_000466_rowSecond :
      EqEqPosRow (SecondLineAt case_000466_support case_000466_rank.val hlt case_000466_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000466_secondLine, EqEqPosRow]
  exact ⟨case_000466_fixedFirst, case_000466_rowSecond⟩

private theorem case_000466_existsRows :
    ExistsEqEqPosVarSecondRows case_000466_rank.val case_000466_mask :=
  ⟨case_000466_support, case_000466_sourceAgrees, case_000466_rows⟩

private theorem case_000466_covered :
    RowPropertyParametricCovered case_000466_rank.val case_000466_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000466_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000467_rank : Fin numPairWords := ⟨177, by decide⟩
private def case_000467_mask : SignMask := ⟨18, by decide⟩
private def case_000467_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000467_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000467_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000467_b : Vec3 Rat := { x := (-124/27), y := (-380/27), z := (28/27) }
private def case_000467_firstLine : StrictLin2 := { a := -1, b := -1, c := (-145/31) }
private def case_000467_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000467_rankWord :
    rankPairWord? case_000467_word = some case_000467_rank := by
  decide

private theorem case_000467_unrank :
    unrankPairWord case_000467_rank = case_000467_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000467_word case_000467_rank).1
    case_000467_rankWord |>.symm

private theorem case_000467_seqChoice :
    translationChoiceSeq case_000467_word case_000467_mask = case_000467_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000467_seqAtRank :
    translationSeqAtRankMask case_000467_rank case_000467_mask = case_000467_seq := by
  rw [translationSeqAtRankMask, case_000467_unrank]
  exact case_000467_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000467_bAtRank :
    translationBAtRankMask case_000467_rank case_000467_mask = case_000467_b := by
  rw [translationBAtRankMask, case_000467_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000467_b, case_000467_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000467_firstLine_eq :
    case_000467_support.firstLine case_000467_seq case_000467_b = case_000467_firstLine := by
  norm_num [case_000467_firstLine, case_000467_support, case_000467_seq, case_000467_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000467_secondLine_eq :
    case_000467_support.secondLine case_000467_seq case_000467_b = case_000467_secondLine := by
  norm_num [case_000467_secondLine, case_000467_support, case_000467_seq, case_000467_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000467_sourceAgrees :
    SourceAgrees case_000467_support case_000467_rank.val case_000467_mask := by
  intro hlt
  have hrank : (⟨case_000467_rank.val, hlt⟩ : Fin numPairWords) = case_000467_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000467_rank.val, hlt⟩ case_000467_mask =
        case_000467_seq := by
    simpa [hrank] using case_000467_seqAtRank
  simp [SourceChecks, hseq, case_000467_support,
    checkTranslationConstraintSource, case_000467_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000467_rows :
    EqEqPosVarFirstRows case_000467_support case_000467_rank.val case_000467_mask := by
  intro hlt
  have hrank : (⟨case_000467_rank.val, hlt⟩ : Fin numPairWords) = case_000467_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000467_rank.val, hlt⟩ case_000467_mask =
        case_000467_seq := by
    simpa [hrank] using case_000467_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000467_rank.val, hlt⟩ case_000467_mask =
        case_000467_b := by
    simpa [hrank] using case_000467_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000467_support case_000467_rank.val hlt
          case_000467_mask = case_000467_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000467_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000467_support case_000467_rank.val hlt
          case_000467_mask = case_000467_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000467_secondLine_eq]
  have case_000467_rowFirst :
      EqEqPosRow (FirstLineAt case_000467_support case_000467_rank.val hlt case_000467_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000467_firstLine, EqEqPosRow]
  have case_000467_fixedSecond :
      FixedRow (SecondLineAt case_000467_support case_000467_rank.val hlt case_000467_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000467_secondLine, FixedRow]
  exact ⟨case_000467_rowFirst, case_000467_fixedSecond⟩

private theorem case_000467_existsRows :
    ExistsEqEqPosVarFirstRows case_000467_rank.val case_000467_mask :=
  ⟨case_000467_support, case_000467_sourceAgrees, case_000467_rows⟩

private theorem case_000467_covered :
    RowPropertyParametricCovered case_000467_rank.val case_000467_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000467_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000468_rank : Fin numPairWords := ⟨177, by decide⟩
private def case_000468_mask : SignMask := ⟨22, by decide⟩
private def case_000468_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000468_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000468_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000468_b : Vec3 Rat := { x := (-268/27), y := (-236/27), z := (172/27) }
private def case_000468_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000468_secondLine : StrictLin2 := { a := (-603/2822), b := (-603/2822), c := (-741/1411) }

private theorem case_000468_rankWord :
    rankPairWord? case_000468_word = some case_000468_rank := by
  decide

private theorem case_000468_unrank :
    unrankPairWord case_000468_rank = case_000468_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000468_word case_000468_rank).1
    case_000468_rankWord |>.symm

private theorem case_000468_seqChoice :
    translationChoiceSeq case_000468_word case_000468_mask = case_000468_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000468_seqAtRank :
    translationSeqAtRankMask case_000468_rank case_000468_mask = case_000468_seq := by
  rw [translationSeqAtRankMask, case_000468_unrank]
  exact case_000468_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000468_bAtRank :
    translationBAtRankMask case_000468_rank case_000468_mask = case_000468_b := by
  rw [translationBAtRankMask, case_000468_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000468_b, case_000468_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000468_firstLine_eq :
    case_000468_support.firstLine case_000468_seq case_000468_b = case_000468_firstLine := by
  norm_num [case_000468_firstLine, case_000468_support, case_000468_seq, case_000468_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000468_secondLine_eq :
    case_000468_support.secondLine case_000468_seq case_000468_b = case_000468_secondLine := by
  norm_num [case_000468_secondLine, case_000468_support, case_000468_seq, case_000468_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000468_sourceAgrees :
    SourceAgrees case_000468_support case_000468_rank.val case_000468_mask := by
  intro hlt
  have hrank : (⟨case_000468_rank.val, hlt⟩ : Fin numPairWords) = case_000468_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000468_rank.val, hlt⟩ case_000468_mask =
        case_000468_seq := by
    simpa [hrank] using case_000468_seqAtRank
  simp [SourceChecks, hseq, case_000468_support,
    checkTranslationConstraintSource, case_000468_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000468_rows :
    EqEqPosVarSecondRows case_000468_support case_000468_rank.val case_000468_mask := by
  intro hlt
  have hrank : (⟨case_000468_rank.val, hlt⟩ : Fin numPairWords) = case_000468_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000468_rank.val, hlt⟩ case_000468_mask =
        case_000468_seq := by
    simpa [hrank] using case_000468_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000468_rank.val, hlt⟩ case_000468_mask =
        case_000468_b := by
    simpa [hrank] using case_000468_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000468_support case_000468_rank.val hlt
          case_000468_mask = case_000468_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000468_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000468_support case_000468_rank.val hlt
          case_000468_mask = case_000468_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000468_secondLine_eq]
  have case_000468_fixedFirst :
      FixedRow (FirstLineAt case_000468_support case_000468_rank.val hlt case_000468_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000468_firstLine, FixedRow]
  have case_000468_rowSecond :
      EqEqPosRow (SecondLineAt case_000468_support case_000468_rank.val hlt case_000468_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000468_secondLine, EqEqPosRow]
  exact ⟨case_000468_fixedFirst, case_000468_rowSecond⟩

private theorem case_000468_existsRows :
    ExistsEqEqPosVarSecondRows case_000468_rank.val case_000468_mask :=
  ⟨case_000468_support, case_000468_sourceAgrees, case_000468_rows⟩

private theorem case_000468_covered :
    RowPropertyParametricCovered case_000468_rank.val case_000468_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000468_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000469_rank : Fin numPairWords := ⟨177, by decide⟩
private def case_000469_mask : SignMask := ⟨24, by decide⟩
private def case_000469_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000469_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000469_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000469_b : Vec3 Rat := { x := (-172/27), y := (-332/27), z := (-428/27) }
private def case_000469_firstLine : StrictLin2 := { a := -1, b := -1, c := (-337/43) }
private def case_000469_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000469_rankWord :
    rankPairWord? case_000469_word = some case_000469_rank := by
  decide

private theorem case_000469_unrank :
    unrankPairWord case_000469_rank = case_000469_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000469_word case_000469_rank).1
    case_000469_rankWord |>.symm

private theorem case_000469_seqChoice :
    translationChoiceSeq case_000469_word case_000469_mask = case_000469_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000469_seqAtRank :
    translationSeqAtRankMask case_000469_rank case_000469_mask = case_000469_seq := by
  rw [translationSeqAtRankMask, case_000469_unrank]
  exact case_000469_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000469_bAtRank :
    translationBAtRankMask case_000469_rank case_000469_mask = case_000469_b := by
  rw [translationBAtRankMask, case_000469_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000469_b, case_000469_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000469_firstLine_eq :
    case_000469_support.firstLine case_000469_seq case_000469_b = case_000469_firstLine := by
  norm_num [case_000469_firstLine, case_000469_support, case_000469_seq, case_000469_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000469_secondLine_eq :
    case_000469_support.secondLine case_000469_seq case_000469_b = case_000469_secondLine := by
  norm_num [case_000469_secondLine, case_000469_support, case_000469_seq, case_000469_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000469_sourceAgrees :
    SourceAgrees case_000469_support case_000469_rank.val case_000469_mask := by
  intro hlt
  have hrank : (⟨case_000469_rank.val, hlt⟩ : Fin numPairWords) = case_000469_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000469_rank.val, hlt⟩ case_000469_mask =
        case_000469_seq := by
    simpa [hrank] using case_000469_seqAtRank
  simp [SourceChecks, hseq, case_000469_support,
    checkTranslationConstraintSource, case_000469_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000469_rows :
    EqEqPosVarFirstRows case_000469_support case_000469_rank.val case_000469_mask := by
  intro hlt
  have hrank : (⟨case_000469_rank.val, hlt⟩ : Fin numPairWords) = case_000469_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000469_rank.val, hlt⟩ case_000469_mask =
        case_000469_seq := by
    simpa [hrank] using case_000469_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000469_rank.val, hlt⟩ case_000469_mask =
        case_000469_b := by
    simpa [hrank] using case_000469_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000469_support case_000469_rank.val hlt
          case_000469_mask = case_000469_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000469_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000469_support case_000469_rank.val hlt
          case_000469_mask = case_000469_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000469_secondLine_eq]
  have case_000469_rowFirst :
      EqEqPosRow (FirstLineAt case_000469_support case_000469_rank.val hlt case_000469_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000469_firstLine, EqEqPosRow]
  have case_000469_fixedSecond :
      FixedRow (SecondLineAt case_000469_support case_000469_rank.val hlt case_000469_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000469_secondLine, FixedRow]
  exact ⟨case_000469_rowFirst, case_000469_fixedSecond⟩

private theorem case_000469_existsRows :
    ExistsEqEqPosVarFirstRows case_000469_rank.val case_000469_mask :=
  ⟨case_000469_support, case_000469_sourceAgrees, case_000469_rows⟩

private theorem case_000469_covered :
    RowPropertyParametricCovered case_000469_rank.val case_000469_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000469_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000470_rank : Fin numPairWords := ⟨177, by decide⟩
private def case_000470_mask : SignMask := ⟨29, by decide⟩
private def case_000470_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000470_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000470_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000470_b : Vec3 Rat := { x := (-316/27), y := (28/27), z := (-284/27) }
private def case_000470_firstLine : StrictLin2 := { a := (-79/15), b := (-79/15), c := (-67/3) }
private def case_000470_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000470_rankWord :
    rankPairWord? case_000470_word = some case_000470_rank := by
  decide

private theorem case_000470_unrank :
    unrankPairWord case_000470_rank = case_000470_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000470_word case_000470_rank).1
    case_000470_rankWord |>.symm

private theorem case_000470_seqChoice :
    translationChoiceSeq case_000470_word case_000470_mask = case_000470_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000470_seqAtRank :
    translationSeqAtRankMask case_000470_rank case_000470_mask = case_000470_seq := by
  rw [translationSeqAtRankMask, case_000470_unrank]
  exact case_000470_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000470_bAtRank :
    translationBAtRankMask case_000470_rank case_000470_mask = case_000470_b := by
  rw [translationBAtRankMask, case_000470_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000470_b, case_000470_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000470_firstLine_eq :
    case_000470_support.firstLine case_000470_seq case_000470_b = case_000470_firstLine := by
  norm_num [case_000470_firstLine, case_000470_support, case_000470_seq, case_000470_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000470_secondLine_eq :
    case_000470_support.secondLine case_000470_seq case_000470_b = case_000470_secondLine := by
  norm_num [case_000470_secondLine, case_000470_support, case_000470_seq, case_000470_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000470_sourceAgrees :
    SourceAgrees case_000470_support case_000470_rank.val case_000470_mask := by
  intro hlt
  have hrank : (⟨case_000470_rank.val, hlt⟩ : Fin numPairWords) = case_000470_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000470_rank.val, hlt⟩ case_000470_mask =
        case_000470_seq := by
    simpa [hrank] using case_000470_seqAtRank
  simp [SourceChecks, hseq, case_000470_support,
    checkTranslationConstraintSource, case_000470_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000470_rows :
    EqEqPosVarFirstRows case_000470_support case_000470_rank.val case_000470_mask := by
  intro hlt
  have hrank : (⟨case_000470_rank.val, hlt⟩ : Fin numPairWords) = case_000470_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000470_rank.val, hlt⟩ case_000470_mask =
        case_000470_seq := by
    simpa [hrank] using case_000470_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000470_rank.val, hlt⟩ case_000470_mask =
        case_000470_b := by
    simpa [hrank] using case_000470_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000470_support case_000470_rank.val hlt
          case_000470_mask = case_000470_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000470_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000470_support case_000470_rank.val hlt
          case_000470_mask = case_000470_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000470_secondLine_eq]
  have case_000470_rowFirst :
      EqEqPosRow (FirstLineAt case_000470_support case_000470_rank.val hlt case_000470_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000470_firstLine, EqEqPosRow]
  have case_000470_fixedSecond :
      FixedRow (SecondLineAt case_000470_support case_000470_rank.val hlt case_000470_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000470_secondLine, FixedRow]
  exact ⟨case_000470_rowFirst, case_000470_fixedSecond⟩

private theorem case_000470_existsRows :
    ExistsEqEqPosVarFirstRows case_000470_rank.val case_000470_mask :=
  ⟨case_000470_support, case_000470_sourceAgrees, case_000470_rows⟩

private theorem case_000470_covered :
    RowPropertyParametricCovered case_000470_rank.val case_000470_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000470_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000471_rank : Fin numPairWords := ⟨177, by decide⟩
private def case_000471_mask : SignMask := ⟨39, by decide⟩
private def case_000471_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000471_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000471_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000471_b : Vec3 Rat := { x := (-44/27), y := (332/27), z := (428/27) }
private def case_000471_firstLine : StrictLin2 := { a := -1, b := 1, c := (-37/11) }
private def case_000471_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000471_rankWord :
    rankPairWord? case_000471_word = some case_000471_rank := by
  decide

private theorem case_000471_unrank :
    unrankPairWord case_000471_rank = case_000471_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000471_word case_000471_rank).1
    case_000471_rankWord |>.symm

private theorem case_000471_seqChoice :
    translationChoiceSeq case_000471_word case_000471_mask = case_000471_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000471_seqAtRank :
    translationSeqAtRankMask case_000471_rank case_000471_mask = case_000471_seq := by
  rw [translationSeqAtRankMask, case_000471_unrank]
  exact case_000471_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000471_bAtRank :
    translationBAtRankMask case_000471_rank case_000471_mask = case_000471_b := by
  rw [translationBAtRankMask, case_000471_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000471_b, case_000471_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000471_firstLine_eq :
    case_000471_support.firstLine case_000471_seq case_000471_b = case_000471_firstLine := by
  norm_num [case_000471_firstLine, case_000471_support, case_000471_seq, case_000471_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000471_secondLine_eq :
    case_000471_support.secondLine case_000471_seq case_000471_b = case_000471_secondLine := by
  norm_num [case_000471_secondLine, case_000471_support, case_000471_seq, case_000471_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000471_sourceAgrees :
    SourceAgrees case_000471_support case_000471_rank.val case_000471_mask := by
  intro hlt
  have hrank : (⟨case_000471_rank.val, hlt⟩ : Fin numPairWords) = case_000471_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000471_rank.val, hlt⟩ case_000471_mask =
        case_000471_seq := by
    simpa [hrank] using case_000471_seqAtRank
  simp [SourceChecks, hseq, case_000471_support,
    checkTranslationConstraintSource, case_000471_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000471_rows :
    OppOneMinusVarFirstRows case_000471_support case_000471_rank.val case_000471_mask := by
  intro hlt
  have hrank : (⟨case_000471_rank.val, hlt⟩ : Fin numPairWords) = case_000471_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000471_rank.val, hlt⟩ case_000471_mask =
        case_000471_seq := by
    simpa [hrank] using case_000471_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000471_rank.val, hlt⟩ case_000471_mask =
        case_000471_b := by
    simpa [hrank] using case_000471_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000471_support case_000471_rank.val hlt
          case_000471_mask = case_000471_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000471_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000471_support case_000471_rank.val hlt
          case_000471_mask = case_000471_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000471_secondLine_eq]
  have case_000471_rowFirst :
      OppPosRow (FirstLineAt case_000471_support case_000471_rank.val hlt case_000471_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000471_firstLine, OppPosRow]
  have case_000471_fixedSecond :
      FixedRow (SecondLineAt case_000471_support case_000471_rank.val hlt case_000471_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000471_secondLine, FixedRow]
  exact ⟨case_000471_rowFirst, case_000471_fixedSecond⟩

private theorem case_000471_existsRows :
    ExistsOppOneMinusVarFirstRows case_000471_rank.val case_000471_mask :=
  ⟨case_000471_support, case_000471_sourceAgrees, case_000471_rows⟩

private theorem case_000471_covered :
    RowPropertyParametricCovered case_000471_rank.val case_000471_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000471_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000472_rank : Fin numPairWords := ⟨177, by decide⟩
private def case_000472_mask : SignMask := ⟨45, by decide⟩
private def case_000472_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000472_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000472_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000472_b : Vec3 Rat := { x := (-92/27), y := (380/27), z := (-28/27) }
private def case_000472_firstLine : StrictLin2 := { a := 1, b := -1, c := (-181/23) }
private def case_000472_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000472_rankWord :
    rankPairWord? case_000472_word = some case_000472_rank := by
  decide

private theorem case_000472_unrank :
    unrankPairWord case_000472_rank = case_000472_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000472_word case_000472_rank).1
    case_000472_rankWord |>.symm

private theorem case_000472_seqChoice :
    translationChoiceSeq case_000472_word case_000472_mask = case_000472_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000472_seqAtRank :
    translationSeqAtRankMask case_000472_rank case_000472_mask = case_000472_seq := by
  rw [translationSeqAtRankMask, case_000472_unrank]
  exact case_000472_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000472_bAtRank :
    translationBAtRankMask case_000472_rank case_000472_mask = case_000472_b := by
  rw [translationBAtRankMask, case_000472_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000472_b, case_000472_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000472_firstLine_eq :
    case_000472_support.firstLine case_000472_seq case_000472_b = case_000472_firstLine := by
  norm_num [case_000472_firstLine, case_000472_support, case_000472_seq, case_000472_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000472_secondLine_eq :
    case_000472_support.secondLine case_000472_seq case_000472_b = case_000472_secondLine := by
  norm_num [case_000472_secondLine, case_000472_support, case_000472_seq, case_000472_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000472_sourceAgrees :
    SourceAgrees case_000472_support case_000472_rank.val case_000472_mask := by
  intro hlt
  have hrank : (⟨case_000472_rank.val, hlt⟩ : Fin numPairWords) = case_000472_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000472_rank.val, hlt⟩ case_000472_mask =
        case_000472_seq := by
    simpa [hrank] using case_000472_seqAtRank
  simp [SourceChecks, hseq, case_000472_support,
    checkTranslationConstraintSource, case_000472_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000472_rows :
    OppMinusOneVarFirstRows case_000472_support case_000472_rank.val case_000472_mask := by
  intro hlt
  have hrank : (⟨case_000472_rank.val, hlt⟩ : Fin numPairWords) = case_000472_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000472_rank.val, hlt⟩ case_000472_mask =
        case_000472_seq := by
    simpa [hrank] using case_000472_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000472_rank.val, hlt⟩ case_000472_mask =
        case_000472_b := by
    simpa [hrank] using case_000472_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000472_support case_000472_rank.val hlt
          case_000472_mask = case_000472_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000472_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000472_support case_000472_rank.val hlt
          case_000472_mask = case_000472_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000472_secondLine_eq]
  have case_000472_rowFirst :
      OppNegRow (FirstLineAt case_000472_support case_000472_rank.val hlt case_000472_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000472_firstLine, OppNegRow]
  have case_000472_fixedSecond :
      FixedRow (SecondLineAt case_000472_support case_000472_rank.val hlt case_000472_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000472_secondLine, FixedRow]
  exact ⟨case_000472_rowFirst, case_000472_fixedSecond⟩

private theorem case_000472_existsRows :
    ExistsOppMinusOneVarFirstRows case_000472_rank.val case_000472_mask :=
  ⟨case_000472_support, case_000472_sourceAgrees, case_000472_rows⟩

private theorem case_000472_covered :
    RowPropertyParametricCovered case_000472_rank.val case_000472_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000472_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000473_rank : Fin numPairWords := ⟨179, by decide⟩
private def case_000473_mask : SignMask := ⟨7, by decide⟩
private def case_000473_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000473_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000473_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000473_b : Vec3 Rat := { x := (-236/27), y := (236/27), z := (332/27) }
private def case_000473_firstLine : StrictLin2 := { a := (-59/51), b := (-59/51), c := (-709/51) }
private def case_000473_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000473_rankWord :
    rankPairWord? case_000473_word = some case_000473_rank := by
  decide

private theorem case_000473_unrank :
    unrankPairWord case_000473_rank = case_000473_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000473_word case_000473_rank).1
    case_000473_rankWord |>.symm

private theorem case_000473_seqChoice :
    translationChoiceSeq case_000473_word case_000473_mask = case_000473_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000473_seqAtRank :
    translationSeqAtRankMask case_000473_rank case_000473_mask = case_000473_seq := by
  rw [translationSeqAtRankMask, case_000473_unrank]
  exact case_000473_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000473_bAtRank :
    translationBAtRankMask case_000473_rank case_000473_mask = case_000473_b := by
  rw [translationBAtRankMask, case_000473_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000473_b, case_000473_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000473_firstLine_eq :
    case_000473_support.firstLine case_000473_seq case_000473_b = case_000473_firstLine := by
  norm_num [case_000473_firstLine, case_000473_support, case_000473_seq, case_000473_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000473_secondLine_eq :
    case_000473_support.secondLine case_000473_seq case_000473_b = case_000473_secondLine := by
  norm_num [case_000473_secondLine, case_000473_support, case_000473_seq, case_000473_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000473_sourceAgrees :
    SourceAgrees case_000473_support case_000473_rank.val case_000473_mask := by
  intro hlt
  have hrank : (⟨case_000473_rank.val, hlt⟩ : Fin numPairWords) = case_000473_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000473_rank.val, hlt⟩ case_000473_mask =
        case_000473_seq := by
    simpa [hrank] using case_000473_seqAtRank
  simp [SourceChecks, hseq, case_000473_support,
    checkTranslationConstraintSource, case_000473_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000473_rows :
    EqEqPosVarFirstRows case_000473_support case_000473_rank.val case_000473_mask := by
  intro hlt
  have hrank : (⟨case_000473_rank.val, hlt⟩ : Fin numPairWords) = case_000473_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000473_rank.val, hlt⟩ case_000473_mask =
        case_000473_seq := by
    simpa [hrank] using case_000473_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000473_rank.val, hlt⟩ case_000473_mask =
        case_000473_b := by
    simpa [hrank] using case_000473_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000473_support case_000473_rank.val hlt
          case_000473_mask = case_000473_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000473_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000473_support case_000473_rank.val hlt
          case_000473_mask = case_000473_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000473_secondLine_eq]
  have case_000473_rowFirst :
      EqEqPosRow (FirstLineAt case_000473_support case_000473_rank.val hlt case_000473_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000473_firstLine, EqEqPosRow]
  have case_000473_fixedSecond :
      FixedRow (SecondLineAt case_000473_support case_000473_rank.val hlt case_000473_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000473_secondLine, FixedRow]
  exact ⟨case_000473_rowFirst, case_000473_fixedSecond⟩

private theorem case_000473_existsRows :
    ExistsEqEqPosVarFirstRows case_000473_rank.val case_000473_mask :=
  ⟨case_000473_support, case_000473_sourceAgrees, case_000473_rows⟩

private theorem case_000473_covered :
    RowPropertyParametricCovered case_000473_rank.val case_000473_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000473_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000474_rank : Fin numPairWords := ⟨179, by decide⟩
private def case_000474_mask : SignMask := ⟨13, by decide⟩
private def case_000474_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000474_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000474_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000474_b : Vec3 Rat := { x := (-284/27), y := (284/27), z := (-124/27) }
private def case_000474_firstLine : StrictLin2 := { a := (-71/105), b := (-71/105), c := (-97/105) }
private def case_000474_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000474_rankWord :
    rankPairWord? case_000474_word = some case_000474_rank := by
  decide

private theorem case_000474_unrank :
    unrankPairWord case_000474_rank = case_000474_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000474_word case_000474_rank).1
    case_000474_rankWord |>.symm

private theorem case_000474_seqChoice :
    translationChoiceSeq case_000474_word case_000474_mask = case_000474_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000474_seqAtRank :
    translationSeqAtRankMask case_000474_rank case_000474_mask = case_000474_seq := by
  rw [translationSeqAtRankMask, case_000474_unrank]
  exact case_000474_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000474_bAtRank :
    translationBAtRankMask case_000474_rank case_000474_mask = case_000474_b := by
  rw [translationBAtRankMask, case_000474_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000474_b, case_000474_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000474_firstLine_eq :
    case_000474_support.firstLine case_000474_seq case_000474_b = case_000474_firstLine := by
  norm_num [case_000474_firstLine, case_000474_support, case_000474_seq, case_000474_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000474_secondLine_eq :
    case_000474_support.secondLine case_000474_seq case_000474_b = case_000474_secondLine := by
  norm_num [case_000474_secondLine, case_000474_support, case_000474_seq, case_000474_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000474_sourceAgrees :
    SourceAgrees case_000474_support case_000474_rank.val case_000474_mask := by
  intro hlt
  have hrank : (⟨case_000474_rank.val, hlt⟩ : Fin numPairWords) = case_000474_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000474_rank.val, hlt⟩ case_000474_mask =
        case_000474_seq := by
    simpa [hrank] using case_000474_seqAtRank
  simp [SourceChecks, hseq, case_000474_support,
    checkTranslationConstraintSource, case_000474_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000474_rows :
    EqEqPosVarFirstRows case_000474_support case_000474_rank.val case_000474_mask := by
  intro hlt
  have hrank : (⟨case_000474_rank.val, hlt⟩ : Fin numPairWords) = case_000474_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000474_rank.val, hlt⟩ case_000474_mask =
        case_000474_seq := by
    simpa [hrank] using case_000474_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000474_rank.val, hlt⟩ case_000474_mask =
        case_000474_b := by
    simpa [hrank] using case_000474_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000474_support case_000474_rank.val hlt
          case_000474_mask = case_000474_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000474_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000474_support case_000474_rank.val hlt
          case_000474_mask = case_000474_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000474_secondLine_eq]
  have case_000474_rowFirst :
      EqEqPosRow (FirstLineAt case_000474_support case_000474_rank.val hlt case_000474_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000474_firstLine, EqEqPosRow]
  have case_000474_fixedSecond :
      FixedRow (SecondLineAt case_000474_support case_000474_rank.val hlt case_000474_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000474_secondLine, FixedRow]
  exact ⟨case_000474_rowFirst, case_000474_fixedSecond⟩

private theorem case_000474_existsRows :
    ExistsEqEqPosVarFirstRows case_000474_rank.val case_000474_mask :=
  ⟨case_000474_support, case_000474_sourceAgrees, case_000474_rows⟩

private theorem case_000474_covered :
    RowPropertyParametricCovered case_000474_rank.val case_000474_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000474_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000475_rank : Fin numPairWords := ⟨179, by decide⟩
private def case_000475_mask : SignMask := ⟨15, by decide⟩
private def case_000475_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000475_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000475_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000475_b : Vec3 Rat := { x := (-284/27), y := (284/27), z := (92/27) }
private def case_000475_firstLine : StrictLin2 := { a := (-71/165), b := (-71/165), c := (-263/165) }
private def case_000475_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000475_rankWord :
    rankPairWord? case_000475_word = some case_000475_rank := by
  decide

private theorem case_000475_unrank :
    unrankPairWord case_000475_rank = case_000475_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000475_word case_000475_rank).1
    case_000475_rankWord |>.symm

private theorem case_000475_seqChoice :
    translationChoiceSeq case_000475_word case_000475_mask = case_000475_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000475_seqAtRank :
    translationSeqAtRankMask case_000475_rank case_000475_mask = case_000475_seq := by
  rw [translationSeqAtRankMask, case_000475_unrank]
  exact case_000475_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000475_bAtRank :
    translationBAtRankMask case_000475_rank case_000475_mask = case_000475_b := by
  rw [translationBAtRankMask, case_000475_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000475_b, case_000475_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000475_firstLine_eq :
    case_000475_support.firstLine case_000475_seq case_000475_b = case_000475_firstLine := by
  norm_num [case_000475_firstLine, case_000475_support, case_000475_seq, case_000475_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000475_secondLine_eq :
    case_000475_support.secondLine case_000475_seq case_000475_b = case_000475_secondLine := by
  norm_num [case_000475_secondLine, case_000475_support, case_000475_seq, case_000475_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000475_sourceAgrees :
    SourceAgrees case_000475_support case_000475_rank.val case_000475_mask := by
  intro hlt
  have hrank : (⟨case_000475_rank.val, hlt⟩ : Fin numPairWords) = case_000475_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000475_rank.val, hlt⟩ case_000475_mask =
        case_000475_seq := by
    simpa [hrank] using case_000475_seqAtRank
  simp [SourceChecks, hseq, case_000475_support,
    checkTranslationConstraintSource, case_000475_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000475_rows :
    EqEqPosVarFirstRows case_000475_support case_000475_rank.val case_000475_mask := by
  intro hlt
  have hrank : (⟨case_000475_rank.val, hlt⟩ : Fin numPairWords) = case_000475_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000475_rank.val, hlt⟩ case_000475_mask =
        case_000475_seq := by
    simpa [hrank] using case_000475_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000475_rank.val, hlt⟩ case_000475_mask =
        case_000475_b := by
    simpa [hrank] using case_000475_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000475_support case_000475_rank.val hlt
          case_000475_mask = case_000475_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000475_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000475_support case_000475_rank.val hlt
          case_000475_mask = case_000475_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000475_secondLine_eq]
  have case_000475_rowFirst :
      EqEqPosRow (FirstLineAt case_000475_support case_000475_rank.val hlt case_000475_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000475_firstLine, EqEqPosRow]
  have case_000475_fixedSecond :
      FixedRow (SecondLineAt case_000475_support case_000475_rank.val hlt case_000475_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000475_secondLine, FixedRow]
  exact ⟨case_000475_rowFirst, case_000475_fixedSecond⟩

private theorem case_000475_existsRows :
    ExistsEqEqPosVarFirstRows case_000475_rank.val case_000475_mask :=
  ⟨case_000475_support, case_000475_sourceAgrees, case_000475_rows⟩

private theorem case_000475_covered :
    RowPropertyParametricCovered case_000475_rank.val case_000475_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000475_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000476_rank : Fin numPairWords := ⟨179, by decide⟩
private def case_000476_mask : SignMask := ⟨18, by decide⟩
private def case_000476_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000476_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000476_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000476_b : Vec3 Rat := { x := (-172/27), y := (-332/27), z := (76/27) }
private def case_000476_firstLine : StrictLin2 := { a := -1, b := -1, c := (-85/43) }
private def case_000476_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000476_rankWord :
    rankPairWord? case_000476_word = some case_000476_rank := by
  decide

private theorem case_000476_unrank :
    unrankPairWord case_000476_rank = case_000476_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000476_word case_000476_rank).1
    case_000476_rankWord |>.symm

private theorem case_000476_seqChoice :
    translationChoiceSeq case_000476_word case_000476_mask = case_000476_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000476_seqAtRank :
    translationSeqAtRankMask case_000476_rank case_000476_mask = case_000476_seq := by
  rw [translationSeqAtRankMask, case_000476_unrank]
  exact case_000476_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000476_bAtRank :
    translationBAtRankMask case_000476_rank case_000476_mask = case_000476_b := by
  rw [translationBAtRankMask, case_000476_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000476_b, case_000476_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000476_firstLine_eq :
    case_000476_support.firstLine case_000476_seq case_000476_b = case_000476_firstLine := by
  norm_num [case_000476_firstLine, case_000476_support, case_000476_seq, case_000476_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000476_secondLine_eq :
    case_000476_support.secondLine case_000476_seq case_000476_b = case_000476_secondLine := by
  norm_num [case_000476_secondLine, case_000476_support, case_000476_seq, case_000476_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000476_sourceAgrees :
    SourceAgrees case_000476_support case_000476_rank.val case_000476_mask := by
  intro hlt
  have hrank : (⟨case_000476_rank.val, hlt⟩ : Fin numPairWords) = case_000476_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000476_rank.val, hlt⟩ case_000476_mask =
        case_000476_seq := by
    simpa [hrank] using case_000476_seqAtRank
  simp [SourceChecks, hseq, case_000476_support,
    checkTranslationConstraintSource, case_000476_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000476_rows :
    EqEqPosVarFirstRows case_000476_support case_000476_rank.val case_000476_mask := by
  intro hlt
  have hrank : (⟨case_000476_rank.val, hlt⟩ : Fin numPairWords) = case_000476_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000476_rank.val, hlt⟩ case_000476_mask =
        case_000476_seq := by
    simpa [hrank] using case_000476_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000476_rank.val, hlt⟩ case_000476_mask =
        case_000476_b := by
    simpa [hrank] using case_000476_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000476_support case_000476_rank.val hlt
          case_000476_mask = case_000476_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000476_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000476_support case_000476_rank.val hlt
          case_000476_mask = case_000476_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000476_secondLine_eq]
  have case_000476_rowFirst :
      EqEqPosRow (FirstLineAt case_000476_support case_000476_rank.val hlt case_000476_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000476_firstLine, EqEqPosRow]
  have case_000476_fixedSecond :
      FixedRow (SecondLineAt case_000476_support case_000476_rank.val hlt case_000476_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000476_secondLine, FixedRow]
  exact ⟨case_000476_rowFirst, case_000476_fixedSecond⟩

private theorem case_000476_existsRows :
    ExistsEqEqPosVarFirstRows case_000476_rank.val case_000476_mask :=
  ⟨case_000476_support, case_000476_sourceAgrees, case_000476_rows⟩

private theorem case_000476_covered :
    RowPropertyParametricCovered case_000476_rank.val case_000476_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000476_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000477_rank : Fin numPairWords := ⟨179, by decide⟩
private def case_000477_mask : SignMask := ⟨22, by decide⟩
private def case_000477_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000477_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000477_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000477_b : Vec3 Rat := { x := (-316/27), y := (-188/27), z := (220/27) }
private def case_000477_firstLine : StrictLin2 := { a := -1, b := 1, c := (-125/79) }
private def case_000477_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000477_rankWord :
    rankPairWord? case_000477_word = some case_000477_rank := by
  decide

private theorem case_000477_unrank :
    unrankPairWord case_000477_rank = case_000477_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000477_word case_000477_rank).1
    case_000477_rankWord |>.symm

private theorem case_000477_seqChoice :
    translationChoiceSeq case_000477_word case_000477_mask = case_000477_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000477_seqAtRank :
    translationSeqAtRankMask case_000477_rank case_000477_mask = case_000477_seq := by
  rw [translationSeqAtRankMask, case_000477_unrank]
  exact case_000477_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000477_bAtRank :
    translationBAtRankMask case_000477_rank case_000477_mask = case_000477_b := by
  rw [translationBAtRankMask, case_000477_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000477_b, case_000477_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000477_firstLine_eq :
    case_000477_support.firstLine case_000477_seq case_000477_b = case_000477_firstLine := by
  norm_num [case_000477_firstLine, case_000477_support, case_000477_seq, case_000477_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000477_secondLine_eq :
    case_000477_support.secondLine case_000477_seq case_000477_b = case_000477_secondLine := by
  norm_num [case_000477_secondLine, case_000477_support, case_000477_seq, case_000477_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000477_sourceAgrees :
    SourceAgrees case_000477_support case_000477_rank.val case_000477_mask := by
  intro hlt
  have hrank : (⟨case_000477_rank.val, hlt⟩ : Fin numPairWords) = case_000477_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000477_rank.val, hlt⟩ case_000477_mask =
        case_000477_seq := by
    simpa [hrank] using case_000477_seqAtRank
  simp [SourceChecks, hseq, case_000477_support,
    checkTranslationConstraintSource, case_000477_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000477_rows :
    OppOneMinusVarFirstRows case_000477_support case_000477_rank.val case_000477_mask := by
  intro hlt
  have hrank : (⟨case_000477_rank.val, hlt⟩ : Fin numPairWords) = case_000477_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000477_rank.val, hlt⟩ case_000477_mask =
        case_000477_seq := by
    simpa [hrank] using case_000477_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000477_rank.val, hlt⟩ case_000477_mask =
        case_000477_b := by
    simpa [hrank] using case_000477_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000477_support case_000477_rank.val hlt
          case_000477_mask = case_000477_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000477_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000477_support case_000477_rank.val hlt
          case_000477_mask = case_000477_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000477_secondLine_eq]
  have case_000477_rowFirst :
      OppPosRow (FirstLineAt case_000477_support case_000477_rank.val hlt case_000477_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000477_firstLine, OppPosRow]
  have case_000477_fixedSecond :
      FixedRow (SecondLineAt case_000477_support case_000477_rank.val hlt case_000477_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000477_secondLine, FixedRow]
  exact ⟨case_000477_rowFirst, case_000477_fixedSecond⟩

private theorem case_000477_existsRows :
    ExistsOppOneMinusVarFirstRows case_000477_rank.val case_000477_mask :=
  ⟨case_000477_support, case_000477_sourceAgrees, case_000477_rows⟩

private theorem case_000477_covered :
    RowPropertyParametricCovered case_000477_rank.val case_000477_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000477_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000478_rank : Fin numPairWords := ⟨179, by decide⟩
private def case_000478_mask : SignMask := ⟨24, by decide⟩
private def case_000478_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000478_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000478_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000478_b : Vec3 Rat := { x := (-220/27), y := (-284/27), z := (-380/27) }
private def case_000478_firstLine : StrictLin2 := { a := -1, b := -1, c := (-277/55) }
private def case_000478_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000478_rankWord :
    rankPairWord? case_000478_word = some case_000478_rank := by
  decide

private theorem case_000478_unrank :
    unrankPairWord case_000478_rank = case_000478_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000478_word case_000478_rank).1
    case_000478_rankWord |>.symm

private theorem case_000478_seqChoice :
    translationChoiceSeq case_000478_word case_000478_mask = case_000478_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000478_seqAtRank :
    translationSeqAtRankMask case_000478_rank case_000478_mask = case_000478_seq := by
  rw [translationSeqAtRankMask, case_000478_unrank]
  exact case_000478_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000478_bAtRank :
    translationBAtRankMask case_000478_rank case_000478_mask = case_000478_b := by
  rw [translationBAtRankMask, case_000478_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000478_b, case_000478_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000478_firstLine_eq :
    case_000478_support.firstLine case_000478_seq case_000478_b = case_000478_firstLine := by
  norm_num [case_000478_firstLine, case_000478_support, case_000478_seq, case_000478_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000478_secondLine_eq :
    case_000478_support.secondLine case_000478_seq case_000478_b = case_000478_secondLine := by
  norm_num [case_000478_secondLine, case_000478_support, case_000478_seq, case_000478_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000478_sourceAgrees :
    SourceAgrees case_000478_support case_000478_rank.val case_000478_mask := by
  intro hlt
  have hrank : (⟨case_000478_rank.val, hlt⟩ : Fin numPairWords) = case_000478_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000478_rank.val, hlt⟩ case_000478_mask =
        case_000478_seq := by
    simpa [hrank] using case_000478_seqAtRank
  simp [SourceChecks, hseq, case_000478_support,
    checkTranslationConstraintSource, case_000478_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000478_rows :
    EqEqPosVarFirstRows case_000478_support case_000478_rank.val case_000478_mask := by
  intro hlt
  have hrank : (⟨case_000478_rank.val, hlt⟩ : Fin numPairWords) = case_000478_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000478_rank.val, hlt⟩ case_000478_mask =
        case_000478_seq := by
    simpa [hrank] using case_000478_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000478_rank.val, hlt⟩ case_000478_mask =
        case_000478_b := by
    simpa [hrank] using case_000478_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000478_support case_000478_rank.val hlt
          case_000478_mask = case_000478_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000478_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000478_support case_000478_rank.val hlt
          case_000478_mask = case_000478_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000478_secondLine_eq]
  have case_000478_rowFirst :
      EqEqPosRow (FirstLineAt case_000478_support case_000478_rank.val hlt case_000478_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000478_firstLine, EqEqPosRow]
  have case_000478_fixedSecond :
      FixedRow (SecondLineAt case_000478_support case_000478_rank.val hlt case_000478_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000478_secondLine, FixedRow]
  exact ⟨case_000478_rowFirst, case_000478_fixedSecond⟩

private theorem case_000478_existsRows :
    ExistsEqEqPosVarFirstRows case_000478_rank.val case_000478_mask :=
  ⟨case_000478_support, case_000478_sourceAgrees, case_000478_rows⟩

private theorem case_000478_covered :
    RowPropertyParametricCovered case_000478_rank.val case_000478_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000478_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000479_rank : Fin numPairWords := ⟨179, by decide⟩
private def case_000479_mask : SignMask := ⟨29, by decide⟩
private def case_000479_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000479_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000479_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000479_b : Vec3 Rat := { x := (-364/27), y := (76/27), z := (-236/27) }
private def case_000479_firstLine : StrictLin2 := { a := (-91/51), b := (-91/51), c := (-251/51) }
private def case_000479_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000479_rankWord :
    rankPairWord? case_000479_word = some case_000479_rank := by
  decide

private theorem case_000479_unrank :
    unrankPairWord case_000479_rank = case_000479_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000479_word case_000479_rank).1
    case_000479_rankWord |>.symm

private theorem case_000479_seqChoice :
    translationChoiceSeq case_000479_word case_000479_mask = case_000479_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000479_seqAtRank :
    translationSeqAtRankMask case_000479_rank case_000479_mask = case_000479_seq := by
  rw [translationSeqAtRankMask, case_000479_unrank]
  exact case_000479_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000479_bAtRank :
    translationBAtRankMask case_000479_rank case_000479_mask = case_000479_b := by
  rw [translationBAtRankMask, case_000479_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000479_b, case_000479_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000479_firstLine_eq :
    case_000479_support.firstLine case_000479_seq case_000479_b = case_000479_firstLine := by
  norm_num [case_000479_firstLine, case_000479_support, case_000479_seq, case_000479_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000479_secondLine_eq :
    case_000479_support.secondLine case_000479_seq case_000479_b = case_000479_secondLine := by
  norm_num [case_000479_secondLine, case_000479_support, case_000479_seq, case_000479_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000479_sourceAgrees :
    SourceAgrees case_000479_support case_000479_rank.val case_000479_mask := by
  intro hlt
  have hrank : (⟨case_000479_rank.val, hlt⟩ : Fin numPairWords) = case_000479_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000479_rank.val, hlt⟩ case_000479_mask =
        case_000479_seq := by
    simpa [hrank] using case_000479_seqAtRank
  simp [SourceChecks, hseq, case_000479_support,
    checkTranslationConstraintSource, case_000479_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000479_rows :
    EqEqPosVarFirstRows case_000479_support case_000479_rank.val case_000479_mask := by
  intro hlt
  have hrank : (⟨case_000479_rank.val, hlt⟩ : Fin numPairWords) = case_000479_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000479_rank.val, hlt⟩ case_000479_mask =
        case_000479_seq := by
    simpa [hrank] using case_000479_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000479_rank.val, hlt⟩ case_000479_mask =
        case_000479_b := by
    simpa [hrank] using case_000479_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000479_support case_000479_rank.val hlt
          case_000479_mask = case_000479_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000479_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000479_support case_000479_rank.val hlt
          case_000479_mask = case_000479_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000479_secondLine_eq]
  have case_000479_rowFirst :
      EqEqPosRow (FirstLineAt case_000479_support case_000479_rank.val hlt case_000479_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000479_firstLine, EqEqPosRow]
  have case_000479_fixedSecond :
      FixedRow (SecondLineAt case_000479_support case_000479_rank.val hlt case_000479_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000479_secondLine, FixedRow]
  exact ⟨case_000479_rowFirst, case_000479_fixedSecond⟩

private theorem case_000479_existsRows :
    ExistsEqEqPosVarFirstRows case_000479_rank.val case_000479_mask :=
  ⟨case_000479_support, case_000479_sourceAgrees, case_000479_rows⟩

private theorem case_000479_covered :
    RowPropertyParametricCovered case_000479_rank.val case_000479_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000479_existsRows

inductive Group014Covered : Nat -> SignMask -> Prop
  | case_000448 : Group014Covered case_000448_rank.val case_000448_mask
  | case_000449 : Group014Covered case_000449_rank.val case_000449_mask
  | case_000450 : Group014Covered case_000450_rank.val case_000450_mask
  | case_000451 : Group014Covered case_000451_rank.val case_000451_mask
  | case_000452 : Group014Covered case_000452_rank.val case_000452_mask
  | case_000453 : Group014Covered case_000453_rank.val case_000453_mask
  | case_000454 : Group014Covered case_000454_rank.val case_000454_mask
  | case_000455 : Group014Covered case_000455_rank.val case_000455_mask
  | case_000456 : Group014Covered case_000456_rank.val case_000456_mask
  | case_000457 : Group014Covered case_000457_rank.val case_000457_mask
  | case_000458 : Group014Covered case_000458_rank.val case_000458_mask
  | case_000459 : Group014Covered case_000459_rank.val case_000459_mask
  | case_000460 : Group014Covered case_000460_rank.val case_000460_mask
  | case_000461 : Group014Covered case_000461_rank.val case_000461_mask
  | case_000462 : Group014Covered case_000462_rank.val case_000462_mask
  | case_000463 : Group014Covered case_000463_rank.val case_000463_mask
  | case_000464 : Group014Covered case_000464_rank.val case_000464_mask
  | case_000465 : Group014Covered case_000465_rank.val case_000465_mask
  | case_000466 : Group014Covered case_000466_rank.val case_000466_mask
  | case_000467 : Group014Covered case_000467_rank.val case_000467_mask
  | case_000468 : Group014Covered case_000468_rank.val case_000468_mask
  | case_000469 : Group014Covered case_000469_rank.val case_000469_mask
  | case_000470 : Group014Covered case_000470_rank.val case_000470_mask
  | case_000471 : Group014Covered case_000471_rank.val case_000471_mask
  | case_000472 : Group014Covered case_000472_rank.val case_000472_mask
  | case_000473 : Group014Covered case_000473_rank.val case_000473_mask
  | case_000474 : Group014Covered case_000474_rank.val case_000474_mask
  | case_000475 : Group014Covered case_000475_rank.val case_000475_mask
  | case_000476 : Group014Covered case_000476_rank.val case_000476_mask
  | case_000477 : Group014Covered case_000477_rank.val case_000477_mask
  | case_000478 : Group014Covered case_000478_rank.val case_000478_mask
  | case_000479 : Group014Covered case_000479_rank.val case_000479_mask

theorem Group014GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group014Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000448 =>
      exact RowPropertyParametricCovered.kills case_000448_covered
  | case_000449 =>
      exact RowPropertyParametricCovered.kills case_000449_covered
  | case_000450 =>
      exact RowPropertyParametricCovered.kills case_000450_covered
  | case_000451 =>
      exact RowPropertyParametricCovered.kills case_000451_covered
  | case_000452 =>
      exact RowPropertyParametricCovered.kills case_000452_covered
  | case_000453 =>
      exact RowPropertyParametricCovered.kills case_000453_covered
  | case_000454 =>
      exact RowPropertyParametricCovered.kills case_000454_covered
  | case_000455 =>
      exact RowPropertyParametricCovered.kills case_000455_covered
  | case_000456 =>
      exact RowPropertyParametricCovered.kills case_000456_covered
  | case_000457 =>
      exact RowPropertyParametricCovered.kills case_000457_covered
  | case_000458 =>
      exact RowPropertyParametricCovered.kills case_000458_covered
  | case_000459 =>
      exact RowPropertyParametricCovered.kills case_000459_covered
  | case_000460 =>
      exact RowPropertyParametricCovered.kills case_000460_covered
  | case_000461 =>
      exact RowPropertyParametricCovered.kills case_000461_covered
  | case_000462 =>
      exact RowPropertyParametricCovered.kills case_000462_covered
  | case_000463 =>
      exact RowPropertyParametricCovered.kills case_000463_covered
  | case_000464 =>
      exact RowPropertyParametricCovered.kills case_000464_covered
  | case_000465 =>
      exact RowPropertyParametricCovered.kills case_000465_covered
  | case_000466 =>
      exact RowPropertyParametricCovered.kills case_000466_covered
  | case_000467 =>
      exact RowPropertyParametricCovered.kills case_000467_covered
  | case_000468 =>
      exact RowPropertyParametricCovered.kills case_000468_covered
  | case_000469 =>
      exact RowPropertyParametricCovered.kills case_000469_covered
  | case_000470 =>
      exact RowPropertyParametricCovered.kills case_000470_covered
  | case_000471 =>
      exact RowPropertyParametricCovered.kills case_000471_covered
  | case_000472 =>
      exact RowPropertyParametricCovered.kills case_000472_covered
  | case_000473 =>
      exact RowPropertyParametricCovered.kills case_000473_covered
  | case_000474 =>
      exact RowPropertyParametricCovered.kills case_000474_covered
  | case_000475 =>
      exact RowPropertyParametricCovered.kills case_000475_covered
  | case_000476 =>
      exact RowPropertyParametricCovered.kills case_000476_covered
  | case_000477 =>
      exact RowPropertyParametricCovered.kills case_000477_covered
  | case_000478 =>
      exact RowPropertyParametricCovered.kills case_000478_covered
  | case_000479 =>
      exact RowPropertyParametricCovered.kills case_000479_covered

theorem Group014_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group014
