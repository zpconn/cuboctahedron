import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group041

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Bounded row-property quotient case `eq_eq_neg_var_second|rowProperty=02f4b044f40d3c9c9494bbc6e57dd6bfb8069b2ba6d91594099ff0846fcc43e5`. -/
private def case_001312_rank : Fin numPairWords := ⟨875, by decide⟩
private def case_001312_mask : SignMask := ⟨12, by decide⟩
private def case_001312_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11], by decide⟩
private def case_001312_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_001312_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001312_b : Vec3 Rat := { x := (-428/27), y := (-44/27), z := (-332/27) }
private def case_001312_firstLine : StrictLin2 := { a := -1, b := -1, c := 1 }
private def case_001312_secondLine : StrictLin2 := { a := (321/6566), b := (321/6566), c := (-29/469) }

private theorem case_001312_rankWord :
    rankPairWord? case_001312_word = some case_001312_rank := by
  decide

private theorem case_001312_unrank :
    unrankPairWord case_001312_rank = case_001312_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001312_word case_001312_rank).1
    case_001312_rankWord |>.symm

private theorem case_001312_seqChoice :
    translationChoiceSeq case_001312_word case_001312_mask = case_001312_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001312_seqAtRank :
    translationSeqAtRankMask case_001312_rank case_001312_mask = case_001312_seq := by
  rw [translationSeqAtRankMask, case_001312_unrank]
  exact case_001312_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001312_bAtRank :
    translationBAtRankMask case_001312_rank case_001312_mask = case_001312_b := by
  rw [translationBAtRankMask, case_001312_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001312_b, case_001312_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001312_firstLine_eq :
    case_001312_support.firstLine case_001312_seq case_001312_b = case_001312_firstLine := by
  norm_num [case_001312_firstLine, case_001312_support, case_001312_seq, case_001312_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001312_secondLine_eq :
    case_001312_support.secondLine case_001312_seq case_001312_b = case_001312_secondLine := by
  norm_num [case_001312_secondLine, case_001312_support, case_001312_seq, case_001312_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001312_sourceAgrees :
    SourceAgrees case_001312_support case_001312_rank.val case_001312_mask := by
  intro hlt
  have hrank : (⟨case_001312_rank.val, hlt⟩ : Fin numPairWords) = case_001312_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001312_rank.val, hlt⟩ case_001312_mask =
        case_001312_seq := by
    simpa [hrank] using case_001312_seqAtRank
  simp [SourceChecks, hseq, case_001312_support,
    checkTranslationConstraintSource, case_001312_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001312_rows :
    EqEqNegVarSecondRows case_001312_support case_001312_rank.val case_001312_mask := by
  intro hlt
  have hrank : (⟨case_001312_rank.val, hlt⟩ : Fin numPairWords) = case_001312_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001312_rank.val, hlt⟩ case_001312_mask =
        case_001312_seq := by
    simpa [hrank] using case_001312_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001312_rank.val, hlt⟩ case_001312_mask =
        case_001312_b := by
    simpa [hrank] using case_001312_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001312_support case_001312_rank.val hlt
          case_001312_mask = case_001312_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001312_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001312_support case_001312_rank.val hlt
          case_001312_mask = case_001312_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001312_secondLine_eq]
  have case_001312_fixedFirst :
      FixedRow (FirstLineAt case_001312_support case_001312_rank.val hlt case_001312_mask)
        (-1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001312_firstLine, FixedRow]
  have case_001312_rowSecond :
      EqEqNegRow (SecondLineAt case_001312_support case_001312_rank.val hlt case_001312_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001312_secondLine, EqEqNegRow]
  exact ⟨case_001312_fixedFirst, case_001312_rowSecond⟩

private theorem case_001312_existsRows :
    ExistsEqEqNegVarSecondRows case_001312_rank.val case_001312_mask :=
  ⟨case_001312_support, case_001312_sourceAgrees, case_001312_rows⟩

private theorem case_001312_covered :
    RowPropertyParametricCovered case_001312_rank.val case_001312_mask :=
  RowPropertyParametricCovered.eqEqNegVarSecond case_001312_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001313_rank : Fin numPairWords := ⟨875, by decide⟩
private def case_001313_mask : SignMask := ⟨13, by decide⟩
private def case_001313_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11], by decide⟩
private def case_001313_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001313_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001313_b : Vec3 Rat := { x := (-428/27), y := (172/27), z := (-332/27) }
private def case_001313_firstLine : StrictLin2 := { a := (-107/233), b := (107/233), c := (-459/233) }
private def case_001313_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001313_rankWord :
    rankPairWord? case_001313_word = some case_001313_rank := by
  decide

private theorem case_001313_unrank :
    unrankPairWord case_001313_rank = case_001313_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001313_word case_001313_rank).1
    case_001313_rankWord |>.symm

private theorem case_001313_seqChoice :
    translationChoiceSeq case_001313_word case_001313_mask = case_001313_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001313_seqAtRank :
    translationSeqAtRankMask case_001313_rank case_001313_mask = case_001313_seq := by
  rw [translationSeqAtRankMask, case_001313_unrank]
  exact case_001313_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001313_bAtRank :
    translationBAtRankMask case_001313_rank case_001313_mask = case_001313_b := by
  rw [translationBAtRankMask, case_001313_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001313_b, case_001313_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001313_firstLine_eq :
    case_001313_support.firstLine case_001313_seq case_001313_b = case_001313_firstLine := by
  norm_num [case_001313_firstLine, case_001313_support, case_001313_seq, case_001313_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001313_secondLine_eq :
    case_001313_support.secondLine case_001313_seq case_001313_b = case_001313_secondLine := by
  norm_num [case_001313_secondLine, case_001313_support, case_001313_seq, case_001313_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001313_sourceAgrees :
    SourceAgrees case_001313_support case_001313_rank.val case_001313_mask := by
  intro hlt
  have hrank : (⟨case_001313_rank.val, hlt⟩ : Fin numPairWords) = case_001313_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001313_rank.val, hlt⟩ case_001313_mask =
        case_001313_seq := by
    simpa [hrank] using case_001313_seqAtRank
  simp [SourceChecks, hseq, case_001313_support,
    checkTranslationConstraintSource, case_001313_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001313_rows :
    OppOneMinusVarFirstRows case_001313_support case_001313_rank.val case_001313_mask := by
  intro hlt
  have hrank : (⟨case_001313_rank.val, hlt⟩ : Fin numPairWords) = case_001313_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001313_rank.val, hlt⟩ case_001313_mask =
        case_001313_seq := by
    simpa [hrank] using case_001313_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001313_rank.val, hlt⟩ case_001313_mask =
        case_001313_b := by
    simpa [hrank] using case_001313_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001313_support case_001313_rank.val hlt
          case_001313_mask = case_001313_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001313_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001313_support case_001313_rank.val hlt
          case_001313_mask = case_001313_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001313_secondLine_eq]
  have case_001313_rowFirst :
      OppPosRow (FirstLineAt case_001313_support case_001313_rank.val hlt case_001313_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001313_firstLine, OppPosRow]
  have case_001313_fixedSecond :
      FixedRow (SecondLineAt case_001313_support case_001313_rank.val hlt case_001313_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001313_secondLine, FixedRow]
  exact ⟨case_001313_rowFirst, case_001313_fixedSecond⟩

private theorem case_001313_existsRows :
    ExistsOppOneMinusVarFirstRows case_001313_rank.val case_001313_mask :=
  ⟨case_001313_support, case_001313_sourceAgrees, case_001313_rows⟩

private theorem case_001313_covered :
    RowPropertyParametricCovered case_001313_rank.val case_001313_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001313_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001314_rank : Fin numPairWords := ⟨875, by decide⟩
private def case_001314_mask : SignMask := ⟨22, by decide⟩
private def case_001314_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11], by decide⟩
private def case_001314_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001314_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001314_b : Vec3 Rat := { x := (-172/27), y := (-268/27), z := (236/27) }
private def case_001314_firstLine : StrictLin2 := { a := (-43/69), b := (-43/69), c := (-15/23) }
private def case_001314_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001314_rankWord :
    rankPairWord? case_001314_word = some case_001314_rank := by
  decide

private theorem case_001314_unrank :
    unrankPairWord case_001314_rank = case_001314_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001314_word case_001314_rank).1
    case_001314_rankWord |>.symm

private theorem case_001314_seqChoice :
    translationChoiceSeq case_001314_word case_001314_mask = case_001314_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001314_seqAtRank :
    translationSeqAtRankMask case_001314_rank case_001314_mask = case_001314_seq := by
  rw [translationSeqAtRankMask, case_001314_unrank]
  exact case_001314_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001314_bAtRank :
    translationBAtRankMask case_001314_rank case_001314_mask = case_001314_b := by
  rw [translationBAtRankMask, case_001314_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001314_b, case_001314_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001314_firstLine_eq :
    case_001314_support.firstLine case_001314_seq case_001314_b = case_001314_firstLine := by
  norm_num [case_001314_firstLine, case_001314_support, case_001314_seq, case_001314_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001314_secondLine_eq :
    case_001314_support.secondLine case_001314_seq case_001314_b = case_001314_secondLine := by
  norm_num [case_001314_secondLine, case_001314_support, case_001314_seq, case_001314_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001314_sourceAgrees :
    SourceAgrees case_001314_support case_001314_rank.val case_001314_mask := by
  intro hlt
  have hrank : (⟨case_001314_rank.val, hlt⟩ : Fin numPairWords) = case_001314_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001314_rank.val, hlt⟩ case_001314_mask =
        case_001314_seq := by
    simpa [hrank] using case_001314_seqAtRank
  simp [SourceChecks, hseq, case_001314_support,
    checkTranslationConstraintSource, case_001314_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001314_rows :
    EqEqPosVarFirstRows case_001314_support case_001314_rank.val case_001314_mask := by
  intro hlt
  have hrank : (⟨case_001314_rank.val, hlt⟩ : Fin numPairWords) = case_001314_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001314_rank.val, hlt⟩ case_001314_mask =
        case_001314_seq := by
    simpa [hrank] using case_001314_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001314_rank.val, hlt⟩ case_001314_mask =
        case_001314_b := by
    simpa [hrank] using case_001314_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001314_support case_001314_rank.val hlt
          case_001314_mask = case_001314_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001314_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001314_support case_001314_rank.val hlt
          case_001314_mask = case_001314_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001314_secondLine_eq]
  have case_001314_rowFirst :
      EqEqPosRow (FirstLineAt case_001314_support case_001314_rank.val hlt case_001314_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001314_firstLine, EqEqPosRow]
  have case_001314_fixedSecond :
      FixedRow (SecondLineAt case_001314_support case_001314_rank.val hlt case_001314_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001314_secondLine, FixedRow]
  exact ⟨case_001314_rowFirst, case_001314_fixedSecond⟩

private theorem case_001314_existsRows :
    ExistsEqEqPosVarFirstRows case_001314_rank.val case_001314_mask :=
  ⟨case_001314_support, case_001314_sourceAgrees, case_001314_rows⟩

private theorem case_001314_covered :
    RowPropertyParametricCovered case_001314_rank.val case_001314_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001314_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001315_rank : Fin numPairWords := ⟨875, by decide⟩
private def case_001315_mask : SignMask := ⟨47, by decide⟩
private def case_001315_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11], by decide⟩
private def case_001315_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_001315_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001315_b : Vec3 Rat := { x := (-284/27), y := (316/27), z := (28/27) }
private def case_001315_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001315_secondLine : StrictLin2 := { a := (-213/490), b := (-213/490), c := (-334/245) }

private theorem case_001315_rankWord :
    rankPairWord? case_001315_word = some case_001315_rank := by
  decide

private theorem case_001315_unrank :
    unrankPairWord case_001315_rank = case_001315_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001315_word case_001315_rank).1
    case_001315_rankWord |>.symm

private theorem case_001315_seqChoice :
    translationChoiceSeq case_001315_word case_001315_mask = case_001315_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001315_seqAtRank :
    translationSeqAtRankMask case_001315_rank case_001315_mask = case_001315_seq := by
  rw [translationSeqAtRankMask, case_001315_unrank]
  exact case_001315_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001315_bAtRank :
    translationBAtRankMask case_001315_rank case_001315_mask = case_001315_b := by
  rw [translationBAtRankMask, case_001315_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001315_b, case_001315_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001315_firstLine_eq :
    case_001315_support.firstLine case_001315_seq case_001315_b = case_001315_firstLine := by
  norm_num [case_001315_firstLine, case_001315_support, case_001315_seq, case_001315_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001315_secondLine_eq :
    case_001315_support.secondLine case_001315_seq case_001315_b = case_001315_secondLine := by
  norm_num [case_001315_secondLine, case_001315_support, case_001315_seq, case_001315_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001315_sourceAgrees :
    SourceAgrees case_001315_support case_001315_rank.val case_001315_mask := by
  intro hlt
  have hrank : (⟨case_001315_rank.val, hlt⟩ : Fin numPairWords) = case_001315_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001315_rank.val, hlt⟩ case_001315_mask =
        case_001315_seq := by
    simpa [hrank] using case_001315_seqAtRank
  simp [SourceChecks, hseq, case_001315_support,
    checkTranslationConstraintSource, case_001315_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001315_rows :
    EqEqPosVarSecondRows case_001315_support case_001315_rank.val case_001315_mask := by
  intro hlt
  have hrank : (⟨case_001315_rank.val, hlt⟩ : Fin numPairWords) = case_001315_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001315_rank.val, hlt⟩ case_001315_mask =
        case_001315_seq := by
    simpa [hrank] using case_001315_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001315_rank.val, hlt⟩ case_001315_mask =
        case_001315_b := by
    simpa [hrank] using case_001315_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001315_support case_001315_rank.val hlt
          case_001315_mask = case_001315_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001315_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001315_support case_001315_rank.val hlt
          case_001315_mask = case_001315_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001315_secondLine_eq]
  have case_001315_fixedFirst :
      FixedRow (FirstLineAt case_001315_support case_001315_rank.val hlt case_001315_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001315_firstLine, FixedRow]
  have case_001315_rowSecond :
      EqEqPosRow (SecondLineAt case_001315_support case_001315_rank.val hlt case_001315_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001315_secondLine, EqEqPosRow]
  exact ⟨case_001315_fixedFirst, case_001315_rowSecond⟩

private theorem case_001315_existsRows :
    ExistsEqEqPosVarSecondRows case_001315_rank.val case_001315_mask :=
  ⟨case_001315_support, case_001315_sourceAgrees, case_001315_rows⟩

private theorem case_001315_covered :
    RowPropertyParametricCovered case_001315_rank.val case_001315_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001315_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001316_rank : Fin numPairWords := ⟨875, by decide⟩
private def case_001316_mask : SignMask := ⟨54, by decide⟩
private def case_001316_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11], by decide⟩
private def case_001316_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001316_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001316_b : Vec3 Rat := { x := (-28/27), y := (-124/27), z := (380/27) }
private def case_001316_firstLine : StrictLin2 := { a := (-7/33), b := (-7/33), c := (-17/33) }
private def case_001316_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001316_rankWord :
    rankPairWord? case_001316_word = some case_001316_rank := by
  decide

private theorem case_001316_unrank :
    unrankPairWord case_001316_rank = case_001316_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001316_word case_001316_rank).1
    case_001316_rankWord |>.symm

private theorem case_001316_seqChoice :
    translationChoiceSeq case_001316_word case_001316_mask = case_001316_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001316_seqAtRank :
    translationSeqAtRankMask case_001316_rank case_001316_mask = case_001316_seq := by
  rw [translationSeqAtRankMask, case_001316_unrank]
  exact case_001316_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001316_bAtRank :
    translationBAtRankMask case_001316_rank case_001316_mask = case_001316_b := by
  rw [translationBAtRankMask, case_001316_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001316_b, case_001316_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001316_firstLine_eq :
    case_001316_support.firstLine case_001316_seq case_001316_b = case_001316_firstLine := by
  norm_num [case_001316_firstLine, case_001316_support, case_001316_seq, case_001316_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001316_secondLine_eq :
    case_001316_support.secondLine case_001316_seq case_001316_b = case_001316_secondLine := by
  norm_num [case_001316_secondLine, case_001316_support, case_001316_seq, case_001316_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001316_sourceAgrees :
    SourceAgrees case_001316_support case_001316_rank.val case_001316_mask := by
  intro hlt
  have hrank : (⟨case_001316_rank.val, hlt⟩ : Fin numPairWords) = case_001316_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001316_rank.val, hlt⟩ case_001316_mask =
        case_001316_seq := by
    simpa [hrank] using case_001316_seqAtRank
  simp [SourceChecks, hseq, case_001316_support,
    checkTranslationConstraintSource, case_001316_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001316_rows :
    EqEqPosVarFirstRows case_001316_support case_001316_rank.val case_001316_mask := by
  intro hlt
  have hrank : (⟨case_001316_rank.val, hlt⟩ : Fin numPairWords) = case_001316_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001316_rank.val, hlt⟩ case_001316_mask =
        case_001316_seq := by
    simpa [hrank] using case_001316_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001316_rank.val, hlt⟩ case_001316_mask =
        case_001316_b := by
    simpa [hrank] using case_001316_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001316_support case_001316_rank.val hlt
          case_001316_mask = case_001316_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001316_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001316_support case_001316_rank.val hlt
          case_001316_mask = case_001316_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001316_secondLine_eq]
  have case_001316_rowFirst :
      EqEqPosRow (FirstLineAt case_001316_support case_001316_rank.val hlt case_001316_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001316_firstLine, EqEqPosRow]
  have case_001316_fixedSecond :
      FixedRow (SecondLineAt case_001316_support case_001316_rank.val hlt case_001316_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001316_secondLine, FixedRow]
  exact ⟨case_001316_rowFirst, case_001316_fixedSecond⟩

private theorem case_001316_existsRows :
    ExistsEqEqPosVarFirstRows case_001316_rank.val case_001316_mask :=
  ⟨case_001316_support, case_001316_sourceAgrees, case_001316_rows⟩

private theorem case_001316_covered :
    RowPropertyParametricCovered case_001316_rank.val case_001316_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001316_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001317_rank : Fin numPairWords := ⟨875, by decide⟩
private def case_001317_mask : SignMask := ⟨55, by decide⟩
private def case_001317_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11], by decide⟩
private def case_001317_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_001317_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001317_b : Vec3 Rat := { x := (-28/27), y := (92/27), z := (380/27) }
private def case_001317_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001317_secondLine : StrictLin2 := { a := (-21/1258), b := (-21/1258), c := (-46/629) }

private theorem case_001317_rankWord :
    rankPairWord? case_001317_word = some case_001317_rank := by
  decide

private theorem case_001317_unrank :
    unrankPairWord case_001317_rank = case_001317_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001317_word case_001317_rank).1
    case_001317_rankWord |>.symm

private theorem case_001317_seqChoice :
    translationChoiceSeq case_001317_word case_001317_mask = case_001317_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001317_seqAtRank :
    translationSeqAtRankMask case_001317_rank case_001317_mask = case_001317_seq := by
  rw [translationSeqAtRankMask, case_001317_unrank]
  exact case_001317_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001317_bAtRank :
    translationBAtRankMask case_001317_rank case_001317_mask = case_001317_b := by
  rw [translationBAtRankMask, case_001317_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001317_b, case_001317_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001317_firstLine_eq :
    case_001317_support.firstLine case_001317_seq case_001317_b = case_001317_firstLine := by
  norm_num [case_001317_firstLine, case_001317_support, case_001317_seq, case_001317_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001317_secondLine_eq :
    case_001317_support.secondLine case_001317_seq case_001317_b = case_001317_secondLine := by
  norm_num [case_001317_secondLine, case_001317_support, case_001317_seq, case_001317_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001317_sourceAgrees :
    SourceAgrees case_001317_support case_001317_rank.val case_001317_mask := by
  intro hlt
  have hrank : (⟨case_001317_rank.val, hlt⟩ : Fin numPairWords) = case_001317_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001317_rank.val, hlt⟩ case_001317_mask =
        case_001317_seq := by
    simpa [hrank] using case_001317_seqAtRank
  simp [SourceChecks, hseq, case_001317_support,
    checkTranslationConstraintSource, case_001317_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001317_rows :
    EqEqPosVarSecondRows case_001317_support case_001317_rank.val case_001317_mask := by
  intro hlt
  have hrank : (⟨case_001317_rank.val, hlt⟩ : Fin numPairWords) = case_001317_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001317_rank.val, hlt⟩ case_001317_mask =
        case_001317_seq := by
    simpa [hrank] using case_001317_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001317_rank.val, hlt⟩ case_001317_mask =
        case_001317_b := by
    simpa [hrank] using case_001317_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001317_support case_001317_rank.val hlt
          case_001317_mask = case_001317_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001317_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001317_support case_001317_rank.val hlt
          case_001317_mask = case_001317_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001317_secondLine_eq]
  have case_001317_fixedFirst :
      FixedRow (FirstLineAt case_001317_support case_001317_rank.val hlt case_001317_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001317_firstLine, FixedRow]
  have case_001317_rowSecond :
      EqEqPosRow (SecondLineAt case_001317_support case_001317_rank.val hlt case_001317_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001317_secondLine, EqEqPosRow]
  exact ⟨case_001317_fixedFirst, case_001317_rowSecond⟩

private theorem case_001317_existsRows :
    ExistsEqEqPosVarSecondRows case_001317_rank.val case_001317_mask :=
  ⟨case_001317_support, case_001317_sourceAgrees, case_001317_rows⟩

private theorem case_001317_covered :
    RowPropertyParametricCovered case_001317_rank.val case_001317_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001317_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001318_rank : Fin numPairWords := ⟨875, by decide⟩
private def case_001318_mask : SignMask := ⟨63, by decide⟩
private def case_001318_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11], by decide⟩
private def case_001318_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001318_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001318_b : Vec3 Rat := { x := (-172/27), y := (236/27), z := (236/27) }
private def case_001318_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001318_secondLine : StrictLin2 := { a := (-27/236), b := (27/236), c := (-27/118) }

private theorem case_001318_rankWord :
    rankPairWord? case_001318_word = some case_001318_rank := by
  decide

private theorem case_001318_unrank :
    unrankPairWord case_001318_rank = case_001318_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001318_word case_001318_rank).1
    case_001318_rankWord |>.symm

private theorem case_001318_seqChoice :
    translationChoiceSeq case_001318_word case_001318_mask = case_001318_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001318_seqAtRank :
    translationSeqAtRankMask case_001318_rank case_001318_mask = case_001318_seq := by
  rw [translationSeqAtRankMask, case_001318_unrank]
  exact case_001318_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001318_bAtRank :
    translationBAtRankMask case_001318_rank case_001318_mask = case_001318_b := by
  rw [translationBAtRankMask, case_001318_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001318_b, case_001318_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001318_firstLine_eq :
    case_001318_support.firstLine case_001318_seq case_001318_b = case_001318_firstLine := by
  norm_num [case_001318_firstLine, case_001318_support, case_001318_seq, case_001318_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001318_secondLine_eq :
    case_001318_support.secondLine case_001318_seq case_001318_b = case_001318_secondLine := by
  norm_num [case_001318_secondLine, case_001318_support, case_001318_seq, case_001318_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001318_sourceAgrees :
    SourceAgrees case_001318_support case_001318_rank.val case_001318_mask := by
  intro hlt
  have hrank : (⟨case_001318_rank.val, hlt⟩ : Fin numPairWords) = case_001318_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001318_rank.val, hlt⟩ case_001318_mask =
        case_001318_seq := by
    simpa [hrank] using case_001318_seqAtRank
  simp [SourceChecks, hseq, case_001318_support,
    checkTranslationConstraintSource, case_001318_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001318_rows :
    OppOneMinusVarSecondRows case_001318_support case_001318_rank.val case_001318_mask := by
  intro hlt
  have hrank : (⟨case_001318_rank.val, hlt⟩ : Fin numPairWords) = case_001318_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001318_rank.val, hlt⟩ case_001318_mask =
        case_001318_seq := by
    simpa [hrank] using case_001318_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001318_rank.val, hlt⟩ case_001318_mask =
        case_001318_b := by
    simpa [hrank] using case_001318_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001318_support case_001318_rank.val hlt
          case_001318_mask = case_001318_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001318_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001318_support case_001318_rank.val hlt
          case_001318_mask = case_001318_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001318_secondLine_eq]
  have case_001318_fixedFirst :
      FixedRow (FirstLineAt case_001318_support case_001318_rank.val hlt case_001318_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001318_firstLine, FixedRow]
  have case_001318_rowSecond :
      OppPosRow (SecondLineAt case_001318_support case_001318_rank.val hlt case_001318_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001318_secondLine, OppPosRow]
  exact ⟨case_001318_fixedFirst, case_001318_rowSecond⟩

private theorem case_001318_existsRows :
    ExistsOppOneMinusVarSecondRows case_001318_rank.val case_001318_mask :=
  ⟨case_001318_support, case_001318_sourceAgrees, case_001318_rows⟩

private theorem case_001318_covered :
    RowPropertyParametricCovered case_001318_rank.val case_001318_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001318_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001319_rank : Fin numPairWords := ⟨882, by decide⟩
private def case_001319_mask : SignMask := ⟨12, by decide⟩
private def case_001319_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001319_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001319_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_001319_b : Vec3 Rat := { x := (-332/27), y := (-44/27), z := (-428/27) }
private def case_001319_firstLine : StrictLin2 := { a := -1, b := -1, c := (-153/83) }
private def case_001319_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001319_rankWord :
    rankPairWord? case_001319_word = some case_001319_rank := by
  decide

private theorem case_001319_unrank :
    unrankPairWord case_001319_rank = case_001319_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001319_word case_001319_rank).1
    case_001319_rankWord |>.symm

private theorem case_001319_seqChoice :
    translationChoiceSeq case_001319_word case_001319_mask = case_001319_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001319_seqAtRank :
    translationSeqAtRankMask case_001319_rank case_001319_mask = case_001319_seq := by
  rw [translationSeqAtRankMask, case_001319_unrank]
  exact case_001319_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001319_bAtRank :
    translationBAtRankMask case_001319_rank case_001319_mask = case_001319_b := by
  rw [translationBAtRankMask, case_001319_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001319_b, case_001319_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001319_firstLine_eq :
    case_001319_support.firstLine case_001319_seq case_001319_b = case_001319_firstLine := by
  norm_num [case_001319_firstLine, case_001319_support, case_001319_seq, case_001319_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001319_secondLine_eq :
    case_001319_support.secondLine case_001319_seq case_001319_b = case_001319_secondLine := by
  norm_num [case_001319_secondLine, case_001319_support, case_001319_seq, case_001319_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001319_sourceAgrees :
    SourceAgrees case_001319_support case_001319_rank.val case_001319_mask := by
  intro hlt
  have hrank : (⟨case_001319_rank.val, hlt⟩ : Fin numPairWords) = case_001319_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001319_rank.val, hlt⟩ case_001319_mask =
        case_001319_seq := by
    simpa [hrank] using case_001319_seqAtRank
  simp [SourceChecks, hseq, case_001319_support,
    checkTranslationConstraintSource, case_001319_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001319_rows :
    EqEqPosVarFirstRows case_001319_support case_001319_rank.val case_001319_mask := by
  intro hlt
  have hrank : (⟨case_001319_rank.val, hlt⟩ : Fin numPairWords) = case_001319_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001319_rank.val, hlt⟩ case_001319_mask =
        case_001319_seq := by
    simpa [hrank] using case_001319_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001319_rank.val, hlt⟩ case_001319_mask =
        case_001319_b := by
    simpa [hrank] using case_001319_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001319_support case_001319_rank.val hlt
          case_001319_mask = case_001319_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001319_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001319_support case_001319_rank.val hlt
          case_001319_mask = case_001319_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001319_secondLine_eq]
  have case_001319_rowFirst :
      EqEqPosRow (FirstLineAt case_001319_support case_001319_rank.val hlt case_001319_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001319_firstLine, EqEqPosRow]
  have case_001319_fixedSecond :
      FixedRow (SecondLineAt case_001319_support case_001319_rank.val hlt case_001319_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001319_secondLine, FixedRow]
  exact ⟨case_001319_rowFirst, case_001319_fixedSecond⟩

private theorem case_001319_existsRows :
    ExistsEqEqPosVarFirstRows case_001319_rank.val case_001319_mask :=
  ⟨case_001319_support, case_001319_sourceAgrees, case_001319_rows⟩

private theorem case_001319_covered :
    RowPropertyParametricCovered case_001319_rank.val case_001319_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001319_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001320_rank : Fin numPairWords := ⟨882, by decide⟩
private def case_001320_mask : SignMask := ⟨13, by decide⟩
private def case_001320_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001320_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001320_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_001320_b : Vec3 Rat := { x := (-332/27), y := (172/27), z := (-428/27) }
private def case_001320_firstLine : StrictLin2 := { a := (-166/147), b := (-166/147), c := (-1180/441) }
private def case_001320_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001320_rankWord :
    rankPairWord? case_001320_word = some case_001320_rank := by
  decide

private theorem case_001320_unrank :
    unrankPairWord case_001320_rank = case_001320_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001320_word case_001320_rank).1
    case_001320_rankWord |>.symm

private theorem case_001320_seqChoice :
    translationChoiceSeq case_001320_word case_001320_mask = case_001320_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001320_seqAtRank :
    translationSeqAtRankMask case_001320_rank case_001320_mask = case_001320_seq := by
  rw [translationSeqAtRankMask, case_001320_unrank]
  exact case_001320_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001320_bAtRank :
    translationBAtRankMask case_001320_rank case_001320_mask = case_001320_b := by
  rw [translationBAtRankMask, case_001320_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001320_b, case_001320_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001320_firstLine_eq :
    case_001320_support.firstLine case_001320_seq case_001320_b = case_001320_firstLine := by
  norm_num [case_001320_firstLine, case_001320_support, case_001320_seq, case_001320_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001320_secondLine_eq :
    case_001320_support.secondLine case_001320_seq case_001320_b = case_001320_secondLine := by
  norm_num [case_001320_secondLine, case_001320_support, case_001320_seq, case_001320_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001320_sourceAgrees :
    SourceAgrees case_001320_support case_001320_rank.val case_001320_mask := by
  intro hlt
  have hrank : (⟨case_001320_rank.val, hlt⟩ : Fin numPairWords) = case_001320_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001320_rank.val, hlt⟩ case_001320_mask =
        case_001320_seq := by
    simpa [hrank] using case_001320_seqAtRank
  simp [SourceChecks, hseq, case_001320_support,
    checkTranslationConstraintSource, case_001320_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001320_rows :
    EqEqPosVarFirstRows case_001320_support case_001320_rank.val case_001320_mask := by
  intro hlt
  have hrank : (⟨case_001320_rank.val, hlt⟩ : Fin numPairWords) = case_001320_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001320_rank.val, hlt⟩ case_001320_mask =
        case_001320_seq := by
    simpa [hrank] using case_001320_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001320_rank.val, hlt⟩ case_001320_mask =
        case_001320_b := by
    simpa [hrank] using case_001320_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001320_support case_001320_rank.val hlt
          case_001320_mask = case_001320_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001320_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001320_support case_001320_rank.val hlt
          case_001320_mask = case_001320_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001320_secondLine_eq]
  have case_001320_rowFirst :
      EqEqPosRow (FirstLineAt case_001320_support case_001320_rank.val hlt case_001320_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001320_firstLine, EqEqPosRow]
  have case_001320_fixedSecond :
      FixedRow (SecondLineAt case_001320_support case_001320_rank.val hlt case_001320_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001320_secondLine, FixedRow]
  exact ⟨case_001320_rowFirst, case_001320_fixedSecond⟩

private theorem case_001320_existsRows :
    ExistsEqEqPosVarFirstRows case_001320_rank.val case_001320_mask :=
  ⟨case_001320_support, case_001320_sourceAgrees, case_001320_rows⟩

private theorem case_001320_covered :
    RowPropertyParametricCovered case_001320_rank.val case_001320_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001320_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001321_rank : Fin numPairWords := ⟨882, by decide⟩
private def case_001321_mask : SignMask := ⟨18, by decide⟩
private def case_001321_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001321_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001321_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001321_b : Vec3 Rat := { x := (-28/27), y := (-316/27), z := (284/27) }
private def case_001321_firstLine : StrictLin2 := { a := -1, b := -1, c := (-9/7) }
private def case_001321_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001321_rankWord :
    rankPairWord? case_001321_word = some case_001321_rank := by
  decide

private theorem case_001321_unrank :
    unrankPairWord case_001321_rank = case_001321_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001321_word case_001321_rank).1
    case_001321_rankWord |>.symm

private theorem case_001321_seqChoice :
    translationChoiceSeq case_001321_word case_001321_mask = case_001321_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001321_seqAtRank :
    translationSeqAtRankMask case_001321_rank case_001321_mask = case_001321_seq := by
  rw [translationSeqAtRankMask, case_001321_unrank]
  exact case_001321_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001321_bAtRank :
    translationBAtRankMask case_001321_rank case_001321_mask = case_001321_b := by
  rw [translationBAtRankMask, case_001321_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001321_b, case_001321_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001321_firstLine_eq :
    case_001321_support.firstLine case_001321_seq case_001321_b = case_001321_firstLine := by
  norm_num [case_001321_firstLine, case_001321_support, case_001321_seq, case_001321_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001321_secondLine_eq :
    case_001321_support.secondLine case_001321_seq case_001321_b = case_001321_secondLine := by
  norm_num [case_001321_secondLine, case_001321_support, case_001321_seq, case_001321_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001321_sourceAgrees :
    SourceAgrees case_001321_support case_001321_rank.val case_001321_mask := by
  intro hlt
  have hrank : (⟨case_001321_rank.val, hlt⟩ : Fin numPairWords) = case_001321_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001321_rank.val, hlt⟩ case_001321_mask =
        case_001321_seq := by
    simpa [hrank] using case_001321_seqAtRank
  simp [SourceChecks, hseq, case_001321_support,
    checkTranslationConstraintSource, case_001321_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001321_rows :
    EqEqPosVarFirstRows case_001321_support case_001321_rank.val case_001321_mask := by
  intro hlt
  have hrank : (⟨case_001321_rank.val, hlt⟩ : Fin numPairWords) = case_001321_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001321_rank.val, hlt⟩ case_001321_mask =
        case_001321_seq := by
    simpa [hrank] using case_001321_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001321_rank.val, hlt⟩ case_001321_mask =
        case_001321_b := by
    simpa [hrank] using case_001321_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001321_support case_001321_rank.val hlt
          case_001321_mask = case_001321_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001321_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001321_support case_001321_rank.val hlt
          case_001321_mask = case_001321_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001321_secondLine_eq]
  have case_001321_rowFirst :
      EqEqPosRow (FirstLineAt case_001321_support case_001321_rank.val hlt case_001321_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001321_firstLine, EqEqPosRow]
  have case_001321_fixedSecond :
      FixedRow (SecondLineAt case_001321_support case_001321_rank.val hlt case_001321_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001321_secondLine, FixedRow]
  exact ⟨case_001321_rowFirst, case_001321_fixedSecond⟩

private theorem case_001321_existsRows :
    ExistsEqEqPosVarFirstRows case_001321_rank.val case_001321_mask :=
  ⟨case_001321_support, case_001321_sourceAgrees, case_001321_rows⟩

private theorem case_001321_covered :
    RowPropertyParametricCovered case_001321_rank.val case_001321_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001321_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001322_rank : Fin numPairWords := ⟨882, by decide⟩
private def case_001322_mask : SignMask := ⟨22, by decide⟩
private def case_001322_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001322_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001322_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001322_b : Vec3 Rat := { x := (-236/27), y := (-236/27), z := (172/27) }
private def case_001322_firstLine : StrictLin2 := { a := -1, b := 1, c := (-145/59) }
private def case_001322_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001322_rankWord :
    rankPairWord? case_001322_word = some case_001322_rank := by
  decide

private theorem case_001322_unrank :
    unrankPairWord case_001322_rank = case_001322_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001322_word case_001322_rank).1
    case_001322_rankWord |>.symm

private theorem case_001322_seqChoice :
    translationChoiceSeq case_001322_word case_001322_mask = case_001322_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001322_seqAtRank :
    translationSeqAtRankMask case_001322_rank case_001322_mask = case_001322_seq := by
  rw [translationSeqAtRankMask, case_001322_unrank]
  exact case_001322_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001322_bAtRank :
    translationBAtRankMask case_001322_rank case_001322_mask = case_001322_b := by
  rw [translationBAtRankMask, case_001322_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001322_b, case_001322_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001322_firstLine_eq :
    case_001322_support.firstLine case_001322_seq case_001322_b = case_001322_firstLine := by
  norm_num [case_001322_firstLine, case_001322_support, case_001322_seq, case_001322_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001322_secondLine_eq :
    case_001322_support.secondLine case_001322_seq case_001322_b = case_001322_secondLine := by
  norm_num [case_001322_secondLine, case_001322_support, case_001322_seq, case_001322_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001322_sourceAgrees :
    SourceAgrees case_001322_support case_001322_rank.val case_001322_mask := by
  intro hlt
  have hrank : (⟨case_001322_rank.val, hlt⟩ : Fin numPairWords) = case_001322_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001322_rank.val, hlt⟩ case_001322_mask =
        case_001322_seq := by
    simpa [hrank] using case_001322_seqAtRank
  simp [SourceChecks, hseq, case_001322_support,
    checkTranslationConstraintSource, case_001322_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001322_rows :
    OppOneMinusVarFirstRows case_001322_support case_001322_rank.val case_001322_mask := by
  intro hlt
  have hrank : (⟨case_001322_rank.val, hlt⟩ : Fin numPairWords) = case_001322_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001322_rank.val, hlt⟩ case_001322_mask =
        case_001322_seq := by
    simpa [hrank] using case_001322_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001322_rank.val, hlt⟩ case_001322_mask =
        case_001322_b := by
    simpa [hrank] using case_001322_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001322_support case_001322_rank.val hlt
          case_001322_mask = case_001322_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001322_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001322_support case_001322_rank.val hlt
          case_001322_mask = case_001322_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001322_secondLine_eq]
  have case_001322_rowFirst :
      OppPosRow (FirstLineAt case_001322_support case_001322_rank.val hlt case_001322_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001322_firstLine, OppPosRow]
  have case_001322_fixedSecond :
      FixedRow (SecondLineAt case_001322_support case_001322_rank.val hlt case_001322_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001322_secondLine, FixedRow]
  exact ⟨case_001322_rowFirst, case_001322_fixedSecond⟩

private theorem case_001322_existsRows :
    ExistsOppOneMinusVarFirstRows case_001322_rank.val case_001322_mask :=
  ⟨case_001322_support, case_001322_sourceAgrees, case_001322_rows⟩

private theorem case_001322_covered :
    RowPropertyParametricCovered case_001322_rank.val case_001322_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001322_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001323_rank : Fin numPairWords := ⟨882, by decide⟩
private def case_001323_mask : SignMask := ⟨30, by decide⟩
private def case_001323_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001323_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001323_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001323_b : Vec3 Rat := { x := (-380/27), y := (-92/27), z := (28/27) }
private def case_001323_firstLine : StrictLin2 := { a := (19/13), b := (-19/13), c := (-83/13) }
private def case_001323_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001323_rankWord :
    rankPairWord? case_001323_word = some case_001323_rank := by
  decide

private theorem case_001323_unrank :
    unrankPairWord case_001323_rank = case_001323_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001323_word case_001323_rank).1
    case_001323_rankWord |>.symm

private theorem case_001323_seqChoice :
    translationChoiceSeq case_001323_word case_001323_mask = case_001323_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001323_seqAtRank :
    translationSeqAtRankMask case_001323_rank case_001323_mask = case_001323_seq := by
  rw [translationSeqAtRankMask, case_001323_unrank]
  exact case_001323_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001323_bAtRank :
    translationBAtRankMask case_001323_rank case_001323_mask = case_001323_b := by
  rw [translationBAtRankMask, case_001323_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001323_b, case_001323_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001323_firstLine_eq :
    case_001323_support.firstLine case_001323_seq case_001323_b = case_001323_firstLine := by
  norm_num [case_001323_firstLine, case_001323_support, case_001323_seq, case_001323_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001323_secondLine_eq :
    case_001323_support.secondLine case_001323_seq case_001323_b = case_001323_secondLine := by
  norm_num [case_001323_secondLine, case_001323_support, case_001323_seq, case_001323_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001323_sourceAgrees :
    SourceAgrees case_001323_support case_001323_rank.val case_001323_mask := by
  intro hlt
  have hrank : (⟨case_001323_rank.val, hlt⟩ : Fin numPairWords) = case_001323_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001323_rank.val, hlt⟩ case_001323_mask =
        case_001323_seq := by
    simpa [hrank] using case_001323_seqAtRank
  simp [SourceChecks, hseq, case_001323_support,
    checkTranslationConstraintSource, case_001323_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001323_rows :
    OppMinusOneVarFirstRows case_001323_support case_001323_rank.val case_001323_mask := by
  intro hlt
  have hrank : (⟨case_001323_rank.val, hlt⟩ : Fin numPairWords) = case_001323_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001323_rank.val, hlt⟩ case_001323_mask =
        case_001323_seq := by
    simpa [hrank] using case_001323_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001323_rank.val, hlt⟩ case_001323_mask =
        case_001323_b := by
    simpa [hrank] using case_001323_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001323_support case_001323_rank.val hlt
          case_001323_mask = case_001323_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001323_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001323_support case_001323_rank.val hlt
          case_001323_mask = case_001323_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001323_secondLine_eq]
  have case_001323_rowFirst :
      OppNegRow (FirstLineAt case_001323_support case_001323_rank.val hlt case_001323_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001323_firstLine, OppNegRow]
  have case_001323_fixedSecond :
      FixedRow (SecondLineAt case_001323_support case_001323_rank.val hlt case_001323_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001323_secondLine, FixedRow]
  exact ⟨case_001323_rowFirst, case_001323_fixedSecond⟩

private theorem case_001323_existsRows :
    ExistsOppMinusOneVarFirstRows case_001323_rank.val case_001323_mask :=
  ⟨case_001323_support, case_001323_sourceAgrees, case_001323_rows⟩

private theorem case_001323_covered :
    RowPropertyParametricCovered case_001323_rank.val case_001323_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001323_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001324_rank : Fin numPairWords := ⟨882, by decide⟩
private def case_001324_mask : SignMask := ⟨31, by decide⟩
private def case_001324_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001324_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001324_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_001324_b : Vec3 Rat := { x := (-380/27), y := (124/27), z := (28/27) }
private def case_001324_firstLine : StrictLin2 := { a := (-5/3), b := (-5/3), c := (-47/9) }
private def case_001324_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001324_rankWord :
    rankPairWord? case_001324_word = some case_001324_rank := by
  decide

private theorem case_001324_unrank :
    unrankPairWord case_001324_rank = case_001324_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001324_word case_001324_rank).1
    case_001324_rankWord |>.symm

private theorem case_001324_seqChoice :
    translationChoiceSeq case_001324_word case_001324_mask = case_001324_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001324_seqAtRank :
    translationSeqAtRankMask case_001324_rank case_001324_mask = case_001324_seq := by
  rw [translationSeqAtRankMask, case_001324_unrank]
  exact case_001324_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001324_bAtRank :
    translationBAtRankMask case_001324_rank case_001324_mask = case_001324_b := by
  rw [translationBAtRankMask, case_001324_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001324_b, case_001324_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001324_firstLine_eq :
    case_001324_support.firstLine case_001324_seq case_001324_b = case_001324_firstLine := by
  norm_num [case_001324_firstLine, case_001324_support, case_001324_seq, case_001324_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001324_secondLine_eq :
    case_001324_support.secondLine case_001324_seq case_001324_b = case_001324_secondLine := by
  norm_num [case_001324_secondLine, case_001324_support, case_001324_seq, case_001324_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001324_sourceAgrees :
    SourceAgrees case_001324_support case_001324_rank.val case_001324_mask := by
  intro hlt
  have hrank : (⟨case_001324_rank.val, hlt⟩ : Fin numPairWords) = case_001324_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001324_rank.val, hlt⟩ case_001324_mask =
        case_001324_seq := by
    simpa [hrank] using case_001324_seqAtRank
  simp [SourceChecks, hseq, case_001324_support,
    checkTranslationConstraintSource, case_001324_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001324_rows :
    EqEqPosVarFirstRows case_001324_support case_001324_rank.val case_001324_mask := by
  intro hlt
  have hrank : (⟨case_001324_rank.val, hlt⟩ : Fin numPairWords) = case_001324_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001324_rank.val, hlt⟩ case_001324_mask =
        case_001324_seq := by
    simpa [hrank] using case_001324_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001324_rank.val, hlt⟩ case_001324_mask =
        case_001324_b := by
    simpa [hrank] using case_001324_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001324_support case_001324_rank.val hlt
          case_001324_mask = case_001324_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001324_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001324_support case_001324_rank.val hlt
          case_001324_mask = case_001324_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001324_secondLine_eq]
  have case_001324_rowFirst :
      EqEqPosRow (FirstLineAt case_001324_support case_001324_rank.val hlt case_001324_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001324_firstLine, EqEqPosRow]
  have case_001324_fixedSecond :
      FixedRow (SecondLineAt case_001324_support case_001324_rank.val hlt case_001324_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001324_secondLine, FixedRow]
  exact ⟨case_001324_rowFirst, case_001324_fixedSecond⟩

private theorem case_001324_existsRows :
    ExistsEqEqPosVarFirstRows case_001324_rank.val case_001324_mask :=
  ⟨case_001324_support, case_001324_sourceAgrees, case_001324_rows⟩

private theorem case_001324_covered :
    RowPropertyParametricCovered case_001324_rank.val case_001324_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001324_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001325_rank : Fin numPairWords := ⟨882, by decide⟩
private def case_001325_mask : SignMask := ⟨63, by decide⟩
private def case_001325_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d111, PairId.d1m1, PairId.dm11], by decide⟩
private def case_001325_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001325_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_001325_b : Vec3 Rat := { x := (-236/27), y := (268/27), z := (172/27) }
private def case_001325_firstLine : StrictLin2 := { a := (-118/83), b := (118/83), c := (-364/249) }
private def case_001325_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001325_rankWord :
    rankPairWord? case_001325_word = some case_001325_rank := by
  decide

private theorem case_001325_unrank :
    unrankPairWord case_001325_rank = case_001325_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001325_word case_001325_rank).1
    case_001325_rankWord |>.symm

private theorem case_001325_seqChoice :
    translationChoiceSeq case_001325_word case_001325_mask = case_001325_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001325_seqAtRank :
    translationSeqAtRankMask case_001325_rank case_001325_mask = case_001325_seq := by
  rw [translationSeqAtRankMask, case_001325_unrank]
  exact case_001325_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001325_bAtRank :
    translationBAtRankMask case_001325_rank case_001325_mask = case_001325_b := by
  rw [translationBAtRankMask, case_001325_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001325_b, case_001325_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001325_firstLine_eq :
    case_001325_support.firstLine case_001325_seq case_001325_b = case_001325_firstLine := by
  norm_num [case_001325_firstLine, case_001325_support, case_001325_seq, case_001325_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001325_secondLine_eq :
    case_001325_support.secondLine case_001325_seq case_001325_b = case_001325_secondLine := by
  norm_num [case_001325_secondLine, case_001325_support, case_001325_seq, case_001325_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001325_sourceAgrees :
    SourceAgrees case_001325_support case_001325_rank.val case_001325_mask := by
  intro hlt
  have hrank : (⟨case_001325_rank.val, hlt⟩ : Fin numPairWords) = case_001325_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001325_rank.val, hlt⟩ case_001325_mask =
        case_001325_seq := by
    simpa [hrank] using case_001325_seqAtRank
  simp [SourceChecks, hseq, case_001325_support,
    checkTranslationConstraintSource, case_001325_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001325_rows :
    OppOneMinusVarFirstRows case_001325_support case_001325_rank.val case_001325_mask := by
  intro hlt
  have hrank : (⟨case_001325_rank.val, hlt⟩ : Fin numPairWords) = case_001325_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001325_rank.val, hlt⟩ case_001325_mask =
        case_001325_seq := by
    simpa [hrank] using case_001325_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001325_rank.val, hlt⟩ case_001325_mask =
        case_001325_b := by
    simpa [hrank] using case_001325_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001325_support case_001325_rank.val hlt
          case_001325_mask = case_001325_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001325_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001325_support case_001325_rank.val hlt
          case_001325_mask = case_001325_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001325_secondLine_eq]
  have case_001325_rowFirst :
      OppPosRow (FirstLineAt case_001325_support case_001325_rank.val hlt case_001325_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001325_firstLine, OppPosRow]
  have case_001325_fixedSecond :
      FixedRow (SecondLineAt case_001325_support case_001325_rank.val hlt case_001325_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001325_secondLine, FixedRow]
  exact ⟨case_001325_rowFirst, case_001325_fixedSecond⟩

private theorem case_001325_existsRows :
    ExistsOppOneMinusVarFirstRows case_001325_rank.val case_001325_mask :=
  ⟨case_001325_support, case_001325_sourceAgrees, case_001325_rows⟩

private theorem case_001325_covered :
    RowPropertyParametricCovered case_001325_rank.val case_001325_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001325_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001326_rank : Fin numPairWords := ⟨888, by decide⟩
private def case_001326_mask : SignMask := ⟨12, by decide⟩
private def case_001326_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001326_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001326_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001326_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-116/9) }
private def case_001326_firstLine : StrictLin2 := { a := -1, b := -1, c := (-39/29) }
private def case_001326_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001326_rankWord :
    rankPairWord? case_001326_word = some case_001326_rank := by
  decide

private theorem case_001326_unrank :
    unrankPairWord case_001326_rank = case_001326_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001326_word case_001326_rank).1
    case_001326_rankWord |>.symm

private theorem case_001326_seqChoice :
    translationChoiceSeq case_001326_word case_001326_mask = case_001326_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001326_seqAtRank :
    translationSeqAtRankMask case_001326_rank case_001326_mask = case_001326_seq := by
  rw [translationSeqAtRankMask, case_001326_unrank]
  exact case_001326_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001326_bAtRank :
    translationBAtRankMask case_001326_rank case_001326_mask = case_001326_b := by
  rw [translationBAtRankMask, case_001326_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001326_b, case_001326_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001326_firstLine_eq :
    case_001326_support.firstLine case_001326_seq case_001326_b = case_001326_firstLine := by
  norm_num [case_001326_firstLine, case_001326_support, case_001326_seq, case_001326_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001326_secondLine_eq :
    case_001326_support.secondLine case_001326_seq case_001326_b = case_001326_secondLine := by
  norm_num [case_001326_secondLine, case_001326_support, case_001326_seq, case_001326_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001326_sourceAgrees :
    SourceAgrees case_001326_support case_001326_rank.val case_001326_mask := by
  intro hlt
  have hrank : (⟨case_001326_rank.val, hlt⟩ : Fin numPairWords) = case_001326_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001326_rank.val, hlt⟩ case_001326_mask =
        case_001326_seq := by
    simpa [hrank] using case_001326_seqAtRank
  simp [SourceChecks, hseq, case_001326_support,
    checkTranslationConstraintSource, case_001326_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001326_rows :
    EqEqPosVarFirstRows case_001326_support case_001326_rank.val case_001326_mask := by
  intro hlt
  have hrank : (⟨case_001326_rank.val, hlt⟩ : Fin numPairWords) = case_001326_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001326_rank.val, hlt⟩ case_001326_mask =
        case_001326_seq := by
    simpa [hrank] using case_001326_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001326_rank.val, hlt⟩ case_001326_mask =
        case_001326_b := by
    simpa [hrank] using case_001326_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001326_support case_001326_rank.val hlt
          case_001326_mask = case_001326_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001326_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001326_support case_001326_rank.val hlt
          case_001326_mask = case_001326_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001326_secondLine_eq]
  have case_001326_rowFirst :
      EqEqPosRow (FirstLineAt case_001326_support case_001326_rank.val hlt case_001326_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001326_firstLine, EqEqPosRow]
  have case_001326_fixedSecond :
      FixedRow (SecondLineAt case_001326_support case_001326_rank.val hlt case_001326_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001326_secondLine, FixedRow]
  exact ⟨case_001326_rowFirst, case_001326_fixedSecond⟩

private theorem case_001326_existsRows :
    ExistsEqEqPosVarFirstRows case_001326_rank.val case_001326_mask :=
  ⟨case_001326_support, case_001326_sourceAgrees, case_001326_rows⟩

private theorem case_001326_covered :
    RowPropertyParametricCovered case_001326_rank.val case_001326_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001326_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001327_rank : Fin numPairWords := ⟨888, by decide⟩
private def case_001327_mask : SignMask := ⟨13, by decide⟩
private def case_001327_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001327_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001327_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001327_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (-116/9) }
private def case_001327_firstLine : StrictLin2 := { a := (-58/45), b := (-58/45), c := (-196/135) }
private def case_001327_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001327_rankWord :
    rankPairWord? case_001327_word = some case_001327_rank := by
  decide

private theorem case_001327_unrank :
    unrankPairWord case_001327_rank = case_001327_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001327_word case_001327_rank).1
    case_001327_rankWord |>.symm

private theorem case_001327_seqChoice :
    translationChoiceSeq case_001327_word case_001327_mask = case_001327_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001327_seqAtRank :
    translationSeqAtRankMask case_001327_rank case_001327_mask = case_001327_seq := by
  rw [translationSeqAtRankMask, case_001327_unrank]
  exact case_001327_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001327_bAtRank :
    translationBAtRankMask case_001327_rank case_001327_mask = case_001327_b := by
  rw [translationBAtRankMask, case_001327_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001327_b, case_001327_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001327_firstLine_eq :
    case_001327_support.firstLine case_001327_seq case_001327_b = case_001327_firstLine := by
  norm_num [case_001327_firstLine, case_001327_support, case_001327_seq, case_001327_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001327_secondLine_eq :
    case_001327_support.secondLine case_001327_seq case_001327_b = case_001327_secondLine := by
  norm_num [case_001327_secondLine, case_001327_support, case_001327_seq, case_001327_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001327_sourceAgrees :
    SourceAgrees case_001327_support case_001327_rank.val case_001327_mask := by
  intro hlt
  have hrank : (⟨case_001327_rank.val, hlt⟩ : Fin numPairWords) = case_001327_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001327_rank.val, hlt⟩ case_001327_mask =
        case_001327_seq := by
    simpa [hrank] using case_001327_seqAtRank
  simp [SourceChecks, hseq, case_001327_support,
    checkTranslationConstraintSource, case_001327_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001327_rows :
    EqEqPosVarFirstRows case_001327_support case_001327_rank.val case_001327_mask := by
  intro hlt
  have hrank : (⟨case_001327_rank.val, hlt⟩ : Fin numPairWords) = case_001327_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001327_rank.val, hlt⟩ case_001327_mask =
        case_001327_seq := by
    simpa [hrank] using case_001327_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001327_rank.val, hlt⟩ case_001327_mask =
        case_001327_b := by
    simpa [hrank] using case_001327_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001327_support case_001327_rank.val hlt
          case_001327_mask = case_001327_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001327_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001327_support case_001327_rank.val hlt
          case_001327_mask = case_001327_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001327_secondLine_eq]
  have case_001327_rowFirst :
      EqEqPosRow (FirstLineAt case_001327_support case_001327_rank.val hlt case_001327_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001327_firstLine, EqEqPosRow]
  have case_001327_fixedSecond :
      FixedRow (SecondLineAt case_001327_support case_001327_rank.val hlt case_001327_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001327_secondLine, FixedRow]
  exact ⟨case_001327_rowFirst, case_001327_fixedSecond⟩

private theorem case_001327_existsRows :
    ExistsEqEqPosVarFirstRows case_001327_rank.val case_001327_mask :=
  ⟨case_001327_support, case_001327_sourceAgrees, case_001327_rows⟩

private theorem case_001327_covered :
    RowPropertyParametricCovered case_001327_rank.val case_001327_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001327_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001328_rank : Fin numPairWords := ⟨888, by decide⟩
private def case_001328_mask : SignMask := ⟨16, by decide⟩
private def case_001328_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001328_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001328_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmpp
private def case_001328_b : Vec3 Rat := { x := (-4/9), y := (-100/9), z := (-4/9) }
private def case_001328_firstLine : StrictLin2 := { a := -1, b := -1, c := -51 }
private def case_001328_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001328_rankWord :
    rankPairWord? case_001328_word = some case_001328_rank := by
  decide

private theorem case_001328_unrank :
    unrankPairWord case_001328_rank = case_001328_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001328_word case_001328_rank).1
    case_001328_rankWord |>.symm

private theorem case_001328_seqChoice :
    translationChoiceSeq case_001328_word case_001328_mask = case_001328_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001328_seqAtRank :
    translationSeqAtRankMask case_001328_rank case_001328_mask = case_001328_seq := by
  rw [translationSeqAtRankMask, case_001328_unrank]
  exact case_001328_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001328_bAtRank :
    translationBAtRankMask case_001328_rank case_001328_mask = case_001328_b := by
  rw [translationBAtRankMask, case_001328_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001328_b, case_001328_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001328_firstLine_eq :
    case_001328_support.firstLine case_001328_seq case_001328_b = case_001328_firstLine := by
  norm_num [case_001328_firstLine, case_001328_support, case_001328_seq, case_001328_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001328_secondLine_eq :
    case_001328_support.secondLine case_001328_seq case_001328_b = case_001328_secondLine := by
  norm_num [case_001328_secondLine, case_001328_support, case_001328_seq, case_001328_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001328_sourceAgrees :
    SourceAgrees case_001328_support case_001328_rank.val case_001328_mask := by
  intro hlt
  have hrank : (⟨case_001328_rank.val, hlt⟩ : Fin numPairWords) = case_001328_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001328_rank.val, hlt⟩ case_001328_mask =
        case_001328_seq := by
    simpa [hrank] using case_001328_seqAtRank
  simp [SourceChecks, hseq, case_001328_support,
    checkTranslationConstraintSource, case_001328_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001328_rows :
    EqEqPosVarFirstRows case_001328_support case_001328_rank.val case_001328_mask := by
  intro hlt
  have hrank : (⟨case_001328_rank.val, hlt⟩ : Fin numPairWords) = case_001328_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001328_rank.val, hlt⟩ case_001328_mask =
        case_001328_seq := by
    simpa [hrank] using case_001328_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001328_rank.val, hlt⟩ case_001328_mask =
        case_001328_b := by
    simpa [hrank] using case_001328_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001328_support case_001328_rank.val hlt
          case_001328_mask = case_001328_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001328_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001328_support case_001328_rank.val hlt
          case_001328_mask = case_001328_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001328_secondLine_eq]
  have case_001328_rowFirst :
      EqEqPosRow (FirstLineAt case_001328_support case_001328_rank.val hlt case_001328_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001328_firstLine, EqEqPosRow]
  have case_001328_fixedSecond :
      FixedRow (SecondLineAt case_001328_support case_001328_rank.val hlt case_001328_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001328_secondLine, FixedRow]
  exact ⟨case_001328_rowFirst, case_001328_fixedSecond⟩

private theorem case_001328_existsRows :
    ExistsEqEqPosVarFirstRows case_001328_rank.val case_001328_mask :=
  ⟨case_001328_support, case_001328_sourceAgrees, case_001328_rows⟩

private theorem case_001328_covered :
    RowPropertyParametricCovered case_001328_rank.val case_001328_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001328_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001329_rank : Fin numPairWords := ⟨888, by decide⟩
private def case_001329_mask : SignMask := ⟨18, by decide⟩
private def case_001329_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001329_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001329_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmpp
private def case_001329_b : Vec3 Rat := { x := (-4/9), y := (-100/9), z := (68/9) }
private def case_001329_firstLine : StrictLin2 := { a := -1, b := -1, c := -15 }
private def case_001329_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001329_rankWord :
    rankPairWord? case_001329_word = some case_001329_rank := by
  decide

private theorem case_001329_unrank :
    unrankPairWord case_001329_rank = case_001329_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001329_word case_001329_rank).1
    case_001329_rankWord |>.symm

private theorem case_001329_seqChoice :
    translationChoiceSeq case_001329_word case_001329_mask = case_001329_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001329_seqAtRank :
    translationSeqAtRankMask case_001329_rank case_001329_mask = case_001329_seq := by
  rw [translationSeqAtRankMask, case_001329_unrank]
  exact case_001329_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001329_bAtRank :
    translationBAtRankMask case_001329_rank case_001329_mask = case_001329_b := by
  rw [translationBAtRankMask, case_001329_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001329_b, case_001329_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001329_firstLine_eq :
    case_001329_support.firstLine case_001329_seq case_001329_b = case_001329_firstLine := by
  norm_num [case_001329_firstLine, case_001329_support, case_001329_seq, case_001329_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001329_secondLine_eq :
    case_001329_support.secondLine case_001329_seq case_001329_b = case_001329_secondLine := by
  norm_num [case_001329_secondLine, case_001329_support, case_001329_seq, case_001329_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001329_sourceAgrees :
    SourceAgrees case_001329_support case_001329_rank.val case_001329_mask := by
  intro hlt
  have hrank : (⟨case_001329_rank.val, hlt⟩ : Fin numPairWords) = case_001329_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001329_rank.val, hlt⟩ case_001329_mask =
        case_001329_seq := by
    simpa [hrank] using case_001329_seqAtRank
  simp [SourceChecks, hseq, case_001329_support,
    checkTranslationConstraintSource, case_001329_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001329_rows :
    EqEqPosVarFirstRows case_001329_support case_001329_rank.val case_001329_mask := by
  intro hlt
  have hrank : (⟨case_001329_rank.val, hlt⟩ : Fin numPairWords) = case_001329_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001329_rank.val, hlt⟩ case_001329_mask =
        case_001329_seq := by
    simpa [hrank] using case_001329_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001329_rank.val, hlt⟩ case_001329_mask =
        case_001329_b := by
    simpa [hrank] using case_001329_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001329_support case_001329_rank.val hlt
          case_001329_mask = case_001329_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001329_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001329_support case_001329_rank.val hlt
          case_001329_mask = case_001329_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001329_secondLine_eq]
  have case_001329_rowFirst :
      EqEqPosRow (FirstLineAt case_001329_support case_001329_rank.val hlt case_001329_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001329_firstLine, EqEqPosRow]
  have case_001329_fixedSecond :
      FixedRow (SecondLineAt case_001329_support case_001329_rank.val hlt case_001329_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001329_secondLine, FixedRow]
  exact ⟨case_001329_rowFirst, case_001329_fixedSecond⟩

private theorem case_001329_existsRows :
    ExistsEqEqPosVarFirstRows case_001329_rank.val case_001329_mask :=
  ⟨case_001329_support, case_001329_sourceAgrees, case_001329_rows⟩

private theorem case_001329_covered :
    RowPropertyParametricCovered case_001329_rank.val case_001329_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001329_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001330_rank : Fin numPairWords := ⟨888, by decide⟩
private def case_001330_mask : SignMask := ⟨22, by decide⟩
private def case_001330_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001330_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001330_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001330_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_001330_firstLine : StrictLin2 := { a := (-3/5), b := (-3/5), c := -1 }
private def case_001330_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001330_rankWord :
    rankPairWord? case_001330_word = some case_001330_rank := by
  decide

private theorem case_001330_unrank :
    unrankPairWord case_001330_rank = case_001330_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001330_word case_001330_rank).1
    case_001330_rankWord |>.symm

private theorem case_001330_seqChoice :
    translationChoiceSeq case_001330_word case_001330_mask = case_001330_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001330_seqAtRank :
    translationSeqAtRankMask case_001330_rank case_001330_mask = case_001330_seq := by
  rw [translationSeqAtRankMask, case_001330_unrank]
  exact case_001330_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001330_bAtRank :
    translationBAtRankMask case_001330_rank case_001330_mask = case_001330_b := by
  rw [translationBAtRankMask, case_001330_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001330_b, case_001330_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001330_firstLine_eq :
    case_001330_support.firstLine case_001330_seq case_001330_b = case_001330_firstLine := by
  norm_num [case_001330_firstLine, case_001330_support, case_001330_seq, case_001330_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001330_secondLine_eq :
    case_001330_support.secondLine case_001330_seq case_001330_b = case_001330_secondLine := by
  norm_num [case_001330_secondLine, case_001330_support, case_001330_seq, case_001330_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001330_sourceAgrees :
    SourceAgrees case_001330_support case_001330_rank.val case_001330_mask := by
  intro hlt
  have hrank : (⟨case_001330_rank.val, hlt⟩ : Fin numPairWords) = case_001330_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001330_rank.val, hlt⟩ case_001330_mask =
        case_001330_seq := by
    simpa [hrank] using case_001330_seqAtRank
  simp [SourceChecks, hseq, case_001330_support,
    checkTranslationConstraintSource, case_001330_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001330_rows :
    EqEqPosVarFirstRows case_001330_support case_001330_rank.val case_001330_mask := by
  intro hlt
  have hrank : (⟨case_001330_rank.val, hlt⟩ : Fin numPairWords) = case_001330_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001330_rank.val, hlt⟩ case_001330_mask =
        case_001330_seq := by
    simpa [hrank] using case_001330_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001330_rank.val, hlt⟩ case_001330_mask =
        case_001330_b := by
    simpa [hrank] using case_001330_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001330_support case_001330_rank.val hlt
          case_001330_mask = case_001330_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001330_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001330_support case_001330_rank.val hlt
          case_001330_mask = case_001330_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001330_secondLine_eq]
  have case_001330_rowFirst :
      EqEqPosRow (FirstLineAt case_001330_support case_001330_rank.val hlt case_001330_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001330_firstLine, EqEqPosRow]
  have case_001330_fixedSecond :
      FixedRow (SecondLineAt case_001330_support case_001330_rank.val hlt case_001330_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001330_secondLine, FixedRow]
  exact ⟨case_001330_rowFirst, case_001330_fixedSecond⟩

private theorem case_001330_existsRows :
    ExistsEqEqPosVarFirstRows case_001330_rank.val case_001330_mask :=
  ⟨case_001330_support, case_001330_sourceAgrees, case_001330_rows⟩

private theorem case_001330_covered :
    RowPropertyParametricCovered case_001330_rank.val case_001330_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001330_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001331_rank : Fin numPairWords := ⟨888, by decide⟩
private def case_001331_mask : SignMask := ⟨30, by decide⟩
private def case_001331_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001331_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001331_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001331_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_001331_firstLine : StrictLin2 := { a := (-3/5), b := (-3/5), c := -1 }
private def case_001331_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001331_rankWord :
    rankPairWord? case_001331_word = some case_001331_rank := by
  decide

private theorem case_001331_unrank :
    unrankPairWord case_001331_rank = case_001331_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001331_word case_001331_rank).1
    case_001331_rankWord |>.symm

private theorem case_001331_seqChoice :
    translationChoiceSeq case_001331_word case_001331_mask = case_001331_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001331_seqAtRank :
    translationSeqAtRankMask case_001331_rank case_001331_mask = case_001331_seq := by
  rw [translationSeqAtRankMask, case_001331_unrank]
  exact case_001331_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001331_bAtRank :
    translationBAtRankMask case_001331_rank case_001331_mask = case_001331_b := by
  rw [translationBAtRankMask, case_001331_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001331_b, case_001331_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001331_firstLine_eq :
    case_001331_support.firstLine case_001331_seq case_001331_b = case_001331_firstLine := by
  norm_num [case_001331_firstLine, case_001331_support, case_001331_seq, case_001331_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001331_secondLine_eq :
    case_001331_support.secondLine case_001331_seq case_001331_b = case_001331_secondLine := by
  norm_num [case_001331_secondLine, case_001331_support, case_001331_seq, case_001331_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001331_sourceAgrees :
    SourceAgrees case_001331_support case_001331_rank.val case_001331_mask := by
  intro hlt
  have hrank : (⟨case_001331_rank.val, hlt⟩ : Fin numPairWords) = case_001331_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001331_rank.val, hlt⟩ case_001331_mask =
        case_001331_seq := by
    simpa [hrank] using case_001331_seqAtRank
  simp [SourceChecks, hseq, case_001331_support,
    checkTranslationConstraintSource, case_001331_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001331_rows :
    EqEqPosVarFirstRows case_001331_support case_001331_rank.val case_001331_mask := by
  intro hlt
  have hrank : (⟨case_001331_rank.val, hlt⟩ : Fin numPairWords) = case_001331_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001331_rank.val, hlt⟩ case_001331_mask =
        case_001331_seq := by
    simpa [hrank] using case_001331_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001331_rank.val, hlt⟩ case_001331_mask =
        case_001331_b := by
    simpa [hrank] using case_001331_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001331_support case_001331_rank.val hlt
          case_001331_mask = case_001331_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001331_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001331_support case_001331_rank.val hlt
          case_001331_mask = case_001331_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001331_secondLine_eq]
  have case_001331_rowFirst :
      EqEqPosRow (FirstLineAt case_001331_support case_001331_rank.val hlt case_001331_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001331_firstLine, EqEqPosRow]
  have case_001331_fixedSecond :
      FixedRow (SecondLineAt case_001331_support case_001331_rank.val hlt case_001331_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001331_secondLine, FixedRow]
  exact ⟨case_001331_rowFirst, case_001331_fixedSecond⟩

private theorem case_001331_existsRows :
    ExistsEqEqPosVarFirstRows case_001331_rank.val case_001331_mask :=
  ⟨case_001331_support, case_001331_sourceAgrees, case_001331_rows⟩

private theorem case_001331_covered :
    RowPropertyParametricCovered case_001331_rank.val case_001331_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001331_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001332_rank : Fin numPairWords := ⟨888, by decide⟩
private def case_001332_mask : SignMask := ⟨31, by decide⟩
private def case_001332_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001332_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_001332_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001332_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_001332_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001332_secondLine : StrictLin2 := { a := (-99/610), b := (-99/610), c := (-81/305) }

private theorem case_001332_rankWord :
    rankPairWord? case_001332_word = some case_001332_rank := by
  decide

private theorem case_001332_unrank :
    unrankPairWord case_001332_rank = case_001332_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001332_word case_001332_rank).1
    case_001332_rankWord |>.symm

private theorem case_001332_seqChoice :
    translationChoiceSeq case_001332_word case_001332_mask = case_001332_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001332_seqAtRank :
    translationSeqAtRankMask case_001332_rank case_001332_mask = case_001332_seq := by
  rw [translationSeqAtRankMask, case_001332_unrank]
  exact case_001332_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001332_bAtRank :
    translationBAtRankMask case_001332_rank case_001332_mask = case_001332_b := by
  rw [translationBAtRankMask, case_001332_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001332_b, case_001332_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001332_firstLine_eq :
    case_001332_support.firstLine case_001332_seq case_001332_b = case_001332_firstLine := by
  norm_num [case_001332_firstLine, case_001332_support, case_001332_seq, case_001332_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001332_secondLine_eq :
    case_001332_support.secondLine case_001332_seq case_001332_b = case_001332_secondLine := by
  norm_num [case_001332_secondLine, case_001332_support, case_001332_seq, case_001332_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001332_sourceAgrees :
    SourceAgrees case_001332_support case_001332_rank.val case_001332_mask := by
  intro hlt
  have hrank : (⟨case_001332_rank.val, hlt⟩ : Fin numPairWords) = case_001332_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001332_rank.val, hlt⟩ case_001332_mask =
        case_001332_seq := by
    simpa [hrank] using case_001332_seqAtRank
  simp [SourceChecks, hseq, case_001332_support,
    checkTranslationConstraintSource, case_001332_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001332_rows :
    EqEqPosVarSecondRows case_001332_support case_001332_rank.val case_001332_mask := by
  intro hlt
  have hrank : (⟨case_001332_rank.val, hlt⟩ : Fin numPairWords) = case_001332_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001332_rank.val, hlt⟩ case_001332_mask =
        case_001332_seq := by
    simpa [hrank] using case_001332_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001332_rank.val, hlt⟩ case_001332_mask =
        case_001332_b := by
    simpa [hrank] using case_001332_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001332_support case_001332_rank.val hlt
          case_001332_mask = case_001332_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001332_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001332_support case_001332_rank.val hlt
          case_001332_mask = case_001332_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001332_secondLine_eq]
  have case_001332_fixedFirst :
      FixedRow (FirstLineAt case_001332_support case_001332_rank.val hlt case_001332_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001332_firstLine, FixedRow]
  have case_001332_rowSecond :
      EqEqPosRow (SecondLineAt case_001332_support case_001332_rank.val hlt case_001332_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001332_secondLine, EqEqPosRow]
  exact ⟨case_001332_fixedFirst, case_001332_rowSecond⟩

private theorem case_001332_existsRows :
    ExistsEqEqPosVarSecondRows case_001332_rank.val case_001332_mask :=
  ⟨case_001332_support, case_001332_sourceAgrees, case_001332_rows⟩

private theorem case_001332_covered :
    RowPropertyParametricCovered case_001332_rank.val case_001332_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001332_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001333_rank : Fin numPairWords := ⟨888, by decide⟩
private def case_001333_mask : SignMask := ⟨47, by decide⟩
private def case_001333_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001333_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001333_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001333_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (4/9) }
private def case_001333_firstLine : StrictLin2 := { a := (-34/9), b := (-34/9), c := (-136/27) }
private def case_001333_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001333_rankWord :
    rankPairWord? case_001333_word = some case_001333_rank := by
  decide

private theorem case_001333_unrank :
    unrankPairWord case_001333_rank = case_001333_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001333_word case_001333_rank).1
    case_001333_rankWord |>.symm

private theorem case_001333_seqChoice :
    translationChoiceSeq case_001333_word case_001333_mask = case_001333_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001333_seqAtRank :
    translationSeqAtRankMask case_001333_rank case_001333_mask = case_001333_seq := by
  rw [translationSeqAtRankMask, case_001333_unrank]
  exact case_001333_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001333_bAtRank :
    translationBAtRankMask case_001333_rank case_001333_mask = case_001333_b := by
  rw [translationBAtRankMask, case_001333_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001333_b, case_001333_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001333_firstLine_eq :
    case_001333_support.firstLine case_001333_seq case_001333_b = case_001333_firstLine := by
  norm_num [case_001333_firstLine, case_001333_support, case_001333_seq, case_001333_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001333_secondLine_eq :
    case_001333_support.secondLine case_001333_seq case_001333_b = case_001333_secondLine := by
  norm_num [case_001333_secondLine, case_001333_support, case_001333_seq, case_001333_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001333_sourceAgrees :
    SourceAgrees case_001333_support case_001333_rank.val case_001333_mask := by
  intro hlt
  have hrank : (⟨case_001333_rank.val, hlt⟩ : Fin numPairWords) = case_001333_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001333_rank.val, hlt⟩ case_001333_mask =
        case_001333_seq := by
    simpa [hrank] using case_001333_seqAtRank
  simp [SourceChecks, hseq, case_001333_support,
    checkTranslationConstraintSource, case_001333_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001333_rows :
    EqEqPosVarFirstRows case_001333_support case_001333_rank.val case_001333_mask := by
  intro hlt
  have hrank : (⟨case_001333_rank.val, hlt⟩ : Fin numPairWords) = case_001333_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001333_rank.val, hlt⟩ case_001333_mask =
        case_001333_seq := by
    simpa [hrank] using case_001333_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001333_rank.val, hlt⟩ case_001333_mask =
        case_001333_b := by
    simpa [hrank] using case_001333_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001333_support case_001333_rank.val hlt
          case_001333_mask = case_001333_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001333_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001333_support case_001333_rank.val hlt
          case_001333_mask = case_001333_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001333_secondLine_eq]
  have case_001333_rowFirst :
      EqEqPosRow (FirstLineAt case_001333_support case_001333_rank.val hlt case_001333_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001333_firstLine, EqEqPosRow]
  have case_001333_fixedSecond :
      FixedRow (SecondLineAt case_001333_support case_001333_rank.val hlt case_001333_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001333_secondLine, FixedRow]
  exact ⟨case_001333_rowFirst, case_001333_fixedSecond⟩

private theorem case_001333_existsRows :
    ExistsEqEqPosVarFirstRows case_001333_rank.val case_001333_mask :=
  ⟨case_001333_support, case_001333_sourceAgrees, case_001333_rows⟩

private theorem case_001333_covered :
    RowPropertyParametricCovered case_001333_rank.val case_001333_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001333_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001334_rank : Fin numPairWords := ⟨888, by decide⟩
private def case_001334_mask : SignMask := ⟨54, by decide⟩
private def case_001334_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001334_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001334_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001334_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_001334_firstLine : StrictLin2 := { a := (-6/5), b := (-6/5), c := (-4/3) }
private def case_001334_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001334_rankWord :
    rankPairWord? case_001334_word = some case_001334_rank := by
  decide

private theorem case_001334_unrank :
    unrankPairWord case_001334_rank = case_001334_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001334_word case_001334_rank).1
    case_001334_rankWord |>.symm

private theorem case_001334_seqChoice :
    translationChoiceSeq case_001334_word case_001334_mask = case_001334_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001334_seqAtRank :
    translationSeqAtRankMask case_001334_rank case_001334_mask = case_001334_seq := by
  rw [translationSeqAtRankMask, case_001334_unrank]
  exact case_001334_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001334_bAtRank :
    translationBAtRankMask case_001334_rank case_001334_mask = case_001334_b := by
  rw [translationBAtRankMask, case_001334_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001334_b, case_001334_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001334_firstLine_eq :
    case_001334_support.firstLine case_001334_seq case_001334_b = case_001334_firstLine := by
  norm_num [case_001334_firstLine, case_001334_support, case_001334_seq, case_001334_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001334_secondLine_eq :
    case_001334_support.secondLine case_001334_seq case_001334_b = case_001334_secondLine := by
  norm_num [case_001334_secondLine, case_001334_support, case_001334_seq, case_001334_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001334_sourceAgrees :
    SourceAgrees case_001334_support case_001334_rank.val case_001334_mask := by
  intro hlt
  have hrank : (⟨case_001334_rank.val, hlt⟩ : Fin numPairWords) = case_001334_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001334_rank.val, hlt⟩ case_001334_mask =
        case_001334_seq := by
    simpa [hrank] using case_001334_seqAtRank
  simp [SourceChecks, hseq, case_001334_support,
    checkTranslationConstraintSource, case_001334_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001334_rows :
    EqEqPosVarFirstRows case_001334_support case_001334_rank.val case_001334_mask := by
  intro hlt
  have hrank : (⟨case_001334_rank.val, hlt⟩ : Fin numPairWords) = case_001334_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001334_rank.val, hlt⟩ case_001334_mask =
        case_001334_seq := by
    simpa [hrank] using case_001334_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001334_rank.val, hlt⟩ case_001334_mask =
        case_001334_b := by
    simpa [hrank] using case_001334_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001334_support case_001334_rank.val hlt
          case_001334_mask = case_001334_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001334_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001334_support case_001334_rank.val hlt
          case_001334_mask = case_001334_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001334_secondLine_eq]
  have case_001334_rowFirst :
      EqEqPosRow (FirstLineAt case_001334_support case_001334_rank.val hlt case_001334_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001334_firstLine, EqEqPosRow]
  have case_001334_fixedSecond :
      FixedRow (SecondLineAt case_001334_support case_001334_rank.val hlt case_001334_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001334_secondLine, FixedRow]
  exact ⟨case_001334_rowFirst, case_001334_fixedSecond⟩

private theorem case_001334_existsRows :
    ExistsEqEqPosVarFirstRows case_001334_rank.val case_001334_mask :=
  ⟨case_001334_support, case_001334_sourceAgrees, case_001334_rows⟩

private theorem case_001334_covered :
    RowPropertyParametricCovered case_001334_rank.val case_001334_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001334_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001335_rank : Fin numPairWords := ⟨888, by decide⟩
private def case_001335_mask : SignMask := ⟨55, by decide⟩
private def case_001335_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001335_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001335_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001335_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_001335_firstLine : StrictLin2 := { a := (-3/11), b := (-3/11), c := (-43/33) }
private def case_001335_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001335_rankWord :
    rankPairWord? case_001335_word = some case_001335_rank := by
  decide

private theorem case_001335_unrank :
    unrankPairWord case_001335_rank = case_001335_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001335_word case_001335_rank).1
    case_001335_rankWord |>.symm

private theorem case_001335_seqChoice :
    translationChoiceSeq case_001335_word case_001335_mask = case_001335_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001335_seqAtRank :
    translationSeqAtRankMask case_001335_rank case_001335_mask = case_001335_seq := by
  rw [translationSeqAtRankMask, case_001335_unrank]
  exact case_001335_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001335_bAtRank :
    translationBAtRankMask case_001335_rank case_001335_mask = case_001335_b := by
  rw [translationBAtRankMask, case_001335_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001335_b, case_001335_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001335_firstLine_eq :
    case_001335_support.firstLine case_001335_seq case_001335_b = case_001335_firstLine := by
  norm_num [case_001335_firstLine, case_001335_support, case_001335_seq, case_001335_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001335_secondLine_eq :
    case_001335_support.secondLine case_001335_seq case_001335_b = case_001335_secondLine := by
  norm_num [case_001335_secondLine, case_001335_support, case_001335_seq, case_001335_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001335_sourceAgrees :
    SourceAgrees case_001335_support case_001335_rank.val case_001335_mask := by
  intro hlt
  have hrank : (⟨case_001335_rank.val, hlt⟩ : Fin numPairWords) = case_001335_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001335_rank.val, hlt⟩ case_001335_mask =
        case_001335_seq := by
    simpa [hrank] using case_001335_seqAtRank
  simp [SourceChecks, hseq, case_001335_support,
    checkTranslationConstraintSource, case_001335_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001335_rows :
    EqEqPosVarFirstRows case_001335_support case_001335_rank.val case_001335_mask := by
  intro hlt
  have hrank : (⟨case_001335_rank.val, hlt⟩ : Fin numPairWords) = case_001335_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001335_rank.val, hlt⟩ case_001335_mask =
        case_001335_seq := by
    simpa [hrank] using case_001335_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001335_rank.val, hlt⟩ case_001335_mask =
        case_001335_b := by
    simpa [hrank] using case_001335_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001335_support case_001335_rank.val hlt
          case_001335_mask = case_001335_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001335_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001335_support case_001335_rank.val hlt
          case_001335_mask = case_001335_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001335_secondLine_eq]
  have case_001335_rowFirst :
      EqEqPosRow (FirstLineAt case_001335_support case_001335_rank.val hlt case_001335_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001335_firstLine, EqEqPosRow]
  have case_001335_fixedSecond :
      FixedRow (SecondLineAt case_001335_support case_001335_rank.val hlt case_001335_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001335_secondLine, FixedRow]
  exact ⟨case_001335_rowFirst, case_001335_fixedSecond⟩

private theorem case_001335_existsRows :
    ExistsEqEqPosVarFirstRows case_001335_rank.val case_001335_mask :=
  ⟨case_001335_support, case_001335_sourceAgrees, case_001335_rows⟩

private theorem case_001335_covered :
    RowPropertyParametricCovered case_001335_rank.val case_001335_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001335_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001336_rank : Fin numPairWords := ⟨888, by decide⟩
private def case_001336_mask : SignMask := ⟨63, by decide⟩
private def case_001336_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001336_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001336_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001336_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_001336_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001336_secondLine : StrictLin2 := { a := (-3/28), b := (3/28), c := (-3/14) }

private theorem case_001336_rankWord :
    rankPairWord? case_001336_word = some case_001336_rank := by
  decide

private theorem case_001336_unrank :
    unrankPairWord case_001336_rank = case_001336_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001336_word case_001336_rank).1
    case_001336_rankWord |>.symm

private theorem case_001336_seqChoice :
    translationChoiceSeq case_001336_word case_001336_mask = case_001336_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001336_seqAtRank :
    translationSeqAtRankMask case_001336_rank case_001336_mask = case_001336_seq := by
  rw [translationSeqAtRankMask, case_001336_unrank]
  exact case_001336_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001336_bAtRank :
    translationBAtRankMask case_001336_rank case_001336_mask = case_001336_b := by
  rw [translationBAtRankMask, case_001336_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001336_b, case_001336_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001336_firstLine_eq :
    case_001336_support.firstLine case_001336_seq case_001336_b = case_001336_firstLine := by
  norm_num [case_001336_firstLine, case_001336_support, case_001336_seq, case_001336_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001336_secondLine_eq :
    case_001336_support.secondLine case_001336_seq case_001336_b = case_001336_secondLine := by
  norm_num [case_001336_secondLine, case_001336_support, case_001336_seq, case_001336_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001336_sourceAgrees :
    SourceAgrees case_001336_support case_001336_rank.val case_001336_mask := by
  intro hlt
  have hrank : (⟨case_001336_rank.val, hlt⟩ : Fin numPairWords) = case_001336_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001336_rank.val, hlt⟩ case_001336_mask =
        case_001336_seq := by
    simpa [hrank] using case_001336_seqAtRank
  simp [SourceChecks, hseq, case_001336_support,
    checkTranslationConstraintSource, case_001336_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001336_rows :
    OppOneMinusVarSecondRows case_001336_support case_001336_rank.val case_001336_mask := by
  intro hlt
  have hrank : (⟨case_001336_rank.val, hlt⟩ : Fin numPairWords) = case_001336_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001336_rank.val, hlt⟩ case_001336_mask =
        case_001336_seq := by
    simpa [hrank] using case_001336_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001336_rank.val, hlt⟩ case_001336_mask =
        case_001336_b := by
    simpa [hrank] using case_001336_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001336_support case_001336_rank.val hlt
          case_001336_mask = case_001336_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001336_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001336_support case_001336_rank.val hlt
          case_001336_mask = case_001336_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001336_secondLine_eq]
  have case_001336_fixedFirst :
      FixedRow (FirstLineAt case_001336_support case_001336_rank.val hlt case_001336_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001336_firstLine, FixedRow]
  have case_001336_rowSecond :
      OppPosRow (SecondLineAt case_001336_support case_001336_rank.val hlt case_001336_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001336_secondLine, OppPosRow]
  exact ⟨case_001336_fixedFirst, case_001336_rowSecond⟩

private theorem case_001336_existsRows :
    ExistsOppOneMinusVarSecondRows case_001336_rank.val case_001336_mask :=
  ⟨case_001336_support, case_001336_sourceAgrees, case_001336_rows⟩

private theorem case_001336_covered :
    RowPropertyParametricCovered case_001336_rank.val case_001336_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001336_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001337_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001337_mask : SignMask := ⟨8, by decide⟩
private def case_001337_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001337_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001337_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001337_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (-148/9) }
private def case_001337_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001337_secondLine : StrictLin2 := { a := (-13/518), b := (-13/518), c := (-79/777) }

private theorem case_001337_rankWord :
    rankPairWord? case_001337_word = some case_001337_rank := by
  decide

private theorem case_001337_unrank :
    unrankPairWord case_001337_rank = case_001337_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001337_word case_001337_rank).1
    case_001337_rankWord |>.symm

private theorem case_001337_seqChoice :
    translationChoiceSeq case_001337_word case_001337_mask = case_001337_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001337_seqAtRank :
    translationSeqAtRankMask case_001337_rank case_001337_mask = case_001337_seq := by
  rw [translationSeqAtRankMask, case_001337_unrank]
  exact case_001337_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001337_bAtRank :
    translationBAtRankMask case_001337_rank case_001337_mask = case_001337_b := by
  rw [translationBAtRankMask, case_001337_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001337_b, case_001337_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001337_firstLine_eq :
    case_001337_support.firstLine case_001337_seq case_001337_b = case_001337_firstLine := by
  norm_num [case_001337_firstLine, case_001337_support, case_001337_seq, case_001337_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001337_secondLine_eq :
    case_001337_support.secondLine case_001337_seq case_001337_b = case_001337_secondLine := by
  norm_num [case_001337_secondLine, case_001337_support, case_001337_seq, case_001337_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001337_sourceAgrees :
    SourceAgrees case_001337_support case_001337_rank.val case_001337_mask := by
  intro hlt
  have hrank : (⟨case_001337_rank.val, hlt⟩ : Fin numPairWords) = case_001337_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001337_rank.val, hlt⟩ case_001337_mask =
        case_001337_seq := by
    simpa [hrank] using case_001337_seqAtRank
  simp [SourceChecks, hseq, case_001337_support,
    checkTranslationConstraintSource, case_001337_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001337_rows :
    EqEqPosVarSecondRows case_001337_support case_001337_rank.val case_001337_mask := by
  intro hlt
  have hrank : (⟨case_001337_rank.val, hlt⟩ : Fin numPairWords) = case_001337_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001337_rank.val, hlt⟩ case_001337_mask =
        case_001337_seq := by
    simpa [hrank] using case_001337_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001337_rank.val, hlt⟩ case_001337_mask =
        case_001337_b := by
    simpa [hrank] using case_001337_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001337_support case_001337_rank.val hlt
          case_001337_mask = case_001337_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001337_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001337_support case_001337_rank.val hlt
          case_001337_mask = case_001337_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001337_secondLine_eq]
  have case_001337_fixedFirst :
      FixedRow (FirstLineAt case_001337_support case_001337_rank.val hlt case_001337_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001337_firstLine, FixedRow]
  have case_001337_rowSecond :
      EqEqPosRow (SecondLineAt case_001337_support case_001337_rank.val hlt case_001337_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001337_secondLine, EqEqPosRow]
  exact ⟨case_001337_fixedFirst, case_001337_rowSecond⟩

private theorem case_001337_existsRows :
    ExistsEqEqPosVarSecondRows case_001337_rank.val case_001337_mask :=
  ⟨case_001337_support, case_001337_sourceAgrees, case_001337_rows⟩

private theorem case_001337_covered :
    RowPropertyParametricCovered case_001337_rank.val case_001337_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001337_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001338_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001338_mask : SignMask := ⟨9, by decide⟩
private def case_001338_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001338_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001338_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001338_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (-148/9) }
private def case_001338_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001338_secondLine : StrictLin2 := { a := (-13/190), b := (-13/190), c := (-88/285) }

private theorem case_001338_rankWord :
    rankPairWord? case_001338_word = some case_001338_rank := by
  decide

private theorem case_001338_unrank :
    unrankPairWord case_001338_rank = case_001338_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001338_word case_001338_rank).1
    case_001338_rankWord |>.symm

private theorem case_001338_seqChoice :
    translationChoiceSeq case_001338_word case_001338_mask = case_001338_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001338_seqAtRank :
    translationSeqAtRankMask case_001338_rank case_001338_mask = case_001338_seq := by
  rw [translationSeqAtRankMask, case_001338_unrank]
  exact case_001338_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001338_bAtRank :
    translationBAtRankMask case_001338_rank case_001338_mask = case_001338_b := by
  rw [translationBAtRankMask, case_001338_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001338_b, case_001338_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001338_firstLine_eq :
    case_001338_support.firstLine case_001338_seq case_001338_b = case_001338_firstLine := by
  norm_num [case_001338_firstLine, case_001338_support, case_001338_seq, case_001338_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001338_secondLine_eq :
    case_001338_support.secondLine case_001338_seq case_001338_b = case_001338_secondLine := by
  norm_num [case_001338_secondLine, case_001338_support, case_001338_seq, case_001338_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001338_sourceAgrees :
    SourceAgrees case_001338_support case_001338_rank.val case_001338_mask := by
  intro hlt
  have hrank : (⟨case_001338_rank.val, hlt⟩ : Fin numPairWords) = case_001338_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001338_rank.val, hlt⟩ case_001338_mask =
        case_001338_seq := by
    simpa [hrank] using case_001338_seqAtRank
  simp [SourceChecks, hseq, case_001338_support,
    checkTranslationConstraintSource, case_001338_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001338_rows :
    EqEqPosVarSecondRows case_001338_support case_001338_rank.val case_001338_mask := by
  intro hlt
  have hrank : (⟨case_001338_rank.val, hlt⟩ : Fin numPairWords) = case_001338_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001338_rank.val, hlt⟩ case_001338_mask =
        case_001338_seq := by
    simpa [hrank] using case_001338_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001338_rank.val, hlt⟩ case_001338_mask =
        case_001338_b := by
    simpa [hrank] using case_001338_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001338_support case_001338_rank.val hlt
          case_001338_mask = case_001338_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001338_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001338_support case_001338_rank.val hlt
          case_001338_mask = case_001338_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001338_secondLine_eq]
  have case_001338_fixedFirst :
      FixedRow (FirstLineAt case_001338_support case_001338_rank.val hlt case_001338_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001338_firstLine, FixedRow]
  have case_001338_rowSecond :
      EqEqPosRow (SecondLineAt case_001338_support case_001338_rank.val hlt case_001338_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001338_secondLine, EqEqPosRow]
  exact ⟨case_001338_fixedFirst, case_001338_rowSecond⟩

private theorem case_001338_existsRows :
    ExistsEqEqPosVarSecondRows case_001338_rank.val case_001338_mask :=
  ⟨case_001338_support, case_001338_sourceAgrees, case_001338_rows⟩

private theorem case_001338_covered :
    RowPropertyParametricCovered case_001338_rank.val case_001338_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001338_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001339_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001339_mask : SignMask := ⟨13, by decide⟩
private def case_001339_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001339_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001339_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001339_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-100/9) }
private def case_001339_firstLine : StrictLin2 := { a := (-25/67), b := (25/67), c := (-57/67) }
private def case_001339_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001339_rankWord :
    rankPairWord? case_001339_word = some case_001339_rank := by
  decide

private theorem case_001339_unrank :
    unrankPairWord case_001339_rank = case_001339_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001339_word case_001339_rank).1
    case_001339_rankWord |>.symm

private theorem case_001339_seqChoice :
    translationChoiceSeq case_001339_word case_001339_mask = case_001339_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001339_seqAtRank :
    translationSeqAtRankMask case_001339_rank case_001339_mask = case_001339_seq := by
  rw [translationSeqAtRankMask, case_001339_unrank]
  exact case_001339_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001339_bAtRank :
    translationBAtRankMask case_001339_rank case_001339_mask = case_001339_b := by
  rw [translationBAtRankMask, case_001339_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001339_b, case_001339_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001339_firstLine_eq :
    case_001339_support.firstLine case_001339_seq case_001339_b = case_001339_firstLine := by
  norm_num [case_001339_firstLine, case_001339_support, case_001339_seq, case_001339_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001339_secondLine_eq :
    case_001339_support.secondLine case_001339_seq case_001339_b = case_001339_secondLine := by
  norm_num [case_001339_secondLine, case_001339_support, case_001339_seq, case_001339_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001339_sourceAgrees :
    SourceAgrees case_001339_support case_001339_rank.val case_001339_mask := by
  intro hlt
  have hrank : (⟨case_001339_rank.val, hlt⟩ : Fin numPairWords) = case_001339_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001339_rank.val, hlt⟩ case_001339_mask =
        case_001339_seq := by
    simpa [hrank] using case_001339_seqAtRank
  simp [SourceChecks, hseq, case_001339_support,
    checkTranslationConstraintSource, case_001339_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001339_rows :
    OppOneMinusVarFirstRows case_001339_support case_001339_rank.val case_001339_mask := by
  intro hlt
  have hrank : (⟨case_001339_rank.val, hlt⟩ : Fin numPairWords) = case_001339_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001339_rank.val, hlt⟩ case_001339_mask =
        case_001339_seq := by
    simpa [hrank] using case_001339_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001339_rank.val, hlt⟩ case_001339_mask =
        case_001339_b := by
    simpa [hrank] using case_001339_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001339_support case_001339_rank.val hlt
          case_001339_mask = case_001339_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001339_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001339_support case_001339_rank.val hlt
          case_001339_mask = case_001339_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001339_secondLine_eq]
  have case_001339_rowFirst :
      OppPosRow (FirstLineAt case_001339_support case_001339_rank.val hlt case_001339_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001339_firstLine, OppPosRow]
  have case_001339_fixedSecond :
      FixedRow (SecondLineAt case_001339_support case_001339_rank.val hlt case_001339_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001339_secondLine, FixedRow]
  exact ⟨case_001339_rowFirst, case_001339_fixedSecond⟩

private theorem case_001339_existsRows :
    ExistsOppOneMinusVarFirstRows case_001339_rank.val case_001339_mask :=
  ⟨case_001339_support, case_001339_sourceAgrees, case_001339_rows⟩

private theorem case_001339_covered :
    RowPropertyParametricCovered case_001339_rank.val case_001339_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001339_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001340_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001340_mask : SignMask := ⟨16, by decide⟩
private def case_001340_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001340_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001340_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001340_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-20/9) }
private def case_001340_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001340_secondLine : StrictLin2 := { a := (-15/754), b := (-15/754), c := (-23/377) }

private theorem case_001340_rankWord :
    rankPairWord? case_001340_word = some case_001340_rank := by
  decide

private theorem case_001340_unrank :
    unrankPairWord case_001340_rank = case_001340_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001340_word case_001340_rank).1
    case_001340_rankWord |>.symm

private theorem case_001340_seqChoice :
    translationChoiceSeq case_001340_word case_001340_mask = case_001340_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001340_seqAtRank :
    translationSeqAtRankMask case_001340_rank case_001340_mask = case_001340_seq := by
  rw [translationSeqAtRankMask, case_001340_unrank]
  exact case_001340_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001340_bAtRank :
    translationBAtRankMask case_001340_rank case_001340_mask = case_001340_b := by
  rw [translationBAtRankMask, case_001340_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001340_b, case_001340_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001340_firstLine_eq :
    case_001340_support.firstLine case_001340_seq case_001340_b = case_001340_firstLine := by
  norm_num [case_001340_firstLine, case_001340_support, case_001340_seq, case_001340_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001340_secondLine_eq :
    case_001340_support.secondLine case_001340_seq case_001340_b = case_001340_secondLine := by
  norm_num [case_001340_secondLine, case_001340_support, case_001340_seq, case_001340_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001340_sourceAgrees :
    SourceAgrees case_001340_support case_001340_rank.val case_001340_mask := by
  intro hlt
  have hrank : (⟨case_001340_rank.val, hlt⟩ : Fin numPairWords) = case_001340_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001340_rank.val, hlt⟩ case_001340_mask =
        case_001340_seq := by
    simpa [hrank] using case_001340_seqAtRank
  simp [SourceChecks, hseq, case_001340_support,
    checkTranslationConstraintSource, case_001340_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001340_rows :
    EqEqPosVarSecondRows case_001340_support case_001340_rank.val case_001340_mask := by
  intro hlt
  have hrank : (⟨case_001340_rank.val, hlt⟩ : Fin numPairWords) = case_001340_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001340_rank.val, hlt⟩ case_001340_mask =
        case_001340_seq := by
    simpa [hrank] using case_001340_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001340_rank.val, hlt⟩ case_001340_mask =
        case_001340_b := by
    simpa [hrank] using case_001340_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001340_support case_001340_rank.val hlt
          case_001340_mask = case_001340_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001340_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001340_support case_001340_rank.val hlt
          case_001340_mask = case_001340_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001340_secondLine_eq]
  have case_001340_fixedFirst :
      FixedRow (FirstLineAt case_001340_support case_001340_rank.val hlt case_001340_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001340_firstLine, FixedRow]
  have case_001340_rowSecond :
      EqEqPosRow (SecondLineAt case_001340_support case_001340_rank.val hlt case_001340_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001340_secondLine, EqEqPosRow]
  exact ⟨case_001340_fixedFirst, case_001340_rowSecond⟩

private theorem case_001340_existsRows :
    ExistsEqEqPosVarSecondRows case_001340_rank.val case_001340_mask :=
  ⟨case_001340_support, case_001340_sourceAgrees, case_001340_rows⟩

private theorem case_001340_covered :
    RowPropertyParametricCovered case_001340_rank.val case_001340_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001340_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001341_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001341_mask : SignMask := ⟨18, by decide⟩
private def case_001341_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001341_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001341_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001341_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (52/9) }
private def case_001341_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001341_secondLine : StrictLin2 := { a := (-15/154), b := (-15/154), c := (-32/77) }

private theorem case_001341_rankWord :
    rankPairWord? case_001341_word = some case_001341_rank := by
  decide

private theorem case_001341_unrank :
    unrankPairWord case_001341_rank = case_001341_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001341_word case_001341_rank).1
    case_001341_rankWord |>.symm

private theorem case_001341_seqChoice :
    translationChoiceSeq case_001341_word case_001341_mask = case_001341_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001341_seqAtRank :
    translationSeqAtRankMask case_001341_rank case_001341_mask = case_001341_seq := by
  rw [translationSeqAtRankMask, case_001341_unrank]
  exact case_001341_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001341_bAtRank :
    translationBAtRankMask case_001341_rank case_001341_mask = case_001341_b := by
  rw [translationBAtRankMask, case_001341_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001341_b, case_001341_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001341_firstLine_eq :
    case_001341_support.firstLine case_001341_seq case_001341_b = case_001341_firstLine := by
  norm_num [case_001341_firstLine, case_001341_support, case_001341_seq, case_001341_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001341_secondLine_eq :
    case_001341_support.secondLine case_001341_seq case_001341_b = case_001341_secondLine := by
  norm_num [case_001341_secondLine, case_001341_support, case_001341_seq, case_001341_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001341_sourceAgrees :
    SourceAgrees case_001341_support case_001341_rank.val case_001341_mask := by
  intro hlt
  have hrank : (⟨case_001341_rank.val, hlt⟩ : Fin numPairWords) = case_001341_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001341_rank.val, hlt⟩ case_001341_mask =
        case_001341_seq := by
    simpa [hrank] using case_001341_seqAtRank
  simp [SourceChecks, hseq, case_001341_support,
    checkTranslationConstraintSource, case_001341_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001341_rows :
    EqEqPosVarSecondRows case_001341_support case_001341_rank.val case_001341_mask := by
  intro hlt
  have hrank : (⟨case_001341_rank.val, hlt⟩ : Fin numPairWords) = case_001341_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001341_rank.val, hlt⟩ case_001341_mask =
        case_001341_seq := by
    simpa [hrank] using case_001341_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001341_rank.val, hlt⟩ case_001341_mask =
        case_001341_b := by
    simpa [hrank] using case_001341_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001341_support case_001341_rank.val hlt
          case_001341_mask = case_001341_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001341_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001341_support case_001341_rank.val hlt
          case_001341_mask = case_001341_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001341_secondLine_eq]
  have case_001341_fixedFirst :
      FixedRow (FirstLineAt case_001341_support case_001341_rank.val hlt case_001341_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001341_firstLine, FixedRow]
  have case_001341_rowSecond :
      EqEqPosRow (SecondLineAt case_001341_support case_001341_rank.val hlt case_001341_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001341_secondLine, EqEqPosRow]
  exact ⟨case_001341_fixedFirst, case_001341_rowSecond⟩

private theorem case_001341_existsRows :
    ExistsEqEqPosVarSecondRows case_001341_rank.val case_001341_mask :=
  ⟨case_001341_support, case_001341_sourceAgrees, case_001341_rows⟩

private theorem case_001341_covered :
    RowPropertyParametricCovered case_001341_rank.val case_001341_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001341_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001342_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001342_mask : SignMask := ⟨22, by decide⟩
private def case_001342_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001342_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001342_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001342_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (100/9) }
private def case_001342_firstLine : StrictLin2 := { a := -1, b := 1, c := (-67/17) }
private def case_001342_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001342_rankWord :
    rankPairWord? case_001342_word = some case_001342_rank := by
  decide

private theorem case_001342_unrank :
    unrankPairWord case_001342_rank = case_001342_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001342_word case_001342_rank).1
    case_001342_rankWord |>.symm

private theorem case_001342_seqChoice :
    translationChoiceSeq case_001342_word case_001342_mask = case_001342_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001342_seqAtRank :
    translationSeqAtRankMask case_001342_rank case_001342_mask = case_001342_seq := by
  rw [translationSeqAtRankMask, case_001342_unrank]
  exact case_001342_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001342_bAtRank :
    translationBAtRankMask case_001342_rank case_001342_mask = case_001342_b := by
  rw [translationBAtRankMask, case_001342_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001342_b, case_001342_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001342_firstLine_eq :
    case_001342_support.firstLine case_001342_seq case_001342_b = case_001342_firstLine := by
  norm_num [case_001342_firstLine, case_001342_support, case_001342_seq, case_001342_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001342_secondLine_eq :
    case_001342_support.secondLine case_001342_seq case_001342_b = case_001342_secondLine := by
  norm_num [case_001342_secondLine, case_001342_support, case_001342_seq, case_001342_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001342_sourceAgrees :
    SourceAgrees case_001342_support case_001342_rank.val case_001342_mask := by
  intro hlt
  have hrank : (⟨case_001342_rank.val, hlt⟩ : Fin numPairWords) = case_001342_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001342_rank.val, hlt⟩ case_001342_mask =
        case_001342_seq := by
    simpa [hrank] using case_001342_seqAtRank
  simp [SourceChecks, hseq, case_001342_support,
    checkTranslationConstraintSource, case_001342_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001342_rows :
    OppOneMinusVarFirstRows case_001342_support case_001342_rank.val case_001342_mask := by
  intro hlt
  have hrank : (⟨case_001342_rank.val, hlt⟩ : Fin numPairWords) = case_001342_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001342_rank.val, hlt⟩ case_001342_mask =
        case_001342_seq := by
    simpa [hrank] using case_001342_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001342_rank.val, hlt⟩ case_001342_mask =
        case_001342_b := by
    simpa [hrank] using case_001342_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001342_support case_001342_rank.val hlt
          case_001342_mask = case_001342_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001342_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001342_support case_001342_rank.val hlt
          case_001342_mask = case_001342_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001342_secondLine_eq]
  have case_001342_rowFirst :
      OppPosRow (FirstLineAt case_001342_support case_001342_rank.val hlt case_001342_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001342_firstLine, OppPosRow]
  have case_001342_fixedSecond :
      FixedRow (SecondLineAt case_001342_support case_001342_rank.val hlt case_001342_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001342_secondLine, FixedRow]
  exact ⟨case_001342_rowFirst, case_001342_fixedSecond⟩

private theorem case_001342_existsRows :
    ExistsOppOneMinusVarFirstRows case_001342_rank.val case_001342_mask :=
  ⟨case_001342_support, case_001342_sourceAgrees, case_001342_rows⟩

private theorem case_001342_covered :
    RowPropertyParametricCovered case_001342_rank.val case_001342_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001342_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001343_rank : Fin numPairWords := ⟨890, by decide⟩
private def case_001343_mask : SignMask := ⟨28, by decide⟩
private def case_001343_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001343_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001343_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001343_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-20/9) }
private def case_001343_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_001343_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001343_rankWord :
    rankPairWord? case_001343_word = some case_001343_rank := by
  decide

private theorem case_001343_unrank :
    unrankPairWord case_001343_rank = case_001343_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001343_word case_001343_rank).1
    case_001343_rankWord |>.symm

private theorem case_001343_seqChoice :
    translationChoiceSeq case_001343_word case_001343_mask = case_001343_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001343_seqAtRank :
    translationSeqAtRankMask case_001343_rank case_001343_mask = case_001343_seq := by
  rw [translationSeqAtRankMask, case_001343_unrank]
  exact case_001343_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001343_bAtRank :
    translationBAtRankMask case_001343_rank case_001343_mask = case_001343_b := by
  rw [translationBAtRankMask, case_001343_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001343_b, case_001343_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001343_firstLine_eq :
    case_001343_support.firstLine case_001343_seq case_001343_b = case_001343_firstLine := by
  norm_num [case_001343_firstLine, case_001343_support, case_001343_seq, case_001343_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001343_secondLine_eq :
    case_001343_support.secondLine case_001343_seq case_001343_b = case_001343_secondLine := by
  norm_num [case_001343_secondLine, case_001343_support, case_001343_seq, case_001343_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001343_sourceAgrees :
    SourceAgrees case_001343_support case_001343_rank.val case_001343_mask := by
  intro hlt
  have hrank : (⟨case_001343_rank.val, hlt⟩ : Fin numPairWords) = case_001343_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001343_rank.val, hlt⟩ case_001343_mask =
        case_001343_seq := by
    simpa [hrank] using case_001343_seqAtRank
  simp [SourceChecks, hseq, case_001343_support,
    checkTranslationConstraintSource, case_001343_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001343_rows :
    OppOneMinusVarFirstRows case_001343_support case_001343_rank.val case_001343_mask := by
  intro hlt
  have hrank : (⟨case_001343_rank.val, hlt⟩ : Fin numPairWords) = case_001343_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001343_rank.val, hlt⟩ case_001343_mask =
        case_001343_seq := by
    simpa [hrank] using case_001343_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001343_rank.val, hlt⟩ case_001343_mask =
        case_001343_b := by
    simpa [hrank] using case_001343_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001343_support case_001343_rank.val hlt
          case_001343_mask = case_001343_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001343_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001343_support case_001343_rank.val hlt
          case_001343_mask = case_001343_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001343_secondLine_eq]
  have case_001343_rowFirst :
      OppPosRow (FirstLineAt case_001343_support case_001343_rank.val hlt case_001343_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001343_firstLine, OppPosRow]
  have case_001343_fixedSecond :
      FixedRow (SecondLineAt case_001343_support case_001343_rank.val hlt case_001343_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001343_secondLine, FixedRow]
  exact ⟨case_001343_rowFirst, case_001343_fixedSecond⟩

private theorem case_001343_existsRows :
    ExistsOppOneMinusVarFirstRows case_001343_rank.val case_001343_mask :=
  ⟨case_001343_support, case_001343_sourceAgrees, case_001343_rows⟩

private theorem case_001343_covered :
    RowPropertyParametricCovered case_001343_rank.val case_001343_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001343_existsRows

inductive Group041Covered : Nat -> SignMask -> Prop
  | case_001312 : Group041Covered case_001312_rank.val case_001312_mask
  | case_001313 : Group041Covered case_001313_rank.val case_001313_mask
  | case_001314 : Group041Covered case_001314_rank.val case_001314_mask
  | case_001315 : Group041Covered case_001315_rank.val case_001315_mask
  | case_001316 : Group041Covered case_001316_rank.val case_001316_mask
  | case_001317 : Group041Covered case_001317_rank.val case_001317_mask
  | case_001318 : Group041Covered case_001318_rank.val case_001318_mask
  | case_001319 : Group041Covered case_001319_rank.val case_001319_mask
  | case_001320 : Group041Covered case_001320_rank.val case_001320_mask
  | case_001321 : Group041Covered case_001321_rank.val case_001321_mask
  | case_001322 : Group041Covered case_001322_rank.val case_001322_mask
  | case_001323 : Group041Covered case_001323_rank.val case_001323_mask
  | case_001324 : Group041Covered case_001324_rank.val case_001324_mask
  | case_001325 : Group041Covered case_001325_rank.val case_001325_mask
  | case_001326 : Group041Covered case_001326_rank.val case_001326_mask
  | case_001327 : Group041Covered case_001327_rank.val case_001327_mask
  | case_001328 : Group041Covered case_001328_rank.val case_001328_mask
  | case_001329 : Group041Covered case_001329_rank.val case_001329_mask
  | case_001330 : Group041Covered case_001330_rank.val case_001330_mask
  | case_001331 : Group041Covered case_001331_rank.val case_001331_mask
  | case_001332 : Group041Covered case_001332_rank.val case_001332_mask
  | case_001333 : Group041Covered case_001333_rank.val case_001333_mask
  | case_001334 : Group041Covered case_001334_rank.val case_001334_mask
  | case_001335 : Group041Covered case_001335_rank.val case_001335_mask
  | case_001336 : Group041Covered case_001336_rank.val case_001336_mask
  | case_001337 : Group041Covered case_001337_rank.val case_001337_mask
  | case_001338 : Group041Covered case_001338_rank.val case_001338_mask
  | case_001339 : Group041Covered case_001339_rank.val case_001339_mask
  | case_001340 : Group041Covered case_001340_rank.val case_001340_mask
  | case_001341 : Group041Covered case_001341_rank.val case_001341_mask
  | case_001342 : Group041Covered case_001342_rank.val case_001342_mask
  | case_001343 : Group041Covered case_001343_rank.val case_001343_mask

theorem Group041GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group041Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001312 =>
      exact RowPropertyParametricCovered.kills case_001312_covered
  | case_001313 =>
      exact RowPropertyParametricCovered.kills case_001313_covered
  | case_001314 =>
      exact RowPropertyParametricCovered.kills case_001314_covered
  | case_001315 =>
      exact RowPropertyParametricCovered.kills case_001315_covered
  | case_001316 =>
      exact RowPropertyParametricCovered.kills case_001316_covered
  | case_001317 =>
      exact RowPropertyParametricCovered.kills case_001317_covered
  | case_001318 =>
      exact RowPropertyParametricCovered.kills case_001318_covered
  | case_001319 =>
      exact RowPropertyParametricCovered.kills case_001319_covered
  | case_001320 =>
      exact RowPropertyParametricCovered.kills case_001320_covered
  | case_001321 =>
      exact RowPropertyParametricCovered.kills case_001321_covered
  | case_001322 =>
      exact RowPropertyParametricCovered.kills case_001322_covered
  | case_001323 =>
      exact RowPropertyParametricCovered.kills case_001323_covered
  | case_001324 =>
      exact RowPropertyParametricCovered.kills case_001324_covered
  | case_001325 =>
      exact RowPropertyParametricCovered.kills case_001325_covered
  | case_001326 =>
      exact RowPropertyParametricCovered.kills case_001326_covered
  | case_001327 =>
      exact RowPropertyParametricCovered.kills case_001327_covered
  | case_001328 =>
      exact RowPropertyParametricCovered.kills case_001328_covered
  | case_001329 =>
      exact RowPropertyParametricCovered.kills case_001329_covered
  | case_001330 =>
      exact RowPropertyParametricCovered.kills case_001330_covered
  | case_001331 =>
      exact RowPropertyParametricCovered.kills case_001331_covered
  | case_001332 =>
      exact RowPropertyParametricCovered.kills case_001332_covered
  | case_001333 =>
      exact RowPropertyParametricCovered.kills case_001333_covered
  | case_001334 =>
      exact RowPropertyParametricCovered.kills case_001334_covered
  | case_001335 =>
      exact RowPropertyParametricCovered.kills case_001335_covered
  | case_001336 =>
      exact RowPropertyParametricCovered.kills case_001336_covered
  | case_001337 =>
      exact RowPropertyParametricCovered.kills case_001337_covered
  | case_001338 =>
      exact RowPropertyParametricCovered.kills case_001338_covered
  | case_001339 =>
      exact RowPropertyParametricCovered.kills case_001339_covered
  | case_001340 =>
      exact RowPropertyParametricCovered.kills case_001340_covered
  | case_001341 =>
      exact RowPropertyParametricCovered.kills case_001341_covered
  | case_001342 =>
      exact RowPropertyParametricCovered.kills case_001342_covered
  | case_001343 =>
      exact RowPropertyParametricCovered.kills case_001343_covered

theorem Group041_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group041
