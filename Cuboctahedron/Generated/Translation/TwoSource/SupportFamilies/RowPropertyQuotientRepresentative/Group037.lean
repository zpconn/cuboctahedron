import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group037

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
private def case_001184_rank : Fin numPairWords := ⟨842, by decide⟩
private def case_001184_mask : SignMask := ⟨24, by decide⟩
private def case_001184_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001184_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001184_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001184_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_001184_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_001184_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001184_rankWord :
    rankPairWord? case_001184_word = some case_001184_rank := by
  decide

private theorem case_001184_unrank :
    unrankPairWord case_001184_rank = case_001184_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001184_word case_001184_rank).1
    case_001184_rankWord |>.symm

private theorem case_001184_seqChoice :
    translationChoiceSeq case_001184_word case_001184_mask = case_001184_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001184_seqAtRank :
    translationSeqAtRankMask case_001184_rank case_001184_mask = case_001184_seq := by
  rw [translationSeqAtRankMask, case_001184_unrank]
  exact case_001184_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001184_bAtRank :
    translationBAtRankMask case_001184_rank case_001184_mask = case_001184_b := by
  rw [translationBAtRankMask, case_001184_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001184_b, case_001184_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001184_firstLine_eq :
    case_001184_support.firstLine case_001184_seq case_001184_b = case_001184_firstLine := by
  norm_num [case_001184_firstLine, case_001184_support, case_001184_seq, case_001184_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001184_secondLine_eq :
    case_001184_support.secondLine case_001184_seq case_001184_b = case_001184_secondLine := by
  norm_num [case_001184_secondLine, case_001184_support, case_001184_seq, case_001184_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001184_sourceAgrees :
    SourceAgrees case_001184_support case_001184_rank.val case_001184_mask := by
  intro hlt
  have hrank : (⟨case_001184_rank.val, hlt⟩ : Fin numPairWords) = case_001184_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001184_rank.val, hlt⟩ case_001184_mask =
        case_001184_seq := by
    simpa [hrank] using case_001184_seqAtRank
  simp [SourceChecks, hseq, case_001184_support,
    checkTranslationConstraintSource, case_001184_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001184_rows :
    EqEqPosVarFirstRows case_001184_support case_001184_rank.val case_001184_mask := by
  intro hlt
  have hrank : (⟨case_001184_rank.val, hlt⟩ : Fin numPairWords) = case_001184_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001184_rank.val, hlt⟩ case_001184_mask =
        case_001184_seq := by
    simpa [hrank] using case_001184_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001184_rank.val, hlt⟩ case_001184_mask =
        case_001184_b := by
    simpa [hrank] using case_001184_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001184_support case_001184_rank.val hlt
          case_001184_mask = case_001184_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001184_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001184_support case_001184_rank.val hlt
          case_001184_mask = case_001184_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001184_secondLine_eq]
  have case_001184_rowFirst :
      EqEqPosRow (FirstLineAt case_001184_support case_001184_rank.val hlt case_001184_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001184_firstLine, EqEqPosRow]
  have case_001184_fixedSecond :
      FixedRow (SecondLineAt case_001184_support case_001184_rank.val hlt case_001184_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001184_secondLine, FixedRow]
  exact ⟨case_001184_rowFirst, case_001184_fixedSecond⟩

private theorem case_001184_existsRows :
    ExistsEqEqPosVarFirstRows case_001184_rank.val case_001184_mask :=
  ⟨case_001184_support, case_001184_sourceAgrees, case_001184_rows⟩

private theorem case_001184_covered :
    RowPropertyParametricCovered case_001184_rank.val case_001184_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001184_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001185_rank : Fin numPairWords := ⟨842, by decide⟩
private def case_001185_mask : SignMask := ⟨28, by decide⟩
private def case_001185_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001185_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001185_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001185_b : Vec3 Rat := { x := (-100/9), y := (-4/9), z := (-68/9) }
private def case_001185_firstLine : StrictLin2 := { a := (-25/9), b := (25/9), c := (-19/3) }
private def case_001185_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001185_rankWord :
    rankPairWord? case_001185_word = some case_001185_rank := by
  decide

private theorem case_001185_unrank :
    unrankPairWord case_001185_rank = case_001185_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001185_word case_001185_rank).1
    case_001185_rankWord |>.symm

private theorem case_001185_seqChoice :
    translationChoiceSeq case_001185_word case_001185_mask = case_001185_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001185_seqAtRank :
    translationSeqAtRankMask case_001185_rank case_001185_mask = case_001185_seq := by
  rw [translationSeqAtRankMask, case_001185_unrank]
  exact case_001185_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001185_bAtRank :
    translationBAtRankMask case_001185_rank case_001185_mask = case_001185_b := by
  rw [translationBAtRankMask, case_001185_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001185_b, case_001185_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001185_firstLine_eq :
    case_001185_support.firstLine case_001185_seq case_001185_b = case_001185_firstLine := by
  norm_num [case_001185_firstLine, case_001185_support, case_001185_seq, case_001185_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001185_secondLine_eq :
    case_001185_support.secondLine case_001185_seq case_001185_b = case_001185_secondLine := by
  norm_num [case_001185_secondLine, case_001185_support, case_001185_seq, case_001185_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001185_sourceAgrees :
    SourceAgrees case_001185_support case_001185_rank.val case_001185_mask := by
  intro hlt
  have hrank : (⟨case_001185_rank.val, hlt⟩ : Fin numPairWords) = case_001185_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001185_rank.val, hlt⟩ case_001185_mask =
        case_001185_seq := by
    simpa [hrank] using case_001185_seqAtRank
  simp [SourceChecks, hseq, case_001185_support,
    checkTranslationConstraintSource, case_001185_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001185_rows :
    OppOneMinusVarFirstRows case_001185_support case_001185_rank.val case_001185_mask := by
  intro hlt
  have hrank : (⟨case_001185_rank.val, hlt⟩ : Fin numPairWords) = case_001185_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001185_rank.val, hlt⟩ case_001185_mask =
        case_001185_seq := by
    simpa [hrank] using case_001185_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001185_rank.val, hlt⟩ case_001185_mask =
        case_001185_b := by
    simpa [hrank] using case_001185_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001185_support case_001185_rank.val hlt
          case_001185_mask = case_001185_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001185_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001185_support case_001185_rank.val hlt
          case_001185_mask = case_001185_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001185_secondLine_eq]
  have case_001185_rowFirst :
      OppPosRow (FirstLineAt case_001185_support case_001185_rank.val hlt case_001185_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001185_firstLine, OppPosRow]
  have case_001185_fixedSecond :
      FixedRow (SecondLineAt case_001185_support case_001185_rank.val hlt case_001185_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001185_secondLine, FixedRow]
  exact ⟨case_001185_rowFirst, case_001185_fixedSecond⟩

private theorem case_001185_existsRows :
    ExistsOppOneMinusVarFirstRows case_001185_rank.val case_001185_mask :=
  ⟨case_001185_support, case_001185_sourceAgrees, case_001185_rows⟩

private theorem case_001185_covered :
    RowPropertyParametricCovered case_001185_rank.val case_001185_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001185_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001186_rank : Fin numPairWords := ⟨842, by decide⟩
private def case_001186_mask : SignMask := ⟨30, by decide⟩
private def case_001186_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001186_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001186_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001186_b : Vec3 Rat := { x := (-100/9), y := (-4/9), z := (4/9) }
private def case_001186_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001186_secondLine : StrictLin2 := { a := (-9/14), b := (-9/14), c := (-15/7) }

private theorem case_001186_rankWord :
    rankPairWord? case_001186_word = some case_001186_rank := by
  decide

private theorem case_001186_unrank :
    unrankPairWord case_001186_rank = case_001186_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001186_word case_001186_rank).1
    case_001186_rankWord |>.symm

private theorem case_001186_seqChoice :
    translationChoiceSeq case_001186_word case_001186_mask = case_001186_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001186_seqAtRank :
    translationSeqAtRankMask case_001186_rank case_001186_mask = case_001186_seq := by
  rw [translationSeqAtRankMask, case_001186_unrank]
  exact case_001186_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001186_bAtRank :
    translationBAtRankMask case_001186_rank case_001186_mask = case_001186_b := by
  rw [translationBAtRankMask, case_001186_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001186_b, case_001186_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001186_firstLine_eq :
    case_001186_support.firstLine case_001186_seq case_001186_b = case_001186_firstLine := by
  norm_num [case_001186_firstLine, case_001186_support, case_001186_seq, case_001186_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001186_secondLine_eq :
    case_001186_support.secondLine case_001186_seq case_001186_b = case_001186_secondLine := by
  norm_num [case_001186_secondLine, case_001186_support, case_001186_seq, case_001186_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001186_sourceAgrees :
    SourceAgrees case_001186_support case_001186_rank.val case_001186_mask := by
  intro hlt
  have hrank : (⟨case_001186_rank.val, hlt⟩ : Fin numPairWords) = case_001186_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001186_rank.val, hlt⟩ case_001186_mask =
        case_001186_seq := by
    simpa [hrank] using case_001186_seqAtRank
  simp [SourceChecks, hseq, case_001186_support,
    checkTranslationConstraintSource, case_001186_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001186_rows :
    EqEqPosVarSecondRows case_001186_support case_001186_rank.val case_001186_mask := by
  intro hlt
  have hrank : (⟨case_001186_rank.val, hlt⟩ : Fin numPairWords) = case_001186_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001186_rank.val, hlt⟩ case_001186_mask =
        case_001186_seq := by
    simpa [hrank] using case_001186_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001186_rank.val, hlt⟩ case_001186_mask =
        case_001186_b := by
    simpa [hrank] using case_001186_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001186_support case_001186_rank.val hlt
          case_001186_mask = case_001186_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001186_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001186_support case_001186_rank.val hlt
          case_001186_mask = case_001186_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001186_secondLine_eq]
  have case_001186_fixedFirst :
      FixedRow (FirstLineAt case_001186_support case_001186_rank.val hlt case_001186_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001186_firstLine, FixedRow]
  have case_001186_rowSecond :
      EqEqPosRow (SecondLineAt case_001186_support case_001186_rank.val hlt case_001186_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001186_secondLine, EqEqPosRow]
  exact ⟨case_001186_fixedFirst, case_001186_rowSecond⟩

private theorem case_001186_existsRows :
    ExistsEqEqPosVarSecondRows case_001186_rank.val case_001186_mask :=
  ⟨case_001186_support, case_001186_sourceAgrees, case_001186_rows⟩

private theorem case_001186_covered :
    RowPropertyParametricCovered case_001186_rank.val case_001186_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001186_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001187_rank : Fin numPairWords := ⟨842, by decide⟩
private def case_001187_mask : SignMask := ⟨31, by decide⟩
private def case_001187_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001187_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001187_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_001187_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (4/9) }
private def case_001187_firstLine : StrictLin2 := { a := (-25/9), b := (25/9), c := (-19/3) }
private def case_001187_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001187_rankWord :
    rankPairWord? case_001187_word = some case_001187_rank := by
  decide

private theorem case_001187_unrank :
    unrankPairWord case_001187_rank = case_001187_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001187_word case_001187_rank).1
    case_001187_rankWord |>.symm

private theorem case_001187_seqChoice :
    translationChoiceSeq case_001187_word case_001187_mask = case_001187_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001187_seqAtRank :
    translationSeqAtRankMask case_001187_rank case_001187_mask = case_001187_seq := by
  rw [translationSeqAtRankMask, case_001187_unrank]
  exact case_001187_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001187_bAtRank :
    translationBAtRankMask case_001187_rank case_001187_mask = case_001187_b := by
  rw [translationBAtRankMask, case_001187_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001187_b, case_001187_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001187_firstLine_eq :
    case_001187_support.firstLine case_001187_seq case_001187_b = case_001187_firstLine := by
  norm_num [case_001187_firstLine, case_001187_support, case_001187_seq, case_001187_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001187_secondLine_eq :
    case_001187_support.secondLine case_001187_seq case_001187_b = case_001187_secondLine := by
  norm_num [case_001187_secondLine, case_001187_support, case_001187_seq, case_001187_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001187_sourceAgrees :
    SourceAgrees case_001187_support case_001187_rank.val case_001187_mask := by
  intro hlt
  have hrank : (⟨case_001187_rank.val, hlt⟩ : Fin numPairWords) = case_001187_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001187_rank.val, hlt⟩ case_001187_mask =
        case_001187_seq := by
    simpa [hrank] using case_001187_seqAtRank
  simp [SourceChecks, hseq, case_001187_support,
    checkTranslationConstraintSource, case_001187_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001187_rows :
    OppOneMinusVarFirstRows case_001187_support case_001187_rank.val case_001187_mask := by
  intro hlt
  have hrank : (⟨case_001187_rank.val, hlt⟩ : Fin numPairWords) = case_001187_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001187_rank.val, hlt⟩ case_001187_mask =
        case_001187_seq := by
    simpa [hrank] using case_001187_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001187_rank.val, hlt⟩ case_001187_mask =
        case_001187_b := by
    simpa [hrank] using case_001187_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001187_support case_001187_rank.val hlt
          case_001187_mask = case_001187_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001187_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001187_support case_001187_rank.val hlt
          case_001187_mask = case_001187_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001187_secondLine_eq]
  have case_001187_rowFirst :
      OppPosRow (FirstLineAt case_001187_support case_001187_rank.val hlt case_001187_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001187_firstLine, OppPosRow]
  have case_001187_fixedSecond :
      FixedRow (SecondLineAt case_001187_support case_001187_rank.val hlt case_001187_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001187_secondLine, FixedRow]
  exact ⟨case_001187_rowFirst, case_001187_fixedSecond⟩

private theorem case_001187_existsRows :
    ExistsOppOneMinusVarFirstRows case_001187_rank.val case_001187_mask :=
  ⟨case_001187_support, case_001187_sourceAgrees, case_001187_rows⟩

private theorem case_001187_covered :
    RowPropertyParametricCovered case_001187_rank.val case_001187_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001187_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_001188_rank : Fin numPairWords := ⟨842, by decide⟩
private def case_001188_mask : SignMask := ⟨47, by decide⟩
private def case_001188_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001188_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001188_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def case_001188_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_001188_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_001188_secondLine : StrictLin2 := { a := (9/110), b := (-9/110), c := (-4/11) }

private theorem case_001188_rankWord :
    rankPairWord? case_001188_word = some case_001188_rank := by
  decide

private theorem case_001188_unrank :
    unrankPairWord case_001188_rank = case_001188_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001188_word case_001188_rank).1
    case_001188_rankWord |>.symm

private theorem case_001188_seqChoice :
    translationChoiceSeq case_001188_word case_001188_mask = case_001188_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001188_seqAtRank :
    translationSeqAtRankMask case_001188_rank case_001188_mask = case_001188_seq := by
  rw [translationSeqAtRankMask, case_001188_unrank]
  exact case_001188_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001188_bAtRank :
    translationBAtRankMask case_001188_rank case_001188_mask = case_001188_b := by
  rw [translationBAtRankMask, case_001188_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001188_b, case_001188_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001188_firstLine_eq :
    case_001188_support.firstLine case_001188_seq case_001188_b = case_001188_firstLine := by
  norm_num [case_001188_firstLine, case_001188_support, case_001188_seq, case_001188_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001188_secondLine_eq :
    case_001188_support.secondLine case_001188_seq case_001188_b = case_001188_secondLine := by
  norm_num [case_001188_secondLine, case_001188_support, case_001188_seq, case_001188_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001188_sourceAgrees :
    SourceAgrees case_001188_support case_001188_rank.val case_001188_mask := by
  intro hlt
  have hrank : (⟨case_001188_rank.val, hlt⟩ : Fin numPairWords) = case_001188_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001188_rank.val, hlt⟩ case_001188_mask =
        case_001188_seq := by
    simpa [hrank] using case_001188_seqAtRank
  simp [SourceChecks, hseq, case_001188_support,
    checkTranslationConstraintSource, case_001188_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001188_rows :
    OppMinusOneVarSecondRows case_001188_support case_001188_rank.val case_001188_mask := by
  intro hlt
  have hrank : (⟨case_001188_rank.val, hlt⟩ : Fin numPairWords) = case_001188_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001188_rank.val, hlt⟩ case_001188_mask =
        case_001188_seq := by
    simpa [hrank] using case_001188_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001188_rank.val, hlt⟩ case_001188_mask =
        case_001188_b := by
    simpa [hrank] using case_001188_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001188_support case_001188_rank.val hlt
          case_001188_mask = case_001188_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001188_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001188_support case_001188_rank.val hlt
          case_001188_mask = case_001188_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001188_secondLine_eq]
  have case_001188_fixedFirst :
      FixedRow (FirstLineAt case_001188_support case_001188_rank.val hlt case_001188_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001188_firstLine, FixedRow]
  have case_001188_rowSecond :
      OppNegRow (SecondLineAt case_001188_support case_001188_rank.val hlt case_001188_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001188_secondLine, OppNegRow]
  exact ⟨case_001188_fixedFirst, case_001188_rowSecond⟩

private theorem case_001188_existsRows :
    ExistsOppMinusOneVarSecondRows case_001188_rank.val case_001188_mask :=
  ⟨case_001188_support, case_001188_sourceAgrees, case_001188_rows⟩

private theorem case_001188_covered :
    RowPropertyParametricCovered case_001188_rank.val case_001188_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_001188_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001189_rank : Fin numPairWords := ⟨842, by decide⟩
private def case_001189_mask : SignMask := ⟨50, by decide⟩
private def case_001189_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001189_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001189_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001189_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (116/9) }
private def case_001189_firstLine : StrictLin2 := { a := -1, b := 1, c := (-111/5) }
private def case_001189_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001189_rankWord :
    rankPairWord? case_001189_word = some case_001189_rank := by
  decide

private theorem case_001189_unrank :
    unrankPairWord case_001189_rank = case_001189_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001189_word case_001189_rank).1
    case_001189_rankWord |>.symm

private theorem case_001189_seqChoice :
    translationChoiceSeq case_001189_word case_001189_mask = case_001189_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001189_seqAtRank :
    translationSeqAtRankMask case_001189_rank case_001189_mask = case_001189_seq := by
  rw [translationSeqAtRankMask, case_001189_unrank]
  exact case_001189_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001189_bAtRank :
    translationBAtRankMask case_001189_rank case_001189_mask = case_001189_b := by
  rw [translationBAtRankMask, case_001189_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001189_b, case_001189_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001189_firstLine_eq :
    case_001189_support.firstLine case_001189_seq case_001189_b = case_001189_firstLine := by
  norm_num [case_001189_firstLine, case_001189_support, case_001189_seq, case_001189_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001189_secondLine_eq :
    case_001189_support.secondLine case_001189_seq case_001189_b = case_001189_secondLine := by
  norm_num [case_001189_secondLine, case_001189_support, case_001189_seq, case_001189_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001189_sourceAgrees :
    SourceAgrees case_001189_support case_001189_rank.val case_001189_mask := by
  intro hlt
  have hrank : (⟨case_001189_rank.val, hlt⟩ : Fin numPairWords) = case_001189_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001189_rank.val, hlt⟩ case_001189_mask =
        case_001189_seq := by
    simpa [hrank] using case_001189_seqAtRank
  simp [SourceChecks, hseq, case_001189_support,
    checkTranslationConstraintSource, case_001189_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001189_rows :
    OppOneMinusVarFirstRows case_001189_support case_001189_rank.val case_001189_mask := by
  intro hlt
  have hrank : (⟨case_001189_rank.val, hlt⟩ : Fin numPairWords) = case_001189_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001189_rank.val, hlt⟩ case_001189_mask =
        case_001189_seq := by
    simpa [hrank] using case_001189_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001189_rank.val, hlt⟩ case_001189_mask =
        case_001189_b := by
    simpa [hrank] using case_001189_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001189_support case_001189_rank.val hlt
          case_001189_mask = case_001189_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001189_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001189_support case_001189_rank.val hlt
          case_001189_mask = case_001189_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001189_secondLine_eq]
  have case_001189_rowFirst :
      OppPosRow (FirstLineAt case_001189_support case_001189_rank.val hlt case_001189_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001189_firstLine, OppPosRow]
  have case_001189_fixedSecond :
      FixedRow (SecondLineAt case_001189_support case_001189_rank.val hlt case_001189_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001189_secondLine, FixedRow]
  exact ⟨case_001189_rowFirst, case_001189_fixedSecond⟩

private theorem case_001189_existsRows :
    ExistsOppOneMinusVarFirstRows case_001189_rank.val case_001189_mask :=
  ⟨case_001189_support, case_001189_sourceAgrees, case_001189_rows⟩

private theorem case_001189_covered :
    RowPropertyParametricCovered case_001189_rank.val case_001189_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001189_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001190_rank : Fin numPairWords := ⟨842, by decide⟩
private def case_001190_mask : SignMask := ⟨55, by decide⟩
private def case_001190_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001190_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001190_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001190_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_001190_firstLine : StrictLin2 := { a := -1, b := 1, c := (-13/3) }
private def case_001190_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001190_rankWord :
    rankPairWord? case_001190_word = some case_001190_rank := by
  decide

private theorem case_001190_unrank :
    unrankPairWord case_001190_rank = case_001190_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001190_word case_001190_rank).1
    case_001190_rankWord |>.symm

private theorem case_001190_seqChoice :
    translationChoiceSeq case_001190_word case_001190_mask = case_001190_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001190_seqAtRank :
    translationSeqAtRankMask case_001190_rank case_001190_mask = case_001190_seq := by
  rw [translationSeqAtRankMask, case_001190_unrank]
  exact case_001190_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001190_bAtRank :
    translationBAtRankMask case_001190_rank case_001190_mask = case_001190_b := by
  rw [translationBAtRankMask, case_001190_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001190_b, case_001190_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001190_firstLine_eq :
    case_001190_support.firstLine case_001190_seq case_001190_b = case_001190_firstLine := by
  norm_num [case_001190_firstLine, case_001190_support, case_001190_seq, case_001190_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001190_secondLine_eq :
    case_001190_support.secondLine case_001190_seq case_001190_b = case_001190_secondLine := by
  norm_num [case_001190_secondLine, case_001190_support, case_001190_seq, case_001190_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001190_sourceAgrees :
    SourceAgrees case_001190_support case_001190_rank.val case_001190_mask := by
  intro hlt
  have hrank : (⟨case_001190_rank.val, hlt⟩ : Fin numPairWords) = case_001190_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001190_rank.val, hlt⟩ case_001190_mask =
        case_001190_seq := by
    simpa [hrank] using case_001190_seqAtRank
  simp [SourceChecks, hseq, case_001190_support,
    checkTranslationConstraintSource, case_001190_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001190_rows :
    OppOneMinusVarFirstRows case_001190_support case_001190_rank.val case_001190_mask := by
  intro hlt
  have hrank : (⟨case_001190_rank.val, hlt⟩ : Fin numPairWords) = case_001190_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001190_rank.val, hlt⟩ case_001190_mask =
        case_001190_seq := by
    simpa [hrank] using case_001190_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001190_rank.val, hlt⟩ case_001190_mask =
        case_001190_b := by
    simpa [hrank] using case_001190_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001190_support case_001190_rank.val hlt
          case_001190_mask = case_001190_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001190_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001190_support case_001190_rank.val hlt
          case_001190_mask = case_001190_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001190_secondLine_eq]
  have case_001190_rowFirst :
      OppPosRow (FirstLineAt case_001190_support case_001190_rank.val hlt case_001190_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001190_firstLine, OppPosRow]
  have case_001190_fixedSecond :
      FixedRow (SecondLineAt case_001190_support case_001190_rank.val hlt case_001190_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001190_secondLine, FixedRow]
  exact ⟨case_001190_rowFirst, case_001190_fixedSecond⟩

private theorem case_001190_existsRows :
    ExistsOppOneMinusVarFirstRows case_001190_rank.val case_001190_mask :=
  ⟨case_001190_support, case_001190_sourceAgrees, case_001190_rows⟩

private theorem case_001190_covered :
    RowPropertyParametricCovered case_001190_rank.val case_001190_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001190_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001191_rank : Fin numPairWords := ⟨842, by decide⟩
private def case_001191_mask : SignMask := ⟨63, by decide⟩
private def case_001191_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_001191_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001191_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001191_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_001191_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001191_secondLine : StrictLin2 := { a := (-3/28), b := (3/28), c := (-3/14) }

private theorem case_001191_rankWord :
    rankPairWord? case_001191_word = some case_001191_rank := by
  decide

private theorem case_001191_unrank :
    unrankPairWord case_001191_rank = case_001191_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001191_word case_001191_rank).1
    case_001191_rankWord |>.symm

private theorem case_001191_seqChoice :
    translationChoiceSeq case_001191_word case_001191_mask = case_001191_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001191_seqAtRank :
    translationSeqAtRankMask case_001191_rank case_001191_mask = case_001191_seq := by
  rw [translationSeqAtRankMask, case_001191_unrank]
  exact case_001191_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001191_bAtRank :
    translationBAtRankMask case_001191_rank case_001191_mask = case_001191_b := by
  rw [translationBAtRankMask, case_001191_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001191_b, case_001191_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001191_firstLine_eq :
    case_001191_support.firstLine case_001191_seq case_001191_b = case_001191_firstLine := by
  norm_num [case_001191_firstLine, case_001191_support, case_001191_seq, case_001191_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001191_secondLine_eq :
    case_001191_support.secondLine case_001191_seq case_001191_b = case_001191_secondLine := by
  norm_num [case_001191_secondLine, case_001191_support, case_001191_seq, case_001191_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001191_sourceAgrees :
    SourceAgrees case_001191_support case_001191_rank.val case_001191_mask := by
  intro hlt
  have hrank : (⟨case_001191_rank.val, hlt⟩ : Fin numPairWords) = case_001191_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001191_rank.val, hlt⟩ case_001191_mask =
        case_001191_seq := by
    simpa [hrank] using case_001191_seqAtRank
  simp [SourceChecks, hseq, case_001191_support,
    checkTranslationConstraintSource, case_001191_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001191_rows :
    OppOneMinusVarSecondRows case_001191_support case_001191_rank.val case_001191_mask := by
  intro hlt
  have hrank : (⟨case_001191_rank.val, hlt⟩ : Fin numPairWords) = case_001191_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001191_rank.val, hlt⟩ case_001191_mask =
        case_001191_seq := by
    simpa [hrank] using case_001191_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001191_rank.val, hlt⟩ case_001191_mask =
        case_001191_b := by
    simpa [hrank] using case_001191_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001191_support case_001191_rank.val hlt
          case_001191_mask = case_001191_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001191_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001191_support case_001191_rank.val hlt
          case_001191_mask = case_001191_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001191_secondLine_eq]
  have case_001191_fixedFirst :
      FixedRow (FirstLineAt case_001191_support case_001191_rank.val hlt case_001191_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001191_firstLine, FixedRow]
  have case_001191_rowSecond :
      OppPosRow (SecondLineAt case_001191_support case_001191_rank.val hlt case_001191_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001191_secondLine, OppPosRow]
  exact ⟨case_001191_fixedFirst, case_001191_rowSecond⟩

private theorem case_001191_existsRows :
    ExistsOppOneMinusVarSecondRows case_001191_rank.val case_001191_mask :=
  ⟨case_001191_support, case_001191_sourceAgrees, case_001191_rows⟩

private theorem case_001191_covered :
    RowPropertyParametricCovered case_001191_rank.val case_001191_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001191_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001192_rank : Fin numPairWords := ⟨850, by decide⟩
private def case_001192_mask : SignMask := ⟨8, by decide⟩
private def case_001192_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1], by decide⟩
private def case_001192_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001192_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tpmp
private def case_001192_b : Vec3 Rat := { x := (-124/27), y := (-28/27), z := (-380/27) }
private def case_001192_firstLine : StrictLin2 := { a := -1, b := -1, c := (-173/31) }
private def case_001192_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001192_rankWord :
    rankPairWord? case_001192_word = some case_001192_rank := by
  decide

private theorem case_001192_unrank :
    unrankPairWord case_001192_rank = case_001192_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001192_word case_001192_rank).1
    case_001192_rankWord |>.symm

private theorem case_001192_seqChoice :
    translationChoiceSeq case_001192_word case_001192_mask = case_001192_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001192_seqAtRank :
    translationSeqAtRankMask case_001192_rank case_001192_mask = case_001192_seq := by
  rw [translationSeqAtRankMask, case_001192_unrank]
  exact case_001192_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001192_bAtRank :
    translationBAtRankMask case_001192_rank case_001192_mask = case_001192_b := by
  rw [translationBAtRankMask, case_001192_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001192_b, case_001192_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001192_firstLine_eq :
    case_001192_support.firstLine case_001192_seq case_001192_b = case_001192_firstLine := by
  norm_num [case_001192_firstLine, case_001192_support, case_001192_seq, case_001192_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001192_secondLine_eq :
    case_001192_support.secondLine case_001192_seq case_001192_b = case_001192_secondLine := by
  norm_num [case_001192_secondLine, case_001192_support, case_001192_seq, case_001192_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001192_sourceAgrees :
    SourceAgrees case_001192_support case_001192_rank.val case_001192_mask := by
  intro hlt
  have hrank : (⟨case_001192_rank.val, hlt⟩ : Fin numPairWords) = case_001192_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001192_rank.val, hlt⟩ case_001192_mask =
        case_001192_seq := by
    simpa [hrank] using case_001192_seqAtRank
  simp [SourceChecks, hseq, case_001192_support,
    checkTranslationConstraintSource, case_001192_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001192_rows :
    EqEqPosVarFirstRows case_001192_support case_001192_rank.val case_001192_mask := by
  intro hlt
  have hrank : (⟨case_001192_rank.val, hlt⟩ : Fin numPairWords) = case_001192_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001192_rank.val, hlt⟩ case_001192_mask =
        case_001192_seq := by
    simpa [hrank] using case_001192_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001192_rank.val, hlt⟩ case_001192_mask =
        case_001192_b := by
    simpa [hrank] using case_001192_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001192_support case_001192_rank.val hlt
          case_001192_mask = case_001192_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001192_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001192_support case_001192_rank.val hlt
          case_001192_mask = case_001192_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001192_secondLine_eq]
  have case_001192_rowFirst :
      EqEqPosRow (FirstLineAt case_001192_support case_001192_rank.val hlt case_001192_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001192_firstLine, EqEqPosRow]
  have case_001192_fixedSecond :
      FixedRow (SecondLineAt case_001192_support case_001192_rank.val hlt case_001192_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001192_secondLine, FixedRow]
  exact ⟨case_001192_rowFirst, case_001192_fixedSecond⟩

private theorem case_001192_existsRows :
    ExistsEqEqPosVarFirstRows case_001192_rank.val case_001192_mask :=
  ⟨case_001192_support, case_001192_sourceAgrees, case_001192_rows⟩

private theorem case_001192_covered :
    RowPropertyParametricCovered case_001192_rank.val case_001192_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001192_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_001193_rank : Fin numPairWords := ⟨850, by decide⟩
private def case_001193_mask : SignMask := ⟨13, by decide⟩
private def case_001193_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1], by decide⟩
private def case_001193_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001193_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmp
private def case_001193_b : Vec3 Rat := { x := (-172/27), y := (428/27), z := (-332/27) }
private def case_001193_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_001193_secondLine : StrictLin2 := { a := (387/22834), b := (-387/22834), c := (-555/11417) }

private theorem case_001193_rankWord :
    rankPairWord? case_001193_word = some case_001193_rank := by
  decide

private theorem case_001193_unrank :
    unrankPairWord case_001193_rank = case_001193_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001193_word case_001193_rank).1
    case_001193_rankWord |>.symm

private theorem case_001193_seqChoice :
    translationChoiceSeq case_001193_word case_001193_mask = case_001193_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001193_seqAtRank :
    translationSeqAtRankMask case_001193_rank case_001193_mask = case_001193_seq := by
  rw [translationSeqAtRankMask, case_001193_unrank]
  exact case_001193_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001193_bAtRank :
    translationBAtRankMask case_001193_rank case_001193_mask = case_001193_b := by
  rw [translationBAtRankMask, case_001193_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001193_b, case_001193_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001193_firstLine_eq :
    case_001193_support.firstLine case_001193_seq case_001193_b = case_001193_firstLine := by
  norm_num [case_001193_firstLine, case_001193_support, case_001193_seq, case_001193_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001193_secondLine_eq :
    case_001193_support.secondLine case_001193_seq case_001193_b = case_001193_secondLine := by
  norm_num [case_001193_secondLine, case_001193_support, case_001193_seq, case_001193_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001193_sourceAgrees :
    SourceAgrees case_001193_support case_001193_rank.val case_001193_mask := by
  intro hlt
  have hrank : (⟨case_001193_rank.val, hlt⟩ : Fin numPairWords) = case_001193_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001193_rank.val, hlt⟩ case_001193_mask =
        case_001193_seq := by
    simpa [hrank] using case_001193_seqAtRank
  simp [SourceChecks, hseq, case_001193_support,
    checkTranslationConstraintSource, case_001193_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001193_rows :
    OppMinusOneVarSecondRows case_001193_support case_001193_rank.val case_001193_mask := by
  intro hlt
  have hrank : (⟨case_001193_rank.val, hlt⟩ : Fin numPairWords) = case_001193_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001193_rank.val, hlt⟩ case_001193_mask =
        case_001193_seq := by
    simpa [hrank] using case_001193_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001193_rank.val, hlt⟩ case_001193_mask =
        case_001193_b := by
    simpa [hrank] using case_001193_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001193_support case_001193_rank.val hlt
          case_001193_mask = case_001193_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001193_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001193_support case_001193_rank.val hlt
          case_001193_mask = case_001193_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001193_secondLine_eq]
  have case_001193_fixedFirst :
      FixedRow (FirstLineAt case_001193_support case_001193_rank.val hlt case_001193_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001193_firstLine, FixedRow]
  have case_001193_rowSecond :
      OppNegRow (SecondLineAt case_001193_support case_001193_rank.val hlt case_001193_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001193_secondLine, OppNegRow]
  exact ⟨case_001193_fixedFirst, case_001193_rowSecond⟩

private theorem case_001193_existsRows :
    ExistsOppMinusOneVarSecondRows case_001193_rank.val case_001193_mask :=
  ⟨case_001193_support, case_001193_sourceAgrees, case_001193_rows⟩

private theorem case_001193_covered :
    RowPropertyParametricCovered case_001193_rank.val case_001193_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_001193_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001194_rank : Fin numPairWords := ⟨850, by decide⟩
private def case_001194_mask : SignMask := ⟨24, by decide⟩
private def case_001194_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1], by decide⟩
private def case_001194_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001194_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmpm
private def case_001194_b : Vec3 Rat := { x := (-268/27), y := (-172/27), z := (-236/27) }
private def case_001194_firstLine : StrictLin2 := { a := -1, b := -1, c := (-137/67) }
private def case_001194_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001194_rankWord :
    rankPairWord? case_001194_word = some case_001194_rank := by
  decide

private theorem case_001194_unrank :
    unrankPairWord case_001194_rank = case_001194_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001194_word case_001194_rank).1
    case_001194_rankWord |>.symm

private theorem case_001194_seqChoice :
    translationChoiceSeq case_001194_word case_001194_mask = case_001194_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001194_seqAtRank :
    translationSeqAtRankMask case_001194_rank case_001194_mask = case_001194_seq := by
  rw [translationSeqAtRankMask, case_001194_unrank]
  exact case_001194_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001194_bAtRank :
    translationBAtRankMask case_001194_rank case_001194_mask = case_001194_b := by
  rw [translationBAtRankMask, case_001194_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001194_b, case_001194_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001194_firstLine_eq :
    case_001194_support.firstLine case_001194_seq case_001194_b = case_001194_firstLine := by
  norm_num [case_001194_firstLine, case_001194_support, case_001194_seq, case_001194_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001194_secondLine_eq :
    case_001194_support.secondLine case_001194_seq case_001194_b = case_001194_secondLine := by
  norm_num [case_001194_secondLine, case_001194_support, case_001194_seq, case_001194_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001194_sourceAgrees :
    SourceAgrees case_001194_support case_001194_rank.val case_001194_mask := by
  intro hlt
  have hrank : (⟨case_001194_rank.val, hlt⟩ : Fin numPairWords) = case_001194_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001194_rank.val, hlt⟩ case_001194_mask =
        case_001194_seq := by
    simpa [hrank] using case_001194_seqAtRank
  simp [SourceChecks, hseq, case_001194_support,
    checkTranslationConstraintSource, case_001194_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001194_rows :
    EqEqPosVarFirstRows case_001194_support case_001194_rank.val case_001194_mask := by
  intro hlt
  have hrank : (⟨case_001194_rank.val, hlt⟩ : Fin numPairWords) = case_001194_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001194_rank.val, hlt⟩ case_001194_mask =
        case_001194_seq := by
    simpa [hrank] using case_001194_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001194_rank.val, hlt⟩ case_001194_mask =
        case_001194_b := by
    simpa [hrank] using case_001194_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001194_support case_001194_rank.val hlt
          case_001194_mask = case_001194_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001194_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001194_support case_001194_rank.val hlt
          case_001194_mask = case_001194_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001194_secondLine_eq]
  have case_001194_rowFirst :
      EqEqPosRow (FirstLineAt case_001194_support case_001194_rank.val hlt case_001194_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001194_firstLine, EqEqPosRow]
  have case_001194_fixedSecond :
      FixedRow (SecondLineAt case_001194_support case_001194_rank.val hlt case_001194_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001194_secondLine, FixedRow]
  exact ⟨case_001194_rowFirst, case_001194_fixedSecond⟩

private theorem case_001194_existsRows :
    ExistsEqEqPosVarFirstRows case_001194_rank.val case_001194_mask :=
  ⟨case_001194_support, case_001194_sourceAgrees, case_001194_rows⟩

private theorem case_001194_covered :
    RowPropertyParametricCovered case_001194_rank.val case_001194_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001194_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001195_rank : Fin numPairWords := ⟨850, by decide⟩
private def case_001195_mask : SignMask := ⟨31, by decide⟩
private def case_001195_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1], by decide⟩
private def case_001195_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001195_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001195_b : Vec3 Rat := { x := (-316/27), y := (284/27), z := (28/27) }
private def case_001195_firstLine : StrictLin2 := { a := (-79/15), b := (79/15), c := (-69/5) }
private def case_001195_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001195_rankWord :
    rankPairWord? case_001195_word = some case_001195_rank := by
  decide

private theorem case_001195_unrank :
    unrankPairWord case_001195_rank = case_001195_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001195_word case_001195_rank).1
    case_001195_rankWord |>.symm

private theorem case_001195_seqChoice :
    translationChoiceSeq case_001195_word case_001195_mask = case_001195_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001195_seqAtRank :
    translationSeqAtRankMask case_001195_rank case_001195_mask = case_001195_seq := by
  rw [translationSeqAtRankMask, case_001195_unrank]
  exact case_001195_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001195_bAtRank :
    translationBAtRankMask case_001195_rank case_001195_mask = case_001195_b := by
  rw [translationBAtRankMask, case_001195_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001195_b, case_001195_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001195_firstLine_eq :
    case_001195_support.firstLine case_001195_seq case_001195_b = case_001195_firstLine := by
  norm_num [case_001195_firstLine, case_001195_support, case_001195_seq, case_001195_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001195_secondLine_eq :
    case_001195_support.secondLine case_001195_seq case_001195_b = case_001195_secondLine := by
  norm_num [case_001195_secondLine, case_001195_support, case_001195_seq, case_001195_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001195_sourceAgrees :
    SourceAgrees case_001195_support case_001195_rank.val case_001195_mask := by
  intro hlt
  have hrank : (⟨case_001195_rank.val, hlt⟩ : Fin numPairWords) = case_001195_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001195_rank.val, hlt⟩ case_001195_mask =
        case_001195_seq := by
    simpa [hrank] using case_001195_seqAtRank
  simp [SourceChecks, hseq, case_001195_support,
    checkTranslationConstraintSource, case_001195_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001195_rows :
    OppOneMinusVarFirstRows case_001195_support case_001195_rank.val case_001195_mask := by
  intro hlt
  have hrank : (⟨case_001195_rank.val, hlt⟩ : Fin numPairWords) = case_001195_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001195_rank.val, hlt⟩ case_001195_mask =
        case_001195_seq := by
    simpa [hrank] using case_001195_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001195_rank.val, hlt⟩ case_001195_mask =
        case_001195_b := by
    simpa [hrank] using case_001195_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001195_support case_001195_rank.val hlt
          case_001195_mask = case_001195_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001195_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001195_support case_001195_rank.val hlt
          case_001195_mask = case_001195_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001195_secondLine_eq]
  have case_001195_rowFirst :
      OppPosRow (FirstLineAt case_001195_support case_001195_rank.val hlt case_001195_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001195_firstLine, OppPosRow]
  have case_001195_fixedSecond :
      FixedRow (SecondLineAt case_001195_support case_001195_rank.val hlt case_001195_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001195_secondLine, FixedRow]
  exact ⟨case_001195_rowFirst, case_001195_fixedSecond⟩

private theorem case_001195_existsRows :
    ExistsOppOneMinusVarFirstRows case_001195_rank.val case_001195_mask :=
  ⟨case_001195_support, case_001195_sourceAgrees, case_001195_rows⟩

private theorem case_001195_covered :
    RowPropertyParametricCovered case_001195_rank.val case_001195_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001195_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001196_rank : Fin numPairWords := ⟨850, by decide⟩
private def case_001196_mask : SignMask := ⟨50, by decide⟩
private def case_001196_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1], by decide⟩
private def case_001196_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001196_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmpm
private def case_001196_b : Vec3 Rat := { x := (-44/27), y := (-428/27), z := (332/27) }
private def case_001196_firstLine : StrictLin2 := { a := -1, b := -1, c := (-37/11) }
private def case_001196_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001196_rankWord :
    rankPairWord? case_001196_word = some case_001196_rank := by
  decide

private theorem case_001196_unrank :
    unrankPairWord case_001196_rank = case_001196_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001196_word case_001196_rank).1
    case_001196_rankWord |>.symm

private theorem case_001196_seqChoice :
    translationChoiceSeq case_001196_word case_001196_mask = case_001196_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001196_seqAtRank :
    translationSeqAtRankMask case_001196_rank case_001196_mask = case_001196_seq := by
  rw [translationSeqAtRankMask, case_001196_unrank]
  exact case_001196_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001196_bAtRank :
    translationBAtRankMask case_001196_rank case_001196_mask = case_001196_b := by
  rw [translationBAtRankMask, case_001196_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001196_b, case_001196_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001196_firstLine_eq :
    case_001196_support.firstLine case_001196_seq case_001196_b = case_001196_firstLine := by
  norm_num [case_001196_firstLine, case_001196_support, case_001196_seq, case_001196_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001196_secondLine_eq :
    case_001196_support.secondLine case_001196_seq case_001196_b = case_001196_secondLine := by
  norm_num [case_001196_secondLine, case_001196_support, case_001196_seq, case_001196_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001196_sourceAgrees :
    SourceAgrees case_001196_support case_001196_rank.val case_001196_mask := by
  intro hlt
  have hrank : (⟨case_001196_rank.val, hlt⟩ : Fin numPairWords) = case_001196_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001196_rank.val, hlt⟩ case_001196_mask =
        case_001196_seq := by
    simpa [hrank] using case_001196_seqAtRank
  simp [SourceChecks, hseq, case_001196_support,
    checkTranslationConstraintSource, case_001196_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001196_rows :
    EqEqPosVarFirstRows case_001196_support case_001196_rank.val case_001196_mask := by
  intro hlt
  have hrank : (⟨case_001196_rank.val, hlt⟩ : Fin numPairWords) = case_001196_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001196_rank.val, hlt⟩ case_001196_mask =
        case_001196_seq := by
    simpa [hrank] using case_001196_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001196_rank.val, hlt⟩ case_001196_mask =
        case_001196_b := by
    simpa [hrank] using case_001196_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001196_support case_001196_rank.val hlt
          case_001196_mask = case_001196_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001196_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001196_support case_001196_rank.val hlt
          case_001196_mask = case_001196_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001196_secondLine_eq]
  have case_001196_rowFirst :
      EqEqPosRow (FirstLineAt case_001196_support case_001196_rank.val hlt case_001196_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001196_firstLine, EqEqPosRow]
  have case_001196_fixedSecond :
      FixedRow (SecondLineAt case_001196_support case_001196_rank.val hlt case_001196_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001196_secondLine, FixedRow]
  exact ⟨case_001196_rowFirst, case_001196_fixedSecond⟩

private theorem case_001196_existsRows :
    ExistsEqEqPosVarFirstRows case_001196_rank.val case_001196_mask :=
  ⟨case_001196_support, case_001196_sourceAgrees, case_001196_rows⟩

private theorem case_001196_covered :
    RowPropertyParametricCovered case_001196_rank.val case_001196_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001196_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001197_rank : Fin numPairWords := ⟨850, by decide⟩
private def case_001197_mask : SignMask := ⟨55, by decide⟩
private def case_001197_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1], by decide⟩
private def case_001197_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001197_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001197_b : Vec3 Rat := { x := (-92/27), y := (28/27), z := (380/27) }
private def case_001197_firstLine : StrictLin2 := { a := -1, b := 1, c := (-153/23) }
private def case_001197_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001197_rankWord :
    rankPairWord? case_001197_word = some case_001197_rank := by
  decide

private theorem case_001197_unrank :
    unrankPairWord case_001197_rank = case_001197_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001197_word case_001197_rank).1
    case_001197_rankWord |>.symm

private theorem case_001197_seqChoice :
    translationChoiceSeq case_001197_word case_001197_mask = case_001197_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001197_seqAtRank :
    translationSeqAtRankMask case_001197_rank case_001197_mask = case_001197_seq := by
  rw [translationSeqAtRankMask, case_001197_unrank]
  exact case_001197_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001197_bAtRank :
    translationBAtRankMask case_001197_rank case_001197_mask = case_001197_b := by
  rw [translationBAtRankMask, case_001197_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001197_b, case_001197_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001197_firstLine_eq :
    case_001197_support.firstLine case_001197_seq case_001197_b = case_001197_firstLine := by
  norm_num [case_001197_firstLine, case_001197_support, case_001197_seq, case_001197_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001197_secondLine_eq :
    case_001197_support.secondLine case_001197_seq case_001197_b = case_001197_secondLine := by
  norm_num [case_001197_secondLine, case_001197_support, case_001197_seq, case_001197_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001197_sourceAgrees :
    SourceAgrees case_001197_support case_001197_rank.val case_001197_mask := by
  intro hlt
  have hrank : (⟨case_001197_rank.val, hlt⟩ : Fin numPairWords) = case_001197_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001197_rank.val, hlt⟩ case_001197_mask =
        case_001197_seq := by
    simpa [hrank] using case_001197_seqAtRank
  simp [SourceChecks, hseq, case_001197_support,
    checkTranslationConstraintSource, case_001197_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001197_rows :
    OppOneMinusVarFirstRows case_001197_support case_001197_rank.val case_001197_mask := by
  intro hlt
  have hrank : (⟨case_001197_rank.val, hlt⟩ : Fin numPairWords) = case_001197_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001197_rank.val, hlt⟩ case_001197_mask =
        case_001197_seq := by
    simpa [hrank] using case_001197_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001197_rank.val, hlt⟩ case_001197_mask =
        case_001197_b := by
    simpa [hrank] using case_001197_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001197_support case_001197_rank.val hlt
          case_001197_mask = case_001197_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001197_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001197_support case_001197_rank.val hlt
          case_001197_mask = case_001197_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001197_secondLine_eq]
  have case_001197_rowFirst :
      OppPosRow (FirstLineAt case_001197_support case_001197_rank.val hlt case_001197_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001197_firstLine, OppPosRow]
  have case_001197_fixedSecond :
      FixedRow (SecondLineAt case_001197_support case_001197_rank.val hlt case_001197_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001197_secondLine, FixedRow]
  exact ⟨case_001197_rowFirst, case_001197_fixedSecond⟩

private theorem case_001197_existsRows :
    ExistsOppOneMinusVarFirstRows case_001197_rank.val case_001197_mask :=
  ⟨case_001197_support, case_001197_sourceAgrees, case_001197_rows⟩

private theorem case_001197_covered :
    RowPropertyParametricCovered case_001197_rank.val case_001197_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001197_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001198_rank : Fin numPairWords := ⟨850, by decide⟩
private def case_001198_mask : SignMask := ⟨63, by decide⟩
private def case_001198_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1], by decide⟩
private def case_001198_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001198_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpm
private def case_001198_b : Vec3 Rat := { x := (-236/27), y := (172/27), z := (236/27) }
private def case_001198_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001198_secondLine : StrictLin2 := { a := (-531/2150), b := (531/2150), c := (-1293/1075) }

private theorem case_001198_rankWord :
    rankPairWord? case_001198_word = some case_001198_rank := by
  decide

private theorem case_001198_unrank :
    unrankPairWord case_001198_rank = case_001198_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001198_word case_001198_rank).1
    case_001198_rankWord |>.symm

private theorem case_001198_seqChoice :
    translationChoiceSeq case_001198_word case_001198_mask = case_001198_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001198_seqAtRank :
    translationSeqAtRankMask case_001198_rank case_001198_mask = case_001198_seq := by
  rw [translationSeqAtRankMask, case_001198_unrank]
  exact case_001198_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001198_bAtRank :
    translationBAtRankMask case_001198_rank case_001198_mask = case_001198_b := by
  rw [translationBAtRankMask, case_001198_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001198_b, case_001198_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001198_firstLine_eq :
    case_001198_support.firstLine case_001198_seq case_001198_b = case_001198_firstLine := by
  norm_num [case_001198_firstLine, case_001198_support, case_001198_seq, case_001198_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001198_secondLine_eq :
    case_001198_support.secondLine case_001198_seq case_001198_b = case_001198_secondLine := by
  norm_num [case_001198_secondLine, case_001198_support, case_001198_seq, case_001198_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001198_sourceAgrees :
    SourceAgrees case_001198_support case_001198_rank.val case_001198_mask := by
  intro hlt
  have hrank : (⟨case_001198_rank.val, hlt⟩ : Fin numPairWords) = case_001198_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001198_rank.val, hlt⟩ case_001198_mask =
        case_001198_seq := by
    simpa [hrank] using case_001198_seqAtRank
  simp [SourceChecks, hseq, case_001198_support,
    checkTranslationConstraintSource, case_001198_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001198_rows :
    OppOneMinusVarSecondRows case_001198_support case_001198_rank.val case_001198_mask := by
  intro hlt
  have hrank : (⟨case_001198_rank.val, hlt⟩ : Fin numPairWords) = case_001198_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001198_rank.val, hlt⟩ case_001198_mask =
        case_001198_seq := by
    simpa [hrank] using case_001198_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001198_rank.val, hlt⟩ case_001198_mask =
        case_001198_b := by
    simpa [hrank] using case_001198_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001198_support case_001198_rank.val hlt
          case_001198_mask = case_001198_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001198_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001198_support case_001198_rank.val hlt
          case_001198_mask = case_001198_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001198_secondLine_eq]
  have case_001198_fixedFirst :
      FixedRow (FirstLineAt case_001198_support case_001198_rank.val hlt case_001198_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001198_firstLine, FixedRow]
  have case_001198_rowSecond :
      OppPosRow (SecondLineAt case_001198_support case_001198_rank.val hlt case_001198_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001198_secondLine, OppPosRow]
  exact ⟨case_001198_fixedFirst, case_001198_rowSecond⟩

private theorem case_001198_existsRows :
    ExistsOppOneMinusVarSecondRows case_001198_rank.val case_001198_mask :=
  ⟨case_001198_support, case_001198_sourceAgrees, case_001198_rows⟩

private theorem case_001198_covered :
    RowPropertyParametricCovered case_001198_rank.val case_001198_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001198_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001199_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001199_mask : SignMask := ⟨8, by decide⟩
private def case_001199_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001199_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001199_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001199_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_001199_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001199_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001199_rankWord :
    rankPairWord? case_001199_word = some case_001199_rank := by
  decide

private theorem case_001199_unrank :
    unrankPairWord case_001199_rank = case_001199_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001199_word case_001199_rank).1
    case_001199_rankWord |>.symm

private theorem case_001199_seqChoice :
    translationChoiceSeq case_001199_word case_001199_mask = case_001199_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001199_seqAtRank :
    translationSeqAtRankMask case_001199_rank case_001199_mask = case_001199_seq := by
  rw [translationSeqAtRankMask, case_001199_unrank]
  exact case_001199_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001199_bAtRank :
    translationBAtRankMask case_001199_rank case_001199_mask = case_001199_b := by
  rw [translationBAtRankMask, case_001199_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001199_b, case_001199_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001199_firstLine_eq :
    case_001199_support.firstLine case_001199_seq case_001199_b = case_001199_firstLine := by
  norm_num [case_001199_firstLine, case_001199_support, case_001199_seq, case_001199_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001199_secondLine_eq :
    case_001199_support.secondLine case_001199_seq case_001199_b = case_001199_secondLine := by
  norm_num [case_001199_secondLine, case_001199_support, case_001199_seq, case_001199_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001199_sourceAgrees :
    SourceAgrees case_001199_support case_001199_rank.val case_001199_mask := by
  intro hlt
  have hrank : (⟨case_001199_rank.val, hlt⟩ : Fin numPairWords) = case_001199_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001199_rank.val, hlt⟩ case_001199_mask =
        case_001199_seq := by
    simpa [hrank] using case_001199_seqAtRank
  simp [SourceChecks, hseq, case_001199_support,
    checkTranslationConstraintSource, case_001199_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001199_rows :
    EqEqPosVarFirstRows case_001199_support case_001199_rank.val case_001199_mask := by
  intro hlt
  have hrank : (⟨case_001199_rank.val, hlt⟩ : Fin numPairWords) = case_001199_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001199_rank.val, hlt⟩ case_001199_mask =
        case_001199_seq := by
    simpa [hrank] using case_001199_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001199_rank.val, hlt⟩ case_001199_mask =
        case_001199_b := by
    simpa [hrank] using case_001199_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001199_support case_001199_rank.val hlt
          case_001199_mask = case_001199_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001199_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001199_support case_001199_rank.val hlt
          case_001199_mask = case_001199_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001199_secondLine_eq]
  have case_001199_rowFirst :
      EqEqPosRow (FirstLineAt case_001199_support case_001199_rank.val hlt case_001199_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001199_firstLine, EqEqPosRow]
  have case_001199_fixedSecond :
      FixedRow (SecondLineAt case_001199_support case_001199_rank.val hlt case_001199_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001199_secondLine, FixedRow]
  exact ⟨case_001199_rowFirst, case_001199_fixedSecond⟩

private theorem case_001199_existsRows :
    ExistsEqEqPosVarFirstRows case_001199_rank.val case_001199_mask :=
  ⟨case_001199_support, case_001199_sourceAgrees, case_001199_rows⟩

private theorem case_001199_covered :
    RowPropertyParametricCovered case_001199_rank.val case_001199_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001199_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001200_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001200_mask : SignMask := ⟨9, by decide⟩
private def case_001200_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001200_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001200_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001200_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_001200_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001200_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001200_rankWord :
    rankPairWord? case_001200_word = some case_001200_rank := by
  decide

private theorem case_001200_unrank :
    unrankPairWord case_001200_rank = case_001200_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001200_word case_001200_rank).1
    case_001200_rankWord |>.symm

private theorem case_001200_seqChoice :
    translationChoiceSeq case_001200_word case_001200_mask = case_001200_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001200_seqAtRank :
    translationSeqAtRankMask case_001200_rank case_001200_mask = case_001200_seq := by
  rw [translationSeqAtRankMask, case_001200_unrank]
  exact case_001200_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001200_bAtRank :
    translationBAtRankMask case_001200_rank case_001200_mask = case_001200_b := by
  rw [translationBAtRankMask, case_001200_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001200_b, case_001200_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001200_firstLine_eq :
    case_001200_support.firstLine case_001200_seq case_001200_b = case_001200_firstLine := by
  norm_num [case_001200_firstLine, case_001200_support, case_001200_seq, case_001200_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001200_secondLine_eq :
    case_001200_support.secondLine case_001200_seq case_001200_b = case_001200_secondLine := by
  norm_num [case_001200_secondLine, case_001200_support, case_001200_seq, case_001200_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001200_sourceAgrees :
    SourceAgrees case_001200_support case_001200_rank.val case_001200_mask := by
  intro hlt
  have hrank : (⟨case_001200_rank.val, hlt⟩ : Fin numPairWords) = case_001200_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001200_rank.val, hlt⟩ case_001200_mask =
        case_001200_seq := by
    simpa [hrank] using case_001200_seqAtRank
  simp [SourceChecks, hseq, case_001200_support,
    checkTranslationConstraintSource, case_001200_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001200_rows :
    EqEqPosVarFirstRows case_001200_support case_001200_rank.val case_001200_mask := by
  intro hlt
  have hrank : (⟨case_001200_rank.val, hlt⟩ : Fin numPairWords) = case_001200_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001200_rank.val, hlt⟩ case_001200_mask =
        case_001200_seq := by
    simpa [hrank] using case_001200_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001200_rank.val, hlt⟩ case_001200_mask =
        case_001200_b := by
    simpa [hrank] using case_001200_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001200_support case_001200_rank.val hlt
          case_001200_mask = case_001200_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001200_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001200_support case_001200_rank.val hlt
          case_001200_mask = case_001200_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001200_secondLine_eq]
  have case_001200_rowFirst :
      EqEqPosRow (FirstLineAt case_001200_support case_001200_rank.val hlt case_001200_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001200_firstLine, EqEqPosRow]
  have case_001200_fixedSecond :
      FixedRow (SecondLineAt case_001200_support case_001200_rank.val hlt case_001200_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001200_secondLine, FixedRow]
  exact ⟨case_001200_rowFirst, case_001200_fixedSecond⟩

private theorem case_001200_existsRows :
    ExistsEqEqPosVarFirstRows case_001200_rank.val case_001200_mask :=
  ⟨case_001200_support, case_001200_sourceAgrees, case_001200_rows⟩

private theorem case_001200_covered :
    RowPropertyParametricCovered case_001200_rank.val case_001200_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001200_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001201_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001201_mask : SignMask := ⟨13, by decide⟩
private def case_001201_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001201_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001201_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001201_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_001201_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001201_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_001201_rankWord :
    rankPairWord? case_001201_word = some case_001201_rank := by
  decide

private theorem case_001201_unrank :
    unrankPairWord case_001201_rank = case_001201_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001201_word case_001201_rank).1
    case_001201_rankWord |>.symm

private theorem case_001201_seqChoice :
    translationChoiceSeq case_001201_word case_001201_mask = case_001201_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001201_seqAtRank :
    translationSeqAtRankMask case_001201_rank case_001201_mask = case_001201_seq := by
  rw [translationSeqAtRankMask, case_001201_unrank]
  exact case_001201_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001201_bAtRank :
    translationBAtRankMask case_001201_rank case_001201_mask = case_001201_b := by
  rw [translationBAtRankMask, case_001201_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001201_b, case_001201_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001201_firstLine_eq :
    case_001201_support.firstLine case_001201_seq case_001201_b = case_001201_firstLine := by
  norm_num [case_001201_firstLine, case_001201_support, case_001201_seq, case_001201_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001201_secondLine_eq :
    case_001201_support.secondLine case_001201_seq case_001201_b = case_001201_secondLine := by
  norm_num [case_001201_secondLine, case_001201_support, case_001201_seq, case_001201_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001201_sourceAgrees :
    SourceAgrees case_001201_support case_001201_rank.val case_001201_mask := by
  intro hlt
  have hrank : (⟨case_001201_rank.val, hlt⟩ : Fin numPairWords) = case_001201_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001201_rank.val, hlt⟩ case_001201_mask =
        case_001201_seq := by
    simpa [hrank] using case_001201_seqAtRank
  simp [SourceChecks, hseq, case_001201_support,
    checkTranslationConstraintSource, case_001201_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001201_rows :
    EqEqPosVarSecondRows case_001201_support case_001201_rank.val case_001201_mask := by
  intro hlt
  have hrank : (⟨case_001201_rank.val, hlt⟩ : Fin numPairWords) = case_001201_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001201_rank.val, hlt⟩ case_001201_mask =
        case_001201_seq := by
    simpa [hrank] using case_001201_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001201_rank.val, hlt⟩ case_001201_mask =
        case_001201_b := by
    simpa [hrank] using case_001201_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001201_support case_001201_rank.val hlt
          case_001201_mask = case_001201_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001201_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001201_support case_001201_rank.val hlt
          case_001201_mask = case_001201_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001201_secondLine_eq]
  have case_001201_fixedFirst :
      FixedRow (FirstLineAt case_001201_support case_001201_rank.val hlt case_001201_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001201_firstLine, FixedRow]
  have case_001201_rowSecond :
      EqEqPosRow (SecondLineAt case_001201_support case_001201_rank.val hlt case_001201_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001201_secondLine, EqEqPosRow]
  exact ⟨case_001201_fixedFirst, case_001201_rowSecond⟩

private theorem case_001201_existsRows :
    ExistsEqEqPosVarSecondRows case_001201_rank.val case_001201_mask :=
  ⟨case_001201_support, case_001201_sourceAgrees, case_001201_rows⟩

private theorem case_001201_covered :
    RowPropertyParametricCovered case_001201_rank.val case_001201_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001201_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001202_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001202_mask : SignMask := ⟨16, by decide⟩
private def case_001202_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001202_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001202_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001202_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_001202_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001202_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001202_rankWord :
    rankPairWord? case_001202_word = some case_001202_rank := by
  decide

private theorem case_001202_unrank :
    unrankPairWord case_001202_rank = case_001202_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001202_word case_001202_rank).1
    case_001202_rankWord |>.symm

private theorem case_001202_seqChoice :
    translationChoiceSeq case_001202_word case_001202_mask = case_001202_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001202_seqAtRank :
    translationSeqAtRankMask case_001202_rank case_001202_mask = case_001202_seq := by
  rw [translationSeqAtRankMask, case_001202_unrank]
  exact case_001202_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001202_bAtRank :
    translationBAtRankMask case_001202_rank case_001202_mask = case_001202_b := by
  rw [translationBAtRankMask, case_001202_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001202_b, case_001202_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001202_firstLine_eq :
    case_001202_support.firstLine case_001202_seq case_001202_b = case_001202_firstLine := by
  norm_num [case_001202_firstLine, case_001202_support, case_001202_seq, case_001202_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001202_secondLine_eq :
    case_001202_support.secondLine case_001202_seq case_001202_b = case_001202_secondLine := by
  norm_num [case_001202_secondLine, case_001202_support, case_001202_seq, case_001202_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001202_sourceAgrees :
    SourceAgrees case_001202_support case_001202_rank.val case_001202_mask := by
  intro hlt
  have hrank : (⟨case_001202_rank.val, hlt⟩ : Fin numPairWords) = case_001202_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001202_rank.val, hlt⟩ case_001202_mask =
        case_001202_seq := by
    simpa [hrank] using case_001202_seqAtRank
  simp [SourceChecks, hseq, case_001202_support,
    checkTranslationConstraintSource, case_001202_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001202_rows :
    EqEqPosVarFirstRows case_001202_support case_001202_rank.val case_001202_mask := by
  intro hlt
  have hrank : (⟨case_001202_rank.val, hlt⟩ : Fin numPairWords) = case_001202_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001202_rank.val, hlt⟩ case_001202_mask =
        case_001202_seq := by
    simpa [hrank] using case_001202_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001202_rank.val, hlt⟩ case_001202_mask =
        case_001202_b := by
    simpa [hrank] using case_001202_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001202_support case_001202_rank.val hlt
          case_001202_mask = case_001202_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001202_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001202_support case_001202_rank.val hlt
          case_001202_mask = case_001202_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001202_secondLine_eq]
  have case_001202_rowFirst :
      EqEqPosRow (FirstLineAt case_001202_support case_001202_rank.val hlt case_001202_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001202_firstLine, EqEqPosRow]
  have case_001202_fixedSecond :
      FixedRow (SecondLineAt case_001202_support case_001202_rank.val hlt case_001202_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001202_secondLine, FixedRow]
  exact ⟨case_001202_rowFirst, case_001202_fixedSecond⟩

private theorem case_001202_existsRows :
    ExistsEqEqPosVarFirstRows case_001202_rank.val case_001202_mask :=
  ⟨case_001202_support, case_001202_sourceAgrees, case_001202_rows⟩

private theorem case_001202_covered :
    RowPropertyParametricCovered case_001202_rank.val case_001202_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001202_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001203_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001203_mask : SignMask := ⟨18, by decide⟩
private def case_001203_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001203_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001203_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001203_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_001203_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001203_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001203_rankWord :
    rankPairWord? case_001203_word = some case_001203_rank := by
  decide

private theorem case_001203_unrank :
    unrankPairWord case_001203_rank = case_001203_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001203_word case_001203_rank).1
    case_001203_rankWord |>.symm

private theorem case_001203_seqChoice :
    translationChoiceSeq case_001203_word case_001203_mask = case_001203_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001203_seqAtRank :
    translationSeqAtRankMask case_001203_rank case_001203_mask = case_001203_seq := by
  rw [translationSeqAtRankMask, case_001203_unrank]
  exact case_001203_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001203_bAtRank :
    translationBAtRankMask case_001203_rank case_001203_mask = case_001203_b := by
  rw [translationBAtRankMask, case_001203_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001203_b, case_001203_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001203_firstLine_eq :
    case_001203_support.firstLine case_001203_seq case_001203_b = case_001203_firstLine := by
  norm_num [case_001203_firstLine, case_001203_support, case_001203_seq, case_001203_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001203_secondLine_eq :
    case_001203_support.secondLine case_001203_seq case_001203_b = case_001203_secondLine := by
  norm_num [case_001203_secondLine, case_001203_support, case_001203_seq, case_001203_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001203_sourceAgrees :
    SourceAgrees case_001203_support case_001203_rank.val case_001203_mask := by
  intro hlt
  have hrank : (⟨case_001203_rank.val, hlt⟩ : Fin numPairWords) = case_001203_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001203_rank.val, hlt⟩ case_001203_mask =
        case_001203_seq := by
    simpa [hrank] using case_001203_seqAtRank
  simp [SourceChecks, hseq, case_001203_support,
    checkTranslationConstraintSource, case_001203_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001203_rows :
    EqEqPosVarFirstRows case_001203_support case_001203_rank.val case_001203_mask := by
  intro hlt
  have hrank : (⟨case_001203_rank.val, hlt⟩ : Fin numPairWords) = case_001203_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001203_rank.val, hlt⟩ case_001203_mask =
        case_001203_seq := by
    simpa [hrank] using case_001203_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001203_rank.val, hlt⟩ case_001203_mask =
        case_001203_b := by
    simpa [hrank] using case_001203_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001203_support case_001203_rank.val hlt
          case_001203_mask = case_001203_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001203_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001203_support case_001203_rank.val hlt
          case_001203_mask = case_001203_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001203_secondLine_eq]
  have case_001203_rowFirst :
      EqEqPosRow (FirstLineAt case_001203_support case_001203_rank.val hlt case_001203_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001203_firstLine, EqEqPosRow]
  have case_001203_fixedSecond :
      FixedRow (SecondLineAt case_001203_support case_001203_rank.val hlt case_001203_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001203_secondLine, FixedRow]
  exact ⟨case_001203_rowFirst, case_001203_fixedSecond⟩

private theorem case_001203_existsRows :
    ExistsEqEqPosVarFirstRows case_001203_rank.val case_001203_mask :=
  ⟨case_001203_support, case_001203_sourceAgrees, case_001203_rows⟩

private theorem case_001203_covered :
    RowPropertyParametricCovered case_001203_rank.val case_001203_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001203_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001204_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001204_mask : SignMask := ⟨22, by decide⟩
private def case_001204_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001204_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001204_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001204_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_001204_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001204_secondLine : StrictLin2 := { a := (-3/14), b := (-3/14), c := (-5/7) }

private theorem case_001204_rankWord :
    rankPairWord? case_001204_word = some case_001204_rank := by
  decide

private theorem case_001204_unrank :
    unrankPairWord case_001204_rank = case_001204_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001204_word case_001204_rank).1
    case_001204_rankWord |>.symm

private theorem case_001204_seqChoice :
    translationChoiceSeq case_001204_word case_001204_mask = case_001204_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001204_seqAtRank :
    translationSeqAtRankMask case_001204_rank case_001204_mask = case_001204_seq := by
  rw [translationSeqAtRankMask, case_001204_unrank]
  exact case_001204_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001204_bAtRank :
    translationBAtRankMask case_001204_rank case_001204_mask = case_001204_b := by
  rw [translationBAtRankMask, case_001204_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001204_b, case_001204_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001204_firstLine_eq :
    case_001204_support.firstLine case_001204_seq case_001204_b = case_001204_firstLine := by
  norm_num [case_001204_firstLine, case_001204_support, case_001204_seq, case_001204_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001204_secondLine_eq :
    case_001204_support.secondLine case_001204_seq case_001204_b = case_001204_secondLine := by
  norm_num [case_001204_secondLine, case_001204_support, case_001204_seq, case_001204_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001204_sourceAgrees :
    SourceAgrees case_001204_support case_001204_rank.val case_001204_mask := by
  intro hlt
  have hrank : (⟨case_001204_rank.val, hlt⟩ : Fin numPairWords) = case_001204_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001204_rank.val, hlt⟩ case_001204_mask =
        case_001204_seq := by
    simpa [hrank] using case_001204_seqAtRank
  simp [SourceChecks, hseq, case_001204_support,
    checkTranslationConstraintSource, case_001204_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001204_rows :
    EqEqPosVarSecondRows case_001204_support case_001204_rank.val case_001204_mask := by
  intro hlt
  have hrank : (⟨case_001204_rank.val, hlt⟩ : Fin numPairWords) = case_001204_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001204_rank.val, hlt⟩ case_001204_mask =
        case_001204_seq := by
    simpa [hrank] using case_001204_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001204_rank.val, hlt⟩ case_001204_mask =
        case_001204_b := by
    simpa [hrank] using case_001204_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001204_support case_001204_rank.val hlt
          case_001204_mask = case_001204_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001204_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001204_support case_001204_rank.val hlt
          case_001204_mask = case_001204_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001204_secondLine_eq]
  have case_001204_fixedFirst :
      FixedRow (FirstLineAt case_001204_support case_001204_rank.val hlt case_001204_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001204_firstLine, FixedRow]
  have case_001204_rowSecond :
      EqEqPosRow (SecondLineAt case_001204_support case_001204_rank.val hlt case_001204_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001204_secondLine, EqEqPosRow]
  exact ⟨case_001204_fixedFirst, case_001204_rowSecond⟩

private theorem case_001204_existsRows :
    ExistsEqEqPosVarSecondRows case_001204_rank.val case_001204_mask :=
  ⟨case_001204_support, case_001204_sourceAgrees, case_001204_rows⟩

private theorem case_001204_covered :
    RowPropertyParametricCovered case_001204_rank.val case_001204_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001204_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001205_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001205_mask : SignMask := ⟨24, by decide⟩
private def case_001205_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001205_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001205_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001205_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_001205_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_001205_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001205_rankWord :
    rankPairWord? case_001205_word = some case_001205_rank := by
  decide

private theorem case_001205_unrank :
    unrankPairWord case_001205_rank = case_001205_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001205_word case_001205_rank).1
    case_001205_rankWord |>.symm

private theorem case_001205_seqChoice :
    translationChoiceSeq case_001205_word case_001205_mask = case_001205_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001205_seqAtRank :
    translationSeqAtRankMask case_001205_rank case_001205_mask = case_001205_seq := by
  rw [translationSeqAtRankMask, case_001205_unrank]
  exact case_001205_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001205_bAtRank :
    translationBAtRankMask case_001205_rank case_001205_mask = case_001205_b := by
  rw [translationBAtRankMask, case_001205_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001205_b, case_001205_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001205_firstLine_eq :
    case_001205_support.firstLine case_001205_seq case_001205_b = case_001205_firstLine := by
  norm_num [case_001205_firstLine, case_001205_support, case_001205_seq, case_001205_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001205_secondLine_eq :
    case_001205_support.secondLine case_001205_seq case_001205_b = case_001205_secondLine := by
  norm_num [case_001205_secondLine, case_001205_support, case_001205_seq, case_001205_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001205_sourceAgrees :
    SourceAgrees case_001205_support case_001205_rank.val case_001205_mask := by
  intro hlt
  have hrank : (⟨case_001205_rank.val, hlt⟩ : Fin numPairWords) = case_001205_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001205_rank.val, hlt⟩ case_001205_mask =
        case_001205_seq := by
    simpa [hrank] using case_001205_seqAtRank
  simp [SourceChecks, hseq, case_001205_support,
    checkTranslationConstraintSource, case_001205_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001205_rows :
    EqEqPosVarFirstRows case_001205_support case_001205_rank.val case_001205_mask := by
  intro hlt
  have hrank : (⟨case_001205_rank.val, hlt⟩ : Fin numPairWords) = case_001205_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001205_rank.val, hlt⟩ case_001205_mask =
        case_001205_seq := by
    simpa [hrank] using case_001205_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001205_rank.val, hlt⟩ case_001205_mask =
        case_001205_b := by
    simpa [hrank] using case_001205_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001205_support case_001205_rank.val hlt
          case_001205_mask = case_001205_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001205_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001205_support case_001205_rank.val hlt
          case_001205_mask = case_001205_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001205_secondLine_eq]
  have case_001205_rowFirst :
      EqEqPosRow (FirstLineAt case_001205_support case_001205_rank.val hlt case_001205_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001205_firstLine, EqEqPosRow]
  have case_001205_fixedSecond :
      FixedRow (SecondLineAt case_001205_support case_001205_rank.val hlt case_001205_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001205_secondLine, FixedRow]
  exact ⟨case_001205_rowFirst, case_001205_fixedSecond⟩

private theorem case_001205_existsRows :
    ExistsEqEqPosVarFirstRows case_001205_rank.val case_001205_mask :=
  ⟨case_001205_support, case_001205_sourceAgrees, case_001205_rows⟩

private theorem case_001205_covered :
    RowPropertyParametricCovered case_001205_rank.val case_001205_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001205_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001206_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001206_mask : SignMask := ⟨28, by decide⟩
private def case_001206_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001206_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001206_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001206_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_001206_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001206_secondLine : StrictLin2 := { a := (-33/170), b := (-33/170), c := (-22/85) }

private theorem case_001206_rankWord :
    rankPairWord? case_001206_word = some case_001206_rank := by
  decide

private theorem case_001206_unrank :
    unrankPairWord case_001206_rank = case_001206_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001206_word case_001206_rank).1
    case_001206_rankWord |>.symm

private theorem case_001206_seqChoice :
    translationChoiceSeq case_001206_word case_001206_mask = case_001206_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001206_seqAtRank :
    translationSeqAtRankMask case_001206_rank case_001206_mask = case_001206_seq := by
  rw [translationSeqAtRankMask, case_001206_unrank]
  exact case_001206_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001206_bAtRank :
    translationBAtRankMask case_001206_rank case_001206_mask = case_001206_b := by
  rw [translationBAtRankMask, case_001206_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001206_b, case_001206_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001206_firstLine_eq :
    case_001206_support.firstLine case_001206_seq case_001206_b = case_001206_firstLine := by
  norm_num [case_001206_firstLine, case_001206_support, case_001206_seq, case_001206_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001206_secondLine_eq :
    case_001206_support.secondLine case_001206_seq case_001206_b = case_001206_secondLine := by
  norm_num [case_001206_secondLine, case_001206_support, case_001206_seq, case_001206_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001206_sourceAgrees :
    SourceAgrees case_001206_support case_001206_rank.val case_001206_mask := by
  intro hlt
  have hrank : (⟨case_001206_rank.val, hlt⟩ : Fin numPairWords) = case_001206_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001206_rank.val, hlt⟩ case_001206_mask =
        case_001206_seq := by
    simpa [hrank] using case_001206_seqAtRank
  simp [SourceChecks, hseq, case_001206_support,
    checkTranslationConstraintSource, case_001206_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001206_rows :
    EqEqPosVarSecondRows case_001206_support case_001206_rank.val case_001206_mask := by
  intro hlt
  have hrank : (⟨case_001206_rank.val, hlt⟩ : Fin numPairWords) = case_001206_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001206_rank.val, hlt⟩ case_001206_mask =
        case_001206_seq := by
    simpa [hrank] using case_001206_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001206_rank.val, hlt⟩ case_001206_mask =
        case_001206_b := by
    simpa [hrank] using case_001206_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001206_support case_001206_rank.val hlt
          case_001206_mask = case_001206_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001206_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001206_support case_001206_rank.val hlt
          case_001206_mask = case_001206_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001206_secondLine_eq]
  have case_001206_fixedFirst :
      FixedRow (FirstLineAt case_001206_support case_001206_rank.val hlt case_001206_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001206_firstLine, FixedRow]
  have case_001206_rowSecond :
      EqEqPosRow (SecondLineAt case_001206_support case_001206_rank.val hlt case_001206_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001206_secondLine, EqEqPosRow]
  exact ⟨case_001206_fixedFirst, case_001206_rowSecond⟩

private theorem case_001206_existsRows :
    ExistsEqEqPosVarSecondRows case_001206_rank.val case_001206_mask :=
  ⟨case_001206_support, case_001206_sourceAgrees, case_001206_rows⟩

private theorem case_001206_covered :
    RowPropertyParametricCovered case_001206_rank.val case_001206_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001206_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001207_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001207_mask : SignMask := ⟨29, by decide⟩
private def case_001207_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001207_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001207_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001207_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_001207_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001207_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_001207_rankWord :
    rankPairWord? case_001207_word = some case_001207_rank := by
  decide

private theorem case_001207_unrank :
    unrankPairWord case_001207_rank = case_001207_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001207_word case_001207_rank).1
    case_001207_rankWord |>.symm

private theorem case_001207_seqChoice :
    translationChoiceSeq case_001207_word case_001207_mask = case_001207_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001207_seqAtRank :
    translationSeqAtRankMask case_001207_rank case_001207_mask = case_001207_seq := by
  rw [translationSeqAtRankMask, case_001207_unrank]
  exact case_001207_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001207_bAtRank :
    translationBAtRankMask case_001207_rank case_001207_mask = case_001207_b := by
  rw [translationBAtRankMask, case_001207_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001207_b, case_001207_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001207_firstLine_eq :
    case_001207_support.firstLine case_001207_seq case_001207_b = case_001207_firstLine := by
  norm_num [case_001207_firstLine, case_001207_support, case_001207_seq, case_001207_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001207_secondLine_eq :
    case_001207_support.secondLine case_001207_seq case_001207_b = case_001207_secondLine := by
  norm_num [case_001207_secondLine, case_001207_support, case_001207_seq, case_001207_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001207_sourceAgrees :
    SourceAgrees case_001207_support case_001207_rank.val case_001207_mask := by
  intro hlt
  have hrank : (⟨case_001207_rank.val, hlt⟩ : Fin numPairWords) = case_001207_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001207_rank.val, hlt⟩ case_001207_mask =
        case_001207_seq := by
    simpa [hrank] using case_001207_seqAtRank
  simp [SourceChecks, hseq, case_001207_support,
    checkTranslationConstraintSource, case_001207_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001207_rows :
    EqEqPosVarSecondRows case_001207_support case_001207_rank.val case_001207_mask := by
  intro hlt
  have hrank : (⟨case_001207_rank.val, hlt⟩ : Fin numPairWords) = case_001207_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001207_rank.val, hlt⟩ case_001207_mask =
        case_001207_seq := by
    simpa [hrank] using case_001207_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001207_rank.val, hlt⟩ case_001207_mask =
        case_001207_b := by
    simpa [hrank] using case_001207_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001207_support case_001207_rank.val hlt
          case_001207_mask = case_001207_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001207_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001207_support case_001207_rank.val hlt
          case_001207_mask = case_001207_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001207_secondLine_eq]
  have case_001207_fixedFirst :
      FixedRow (FirstLineAt case_001207_support case_001207_rank.val hlt case_001207_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001207_firstLine, FixedRow]
  have case_001207_rowSecond :
      EqEqPosRow (SecondLineAt case_001207_support case_001207_rank.val hlt case_001207_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001207_secondLine, EqEqPosRow]
  exact ⟨case_001207_fixedFirst, case_001207_rowSecond⟩

private theorem case_001207_existsRows :
    ExistsEqEqPosVarSecondRows case_001207_rank.val case_001207_mask :=
  ⟨case_001207_support, case_001207_sourceAgrees, case_001207_rows⟩

private theorem case_001207_covered :
    RowPropertyParametricCovered case_001207_rank.val case_001207_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001207_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001208_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001208_mask : SignMask := ⟨30, by decide⟩
private def case_001208_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001208_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001208_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001208_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_001208_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001208_secondLine : StrictLin2 := { a := (-3/22), b := (-3/22), c := (-5/11) }

private theorem case_001208_rankWord :
    rankPairWord? case_001208_word = some case_001208_rank := by
  decide

private theorem case_001208_unrank :
    unrankPairWord case_001208_rank = case_001208_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001208_word case_001208_rank).1
    case_001208_rankWord |>.symm

private theorem case_001208_seqChoice :
    translationChoiceSeq case_001208_word case_001208_mask = case_001208_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001208_seqAtRank :
    translationSeqAtRankMask case_001208_rank case_001208_mask = case_001208_seq := by
  rw [translationSeqAtRankMask, case_001208_unrank]
  exact case_001208_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001208_bAtRank :
    translationBAtRankMask case_001208_rank case_001208_mask = case_001208_b := by
  rw [translationBAtRankMask, case_001208_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001208_b, case_001208_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001208_firstLine_eq :
    case_001208_support.firstLine case_001208_seq case_001208_b = case_001208_firstLine := by
  norm_num [case_001208_firstLine, case_001208_support, case_001208_seq, case_001208_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001208_secondLine_eq :
    case_001208_support.secondLine case_001208_seq case_001208_b = case_001208_secondLine := by
  norm_num [case_001208_secondLine, case_001208_support, case_001208_seq, case_001208_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001208_sourceAgrees :
    SourceAgrees case_001208_support case_001208_rank.val case_001208_mask := by
  intro hlt
  have hrank : (⟨case_001208_rank.val, hlt⟩ : Fin numPairWords) = case_001208_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001208_rank.val, hlt⟩ case_001208_mask =
        case_001208_seq := by
    simpa [hrank] using case_001208_seqAtRank
  simp [SourceChecks, hseq, case_001208_support,
    checkTranslationConstraintSource, case_001208_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001208_rows :
    EqEqPosVarSecondRows case_001208_support case_001208_rank.val case_001208_mask := by
  intro hlt
  have hrank : (⟨case_001208_rank.val, hlt⟩ : Fin numPairWords) = case_001208_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001208_rank.val, hlt⟩ case_001208_mask =
        case_001208_seq := by
    simpa [hrank] using case_001208_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001208_rank.val, hlt⟩ case_001208_mask =
        case_001208_b := by
    simpa [hrank] using case_001208_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001208_support case_001208_rank.val hlt
          case_001208_mask = case_001208_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001208_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001208_support case_001208_rank.val hlt
          case_001208_mask = case_001208_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001208_secondLine_eq]
  have case_001208_fixedFirst :
      FixedRow (FirstLineAt case_001208_support case_001208_rank.val hlt case_001208_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001208_firstLine, FixedRow]
  have case_001208_rowSecond :
      EqEqPosRow (SecondLineAt case_001208_support case_001208_rank.val hlt case_001208_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001208_secondLine, EqEqPosRow]
  exact ⟨case_001208_fixedFirst, case_001208_rowSecond⟩

private theorem case_001208_existsRows :
    ExistsEqEqPosVarSecondRows case_001208_rank.val case_001208_mask :=
  ⟨case_001208_support, case_001208_sourceAgrees, case_001208_rows⟩

private theorem case_001208_covered :
    RowPropertyParametricCovered case_001208_rank.val case_001208_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001208_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001209_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001209_mask : SignMask := ⟨31, by decide⟩
private def case_001209_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001209_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001209_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001209_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_001209_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001209_secondLine : StrictLin2 := { a := (-33/170), b := (-33/170), c := (-88/85) }

private theorem case_001209_rankWord :
    rankPairWord? case_001209_word = some case_001209_rank := by
  decide

private theorem case_001209_unrank :
    unrankPairWord case_001209_rank = case_001209_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001209_word case_001209_rank).1
    case_001209_rankWord |>.symm

private theorem case_001209_seqChoice :
    translationChoiceSeq case_001209_word case_001209_mask = case_001209_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001209_seqAtRank :
    translationSeqAtRankMask case_001209_rank case_001209_mask = case_001209_seq := by
  rw [translationSeqAtRankMask, case_001209_unrank]
  exact case_001209_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001209_bAtRank :
    translationBAtRankMask case_001209_rank case_001209_mask = case_001209_b := by
  rw [translationBAtRankMask, case_001209_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001209_b, case_001209_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001209_firstLine_eq :
    case_001209_support.firstLine case_001209_seq case_001209_b = case_001209_firstLine := by
  norm_num [case_001209_firstLine, case_001209_support, case_001209_seq, case_001209_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001209_secondLine_eq :
    case_001209_support.secondLine case_001209_seq case_001209_b = case_001209_secondLine := by
  norm_num [case_001209_secondLine, case_001209_support, case_001209_seq, case_001209_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001209_sourceAgrees :
    SourceAgrees case_001209_support case_001209_rank.val case_001209_mask := by
  intro hlt
  have hrank : (⟨case_001209_rank.val, hlt⟩ : Fin numPairWords) = case_001209_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001209_rank.val, hlt⟩ case_001209_mask =
        case_001209_seq := by
    simpa [hrank] using case_001209_seqAtRank
  simp [SourceChecks, hseq, case_001209_support,
    checkTranslationConstraintSource, case_001209_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001209_rows :
    EqEqPosVarSecondRows case_001209_support case_001209_rank.val case_001209_mask := by
  intro hlt
  have hrank : (⟨case_001209_rank.val, hlt⟩ : Fin numPairWords) = case_001209_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001209_rank.val, hlt⟩ case_001209_mask =
        case_001209_seq := by
    simpa [hrank] using case_001209_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001209_rank.val, hlt⟩ case_001209_mask =
        case_001209_b := by
    simpa [hrank] using case_001209_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001209_support case_001209_rank.val hlt
          case_001209_mask = case_001209_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001209_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001209_support case_001209_rank.val hlt
          case_001209_mask = case_001209_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001209_secondLine_eq]
  have case_001209_fixedFirst :
      FixedRow (FirstLineAt case_001209_support case_001209_rank.val hlt case_001209_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001209_firstLine, FixedRow]
  have case_001209_rowSecond :
      EqEqPosRow (SecondLineAt case_001209_support case_001209_rank.val hlt case_001209_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001209_secondLine, EqEqPosRow]
  exact ⟨case_001209_fixedFirst, case_001209_rowSecond⟩

private theorem case_001209_existsRows :
    ExistsEqEqPosVarSecondRows case_001209_rank.val case_001209_mask :=
  ⟨case_001209_support, case_001209_sourceAgrees, case_001209_rows⟩

private theorem case_001209_covered :
    RowPropertyParametricCovered case_001209_rank.val case_001209_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001209_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_001210_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001210_mask : SignMask := ⟨45, by decide⟩
private def case_001210_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001210_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001210_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001210_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_001210_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_001210_secondLine : StrictLin2 := { a := (9/374), b := (-9/374), c := (-1/11) }

private theorem case_001210_rankWord :
    rankPairWord? case_001210_word = some case_001210_rank := by
  decide

private theorem case_001210_unrank :
    unrankPairWord case_001210_rank = case_001210_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001210_word case_001210_rank).1
    case_001210_rankWord |>.symm

private theorem case_001210_seqChoice :
    translationChoiceSeq case_001210_word case_001210_mask = case_001210_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001210_seqAtRank :
    translationSeqAtRankMask case_001210_rank case_001210_mask = case_001210_seq := by
  rw [translationSeqAtRankMask, case_001210_unrank]
  exact case_001210_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001210_bAtRank :
    translationBAtRankMask case_001210_rank case_001210_mask = case_001210_b := by
  rw [translationBAtRankMask, case_001210_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001210_b, case_001210_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001210_firstLine_eq :
    case_001210_support.firstLine case_001210_seq case_001210_b = case_001210_firstLine := by
  norm_num [case_001210_firstLine, case_001210_support, case_001210_seq, case_001210_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001210_secondLine_eq :
    case_001210_support.secondLine case_001210_seq case_001210_b = case_001210_secondLine := by
  norm_num [case_001210_secondLine, case_001210_support, case_001210_seq, case_001210_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001210_sourceAgrees :
    SourceAgrees case_001210_support case_001210_rank.val case_001210_mask := by
  intro hlt
  have hrank : (⟨case_001210_rank.val, hlt⟩ : Fin numPairWords) = case_001210_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001210_rank.val, hlt⟩ case_001210_mask =
        case_001210_seq := by
    simpa [hrank] using case_001210_seqAtRank
  simp [SourceChecks, hseq, case_001210_support,
    checkTranslationConstraintSource, case_001210_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001210_rows :
    OppMinusOneVarSecondRows case_001210_support case_001210_rank.val case_001210_mask := by
  intro hlt
  have hrank : (⟨case_001210_rank.val, hlt⟩ : Fin numPairWords) = case_001210_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001210_rank.val, hlt⟩ case_001210_mask =
        case_001210_seq := by
    simpa [hrank] using case_001210_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001210_rank.val, hlt⟩ case_001210_mask =
        case_001210_b := by
    simpa [hrank] using case_001210_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001210_support case_001210_rank.val hlt
          case_001210_mask = case_001210_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001210_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001210_support case_001210_rank.val hlt
          case_001210_mask = case_001210_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001210_secondLine_eq]
  have case_001210_fixedFirst :
      FixedRow (FirstLineAt case_001210_support case_001210_rank.val hlt case_001210_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001210_firstLine, FixedRow]
  have case_001210_rowSecond :
      OppNegRow (SecondLineAt case_001210_support case_001210_rank.val hlt case_001210_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001210_secondLine, OppNegRow]
  exact ⟨case_001210_fixedFirst, case_001210_rowSecond⟩

private theorem case_001210_existsRows :
    ExistsOppMinusOneVarSecondRows case_001210_rank.val case_001210_mask :=
  ⟨case_001210_support, case_001210_sourceAgrees, case_001210_rows⟩

private theorem case_001210_covered :
    RowPropertyParametricCovered case_001210_rank.val case_001210_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_001210_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_001211_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001211_mask : SignMask := ⟨47, by decide⟩
private def case_001211_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001211_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001211_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001211_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_001211_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_001211_secondLine : StrictLin2 := { a := (9/110), b := (-9/110), c := (-4/11) }

private theorem case_001211_rankWord :
    rankPairWord? case_001211_word = some case_001211_rank := by
  decide

private theorem case_001211_unrank :
    unrankPairWord case_001211_rank = case_001211_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001211_word case_001211_rank).1
    case_001211_rankWord |>.symm

private theorem case_001211_seqChoice :
    translationChoiceSeq case_001211_word case_001211_mask = case_001211_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001211_seqAtRank :
    translationSeqAtRankMask case_001211_rank case_001211_mask = case_001211_seq := by
  rw [translationSeqAtRankMask, case_001211_unrank]
  exact case_001211_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001211_bAtRank :
    translationBAtRankMask case_001211_rank case_001211_mask = case_001211_b := by
  rw [translationBAtRankMask, case_001211_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001211_b, case_001211_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001211_firstLine_eq :
    case_001211_support.firstLine case_001211_seq case_001211_b = case_001211_firstLine := by
  norm_num [case_001211_firstLine, case_001211_support, case_001211_seq, case_001211_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001211_secondLine_eq :
    case_001211_support.secondLine case_001211_seq case_001211_b = case_001211_secondLine := by
  norm_num [case_001211_secondLine, case_001211_support, case_001211_seq, case_001211_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001211_sourceAgrees :
    SourceAgrees case_001211_support case_001211_rank.val case_001211_mask := by
  intro hlt
  have hrank : (⟨case_001211_rank.val, hlt⟩ : Fin numPairWords) = case_001211_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001211_rank.val, hlt⟩ case_001211_mask =
        case_001211_seq := by
    simpa [hrank] using case_001211_seqAtRank
  simp [SourceChecks, hseq, case_001211_support,
    checkTranslationConstraintSource, case_001211_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001211_rows :
    OppMinusOneVarSecondRows case_001211_support case_001211_rank.val case_001211_mask := by
  intro hlt
  have hrank : (⟨case_001211_rank.val, hlt⟩ : Fin numPairWords) = case_001211_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001211_rank.val, hlt⟩ case_001211_mask =
        case_001211_seq := by
    simpa [hrank] using case_001211_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001211_rank.val, hlt⟩ case_001211_mask =
        case_001211_b := by
    simpa [hrank] using case_001211_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001211_support case_001211_rank.val hlt
          case_001211_mask = case_001211_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001211_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001211_support case_001211_rank.val hlt
          case_001211_mask = case_001211_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001211_secondLine_eq]
  have case_001211_fixedFirst :
      FixedRow (FirstLineAt case_001211_support case_001211_rank.val hlt case_001211_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001211_firstLine, FixedRow]
  have case_001211_rowSecond :
      OppNegRow (SecondLineAt case_001211_support case_001211_rank.val hlt case_001211_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001211_secondLine, OppNegRow]
  exact ⟨case_001211_fixedFirst, case_001211_rowSecond⟩

private theorem case_001211_existsRows :
    ExistsOppMinusOneVarSecondRows case_001211_rank.val case_001211_mask :=
  ⟨case_001211_support, case_001211_sourceAgrees, case_001211_rows⟩

private theorem case_001211_covered :
    RowPropertyParametricCovered case_001211_rank.val case_001211_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_001211_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001212_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001212_mask : SignMask := ⟨54, by decide⟩
private def case_001212_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001212_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001212_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001212_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_001212_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_001212_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001212_rankWord :
    rankPairWord? case_001212_word = some case_001212_rank := by
  decide

private theorem case_001212_unrank :
    unrankPairWord case_001212_rank = case_001212_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001212_word case_001212_rank).1
    case_001212_rankWord |>.symm

private theorem case_001212_seqChoice :
    translationChoiceSeq case_001212_word case_001212_mask = case_001212_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001212_seqAtRank :
    translationSeqAtRankMask case_001212_rank case_001212_mask = case_001212_seq := by
  rw [translationSeqAtRankMask, case_001212_unrank]
  exact case_001212_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001212_bAtRank :
    translationBAtRankMask case_001212_rank case_001212_mask = case_001212_b := by
  rw [translationBAtRankMask, case_001212_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001212_b, case_001212_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001212_firstLine_eq :
    case_001212_support.firstLine case_001212_seq case_001212_b = case_001212_firstLine := by
  norm_num [case_001212_firstLine, case_001212_support, case_001212_seq, case_001212_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001212_secondLine_eq :
    case_001212_support.secondLine case_001212_seq case_001212_b = case_001212_secondLine := by
  norm_num [case_001212_secondLine, case_001212_support, case_001212_seq, case_001212_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001212_sourceAgrees :
    SourceAgrees case_001212_support case_001212_rank.val case_001212_mask := by
  intro hlt
  have hrank : (⟨case_001212_rank.val, hlt⟩ : Fin numPairWords) = case_001212_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001212_rank.val, hlt⟩ case_001212_mask =
        case_001212_seq := by
    simpa [hrank] using case_001212_seqAtRank
  simp [SourceChecks, hseq, case_001212_support,
    checkTranslationConstraintSource, case_001212_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001212_rows :
    OppOneMinusVarFirstRows case_001212_support case_001212_rank.val case_001212_mask := by
  intro hlt
  have hrank : (⟨case_001212_rank.val, hlt⟩ : Fin numPairWords) = case_001212_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001212_rank.val, hlt⟩ case_001212_mask =
        case_001212_seq := by
    simpa [hrank] using case_001212_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001212_rank.val, hlt⟩ case_001212_mask =
        case_001212_b := by
    simpa [hrank] using case_001212_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001212_support case_001212_rank.val hlt
          case_001212_mask = case_001212_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001212_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001212_support case_001212_rank.val hlt
          case_001212_mask = case_001212_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001212_secondLine_eq]
  have case_001212_rowFirst :
      OppPosRow (FirstLineAt case_001212_support case_001212_rank.val hlt case_001212_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001212_firstLine, OppPosRow]
  have case_001212_fixedSecond :
      FixedRow (SecondLineAt case_001212_support case_001212_rank.val hlt case_001212_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001212_secondLine, FixedRow]
  exact ⟨case_001212_rowFirst, case_001212_fixedSecond⟩

private theorem case_001212_existsRows :
    ExistsOppOneMinusVarFirstRows case_001212_rank.val case_001212_mask :=
  ⟨case_001212_support, case_001212_sourceAgrees, case_001212_rows⟩

private theorem case_001212_covered :
    RowPropertyParametricCovered case_001212_rank.val case_001212_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001212_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001213_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001213_mask : SignMask := ⟨55, by decide⟩
private def case_001213_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001213_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001213_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001213_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_001213_firstLine : StrictLin2 := { a := -1, b := 1, c := (-13/3) }
private def case_001213_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001213_rankWord :
    rankPairWord? case_001213_word = some case_001213_rank := by
  decide

private theorem case_001213_unrank :
    unrankPairWord case_001213_rank = case_001213_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001213_word case_001213_rank).1
    case_001213_rankWord |>.symm

private theorem case_001213_seqChoice :
    translationChoiceSeq case_001213_word case_001213_mask = case_001213_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001213_seqAtRank :
    translationSeqAtRankMask case_001213_rank case_001213_mask = case_001213_seq := by
  rw [translationSeqAtRankMask, case_001213_unrank]
  exact case_001213_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001213_bAtRank :
    translationBAtRankMask case_001213_rank case_001213_mask = case_001213_b := by
  rw [translationBAtRankMask, case_001213_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001213_b, case_001213_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001213_firstLine_eq :
    case_001213_support.firstLine case_001213_seq case_001213_b = case_001213_firstLine := by
  norm_num [case_001213_firstLine, case_001213_support, case_001213_seq, case_001213_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001213_secondLine_eq :
    case_001213_support.secondLine case_001213_seq case_001213_b = case_001213_secondLine := by
  norm_num [case_001213_secondLine, case_001213_support, case_001213_seq, case_001213_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001213_sourceAgrees :
    SourceAgrees case_001213_support case_001213_rank.val case_001213_mask := by
  intro hlt
  have hrank : (⟨case_001213_rank.val, hlt⟩ : Fin numPairWords) = case_001213_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001213_rank.val, hlt⟩ case_001213_mask =
        case_001213_seq := by
    simpa [hrank] using case_001213_seqAtRank
  simp [SourceChecks, hseq, case_001213_support,
    checkTranslationConstraintSource, case_001213_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001213_rows :
    OppOneMinusVarFirstRows case_001213_support case_001213_rank.val case_001213_mask := by
  intro hlt
  have hrank : (⟨case_001213_rank.val, hlt⟩ : Fin numPairWords) = case_001213_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001213_rank.val, hlt⟩ case_001213_mask =
        case_001213_seq := by
    simpa [hrank] using case_001213_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001213_rank.val, hlt⟩ case_001213_mask =
        case_001213_b := by
    simpa [hrank] using case_001213_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001213_support case_001213_rank.val hlt
          case_001213_mask = case_001213_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001213_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001213_support case_001213_rank.val hlt
          case_001213_mask = case_001213_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001213_secondLine_eq]
  have case_001213_rowFirst :
      OppPosRow (FirstLineAt case_001213_support case_001213_rank.val hlt case_001213_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001213_firstLine, OppPosRow]
  have case_001213_fixedSecond :
      FixedRow (SecondLineAt case_001213_support case_001213_rank.val hlt case_001213_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001213_secondLine, FixedRow]
  exact ⟨case_001213_rowFirst, case_001213_fixedSecond⟩

private theorem case_001213_existsRows :
    ExistsOppOneMinusVarFirstRows case_001213_rank.val case_001213_mask :=
  ⟨case_001213_support, case_001213_sourceAgrees, case_001213_rows⟩

private theorem case_001213_covered :
    RowPropertyParametricCovered case_001213_rank.val case_001213_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001213_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001214_rank : Fin numPairWords := ⟨852, by decide⟩
private def case_001214_mask : SignMask := ⟨63, by decide⟩
private def case_001214_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_001214_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001214_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001214_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_001214_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001214_secondLine : StrictLin2 := { a := (-3/28), b := (3/28), c := (-3/14) }

private theorem case_001214_rankWord :
    rankPairWord? case_001214_word = some case_001214_rank := by
  decide

private theorem case_001214_unrank :
    unrankPairWord case_001214_rank = case_001214_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001214_word case_001214_rank).1
    case_001214_rankWord |>.symm

private theorem case_001214_seqChoice :
    translationChoiceSeq case_001214_word case_001214_mask = case_001214_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001214_seqAtRank :
    translationSeqAtRankMask case_001214_rank case_001214_mask = case_001214_seq := by
  rw [translationSeqAtRankMask, case_001214_unrank]
  exact case_001214_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001214_bAtRank :
    translationBAtRankMask case_001214_rank case_001214_mask = case_001214_b := by
  rw [translationBAtRankMask, case_001214_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001214_b, case_001214_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001214_firstLine_eq :
    case_001214_support.firstLine case_001214_seq case_001214_b = case_001214_firstLine := by
  norm_num [case_001214_firstLine, case_001214_support, case_001214_seq, case_001214_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001214_secondLine_eq :
    case_001214_support.secondLine case_001214_seq case_001214_b = case_001214_secondLine := by
  norm_num [case_001214_secondLine, case_001214_support, case_001214_seq, case_001214_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001214_sourceAgrees :
    SourceAgrees case_001214_support case_001214_rank.val case_001214_mask := by
  intro hlt
  have hrank : (⟨case_001214_rank.val, hlt⟩ : Fin numPairWords) = case_001214_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001214_rank.val, hlt⟩ case_001214_mask =
        case_001214_seq := by
    simpa [hrank] using case_001214_seqAtRank
  simp [SourceChecks, hseq, case_001214_support,
    checkTranslationConstraintSource, case_001214_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001214_rows :
    OppOneMinusVarSecondRows case_001214_support case_001214_rank.val case_001214_mask := by
  intro hlt
  have hrank : (⟨case_001214_rank.val, hlt⟩ : Fin numPairWords) = case_001214_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001214_rank.val, hlt⟩ case_001214_mask =
        case_001214_seq := by
    simpa [hrank] using case_001214_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001214_rank.val, hlt⟩ case_001214_mask =
        case_001214_b := by
    simpa [hrank] using case_001214_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001214_support case_001214_rank.val hlt
          case_001214_mask = case_001214_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001214_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001214_support case_001214_rank.val hlt
          case_001214_mask = case_001214_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001214_secondLine_eq]
  have case_001214_fixedFirst :
      FixedRow (FirstLineAt case_001214_support case_001214_rank.val hlt case_001214_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001214_firstLine, FixedRow]
  have case_001214_rowSecond :
      OppPosRow (SecondLineAt case_001214_support case_001214_rank.val hlt case_001214_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001214_secondLine, OppPosRow]
  exact ⟨case_001214_fixedFirst, case_001214_rowSecond⟩

private theorem case_001214_existsRows :
    ExistsOppOneMinusVarSecondRows case_001214_rank.val case_001214_mask :=
  ⟨case_001214_support, case_001214_sourceAgrees, case_001214_rows⟩

private theorem case_001214_covered :
    RowPropertyParametricCovered case_001214_rank.val case_001214_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001214_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001215_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001215_mask : SignMask := ⟨8, by decide⟩
private def case_001215_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001215_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001215_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001215_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-116/9) }
private def case_001215_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/13) }
private def case_001215_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001215_rankWord :
    rankPairWord? case_001215_word = some case_001215_rank := by
  decide

private theorem case_001215_unrank :
    unrankPairWord case_001215_rank = case_001215_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001215_word case_001215_rank).1
    case_001215_rankWord |>.symm

private theorem case_001215_seqChoice :
    translationChoiceSeq case_001215_word case_001215_mask = case_001215_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001215_seqAtRank :
    translationSeqAtRankMask case_001215_rank case_001215_mask = case_001215_seq := by
  rw [translationSeqAtRankMask, case_001215_unrank]
  exact case_001215_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001215_bAtRank :
    translationBAtRankMask case_001215_rank case_001215_mask = case_001215_b := by
  rw [translationBAtRankMask, case_001215_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001215_b, case_001215_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001215_firstLine_eq :
    case_001215_support.firstLine case_001215_seq case_001215_b = case_001215_firstLine := by
  norm_num [case_001215_firstLine, case_001215_support, case_001215_seq, case_001215_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001215_secondLine_eq :
    case_001215_support.secondLine case_001215_seq case_001215_b = case_001215_secondLine := by
  norm_num [case_001215_secondLine, case_001215_support, case_001215_seq, case_001215_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001215_sourceAgrees :
    SourceAgrees case_001215_support case_001215_rank.val case_001215_mask := by
  intro hlt
  have hrank : (⟨case_001215_rank.val, hlt⟩ : Fin numPairWords) = case_001215_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001215_rank.val, hlt⟩ case_001215_mask =
        case_001215_seq := by
    simpa [hrank] using case_001215_seqAtRank
  simp [SourceChecks, hseq, case_001215_support,
    checkTranslationConstraintSource, case_001215_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001215_rows :
    EqEqPosVarFirstRows case_001215_support case_001215_rank.val case_001215_mask := by
  intro hlt
  have hrank : (⟨case_001215_rank.val, hlt⟩ : Fin numPairWords) = case_001215_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001215_rank.val, hlt⟩ case_001215_mask =
        case_001215_seq := by
    simpa [hrank] using case_001215_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001215_rank.val, hlt⟩ case_001215_mask =
        case_001215_b := by
    simpa [hrank] using case_001215_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001215_support case_001215_rank.val hlt
          case_001215_mask = case_001215_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001215_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001215_support case_001215_rank.val hlt
          case_001215_mask = case_001215_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001215_secondLine_eq]
  have case_001215_rowFirst :
      EqEqPosRow (FirstLineAt case_001215_support case_001215_rank.val hlt case_001215_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001215_firstLine, EqEqPosRow]
  have case_001215_fixedSecond :
      FixedRow (SecondLineAt case_001215_support case_001215_rank.val hlt case_001215_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001215_secondLine, FixedRow]
  exact ⟨case_001215_rowFirst, case_001215_fixedSecond⟩

private theorem case_001215_existsRows :
    ExistsEqEqPosVarFirstRows case_001215_rank.val case_001215_mask :=
  ⟨case_001215_support, case_001215_sourceAgrees, case_001215_rows⟩

private theorem case_001215_covered :
    RowPropertyParametricCovered case_001215_rank.val case_001215_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001215_existsRows

inductive Group037Covered : Nat -> SignMask -> Prop
  | case_001184 : Group037Covered case_001184_rank.val case_001184_mask
  | case_001185 : Group037Covered case_001185_rank.val case_001185_mask
  | case_001186 : Group037Covered case_001186_rank.val case_001186_mask
  | case_001187 : Group037Covered case_001187_rank.val case_001187_mask
  | case_001188 : Group037Covered case_001188_rank.val case_001188_mask
  | case_001189 : Group037Covered case_001189_rank.val case_001189_mask
  | case_001190 : Group037Covered case_001190_rank.val case_001190_mask
  | case_001191 : Group037Covered case_001191_rank.val case_001191_mask
  | case_001192 : Group037Covered case_001192_rank.val case_001192_mask
  | case_001193 : Group037Covered case_001193_rank.val case_001193_mask
  | case_001194 : Group037Covered case_001194_rank.val case_001194_mask
  | case_001195 : Group037Covered case_001195_rank.val case_001195_mask
  | case_001196 : Group037Covered case_001196_rank.val case_001196_mask
  | case_001197 : Group037Covered case_001197_rank.val case_001197_mask
  | case_001198 : Group037Covered case_001198_rank.val case_001198_mask
  | case_001199 : Group037Covered case_001199_rank.val case_001199_mask
  | case_001200 : Group037Covered case_001200_rank.val case_001200_mask
  | case_001201 : Group037Covered case_001201_rank.val case_001201_mask
  | case_001202 : Group037Covered case_001202_rank.val case_001202_mask
  | case_001203 : Group037Covered case_001203_rank.val case_001203_mask
  | case_001204 : Group037Covered case_001204_rank.val case_001204_mask
  | case_001205 : Group037Covered case_001205_rank.val case_001205_mask
  | case_001206 : Group037Covered case_001206_rank.val case_001206_mask
  | case_001207 : Group037Covered case_001207_rank.val case_001207_mask
  | case_001208 : Group037Covered case_001208_rank.val case_001208_mask
  | case_001209 : Group037Covered case_001209_rank.val case_001209_mask
  | case_001210 : Group037Covered case_001210_rank.val case_001210_mask
  | case_001211 : Group037Covered case_001211_rank.val case_001211_mask
  | case_001212 : Group037Covered case_001212_rank.val case_001212_mask
  | case_001213 : Group037Covered case_001213_rank.val case_001213_mask
  | case_001214 : Group037Covered case_001214_rank.val case_001214_mask
  | case_001215 : Group037Covered case_001215_rank.val case_001215_mask

theorem Group037GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group037Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001184 =>
      exact RowPropertyParametricCovered.kills case_001184_covered
  | case_001185 =>
      exact RowPropertyParametricCovered.kills case_001185_covered
  | case_001186 =>
      exact RowPropertyParametricCovered.kills case_001186_covered
  | case_001187 =>
      exact RowPropertyParametricCovered.kills case_001187_covered
  | case_001188 =>
      exact RowPropertyParametricCovered.kills case_001188_covered
  | case_001189 =>
      exact RowPropertyParametricCovered.kills case_001189_covered
  | case_001190 =>
      exact RowPropertyParametricCovered.kills case_001190_covered
  | case_001191 =>
      exact RowPropertyParametricCovered.kills case_001191_covered
  | case_001192 =>
      exact RowPropertyParametricCovered.kills case_001192_covered
  | case_001193 =>
      exact RowPropertyParametricCovered.kills case_001193_covered
  | case_001194 =>
      exact RowPropertyParametricCovered.kills case_001194_covered
  | case_001195 =>
      exact RowPropertyParametricCovered.kills case_001195_covered
  | case_001196 =>
      exact RowPropertyParametricCovered.kills case_001196_covered
  | case_001197 =>
      exact RowPropertyParametricCovered.kills case_001197_covered
  | case_001198 =>
      exact RowPropertyParametricCovered.kills case_001198_covered
  | case_001199 =>
      exact RowPropertyParametricCovered.kills case_001199_covered
  | case_001200 =>
      exact RowPropertyParametricCovered.kills case_001200_covered
  | case_001201 =>
      exact RowPropertyParametricCovered.kills case_001201_covered
  | case_001202 =>
      exact RowPropertyParametricCovered.kills case_001202_covered
  | case_001203 =>
      exact RowPropertyParametricCovered.kills case_001203_covered
  | case_001204 =>
      exact RowPropertyParametricCovered.kills case_001204_covered
  | case_001205 =>
      exact RowPropertyParametricCovered.kills case_001205_covered
  | case_001206 =>
      exact RowPropertyParametricCovered.kills case_001206_covered
  | case_001207 =>
      exact RowPropertyParametricCovered.kills case_001207_covered
  | case_001208 =>
      exact RowPropertyParametricCovered.kills case_001208_covered
  | case_001209 =>
      exact RowPropertyParametricCovered.kills case_001209_covered
  | case_001210 =>
      exact RowPropertyParametricCovered.kills case_001210_covered
  | case_001211 =>
      exact RowPropertyParametricCovered.kills case_001211_covered
  | case_001212 =>
      exact RowPropertyParametricCovered.kills case_001212_covered
  | case_001213 =>
      exact RowPropertyParametricCovered.kills case_001213_covered
  | case_001214 =>
      exact RowPropertyParametricCovered.kills case_001214_covered
  | case_001215 =>
      exact RowPropertyParametricCovered.kills case_001215_covered

theorem Group037_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group037
