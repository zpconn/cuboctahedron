import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group038

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
private def case_001216_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001216_mask : SignMask := ⟨9, by decide⟩
private def case_001216_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001216_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001216_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001216_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_001216_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_001216_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001216_rankWord :
    rankPairWord? case_001216_word = some case_001216_rank := by
  decide

private theorem case_001216_unrank :
    unrankPairWord case_001216_rank = case_001216_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001216_word case_001216_rank).1
    case_001216_rankWord |>.symm

private theorem case_001216_seqChoice :
    translationChoiceSeq case_001216_word case_001216_mask = case_001216_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001216_seqAtRank :
    translationSeqAtRankMask case_001216_rank case_001216_mask = case_001216_seq := by
  rw [translationSeqAtRankMask, case_001216_unrank]
  exact case_001216_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001216_bAtRank :
    translationBAtRankMask case_001216_rank case_001216_mask = case_001216_b := by
  rw [translationBAtRankMask, case_001216_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001216_b, case_001216_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001216_firstLine_eq :
    case_001216_support.firstLine case_001216_seq case_001216_b = case_001216_firstLine := by
  norm_num [case_001216_firstLine, case_001216_support, case_001216_seq, case_001216_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001216_secondLine_eq :
    case_001216_support.secondLine case_001216_seq case_001216_b = case_001216_secondLine := by
  norm_num [case_001216_secondLine, case_001216_support, case_001216_seq, case_001216_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001216_sourceAgrees :
    SourceAgrees case_001216_support case_001216_rank.val case_001216_mask := by
  intro hlt
  have hrank : (⟨case_001216_rank.val, hlt⟩ : Fin numPairWords) = case_001216_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001216_rank.val, hlt⟩ case_001216_mask =
        case_001216_seq := by
    simpa [hrank] using case_001216_seqAtRank
  simp [SourceChecks, hseq, case_001216_support,
    checkTranslationConstraintSource, case_001216_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001216_rows :
    EqEqPosVarFirstRows case_001216_support case_001216_rank.val case_001216_mask := by
  intro hlt
  have hrank : (⟨case_001216_rank.val, hlt⟩ : Fin numPairWords) = case_001216_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001216_rank.val, hlt⟩ case_001216_mask =
        case_001216_seq := by
    simpa [hrank] using case_001216_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001216_rank.val, hlt⟩ case_001216_mask =
        case_001216_b := by
    simpa [hrank] using case_001216_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001216_support case_001216_rank.val hlt
          case_001216_mask = case_001216_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001216_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001216_support case_001216_rank.val hlt
          case_001216_mask = case_001216_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001216_secondLine_eq]
  have case_001216_rowFirst :
      EqEqPosRow (FirstLineAt case_001216_support case_001216_rank.val hlt case_001216_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001216_firstLine, EqEqPosRow]
  have case_001216_fixedSecond :
      FixedRow (SecondLineAt case_001216_support case_001216_rank.val hlt case_001216_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001216_secondLine, FixedRow]
  exact ⟨case_001216_rowFirst, case_001216_fixedSecond⟩

private theorem case_001216_existsRows :
    ExistsEqEqPosVarFirstRows case_001216_rank.val case_001216_mask :=
  ⟨case_001216_support, case_001216_sourceAgrees, case_001216_rows⟩

private theorem case_001216_covered :
    RowPropertyParametricCovered case_001216_rank.val case_001216_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001216_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001217_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001217_mask : SignMask := ⟨13, by decide⟩
private def case_001217_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001217_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001217_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001217_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_001217_firstLine : StrictLin2 := { a := (-25/67), b := (25/67), c := (-57/67) }
private def case_001217_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001217_rankWord :
    rankPairWord? case_001217_word = some case_001217_rank := by
  decide

private theorem case_001217_unrank :
    unrankPairWord case_001217_rank = case_001217_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001217_word case_001217_rank).1
    case_001217_rankWord |>.symm

private theorem case_001217_seqChoice :
    translationChoiceSeq case_001217_word case_001217_mask = case_001217_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001217_seqAtRank :
    translationSeqAtRankMask case_001217_rank case_001217_mask = case_001217_seq := by
  rw [translationSeqAtRankMask, case_001217_unrank]
  exact case_001217_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001217_bAtRank :
    translationBAtRankMask case_001217_rank case_001217_mask = case_001217_b := by
  rw [translationBAtRankMask, case_001217_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001217_b, case_001217_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001217_firstLine_eq :
    case_001217_support.firstLine case_001217_seq case_001217_b = case_001217_firstLine := by
  norm_num [case_001217_firstLine, case_001217_support, case_001217_seq, case_001217_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001217_secondLine_eq :
    case_001217_support.secondLine case_001217_seq case_001217_b = case_001217_secondLine := by
  norm_num [case_001217_secondLine, case_001217_support, case_001217_seq, case_001217_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001217_sourceAgrees :
    SourceAgrees case_001217_support case_001217_rank.val case_001217_mask := by
  intro hlt
  have hrank : (⟨case_001217_rank.val, hlt⟩ : Fin numPairWords) = case_001217_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001217_rank.val, hlt⟩ case_001217_mask =
        case_001217_seq := by
    simpa [hrank] using case_001217_seqAtRank
  simp [SourceChecks, hseq, case_001217_support,
    checkTranslationConstraintSource, case_001217_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001217_rows :
    OppOneMinusVarFirstRows case_001217_support case_001217_rank.val case_001217_mask := by
  intro hlt
  have hrank : (⟨case_001217_rank.val, hlt⟩ : Fin numPairWords) = case_001217_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001217_rank.val, hlt⟩ case_001217_mask =
        case_001217_seq := by
    simpa [hrank] using case_001217_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001217_rank.val, hlt⟩ case_001217_mask =
        case_001217_b := by
    simpa [hrank] using case_001217_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001217_support case_001217_rank.val hlt
          case_001217_mask = case_001217_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001217_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001217_support case_001217_rank.val hlt
          case_001217_mask = case_001217_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001217_secondLine_eq]
  have case_001217_rowFirst :
      OppPosRow (FirstLineAt case_001217_support case_001217_rank.val hlt case_001217_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001217_firstLine, OppPosRow]
  have case_001217_fixedSecond :
      FixedRow (SecondLineAt case_001217_support case_001217_rank.val hlt case_001217_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001217_secondLine, FixedRow]
  exact ⟨case_001217_rowFirst, case_001217_fixedSecond⟩

private theorem case_001217_existsRows :
    ExistsOppOneMinusVarFirstRows case_001217_rank.val case_001217_mask :=
  ⟨case_001217_support, case_001217_sourceAgrees, case_001217_rows⟩

private theorem case_001217_covered :
    RowPropertyParametricCovered case_001217_rank.val case_001217_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001217_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001218_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001218_mask : SignMask := ⟨16, by decide⟩
private def case_001218_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001218_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001218_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001218_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-20/9) }
private def case_001218_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/13) }
private def case_001218_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001218_rankWord :
    rankPairWord? case_001218_word = some case_001218_rank := by
  decide

private theorem case_001218_unrank :
    unrankPairWord case_001218_rank = case_001218_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001218_word case_001218_rank).1
    case_001218_rankWord |>.symm

private theorem case_001218_seqChoice :
    translationChoiceSeq case_001218_word case_001218_mask = case_001218_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001218_seqAtRank :
    translationSeqAtRankMask case_001218_rank case_001218_mask = case_001218_seq := by
  rw [translationSeqAtRankMask, case_001218_unrank]
  exact case_001218_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001218_bAtRank :
    translationBAtRankMask case_001218_rank case_001218_mask = case_001218_b := by
  rw [translationBAtRankMask, case_001218_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001218_b, case_001218_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001218_firstLine_eq :
    case_001218_support.firstLine case_001218_seq case_001218_b = case_001218_firstLine := by
  norm_num [case_001218_firstLine, case_001218_support, case_001218_seq, case_001218_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001218_secondLine_eq :
    case_001218_support.secondLine case_001218_seq case_001218_b = case_001218_secondLine := by
  norm_num [case_001218_secondLine, case_001218_support, case_001218_seq, case_001218_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001218_sourceAgrees :
    SourceAgrees case_001218_support case_001218_rank.val case_001218_mask := by
  intro hlt
  have hrank : (⟨case_001218_rank.val, hlt⟩ : Fin numPairWords) = case_001218_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001218_rank.val, hlt⟩ case_001218_mask =
        case_001218_seq := by
    simpa [hrank] using case_001218_seqAtRank
  simp [SourceChecks, hseq, case_001218_support,
    checkTranslationConstraintSource, case_001218_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001218_rows :
    EqEqPosVarFirstRows case_001218_support case_001218_rank.val case_001218_mask := by
  intro hlt
  have hrank : (⟨case_001218_rank.val, hlt⟩ : Fin numPairWords) = case_001218_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001218_rank.val, hlt⟩ case_001218_mask =
        case_001218_seq := by
    simpa [hrank] using case_001218_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001218_rank.val, hlt⟩ case_001218_mask =
        case_001218_b := by
    simpa [hrank] using case_001218_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001218_support case_001218_rank.val hlt
          case_001218_mask = case_001218_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001218_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001218_support case_001218_rank.val hlt
          case_001218_mask = case_001218_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001218_secondLine_eq]
  have case_001218_rowFirst :
      EqEqPosRow (FirstLineAt case_001218_support case_001218_rank.val hlt case_001218_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001218_firstLine, EqEqPosRow]
  have case_001218_fixedSecond :
      FixedRow (SecondLineAt case_001218_support case_001218_rank.val hlt case_001218_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001218_secondLine, FixedRow]
  exact ⟨case_001218_rowFirst, case_001218_fixedSecond⟩

private theorem case_001218_existsRows :
    ExistsEqEqPosVarFirstRows case_001218_rank.val case_001218_mask :=
  ⟨case_001218_support, case_001218_sourceAgrees, case_001218_rows⟩

private theorem case_001218_covered :
    RowPropertyParametricCovered case_001218_rank.val case_001218_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001218_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001219_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001219_mask : SignMask := ⟨18, by decide⟩
private def case_001219_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001219_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001219_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001219_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_001219_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_001219_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001219_rankWord :
    rankPairWord? case_001219_word = some case_001219_rank := by
  decide

private theorem case_001219_unrank :
    unrankPairWord case_001219_rank = case_001219_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001219_word case_001219_rank).1
    case_001219_rankWord |>.symm

private theorem case_001219_seqChoice :
    translationChoiceSeq case_001219_word case_001219_mask = case_001219_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001219_seqAtRank :
    translationSeqAtRankMask case_001219_rank case_001219_mask = case_001219_seq := by
  rw [translationSeqAtRankMask, case_001219_unrank]
  exact case_001219_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001219_bAtRank :
    translationBAtRankMask case_001219_rank case_001219_mask = case_001219_b := by
  rw [translationBAtRankMask, case_001219_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001219_b, case_001219_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001219_firstLine_eq :
    case_001219_support.firstLine case_001219_seq case_001219_b = case_001219_firstLine := by
  norm_num [case_001219_firstLine, case_001219_support, case_001219_seq, case_001219_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001219_secondLine_eq :
    case_001219_support.secondLine case_001219_seq case_001219_b = case_001219_secondLine := by
  norm_num [case_001219_secondLine, case_001219_support, case_001219_seq, case_001219_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001219_sourceAgrees :
    SourceAgrees case_001219_support case_001219_rank.val case_001219_mask := by
  intro hlt
  have hrank : (⟨case_001219_rank.val, hlt⟩ : Fin numPairWords) = case_001219_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001219_rank.val, hlt⟩ case_001219_mask =
        case_001219_seq := by
    simpa [hrank] using case_001219_seqAtRank
  simp [SourceChecks, hseq, case_001219_support,
    checkTranslationConstraintSource, case_001219_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001219_rows :
    EqEqPosVarFirstRows case_001219_support case_001219_rank.val case_001219_mask := by
  intro hlt
  have hrank : (⟨case_001219_rank.val, hlt⟩ : Fin numPairWords) = case_001219_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001219_rank.val, hlt⟩ case_001219_mask =
        case_001219_seq := by
    simpa [hrank] using case_001219_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001219_rank.val, hlt⟩ case_001219_mask =
        case_001219_b := by
    simpa [hrank] using case_001219_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001219_support case_001219_rank.val hlt
          case_001219_mask = case_001219_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001219_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001219_support case_001219_rank.val hlt
          case_001219_mask = case_001219_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001219_secondLine_eq]
  have case_001219_rowFirst :
      EqEqPosRow (FirstLineAt case_001219_support case_001219_rank.val hlt case_001219_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001219_firstLine, EqEqPosRow]
  have case_001219_fixedSecond :
      FixedRow (SecondLineAt case_001219_support case_001219_rank.val hlt case_001219_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001219_secondLine, FixedRow]
  exact ⟨case_001219_rowFirst, case_001219_fixedSecond⟩

private theorem case_001219_existsRows :
    ExistsEqEqPosVarFirstRows case_001219_rank.val case_001219_mask :=
  ⟨case_001219_support, case_001219_sourceAgrees, case_001219_rows⟩

private theorem case_001219_covered :
    RowPropertyParametricCovered case_001219_rank.val case_001219_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001219_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001220_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001220_mask : SignMask := ⟨22, by decide⟩
private def case_001220_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001220_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001220_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001220_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_001220_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_001220_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001220_rankWord :
    rankPairWord? case_001220_word = some case_001220_rank := by
  decide

private theorem case_001220_unrank :
    unrankPairWord case_001220_rank = case_001220_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001220_word case_001220_rank).1
    case_001220_rankWord |>.symm

private theorem case_001220_seqChoice :
    translationChoiceSeq case_001220_word case_001220_mask = case_001220_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001220_seqAtRank :
    translationSeqAtRankMask case_001220_rank case_001220_mask = case_001220_seq := by
  rw [translationSeqAtRankMask, case_001220_unrank]
  exact case_001220_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001220_bAtRank :
    translationBAtRankMask case_001220_rank case_001220_mask = case_001220_b := by
  rw [translationBAtRankMask, case_001220_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001220_b, case_001220_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001220_firstLine_eq :
    case_001220_support.firstLine case_001220_seq case_001220_b = case_001220_firstLine := by
  norm_num [case_001220_firstLine, case_001220_support, case_001220_seq, case_001220_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001220_secondLine_eq :
    case_001220_support.secondLine case_001220_seq case_001220_b = case_001220_secondLine := by
  norm_num [case_001220_secondLine, case_001220_support, case_001220_seq, case_001220_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001220_sourceAgrees :
    SourceAgrees case_001220_support case_001220_rank.val case_001220_mask := by
  intro hlt
  have hrank : (⟨case_001220_rank.val, hlt⟩ : Fin numPairWords) = case_001220_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001220_rank.val, hlt⟩ case_001220_mask =
        case_001220_seq := by
    simpa [hrank] using case_001220_seqAtRank
  simp [SourceChecks, hseq, case_001220_support,
    checkTranslationConstraintSource, case_001220_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001220_rows :
    OppOneMinusVarFirstRows case_001220_support case_001220_rank.val case_001220_mask := by
  intro hlt
  have hrank : (⟨case_001220_rank.val, hlt⟩ : Fin numPairWords) = case_001220_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001220_rank.val, hlt⟩ case_001220_mask =
        case_001220_seq := by
    simpa [hrank] using case_001220_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001220_rank.val, hlt⟩ case_001220_mask =
        case_001220_b := by
    simpa [hrank] using case_001220_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001220_support case_001220_rank.val hlt
          case_001220_mask = case_001220_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001220_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001220_support case_001220_rank.val hlt
          case_001220_mask = case_001220_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001220_secondLine_eq]
  have case_001220_rowFirst :
      OppPosRow (FirstLineAt case_001220_support case_001220_rank.val hlt case_001220_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001220_firstLine, OppPosRow]
  have case_001220_fixedSecond :
      FixedRow (SecondLineAt case_001220_support case_001220_rank.val hlt case_001220_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001220_secondLine, FixedRow]
  exact ⟨case_001220_rowFirst, case_001220_fixedSecond⟩

private theorem case_001220_existsRows :
    ExistsOppOneMinusVarFirstRows case_001220_rank.val case_001220_mask :=
  ⟨case_001220_support, case_001220_sourceAgrees, case_001220_rows⟩

private theorem case_001220_covered :
    RowPropertyParametricCovered case_001220_rank.val case_001220_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001220_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001221_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001221_mask : SignMask := ⟨24, by decide⟩
private def case_001221_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001221_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001221_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001221_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-68/9) }
private def case_001221_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/25) }
private def case_001221_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001221_rankWord :
    rankPairWord? case_001221_word = some case_001221_rank := by
  decide

private theorem case_001221_unrank :
    unrankPairWord case_001221_rank = case_001221_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001221_word case_001221_rank).1
    case_001221_rankWord |>.symm

private theorem case_001221_seqChoice :
    translationChoiceSeq case_001221_word case_001221_mask = case_001221_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001221_seqAtRank :
    translationSeqAtRankMask case_001221_rank case_001221_mask = case_001221_seq := by
  rw [translationSeqAtRankMask, case_001221_unrank]
  exact case_001221_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001221_bAtRank :
    translationBAtRankMask case_001221_rank case_001221_mask = case_001221_b := by
  rw [translationBAtRankMask, case_001221_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001221_b, case_001221_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001221_firstLine_eq :
    case_001221_support.firstLine case_001221_seq case_001221_b = case_001221_firstLine := by
  norm_num [case_001221_firstLine, case_001221_support, case_001221_seq, case_001221_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001221_secondLine_eq :
    case_001221_support.secondLine case_001221_seq case_001221_b = case_001221_secondLine := by
  norm_num [case_001221_secondLine, case_001221_support, case_001221_seq, case_001221_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001221_sourceAgrees :
    SourceAgrees case_001221_support case_001221_rank.val case_001221_mask := by
  intro hlt
  have hrank : (⟨case_001221_rank.val, hlt⟩ : Fin numPairWords) = case_001221_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001221_rank.val, hlt⟩ case_001221_mask =
        case_001221_seq := by
    simpa [hrank] using case_001221_seqAtRank
  simp [SourceChecks, hseq, case_001221_support,
    checkTranslationConstraintSource, case_001221_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001221_rows :
    EqEqPosVarFirstRows case_001221_support case_001221_rank.val case_001221_mask := by
  intro hlt
  have hrank : (⟨case_001221_rank.val, hlt⟩ : Fin numPairWords) = case_001221_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001221_rank.val, hlt⟩ case_001221_mask =
        case_001221_seq := by
    simpa [hrank] using case_001221_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001221_rank.val, hlt⟩ case_001221_mask =
        case_001221_b := by
    simpa [hrank] using case_001221_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001221_support case_001221_rank.val hlt
          case_001221_mask = case_001221_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001221_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001221_support case_001221_rank.val hlt
          case_001221_mask = case_001221_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001221_secondLine_eq]
  have case_001221_rowFirst :
      EqEqPosRow (FirstLineAt case_001221_support case_001221_rank.val hlt case_001221_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001221_firstLine, EqEqPosRow]
  have case_001221_fixedSecond :
      FixedRow (SecondLineAt case_001221_support case_001221_rank.val hlt case_001221_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001221_secondLine, FixedRow]
  exact ⟨case_001221_rowFirst, case_001221_fixedSecond⟩

private theorem case_001221_existsRows :
    ExistsEqEqPosVarFirstRows case_001221_rank.val case_001221_mask :=
  ⟨case_001221_support, case_001221_sourceAgrees, case_001221_rows⟩

private theorem case_001221_covered :
    RowPropertyParametricCovered case_001221_rank.val case_001221_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001221_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001222_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001222_mask : SignMask := ⟨28, by decide⟩
private def case_001222_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001222_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001222_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001222_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (-20/9) }
private def case_001222_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001222_secondLine : StrictLin2 := { a := (-9/74), b := (9/74), c := (-15/37) }

private theorem case_001222_rankWord :
    rankPairWord? case_001222_word = some case_001222_rank := by
  decide

private theorem case_001222_unrank :
    unrankPairWord case_001222_rank = case_001222_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001222_word case_001222_rank).1
    case_001222_rankWord |>.symm

private theorem case_001222_seqChoice :
    translationChoiceSeq case_001222_word case_001222_mask = case_001222_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001222_seqAtRank :
    translationSeqAtRankMask case_001222_rank case_001222_mask = case_001222_seq := by
  rw [translationSeqAtRankMask, case_001222_unrank]
  exact case_001222_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001222_bAtRank :
    translationBAtRankMask case_001222_rank case_001222_mask = case_001222_b := by
  rw [translationBAtRankMask, case_001222_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001222_b, case_001222_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001222_firstLine_eq :
    case_001222_support.firstLine case_001222_seq case_001222_b = case_001222_firstLine := by
  norm_num [case_001222_firstLine, case_001222_support, case_001222_seq, case_001222_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001222_secondLine_eq :
    case_001222_support.secondLine case_001222_seq case_001222_b = case_001222_secondLine := by
  norm_num [case_001222_secondLine, case_001222_support, case_001222_seq, case_001222_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001222_sourceAgrees :
    SourceAgrees case_001222_support case_001222_rank.val case_001222_mask := by
  intro hlt
  have hrank : (⟨case_001222_rank.val, hlt⟩ : Fin numPairWords) = case_001222_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001222_rank.val, hlt⟩ case_001222_mask =
        case_001222_seq := by
    simpa [hrank] using case_001222_seqAtRank
  simp [SourceChecks, hseq, case_001222_support,
    checkTranslationConstraintSource, case_001222_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001222_rows :
    OppOneMinusVarSecondRows case_001222_support case_001222_rank.val case_001222_mask := by
  intro hlt
  have hrank : (⟨case_001222_rank.val, hlt⟩ : Fin numPairWords) = case_001222_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001222_rank.val, hlt⟩ case_001222_mask =
        case_001222_seq := by
    simpa [hrank] using case_001222_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001222_rank.val, hlt⟩ case_001222_mask =
        case_001222_b := by
    simpa [hrank] using case_001222_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001222_support case_001222_rank.val hlt
          case_001222_mask = case_001222_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001222_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001222_support case_001222_rank.val hlt
          case_001222_mask = case_001222_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001222_secondLine_eq]
  have case_001222_fixedFirst :
      FixedRow (FirstLineAt case_001222_support case_001222_rank.val hlt case_001222_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001222_firstLine, FixedRow]
  have case_001222_rowSecond :
      OppPosRow (SecondLineAt case_001222_support case_001222_rank.val hlt case_001222_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001222_secondLine, OppPosRow]
  exact ⟨case_001222_fixedFirst, case_001222_rowSecond⟩

private theorem case_001222_existsRows :
    ExistsOppOneMinusVarSecondRows case_001222_rank.val case_001222_mask :=
  ⟨case_001222_support, case_001222_sourceAgrees, case_001222_rows⟩

private theorem case_001222_covered :
    RowPropertyParametricCovered case_001222_rank.val case_001222_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001222_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001223_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001223_mask : SignMask := ⟨29, by decide⟩
private def case_001223_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001223_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001223_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001223_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (-20/9) }
private def case_001223_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001223_secondLine : StrictLin2 := { a := (-333/2090), b := (333/2090), c := (-1428/1045) }

private theorem case_001223_rankWord :
    rankPairWord? case_001223_word = some case_001223_rank := by
  decide

private theorem case_001223_unrank :
    unrankPairWord case_001223_rank = case_001223_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001223_word case_001223_rank).1
    case_001223_rankWord |>.symm

private theorem case_001223_seqChoice :
    translationChoiceSeq case_001223_word case_001223_mask = case_001223_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001223_seqAtRank :
    translationSeqAtRankMask case_001223_rank case_001223_mask = case_001223_seq := by
  rw [translationSeqAtRankMask, case_001223_unrank]
  exact case_001223_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001223_bAtRank :
    translationBAtRankMask case_001223_rank case_001223_mask = case_001223_b := by
  rw [translationBAtRankMask, case_001223_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001223_b, case_001223_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001223_firstLine_eq :
    case_001223_support.firstLine case_001223_seq case_001223_b = case_001223_firstLine := by
  norm_num [case_001223_firstLine, case_001223_support, case_001223_seq, case_001223_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001223_secondLine_eq :
    case_001223_support.secondLine case_001223_seq case_001223_b = case_001223_secondLine := by
  norm_num [case_001223_secondLine, case_001223_support, case_001223_seq, case_001223_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001223_sourceAgrees :
    SourceAgrees case_001223_support case_001223_rank.val case_001223_mask := by
  intro hlt
  have hrank : (⟨case_001223_rank.val, hlt⟩ : Fin numPairWords) = case_001223_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001223_rank.val, hlt⟩ case_001223_mask =
        case_001223_seq := by
    simpa [hrank] using case_001223_seqAtRank
  simp [SourceChecks, hseq, case_001223_support,
    checkTranslationConstraintSource, case_001223_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001223_rows :
    OppOneMinusVarSecondRows case_001223_support case_001223_rank.val case_001223_mask := by
  intro hlt
  have hrank : (⟨case_001223_rank.val, hlt⟩ : Fin numPairWords) = case_001223_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001223_rank.val, hlt⟩ case_001223_mask =
        case_001223_seq := by
    simpa [hrank] using case_001223_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001223_rank.val, hlt⟩ case_001223_mask =
        case_001223_b := by
    simpa [hrank] using case_001223_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001223_support case_001223_rank.val hlt
          case_001223_mask = case_001223_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001223_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001223_support case_001223_rank.val hlt
          case_001223_mask = case_001223_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001223_secondLine_eq]
  have case_001223_fixedFirst :
      FixedRow (FirstLineAt case_001223_support case_001223_rank.val hlt case_001223_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001223_firstLine, FixedRow]
  have case_001223_rowSecond :
      OppPosRow (SecondLineAt case_001223_support case_001223_rank.val hlt case_001223_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001223_secondLine, OppPosRow]
  exact ⟨case_001223_fixedFirst, case_001223_rowSecond⟩

private theorem case_001223_existsRows :
    ExistsOppOneMinusVarSecondRows case_001223_rank.val case_001223_mask :=
  ⟨case_001223_support, case_001223_sourceAgrees, case_001223_rows⟩

private theorem case_001223_covered :
    RowPropertyParametricCovered case_001223_rank.val case_001223_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001223_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001224_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001224_mask : SignMask := ⟨30, by decide⟩
private def case_001224_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001224_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001224_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001224_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (52/9) }
private def case_001224_firstLine : StrictLin2 := { a := (37/19), b := (-37/19), c := (-149/19) }
private def case_001224_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001224_rankWord :
    rankPairWord? case_001224_word = some case_001224_rank := by
  decide

private theorem case_001224_unrank :
    unrankPairWord case_001224_rank = case_001224_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001224_word case_001224_rank).1
    case_001224_rankWord |>.symm

private theorem case_001224_seqChoice :
    translationChoiceSeq case_001224_word case_001224_mask = case_001224_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001224_seqAtRank :
    translationSeqAtRankMask case_001224_rank case_001224_mask = case_001224_seq := by
  rw [translationSeqAtRankMask, case_001224_unrank]
  exact case_001224_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001224_bAtRank :
    translationBAtRankMask case_001224_rank case_001224_mask = case_001224_b := by
  rw [translationBAtRankMask, case_001224_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001224_b, case_001224_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001224_firstLine_eq :
    case_001224_support.firstLine case_001224_seq case_001224_b = case_001224_firstLine := by
  norm_num [case_001224_firstLine, case_001224_support, case_001224_seq, case_001224_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001224_secondLine_eq :
    case_001224_support.secondLine case_001224_seq case_001224_b = case_001224_secondLine := by
  norm_num [case_001224_secondLine, case_001224_support, case_001224_seq, case_001224_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001224_sourceAgrees :
    SourceAgrees case_001224_support case_001224_rank.val case_001224_mask := by
  intro hlt
  have hrank : (⟨case_001224_rank.val, hlt⟩ : Fin numPairWords) = case_001224_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001224_rank.val, hlt⟩ case_001224_mask =
        case_001224_seq := by
    simpa [hrank] using case_001224_seqAtRank
  simp [SourceChecks, hseq, case_001224_support,
    checkTranslationConstraintSource, case_001224_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001224_rows :
    OppMinusOneVarFirstRows case_001224_support case_001224_rank.val case_001224_mask := by
  intro hlt
  have hrank : (⟨case_001224_rank.val, hlt⟩ : Fin numPairWords) = case_001224_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001224_rank.val, hlt⟩ case_001224_mask =
        case_001224_seq := by
    simpa [hrank] using case_001224_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001224_rank.val, hlt⟩ case_001224_mask =
        case_001224_b := by
    simpa [hrank] using case_001224_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001224_support case_001224_rank.val hlt
          case_001224_mask = case_001224_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001224_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001224_support case_001224_rank.val hlt
          case_001224_mask = case_001224_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001224_secondLine_eq]
  have case_001224_rowFirst :
      OppNegRow (FirstLineAt case_001224_support case_001224_rank.val hlt case_001224_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001224_firstLine, OppNegRow]
  have case_001224_fixedSecond :
      FixedRow (SecondLineAt case_001224_support case_001224_rank.val hlt case_001224_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001224_secondLine, FixedRow]
  exact ⟨case_001224_rowFirst, case_001224_fixedSecond⟩

private theorem case_001224_existsRows :
    ExistsOppMinusOneVarFirstRows case_001224_rank.val case_001224_mask :=
  ⟨case_001224_support, case_001224_sourceAgrees, case_001224_rows⟩

private theorem case_001224_covered :
    RowPropertyParametricCovered case_001224_rank.val case_001224_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001224_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001225_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001225_mask : SignMask := ⟨31, by decide⟩
private def case_001225_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001225_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001225_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001225_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (52/9) }
private def case_001225_firstLine : StrictLin2 := { a := (-37/63), b := (-37/63), c := (-271/189) }
private def case_001225_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001225_rankWord :
    rankPairWord? case_001225_word = some case_001225_rank := by
  decide

private theorem case_001225_unrank :
    unrankPairWord case_001225_rank = case_001225_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001225_word case_001225_rank).1
    case_001225_rankWord |>.symm

private theorem case_001225_seqChoice :
    translationChoiceSeq case_001225_word case_001225_mask = case_001225_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001225_seqAtRank :
    translationSeqAtRankMask case_001225_rank case_001225_mask = case_001225_seq := by
  rw [translationSeqAtRankMask, case_001225_unrank]
  exact case_001225_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001225_bAtRank :
    translationBAtRankMask case_001225_rank case_001225_mask = case_001225_b := by
  rw [translationBAtRankMask, case_001225_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001225_b, case_001225_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001225_firstLine_eq :
    case_001225_support.firstLine case_001225_seq case_001225_b = case_001225_firstLine := by
  norm_num [case_001225_firstLine, case_001225_support, case_001225_seq, case_001225_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001225_secondLine_eq :
    case_001225_support.secondLine case_001225_seq case_001225_b = case_001225_secondLine := by
  norm_num [case_001225_secondLine, case_001225_support, case_001225_seq, case_001225_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001225_sourceAgrees :
    SourceAgrees case_001225_support case_001225_rank.val case_001225_mask := by
  intro hlt
  have hrank : (⟨case_001225_rank.val, hlt⟩ : Fin numPairWords) = case_001225_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001225_rank.val, hlt⟩ case_001225_mask =
        case_001225_seq := by
    simpa [hrank] using case_001225_seqAtRank
  simp [SourceChecks, hseq, case_001225_support,
    checkTranslationConstraintSource, case_001225_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001225_rows :
    EqEqPosVarFirstRows case_001225_support case_001225_rank.val case_001225_mask := by
  intro hlt
  have hrank : (⟨case_001225_rank.val, hlt⟩ : Fin numPairWords) = case_001225_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001225_rank.val, hlt⟩ case_001225_mask =
        case_001225_seq := by
    simpa [hrank] using case_001225_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001225_rank.val, hlt⟩ case_001225_mask =
        case_001225_b := by
    simpa [hrank] using case_001225_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001225_support case_001225_rank.val hlt
          case_001225_mask = case_001225_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001225_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001225_support case_001225_rank.val hlt
          case_001225_mask = case_001225_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001225_secondLine_eq]
  have case_001225_rowFirst :
      EqEqPosRow (FirstLineAt case_001225_support case_001225_rank.val hlt case_001225_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001225_firstLine, EqEqPosRow]
  have case_001225_fixedSecond :
      FixedRow (SecondLineAt case_001225_support case_001225_rank.val hlt case_001225_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001225_secondLine, FixedRow]
  exact ⟨case_001225_rowFirst, case_001225_fixedSecond⟩

private theorem case_001225_existsRows :
    ExistsEqEqPosVarFirstRows case_001225_rank.val case_001225_mask :=
  ⟨case_001225_support, case_001225_sourceAgrees, case_001225_rows⟩

private theorem case_001225_covered :
    RowPropertyParametricCovered case_001225_rank.val case_001225_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001225_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001226_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001226_mask : SignMask := ⟨47, by decide⟩
private def case_001226_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001226_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_001226_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_001226_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_001226_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001226_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_001226_rankWord :
    rankPairWord? case_001226_word = some case_001226_rank := by
  decide

private theorem case_001226_unrank :
    unrankPairWord case_001226_rank = case_001226_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001226_word case_001226_rank).1
    case_001226_rankWord |>.symm

private theorem case_001226_seqChoice :
    translationChoiceSeq case_001226_word case_001226_mask = case_001226_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001226_seqAtRank :
    translationSeqAtRankMask case_001226_rank case_001226_mask = case_001226_seq := by
  rw [translationSeqAtRankMask, case_001226_unrank]
  exact case_001226_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001226_bAtRank :
    translationBAtRankMask case_001226_rank case_001226_mask = case_001226_b := by
  rw [translationBAtRankMask, case_001226_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001226_b, case_001226_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001226_firstLine_eq :
    case_001226_support.firstLine case_001226_seq case_001226_b = case_001226_firstLine := by
  norm_num [case_001226_firstLine, case_001226_support, case_001226_seq, case_001226_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001226_secondLine_eq :
    case_001226_support.secondLine case_001226_seq case_001226_b = case_001226_secondLine := by
  norm_num [case_001226_secondLine, case_001226_support, case_001226_seq, case_001226_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001226_sourceAgrees :
    SourceAgrees case_001226_support case_001226_rank.val case_001226_mask := by
  intro hlt
  have hrank : (⟨case_001226_rank.val, hlt⟩ : Fin numPairWords) = case_001226_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001226_rank.val, hlt⟩ case_001226_mask =
        case_001226_seq := by
    simpa [hrank] using case_001226_seqAtRank
  simp [SourceChecks, hseq, case_001226_support,
    checkTranslationConstraintSource, case_001226_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001226_rows :
    EqEqPosVarSecondRows case_001226_support case_001226_rank.val case_001226_mask := by
  intro hlt
  have hrank : (⟨case_001226_rank.val, hlt⟩ : Fin numPairWords) = case_001226_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001226_rank.val, hlt⟩ case_001226_mask =
        case_001226_seq := by
    simpa [hrank] using case_001226_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001226_rank.val, hlt⟩ case_001226_mask =
        case_001226_b := by
    simpa [hrank] using case_001226_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001226_support case_001226_rank.val hlt
          case_001226_mask = case_001226_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001226_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001226_support case_001226_rank.val hlt
          case_001226_mask = case_001226_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001226_secondLine_eq]
  have case_001226_fixedFirst :
      FixedRow (FirstLineAt case_001226_support case_001226_rank.val hlt case_001226_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001226_firstLine, FixedRow]
  have case_001226_rowSecond :
      EqEqPosRow (SecondLineAt case_001226_support case_001226_rank.val hlt case_001226_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001226_secondLine, EqEqPosRow]
  exact ⟨case_001226_fixedFirst, case_001226_rowSecond⟩

private theorem case_001226_existsRows :
    ExistsEqEqPosVarSecondRows case_001226_rank.val case_001226_mask :=
  ⟨case_001226_support, case_001226_sourceAgrees, case_001226_rows⟩

private theorem case_001226_covered :
    RowPropertyParametricCovered case_001226_rank.val case_001226_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001226_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001227_rank : Fin numPairWords := ⟨854, by decide⟩
private def case_001227_mask : SignMask := ⟨55, by decide⟩
private def case_001227_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001227_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_001227_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_001227_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_001227_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001227_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_001227_rankWord :
    rankPairWord? case_001227_word = some case_001227_rank := by
  decide

private theorem case_001227_unrank :
    unrankPairWord case_001227_rank = case_001227_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001227_word case_001227_rank).1
    case_001227_rankWord |>.symm

private theorem case_001227_seqChoice :
    translationChoiceSeq case_001227_word case_001227_mask = case_001227_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001227_seqAtRank :
    translationSeqAtRankMask case_001227_rank case_001227_mask = case_001227_seq := by
  rw [translationSeqAtRankMask, case_001227_unrank]
  exact case_001227_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001227_bAtRank :
    translationBAtRankMask case_001227_rank case_001227_mask = case_001227_b := by
  rw [translationBAtRankMask, case_001227_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001227_b, case_001227_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001227_firstLine_eq :
    case_001227_support.firstLine case_001227_seq case_001227_b = case_001227_firstLine := by
  norm_num [case_001227_firstLine, case_001227_support, case_001227_seq, case_001227_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001227_secondLine_eq :
    case_001227_support.secondLine case_001227_seq case_001227_b = case_001227_secondLine := by
  norm_num [case_001227_secondLine, case_001227_support, case_001227_seq, case_001227_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001227_sourceAgrees :
    SourceAgrees case_001227_support case_001227_rank.val case_001227_mask := by
  intro hlt
  have hrank : (⟨case_001227_rank.val, hlt⟩ : Fin numPairWords) = case_001227_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001227_rank.val, hlt⟩ case_001227_mask =
        case_001227_seq := by
    simpa [hrank] using case_001227_seqAtRank
  simp [SourceChecks, hseq, case_001227_support,
    checkTranslationConstraintSource, case_001227_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001227_rows :
    EqEqPosVarSecondRows case_001227_support case_001227_rank.val case_001227_mask := by
  intro hlt
  have hrank : (⟨case_001227_rank.val, hlt⟩ : Fin numPairWords) = case_001227_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001227_rank.val, hlt⟩ case_001227_mask =
        case_001227_seq := by
    simpa [hrank] using case_001227_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001227_rank.val, hlt⟩ case_001227_mask =
        case_001227_b := by
    simpa [hrank] using case_001227_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001227_support case_001227_rank.val hlt
          case_001227_mask = case_001227_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001227_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001227_support case_001227_rank.val hlt
          case_001227_mask = case_001227_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001227_secondLine_eq]
  have case_001227_fixedFirst :
      FixedRow (FirstLineAt case_001227_support case_001227_rank.val hlt case_001227_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001227_firstLine, FixedRow]
  have case_001227_rowSecond :
      EqEqPosRow (SecondLineAt case_001227_support case_001227_rank.val hlt case_001227_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001227_secondLine, EqEqPosRow]
  exact ⟨case_001227_fixedFirst, case_001227_rowSecond⟩

private theorem case_001227_existsRows :
    ExistsEqEqPosVarSecondRows case_001227_rank.val case_001227_mask :=
  ⟨case_001227_support, case_001227_sourceAgrees, case_001227_rows⟩

private theorem case_001227_covered :
    RowPropertyParametricCovered case_001227_rank.val case_001227_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001227_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001228_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001228_mask : SignMask := ⟨8, by decide⟩
private def case_001228_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001228_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001228_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmpp
private def case_001228_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-116/9) }
private def case_001228_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001228_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := -2 }

private theorem case_001228_rankWord :
    rankPairWord? case_001228_word = some case_001228_rank := by
  decide

private theorem case_001228_unrank :
    unrankPairWord case_001228_rank = case_001228_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001228_word case_001228_rank).1
    case_001228_rankWord |>.symm

private theorem case_001228_seqChoice :
    translationChoiceSeq case_001228_word case_001228_mask = case_001228_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001228_seqAtRank :
    translationSeqAtRankMask case_001228_rank case_001228_mask = case_001228_seq := by
  rw [translationSeqAtRankMask, case_001228_unrank]
  exact case_001228_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001228_bAtRank :
    translationBAtRankMask case_001228_rank case_001228_mask = case_001228_b := by
  rw [translationBAtRankMask, case_001228_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001228_b, case_001228_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001228_firstLine_eq :
    case_001228_support.firstLine case_001228_seq case_001228_b = case_001228_firstLine := by
  norm_num [case_001228_firstLine, case_001228_support, case_001228_seq, case_001228_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001228_secondLine_eq :
    case_001228_support.secondLine case_001228_seq case_001228_b = case_001228_secondLine := by
  norm_num [case_001228_secondLine, case_001228_support, case_001228_seq, case_001228_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001228_sourceAgrees :
    SourceAgrees case_001228_support case_001228_rank.val case_001228_mask := by
  intro hlt
  have hrank : (⟨case_001228_rank.val, hlt⟩ : Fin numPairWords) = case_001228_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001228_rank.val, hlt⟩ case_001228_mask =
        case_001228_seq := by
    simpa [hrank] using case_001228_seqAtRank
  simp [SourceChecks, hseq, case_001228_support,
    checkTranslationConstraintSource, case_001228_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001228_rows :
    EqEqPosVarSecondRows case_001228_support case_001228_rank.val case_001228_mask := by
  intro hlt
  have hrank : (⟨case_001228_rank.val, hlt⟩ : Fin numPairWords) = case_001228_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001228_rank.val, hlt⟩ case_001228_mask =
        case_001228_seq := by
    simpa [hrank] using case_001228_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001228_rank.val, hlt⟩ case_001228_mask =
        case_001228_b := by
    simpa [hrank] using case_001228_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001228_support case_001228_rank.val hlt
          case_001228_mask = case_001228_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001228_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001228_support case_001228_rank.val hlt
          case_001228_mask = case_001228_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001228_secondLine_eq]
  have case_001228_fixedFirst :
      FixedRow (FirstLineAt case_001228_support case_001228_rank.val hlt case_001228_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001228_firstLine, FixedRow]
  have case_001228_rowSecond :
      EqEqPosRow (SecondLineAt case_001228_support case_001228_rank.val hlt case_001228_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001228_secondLine, EqEqPosRow]
  exact ⟨case_001228_fixedFirst, case_001228_rowSecond⟩

private theorem case_001228_existsRows :
    ExistsEqEqPosVarSecondRows case_001228_rank.val case_001228_mask :=
  ⟨case_001228_support, case_001228_sourceAgrees, case_001228_rows⟩

private theorem case_001228_covered :
    RowPropertyParametricCovered case_001228_rank.val case_001228_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001228_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001229_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001229_mask : SignMask := ⟨13, by decide⟩
private def case_001229_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001229_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001229_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001229_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-100/9) }
private def case_001229_firstLine : StrictLin2 := { a := (-25/67), b := (25/67), c := (-57/67) }
private def case_001229_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001229_rankWord :
    rankPairWord? case_001229_word = some case_001229_rank := by
  decide

private theorem case_001229_unrank :
    unrankPairWord case_001229_rank = case_001229_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001229_word case_001229_rank).1
    case_001229_rankWord |>.symm

private theorem case_001229_seqChoice :
    translationChoiceSeq case_001229_word case_001229_mask = case_001229_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001229_seqAtRank :
    translationSeqAtRankMask case_001229_rank case_001229_mask = case_001229_seq := by
  rw [translationSeqAtRankMask, case_001229_unrank]
  exact case_001229_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001229_bAtRank :
    translationBAtRankMask case_001229_rank case_001229_mask = case_001229_b := by
  rw [translationBAtRankMask, case_001229_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001229_b, case_001229_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001229_firstLine_eq :
    case_001229_support.firstLine case_001229_seq case_001229_b = case_001229_firstLine := by
  norm_num [case_001229_firstLine, case_001229_support, case_001229_seq, case_001229_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001229_secondLine_eq :
    case_001229_support.secondLine case_001229_seq case_001229_b = case_001229_secondLine := by
  norm_num [case_001229_secondLine, case_001229_support, case_001229_seq, case_001229_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001229_sourceAgrees :
    SourceAgrees case_001229_support case_001229_rank.val case_001229_mask := by
  intro hlt
  have hrank : (⟨case_001229_rank.val, hlt⟩ : Fin numPairWords) = case_001229_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001229_rank.val, hlt⟩ case_001229_mask =
        case_001229_seq := by
    simpa [hrank] using case_001229_seqAtRank
  simp [SourceChecks, hseq, case_001229_support,
    checkTranslationConstraintSource, case_001229_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001229_rows :
    OppOneMinusVarFirstRows case_001229_support case_001229_rank.val case_001229_mask := by
  intro hlt
  have hrank : (⟨case_001229_rank.val, hlt⟩ : Fin numPairWords) = case_001229_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001229_rank.val, hlt⟩ case_001229_mask =
        case_001229_seq := by
    simpa [hrank] using case_001229_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001229_rank.val, hlt⟩ case_001229_mask =
        case_001229_b := by
    simpa [hrank] using case_001229_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001229_support case_001229_rank.val hlt
          case_001229_mask = case_001229_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001229_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001229_support case_001229_rank.val hlt
          case_001229_mask = case_001229_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001229_secondLine_eq]
  have case_001229_rowFirst :
      OppPosRow (FirstLineAt case_001229_support case_001229_rank.val hlt case_001229_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001229_firstLine, OppPosRow]
  have case_001229_fixedSecond :
      FixedRow (SecondLineAt case_001229_support case_001229_rank.val hlt case_001229_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001229_secondLine, FixedRow]
  exact ⟨case_001229_rowFirst, case_001229_fixedSecond⟩

private theorem case_001229_existsRows :
    ExistsOppOneMinusVarFirstRows case_001229_rank.val case_001229_mask :=
  ⟨case_001229_support, case_001229_sourceAgrees, case_001229_rows⟩

private theorem case_001229_covered :
    RowPropertyParametricCovered case_001229_rank.val case_001229_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001229_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001230_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001230_mask : SignMask := ⟨16, by decide⟩
private def case_001230_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001230_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001230_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmpp
private def case_001230_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-20/9) }
private def case_001230_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001230_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := -2 }

private theorem case_001230_rankWord :
    rankPairWord? case_001230_word = some case_001230_rank := by
  decide

private theorem case_001230_unrank :
    unrankPairWord case_001230_rank = case_001230_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001230_word case_001230_rank).1
    case_001230_rankWord |>.symm

private theorem case_001230_seqChoice :
    translationChoiceSeq case_001230_word case_001230_mask = case_001230_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001230_seqAtRank :
    translationSeqAtRankMask case_001230_rank case_001230_mask = case_001230_seq := by
  rw [translationSeqAtRankMask, case_001230_unrank]
  exact case_001230_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001230_bAtRank :
    translationBAtRankMask case_001230_rank case_001230_mask = case_001230_b := by
  rw [translationBAtRankMask, case_001230_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001230_b, case_001230_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001230_firstLine_eq :
    case_001230_support.firstLine case_001230_seq case_001230_b = case_001230_firstLine := by
  norm_num [case_001230_firstLine, case_001230_support, case_001230_seq, case_001230_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001230_secondLine_eq :
    case_001230_support.secondLine case_001230_seq case_001230_b = case_001230_secondLine := by
  norm_num [case_001230_secondLine, case_001230_support, case_001230_seq, case_001230_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001230_sourceAgrees :
    SourceAgrees case_001230_support case_001230_rank.val case_001230_mask := by
  intro hlt
  have hrank : (⟨case_001230_rank.val, hlt⟩ : Fin numPairWords) = case_001230_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001230_rank.val, hlt⟩ case_001230_mask =
        case_001230_seq := by
    simpa [hrank] using case_001230_seqAtRank
  simp [SourceChecks, hseq, case_001230_support,
    checkTranslationConstraintSource, case_001230_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001230_rows :
    EqEqPosVarSecondRows case_001230_support case_001230_rank.val case_001230_mask := by
  intro hlt
  have hrank : (⟨case_001230_rank.val, hlt⟩ : Fin numPairWords) = case_001230_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001230_rank.val, hlt⟩ case_001230_mask =
        case_001230_seq := by
    simpa [hrank] using case_001230_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001230_rank.val, hlt⟩ case_001230_mask =
        case_001230_b := by
    simpa [hrank] using case_001230_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001230_support case_001230_rank.val hlt
          case_001230_mask = case_001230_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001230_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001230_support case_001230_rank.val hlt
          case_001230_mask = case_001230_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001230_secondLine_eq]
  have case_001230_fixedFirst :
      FixedRow (FirstLineAt case_001230_support case_001230_rank.val hlt case_001230_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001230_firstLine, FixedRow]
  have case_001230_rowSecond :
      EqEqPosRow (SecondLineAt case_001230_support case_001230_rank.val hlt case_001230_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001230_secondLine, EqEqPosRow]
  exact ⟨case_001230_fixedFirst, case_001230_rowSecond⟩

private theorem case_001230_existsRows :
    ExistsEqEqPosVarSecondRows case_001230_rank.val case_001230_mask :=
  ⟨case_001230_support, case_001230_sourceAgrees, case_001230_rows⟩

private theorem case_001230_covered :
    RowPropertyParametricCovered case_001230_rank.val case_001230_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001230_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001231_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001231_mask : SignMask := ⟨22, by decide⟩
private def case_001231_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001231_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001231_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001231_b : Vec3 Rat := { x := (-100/9), y := (-100/9), z := (68/9) }
private def case_001231_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_001231_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001231_rankWord :
    rankPairWord? case_001231_word = some case_001231_rank := by
  decide

private theorem case_001231_unrank :
    unrankPairWord case_001231_rank = case_001231_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001231_word case_001231_rank).1
    case_001231_rankWord |>.symm

private theorem case_001231_seqChoice :
    translationChoiceSeq case_001231_word case_001231_mask = case_001231_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001231_seqAtRank :
    translationSeqAtRankMask case_001231_rank case_001231_mask = case_001231_seq := by
  rw [translationSeqAtRankMask, case_001231_unrank]
  exact case_001231_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001231_bAtRank :
    translationBAtRankMask case_001231_rank case_001231_mask = case_001231_b := by
  rw [translationBAtRankMask, case_001231_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001231_b, case_001231_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001231_firstLine_eq :
    case_001231_support.firstLine case_001231_seq case_001231_b = case_001231_firstLine := by
  norm_num [case_001231_firstLine, case_001231_support, case_001231_seq, case_001231_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001231_secondLine_eq :
    case_001231_support.secondLine case_001231_seq case_001231_b = case_001231_secondLine := by
  norm_num [case_001231_secondLine, case_001231_support, case_001231_seq, case_001231_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001231_sourceAgrees :
    SourceAgrees case_001231_support case_001231_rank.val case_001231_mask := by
  intro hlt
  have hrank : (⟨case_001231_rank.val, hlt⟩ : Fin numPairWords) = case_001231_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001231_rank.val, hlt⟩ case_001231_mask =
        case_001231_seq := by
    simpa [hrank] using case_001231_seqAtRank
  simp [SourceChecks, hseq, case_001231_support,
    checkTranslationConstraintSource, case_001231_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001231_rows :
    OppOneMinusVarFirstRows case_001231_support case_001231_rank.val case_001231_mask := by
  intro hlt
  have hrank : (⟨case_001231_rank.val, hlt⟩ : Fin numPairWords) = case_001231_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001231_rank.val, hlt⟩ case_001231_mask =
        case_001231_seq := by
    simpa [hrank] using case_001231_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001231_rank.val, hlt⟩ case_001231_mask =
        case_001231_b := by
    simpa [hrank] using case_001231_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001231_support case_001231_rank.val hlt
          case_001231_mask = case_001231_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001231_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001231_support case_001231_rank.val hlt
          case_001231_mask = case_001231_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001231_secondLine_eq]
  have case_001231_rowFirst :
      OppPosRow (FirstLineAt case_001231_support case_001231_rank.val hlt case_001231_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001231_firstLine, OppPosRow]
  have case_001231_fixedSecond :
      FixedRow (SecondLineAt case_001231_support case_001231_rank.val hlt case_001231_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001231_secondLine, FixedRow]
  exact ⟨case_001231_rowFirst, case_001231_fixedSecond⟩

private theorem case_001231_existsRows :
    ExistsOppOneMinusVarFirstRows case_001231_rank.val case_001231_mask :=
  ⟨case_001231_support, case_001231_sourceAgrees, case_001231_rows⟩

private theorem case_001231_covered :
    RowPropertyParametricCovered case_001231_rank.val case_001231_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001231_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001232_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001232_mask : SignMask := ⟨28, by decide⟩
private def case_001232_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001232_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001232_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001232_b : Vec3 Rat := { x := (-148/9), y := (-52/9), z := (-52/9) }
private def case_001232_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001232_secondLine : StrictLin2 := { a := (-9/74), b := (9/74), c := (-15/37) }

private theorem case_001232_rankWord :
    rankPairWord? case_001232_word = some case_001232_rank := by
  decide

private theorem case_001232_unrank :
    unrankPairWord case_001232_rank = case_001232_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001232_word case_001232_rank).1
    case_001232_rankWord |>.symm

private theorem case_001232_seqChoice :
    translationChoiceSeq case_001232_word case_001232_mask = case_001232_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001232_seqAtRank :
    translationSeqAtRankMask case_001232_rank case_001232_mask = case_001232_seq := by
  rw [translationSeqAtRankMask, case_001232_unrank]
  exact case_001232_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001232_bAtRank :
    translationBAtRankMask case_001232_rank case_001232_mask = case_001232_b := by
  rw [translationBAtRankMask, case_001232_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001232_b, case_001232_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001232_firstLine_eq :
    case_001232_support.firstLine case_001232_seq case_001232_b = case_001232_firstLine := by
  norm_num [case_001232_firstLine, case_001232_support, case_001232_seq, case_001232_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001232_secondLine_eq :
    case_001232_support.secondLine case_001232_seq case_001232_b = case_001232_secondLine := by
  norm_num [case_001232_secondLine, case_001232_support, case_001232_seq, case_001232_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001232_sourceAgrees :
    SourceAgrees case_001232_support case_001232_rank.val case_001232_mask := by
  intro hlt
  have hrank : (⟨case_001232_rank.val, hlt⟩ : Fin numPairWords) = case_001232_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001232_rank.val, hlt⟩ case_001232_mask =
        case_001232_seq := by
    simpa [hrank] using case_001232_seqAtRank
  simp [SourceChecks, hseq, case_001232_support,
    checkTranslationConstraintSource, case_001232_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001232_rows :
    OppOneMinusVarSecondRows case_001232_support case_001232_rank.val case_001232_mask := by
  intro hlt
  have hrank : (⟨case_001232_rank.val, hlt⟩ : Fin numPairWords) = case_001232_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001232_rank.val, hlt⟩ case_001232_mask =
        case_001232_seq := by
    simpa [hrank] using case_001232_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001232_rank.val, hlt⟩ case_001232_mask =
        case_001232_b := by
    simpa [hrank] using case_001232_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001232_support case_001232_rank.val hlt
          case_001232_mask = case_001232_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001232_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001232_support case_001232_rank.val hlt
          case_001232_mask = case_001232_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001232_secondLine_eq]
  have case_001232_fixedFirst :
      FixedRow (FirstLineAt case_001232_support case_001232_rank.val hlt case_001232_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001232_firstLine, FixedRow]
  have case_001232_rowSecond :
      OppPosRow (SecondLineAt case_001232_support case_001232_rank.val hlt case_001232_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001232_secondLine, OppPosRow]
  exact ⟨case_001232_fixedFirst, case_001232_rowSecond⟩

private theorem case_001232_existsRows :
    ExistsOppOneMinusVarSecondRows case_001232_rank.val case_001232_mask :=
  ⟨case_001232_support, case_001232_sourceAgrees, case_001232_rows⟩

private theorem case_001232_covered :
    RowPropertyParametricCovered case_001232_rank.val case_001232_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001232_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001233_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001233_mask : SignMask := ⟨29, by decide⟩
private def case_001233_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001233_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def case_001233_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001233_b : Vec3 Rat := { x := (-148/9), y := (20/9), z := (-52/9) }
private def case_001233_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001233_secondLine : StrictLin2 := { a := (-333/2090), b := (333/2090), c := (-1428/1045) }

private theorem case_001233_rankWord :
    rankPairWord? case_001233_word = some case_001233_rank := by
  decide

private theorem case_001233_unrank :
    unrankPairWord case_001233_rank = case_001233_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001233_word case_001233_rank).1
    case_001233_rankWord |>.symm

private theorem case_001233_seqChoice :
    translationChoiceSeq case_001233_word case_001233_mask = case_001233_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001233_seqAtRank :
    translationSeqAtRankMask case_001233_rank case_001233_mask = case_001233_seq := by
  rw [translationSeqAtRankMask, case_001233_unrank]
  exact case_001233_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001233_bAtRank :
    translationBAtRankMask case_001233_rank case_001233_mask = case_001233_b := by
  rw [translationBAtRankMask, case_001233_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001233_b, case_001233_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001233_firstLine_eq :
    case_001233_support.firstLine case_001233_seq case_001233_b = case_001233_firstLine := by
  norm_num [case_001233_firstLine, case_001233_support, case_001233_seq, case_001233_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001233_secondLine_eq :
    case_001233_support.secondLine case_001233_seq case_001233_b = case_001233_secondLine := by
  norm_num [case_001233_secondLine, case_001233_support, case_001233_seq, case_001233_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001233_sourceAgrees :
    SourceAgrees case_001233_support case_001233_rank.val case_001233_mask := by
  intro hlt
  have hrank : (⟨case_001233_rank.val, hlt⟩ : Fin numPairWords) = case_001233_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001233_rank.val, hlt⟩ case_001233_mask =
        case_001233_seq := by
    simpa [hrank] using case_001233_seqAtRank
  simp [SourceChecks, hseq, case_001233_support,
    checkTranslationConstraintSource, case_001233_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001233_rows :
    OppOneMinusVarSecondRows case_001233_support case_001233_rank.val case_001233_mask := by
  intro hlt
  have hrank : (⟨case_001233_rank.val, hlt⟩ : Fin numPairWords) = case_001233_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001233_rank.val, hlt⟩ case_001233_mask =
        case_001233_seq := by
    simpa [hrank] using case_001233_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001233_rank.val, hlt⟩ case_001233_mask =
        case_001233_b := by
    simpa [hrank] using case_001233_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001233_support case_001233_rank.val hlt
          case_001233_mask = case_001233_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001233_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001233_support case_001233_rank.val hlt
          case_001233_mask = case_001233_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001233_secondLine_eq]
  have case_001233_fixedFirst :
      FixedRow (FirstLineAt case_001233_support case_001233_rank.val hlt case_001233_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001233_firstLine, FixedRow]
  have case_001233_rowSecond :
      OppPosRow (SecondLineAt case_001233_support case_001233_rank.val hlt case_001233_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001233_secondLine, OppPosRow]
  exact ⟨case_001233_fixedFirst, case_001233_rowSecond⟩

private theorem case_001233_existsRows :
    ExistsOppOneMinusVarSecondRows case_001233_rank.val case_001233_mask :=
  ⟨case_001233_support, case_001233_sourceAgrees, case_001233_rows⟩

private theorem case_001233_covered :
    RowPropertyParametricCovered case_001233_rank.val case_001233_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001233_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001234_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001234_mask : SignMask := ⟨30, by decide⟩
private def case_001234_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001234_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001234_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001234_b : Vec3 Rat := { x := (-148/9), y := (-52/9), z := (20/9) }
private def case_001234_firstLine : StrictLin2 := { a := (37/19), b := (-37/19), c := (-149/19) }
private def case_001234_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001234_rankWord :
    rankPairWord? case_001234_word = some case_001234_rank := by
  decide

private theorem case_001234_unrank :
    unrankPairWord case_001234_rank = case_001234_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001234_word case_001234_rank).1
    case_001234_rankWord |>.symm

private theorem case_001234_seqChoice :
    translationChoiceSeq case_001234_word case_001234_mask = case_001234_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001234_seqAtRank :
    translationSeqAtRankMask case_001234_rank case_001234_mask = case_001234_seq := by
  rw [translationSeqAtRankMask, case_001234_unrank]
  exact case_001234_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001234_bAtRank :
    translationBAtRankMask case_001234_rank case_001234_mask = case_001234_b := by
  rw [translationBAtRankMask, case_001234_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001234_b, case_001234_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001234_firstLine_eq :
    case_001234_support.firstLine case_001234_seq case_001234_b = case_001234_firstLine := by
  norm_num [case_001234_firstLine, case_001234_support, case_001234_seq, case_001234_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001234_secondLine_eq :
    case_001234_support.secondLine case_001234_seq case_001234_b = case_001234_secondLine := by
  norm_num [case_001234_secondLine, case_001234_support, case_001234_seq, case_001234_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001234_sourceAgrees :
    SourceAgrees case_001234_support case_001234_rank.val case_001234_mask := by
  intro hlt
  have hrank : (⟨case_001234_rank.val, hlt⟩ : Fin numPairWords) = case_001234_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001234_rank.val, hlt⟩ case_001234_mask =
        case_001234_seq := by
    simpa [hrank] using case_001234_seqAtRank
  simp [SourceChecks, hseq, case_001234_support,
    checkTranslationConstraintSource, case_001234_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001234_rows :
    OppMinusOneVarFirstRows case_001234_support case_001234_rank.val case_001234_mask := by
  intro hlt
  have hrank : (⟨case_001234_rank.val, hlt⟩ : Fin numPairWords) = case_001234_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001234_rank.val, hlt⟩ case_001234_mask =
        case_001234_seq := by
    simpa [hrank] using case_001234_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001234_rank.val, hlt⟩ case_001234_mask =
        case_001234_b := by
    simpa [hrank] using case_001234_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001234_support case_001234_rank.val hlt
          case_001234_mask = case_001234_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001234_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001234_support case_001234_rank.val hlt
          case_001234_mask = case_001234_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001234_secondLine_eq]
  have case_001234_rowFirst :
      OppNegRow (FirstLineAt case_001234_support case_001234_rank.val hlt case_001234_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001234_firstLine, OppNegRow]
  have case_001234_fixedSecond :
      FixedRow (SecondLineAt case_001234_support case_001234_rank.val hlt case_001234_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001234_secondLine, FixedRow]
  exact ⟨case_001234_rowFirst, case_001234_fixedSecond⟩

private theorem case_001234_existsRows :
    ExistsOppMinusOneVarFirstRows case_001234_rank.val case_001234_mask :=
  ⟨case_001234_support, case_001234_sourceAgrees, case_001234_rows⟩

private theorem case_001234_covered :
    RowPropertyParametricCovered case_001234_rank.val case_001234_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001234_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001235_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001235_mask : SignMask := ⟨31, by decide⟩
private def case_001235_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001235_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001235_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001235_b : Vec3 Rat := { x := (-148/9), y := (20/9), z := (20/9) }
private def case_001235_firstLine : StrictLin2 := { a := (-37/27), b := (-37/27), c := (-335/81) }
private def case_001235_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001235_rankWord :
    rankPairWord? case_001235_word = some case_001235_rank := by
  decide

private theorem case_001235_unrank :
    unrankPairWord case_001235_rank = case_001235_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001235_word case_001235_rank).1
    case_001235_rankWord |>.symm

private theorem case_001235_seqChoice :
    translationChoiceSeq case_001235_word case_001235_mask = case_001235_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001235_seqAtRank :
    translationSeqAtRankMask case_001235_rank case_001235_mask = case_001235_seq := by
  rw [translationSeqAtRankMask, case_001235_unrank]
  exact case_001235_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001235_bAtRank :
    translationBAtRankMask case_001235_rank case_001235_mask = case_001235_b := by
  rw [translationBAtRankMask, case_001235_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001235_b, case_001235_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001235_firstLine_eq :
    case_001235_support.firstLine case_001235_seq case_001235_b = case_001235_firstLine := by
  norm_num [case_001235_firstLine, case_001235_support, case_001235_seq, case_001235_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001235_secondLine_eq :
    case_001235_support.secondLine case_001235_seq case_001235_b = case_001235_secondLine := by
  norm_num [case_001235_secondLine, case_001235_support, case_001235_seq, case_001235_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001235_sourceAgrees :
    SourceAgrees case_001235_support case_001235_rank.val case_001235_mask := by
  intro hlt
  have hrank : (⟨case_001235_rank.val, hlt⟩ : Fin numPairWords) = case_001235_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001235_rank.val, hlt⟩ case_001235_mask =
        case_001235_seq := by
    simpa [hrank] using case_001235_seqAtRank
  simp [SourceChecks, hseq, case_001235_support,
    checkTranslationConstraintSource, case_001235_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001235_rows :
    EqEqPosVarFirstRows case_001235_support case_001235_rank.val case_001235_mask := by
  intro hlt
  have hrank : (⟨case_001235_rank.val, hlt⟩ : Fin numPairWords) = case_001235_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001235_rank.val, hlt⟩ case_001235_mask =
        case_001235_seq := by
    simpa [hrank] using case_001235_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001235_rank.val, hlt⟩ case_001235_mask =
        case_001235_b := by
    simpa [hrank] using case_001235_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001235_support case_001235_rank.val hlt
          case_001235_mask = case_001235_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001235_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001235_support case_001235_rank.val hlt
          case_001235_mask = case_001235_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001235_secondLine_eq]
  have case_001235_rowFirst :
      EqEqPosRow (FirstLineAt case_001235_support case_001235_rank.val hlt case_001235_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001235_firstLine, EqEqPosRow]
  have case_001235_fixedSecond :
      FixedRow (SecondLineAt case_001235_support case_001235_rank.val hlt case_001235_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001235_secondLine, FixedRow]
  exact ⟨case_001235_rowFirst, case_001235_fixedSecond⟩

private theorem case_001235_existsRows :
    ExistsEqEqPosVarFirstRows case_001235_rank.val case_001235_mask :=
  ⟨case_001235_support, case_001235_sourceAgrees, case_001235_rows⟩

private theorem case_001235_covered :
    RowPropertyParametricCovered case_001235_rank.val case_001235_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001235_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001236_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001236_mask : SignMask := ⟨45, by decide⟩
private def case_001236_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001236_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001236_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001236_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-52/9) }
private def case_001236_firstLine : StrictLin2 := { a := (-13/29), b := (13/29), c := (-185/87) }
private def case_001236_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001236_rankWord :
    rankPairWord? case_001236_word = some case_001236_rank := by
  decide

private theorem case_001236_unrank :
    unrankPairWord case_001236_rank = case_001236_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001236_word case_001236_rank).1
    case_001236_rankWord |>.symm

private theorem case_001236_seqChoice :
    translationChoiceSeq case_001236_word case_001236_mask = case_001236_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001236_seqAtRank :
    translationSeqAtRankMask case_001236_rank case_001236_mask = case_001236_seq := by
  rw [translationSeqAtRankMask, case_001236_unrank]
  exact case_001236_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001236_bAtRank :
    translationBAtRankMask case_001236_rank case_001236_mask = case_001236_b := by
  rw [translationBAtRankMask, case_001236_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001236_b, case_001236_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001236_firstLine_eq :
    case_001236_support.firstLine case_001236_seq case_001236_b = case_001236_firstLine := by
  norm_num [case_001236_firstLine, case_001236_support, case_001236_seq, case_001236_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001236_secondLine_eq :
    case_001236_support.secondLine case_001236_seq case_001236_b = case_001236_secondLine := by
  norm_num [case_001236_secondLine, case_001236_support, case_001236_seq, case_001236_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001236_sourceAgrees :
    SourceAgrees case_001236_support case_001236_rank.val case_001236_mask := by
  intro hlt
  have hrank : (⟨case_001236_rank.val, hlt⟩ : Fin numPairWords) = case_001236_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001236_rank.val, hlt⟩ case_001236_mask =
        case_001236_seq := by
    simpa [hrank] using case_001236_seqAtRank
  simp [SourceChecks, hseq, case_001236_support,
    checkTranslationConstraintSource, case_001236_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001236_rows :
    OppOneMinusVarFirstRows case_001236_support case_001236_rank.val case_001236_mask := by
  intro hlt
  have hrank : (⟨case_001236_rank.val, hlt⟩ : Fin numPairWords) = case_001236_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001236_rank.val, hlt⟩ case_001236_mask =
        case_001236_seq := by
    simpa [hrank] using case_001236_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001236_rank.val, hlt⟩ case_001236_mask =
        case_001236_b := by
    simpa [hrank] using case_001236_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001236_support case_001236_rank.val hlt
          case_001236_mask = case_001236_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001236_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001236_support case_001236_rank.val hlt
          case_001236_mask = case_001236_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001236_secondLine_eq]
  have case_001236_rowFirst :
      OppPosRow (FirstLineAt case_001236_support case_001236_rank.val hlt case_001236_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001236_firstLine, OppPosRow]
  have case_001236_fixedSecond :
      FixedRow (SecondLineAt case_001236_support case_001236_rank.val hlt case_001236_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001236_secondLine, FixedRow]
  exact ⟨case_001236_rowFirst, case_001236_fixedSecond⟩

private theorem case_001236_existsRows :
    ExistsOppOneMinusVarFirstRows case_001236_rank.val case_001236_mask :=
  ⟨case_001236_support, case_001236_sourceAgrees, case_001236_rows⟩

private theorem case_001236_covered :
    RowPropertyParametricCovered case_001236_rank.val case_001236_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001236_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001237_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001237_mask : SignMask := ⟨47, by decide⟩
private def case_001237_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001237_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001237_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001237_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (20/9) }
private def case_001237_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001237_secondLine : StrictLin2 := { a := (-13/154), b := (-13/154), c := (-2/11) }

private theorem case_001237_rankWord :
    rankPairWord? case_001237_word = some case_001237_rank := by
  decide

private theorem case_001237_unrank :
    unrankPairWord case_001237_rank = case_001237_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001237_word case_001237_rank).1
    case_001237_rankWord |>.symm

private theorem case_001237_seqChoice :
    translationChoiceSeq case_001237_word case_001237_mask = case_001237_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001237_seqAtRank :
    translationSeqAtRankMask case_001237_rank case_001237_mask = case_001237_seq := by
  rw [translationSeqAtRankMask, case_001237_unrank]
  exact case_001237_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001237_bAtRank :
    translationBAtRankMask case_001237_rank case_001237_mask = case_001237_b := by
  rw [translationBAtRankMask, case_001237_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001237_b, case_001237_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001237_firstLine_eq :
    case_001237_support.firstLine case_001237_seq case_001237_b = case_001237_firstLine := by
  norm_num [case_001237_firstLine, case_001237_support, case_001237_seq, case_001237_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001237_secondLine_eq :
    case_001237_support.secondLine case_001237_seq case_001237_b = case_001237_secondLine := by
  norm_num [case_001237_secondLine, case_001237_support, case_001237_seq, case_001237_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001237_sourceAgrees :
    SourceAgrees case_001237_support case_001237_rank.val case_001237_mask := by
  intro hlt
  have hrank : (⟨case_001237_rank.val, hlt⟩ : Fin numPairWords) = case_001237_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001237_rank.val, hlt⟩ case_001237_mask =
        case_001237_seq := by
    simpa [hrank] using case_001237_seqAtRank
  simp [SourceChecks, hseq, case_001237_support,
    checkTranslationConstraintSource, case_001237_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001237_rows :
    EqEqPosVarSecondRows case_001237_support case_001237_rank.val case_001237_mask := by
  intro hlt
  have hrank : (⟨case_001237_rank.val, hlt⟩ : Fin numPairWords) = case_001237_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001237_rank.val, hlt⟩ case_001237_mask =
        case_001237_seq := by
    simpa [hrank] using case_001237_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001237_rank.val, hlt⟩ case_001237_mask =
        case_001237_b := by
    simpa [hrank] using case_001237_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001237_support case_001237_rank.val hlt
          case_001237_mask = case_001237_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001237_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001237_support case_001237_rank.val hlt
          case_001237_mask = case_001237_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001237_secondLine_eq]
  have case_001237_fixedFirst :
      FixedRow (FirstLineAt case_001237_support case_001237_rank.val hlt case_001237_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001237_firstLine, FixedRow]
  have case_001237_rowSecond :
      EqEqPosRow (SecondLineAt case_001237_support case_001237_rank.val hlt case_001237_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001237_secondLine, EqEqPosRow]
  exact ⟨case_001237_fixedFirst, case_001237_rowSecond⟩

private theorem case_001237_existsRows :
    ExistsEqEqPosVarSecondRows case_001237_rank.val case_001237_mask :=
  ⟨case_001237_support, case_001237_sourceAgrees, case_001237_rows⟩

private theorem case_001237_covered :
    RowPropertyParametricCovered case_001237_rank.val case_001237_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001237_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001238_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001238_mask : SignMask := ⟨54, by decide⟩
private def case_001238_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001238_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001238_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001238_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (116/9) }
private def case_001238_firstLine : StrictLin2 := { a := -1, b := 1, c := (-71/13) }
private def case_001238_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001238_rankWord :
    rankPairWord? case_001238_word = some case_001238_rank := by
  decide

private theorem case_001238_unrank :
    unrankPairWord case_001238_rank = case_001238_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001238_word case_001238_rank).1
    case_001238_rankWord |>.symm

private theorem case_001238_seqChoice :
    translationChoiceSeq case_001238_word case_001238_mask = case_001238_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001238_seqAtRank :
    translationSeqAtRankMask case_001238_rank case_001238_mask = case_001238_seq := by
  rw [translationSeqAtRankMask, case_001238_unrank]
  exact case_001238_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001238_bAtRank :
    translationBAtRankMask case_001238_rank case_001238_mask = case_001238_b := by
  rw [translationBAtRankMask, case_001238_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001238_b, case_001238_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001238_firstLine_eq :
    case_001238_support.firstLine case_001238_seq case_001238_b = case_001238_firstLine := by
  norm_num [case_001238_firstLine, case_001238_support, case_001238_seq, case_001238_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001238_secondLine_eq :
    case_001238_support.secondLine case_001238_seq case_001238_b = case_001238_secondLine := by
  norm_num [case_001238_secondLine, case_001238_support, case_001238_seq, case_001238_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001238_sourceAgrees :
    SourceAgrees case_001238_support case_001238_rank.val case_001238_mask := by
  intro hlt
  have hrank : (⟨case_001238_rank.val, hlt⟩ : Fin numPairWords) = case_001238_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001238_rank.val, hlt⟩ case_001238_mask =
        case_001238_seq := by
    simpa [hrank] using case_001238_seqAtRank
  simp [SourceChecks, hseq, case_001238_support,
    checkTranslationConstraintSource, case_001238_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001238_rows :
    OppOneMinusVarFirstRows case_001238_support case_001238_rank.val case_001238_mask := by
  intro hlt
  have hrank : (⟨case_001238_rank.val, hlt⟩ : Fin numPairWords) = case_001238_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001238_rank.val, hlt⟩ case_001238_mask =
        case_001238_seq := by
    simpa [hrank] using case_001238_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001238_rank.val, hlt⟩ case_001238_mask =
        case_001238_b := by
    simpa [hrank] using case_001238_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001238_support case_001238_rank.val hlt
          case_001238_mask = case_001238_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001238_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001238_support case_001238_rank.val hlt
          case_001238_mask = case_001238_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001238_secondLine_eq]
  have case_001238_rowFirst :
      OppPosRow (FirstLineAt case_001238_support case_001238_rank.val hlt case_001238_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001238_firstLine, OppPosRow]
  have case_001238_fixedSecond :
      FixedRow (SecondLineAt case_001238_support case_001238_rank.val hlt case_001238_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001238_secondLine, FixedRow]
  exact ⟨case_001238_rowFirst, case_001238_fixedSecond⟩

private theorem case_001238_existsRows :
    ExistsOppOneMinusVarFirstRows case_001238_rank.val case_001238_mask :=
  ⟨case_001238_support, case_001238_sourceAgrees, case_001238_rows⟩

private theorem case_001238_covered :
    RowPropertyParametricCovered case_001238_rank.val case_001238_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001238_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001239_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001239_mask : SignMask := ⟨55, by decide⟩
private def case_001239_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001239_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001239_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001239_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (116/9) }
private def case_001239_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001239_secondLine : StrictLin2 := { a := (-13/154), b := (-13/154), c := (-2/11) }

private theorem case_001239_rankWord :
    rankPairWord? case_001239_word = some case_001239_rank := by
  decide

private theorem case_001239_unrank :
    unrankPairWord case_001239_rank = case_001239_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001239_word case_001239_rank).1
    case_001239_rankWord |>.symm

private theorem case_001239_seqChoice :
    translationChoiceSeq case_001239_word case_001239_mask = case_001239_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001239_seqAtRank :
    translationSeqAtRankMask case_001239_rank case_001239_mask = case_001239_seq := by
  rw [translationSeqAtRankMask, case_001239_unrank]
  exact case_001239_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001239_bAtRank :
    translationBAtRankMask case_001239_rank case_001239_mask = case_001239_b := by
  rw [translationBAtRankMask, case_001239_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001239_b, case_001239_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001239_firstLine_eq :
    case_001239_support.firstLine case_001239_seq case_001239_b = case_001239_firstLine := by
  norm_num [case_001239_firstLine, case_001239_support, case_001239_seq, case_001239_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001239_secondLine_eq :
    case_001239_support.secondLine case_001239_seq case_001239_b = case_001239_secondLine := by
  norm_num [case_001239_secondLine, case_001239_support, case_001239_seq, case_001239_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001239_sourceAgrees :
    SourceAgrees case_001239_support case_001239_rank.val case_001239_mask := by
  intro hlt
  have hrank : (⟨case_001239_rank.val, hlt⟩ : Fin numPairWords) = case_001239_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001239_rank.val, hlt⟩ case_001239_mask =
        case_001239_seq := by
    simpa [hrank] using case_001239_seqAtRank
  simp [SourceChecks, hseq, case_001239_support,
    checkTranslationConstraintSource, case_001239_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001239_rows :
    EqEqPosVarSecondRows case_001239_support case_001239_rank.val case_001239_mask := by
  intro hlt
  have hrank : (⟨case_001239_rank.val, hlt⟩ : Fin numPairWords) = case_001239_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001239_rank.val, hlt⟩ case_001239_mask =
        case_001239_seq := by
    simpa [hrank] using case_001239_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001239_rank.val, hlt⟩ case_001239_mask =
        case_001239_b := by
    simpa [hrank] using case_001239_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001239_support case_001239_rank.val hlt
          case_001239_mask = case_001239_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001239_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001239_support case_001239_rank.val hlt
          case_001239_mask = case_001239_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001239_secondLine_eq]
  have case_001239_fixedFirst :
      FixedRow (FirstLineAt case_001239_support case_001239_rank.val hlt case_001239_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001239_firstLine, FixedRow]
  have case_001239_rowSecond :
      EqEqPosRow (SecondLineAt case_001239_support case_001239_rank.val hlt case_001239_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001239_secondLine, EqEqPosRow]
  exact ⟨case_001239_fixedFirst, case_001239_rowSecond⟩

private theorem case_001239_existsRows :
    ExistsEqEqPosVarSecondRows case_001239_rank.val case_001239_mask :=
  ⟨case_001239_support, case_001239_sourceAgrees, case_001239_rows⟩

private theorem case_001239_covered :
    RowPropertyParametricCovered case_001239_rank.val case_001239_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001239_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001240_rank : Fin numPairWords := ⟨855, by decide⟩
private def case_001240_mask : SignMask := ⟨63, by decide⟩
private def case_001240_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11], by decide⟩
private def case_001240_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001240_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tpmm
private def case_001240_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (68/9) }
private def case_001240_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001240_secondLine : StrictLin2 := { a := (-9/68), b := (9/68), c := (-9/34) }

private theorem case_001240_rankWord :
    rankPairWord? case_001240_word = some case_001240_rank := by
  decide

private theorem case_001240_unrank :
    unrankPairWord case_001240_rank = case_001240_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001240_word case_001240_rank).1
    case_001240_rankWord |>.symm

private theorem case_001240_seqChoice :
    translationChoiceSeq case_001240_word case_001240_mask = case_001240_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001240_seqAtRank :
    translationSeqAtRankMask case_001240_rank case_001240_mask = case_001240_seq := by
  rw [translationSeqAtRankMask, case_001240_unrank]
  exact case_001240_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001240_bAtRank :
    translationBAtRankMask case_001240_rank case_001240_mask = case_001240_b := by
  rw [translationBAtRankMask, case_001240_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001240_b, case_001240_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001240_firstLine_eq :
    case_001240_support.firstLine case_001240_seq case_001240_b = case_001240_firstLine := by
  norm_num [case_001240_firstLine, case_001240_support, case_001240_seq, case_001240_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001240_secondLine_eq :
    case_001240_support.secondLine case_001240_seq case_001240_b = case_001240_secondLine := by
  norm_num [case_001240_secondLine, case_001240_support, case_001240_seq, case_001240_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001240_sourceAgrees :
    SourceAgrees case_001240_support case_001240_rank.val case_001240_mask := by
  intro hlt
  have hrank : (⟨case_001240_rank.val, hlt⟩ : Fin numPairWords) = case_001240_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001240_rank.val, hlt⟩ case_001240_mask =
        case_001240_seq := by
    simpa [hrank] using case_001240_seqAtRank
  simp [SourceChecks, hseq, case_001240_support,
    checkTranslationConstraintSource, case_001240_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001240_rows :
    OppOneMinusVarSecondRows case_001240_support case_001240_rank.val case_001240_mask := by
  intro hlt
  have hrank : (⟨case_001240_rank.val, hlt⟩ : Fin numPairWords) = case_001240_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001240_rank.val, hlt⟩ case_001240_mask =
        case_001240_seq := by
    simpa [hrank] using case_001240_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001240_rank.val, hlt⟩ case_001240_mask =
        case_001240_b := by
    simpa [hrank] using case_001240_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001240_support case_001240_rank.val hlt
          case_001240_mask = case_001240_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001240_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001240_support case_001240_rank.val hlt
          case_001240_mask = case_001240_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001240_secondLine_eq]
  have case_001240_fixedFirst :
      FixedRow (FirstLineAt case_001240_support case_001240_rank.val hlt case_001240_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001240_firstLine, FixedRow]
  have case_001240_rowSecond :
      OppPosRow (SecondLineAt case_001240_support case_001240_rank.val hlt case_001240_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001240_secondLine, OppPosRow]
  exact ⟨case_001240_fixedFirst, case_001240_rowSecond⟩

private theorem case_001240_existsRows :
    ExistsOppOneMinusVarSecondRows case_001240_rank.val case_001240_mask :=
  ⟨case_001240_support, case_001240_sourceAgrees, case_001240_rows⟩

private theorem case_001240_covered :
    RowPropertyParametricCovered case_001240_rank.val case_001240_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001240_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001241_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001241_mask : SignMask := ⟨8, by decide⟩
private def case_001241_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001241_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001241_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001241_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_001241_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001241_secondLine : StrictLin2 := { a := (-9/374), b := (-9/374), c := (-1/11) }

private theorem case_001241_rankWord :
    rankPairWord? case_001241_word = some case_001241_rank := by
  decide

private theorem case_001241_unrank :
    unrankPairWord case_001241_rank = case_001241_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001241_word case_001241_rank).1
    case_001241_rankWord |>.symm

private theorem case_001241_seqChoice :
    translationChoiceSeq case_001241_word case_001241_mask = case_001241_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001241_seqAtRank :
    translationSeqAtRankMask case_001241_rank case_001241_mask = case_001241_seq := by
  rw [translationSeqAtRankMask, case_001241_unrank]
  exact case_001241_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001241_bAtRank :
    translationBAtRankMask case_001241_rank case_001241_mask = case_001241_b := by
  rw [translationBAtRankMask, case_001241_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001241_b, case_001241_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001241_firstLine_eq :
    case_001241_support.firstLine case_001241_seq case_001241_b = case_001241_firstLine := by
  norm_num [case_001241_firstLine, case_001241_support, case_001241_seq, case_001241_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001241_secondLine_eq :
    case_001241_support.secondLine case_001241_seq case_001241_b = case_001241_secondLine := by
  norm_num [case_001241_secondLine, case_001241_support, case_001241_seq, case_001241_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001241_sourceAgrees :
    SourceAgrees case_001241_support case_001241_rank.val case_001241_mask := by
  intro hlt
  have hrank : (⟨case_001241_rank.val, hlt⟩ : Fin numPairWords) = case_001241_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001241_rank.val, hlt⟩ case_001241_mask =
        case_001241_seq := by
    simpa [hrank] using case_001241_seqAtRank
  simp [SourceChecks, hseq, case_001241_support,
    checkTranslationConstraintSource, case_001241_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001241_rows :
    EqEqPosVarSecondRows case_001241_support case_001241_rank.val case_001241_mask := by
  intro hlt
  have hrank : (⟨case_001241_rank.val, hlt⟩ : Fin numPairWords) = case_001241_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001241_rank.val, hlt⟩ case_001241_mask =
        case_001241_seq := by
    simpa [hrank] using case_001241_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001241_rank.val, hlt⟩ case_001241_mask =
        case_001241_b := by
    simpa [hrank] using case_001241_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001241_support case_001241_rank.val hlt
          case_001241_mask = case_001241_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001241_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001241_support case_001241_rank.val hlt
          case_001241_mask = case_001241_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001241_secondLine_eq]
  have case_001241_fixedFirst :
      FixedRow (FirstLineAt case_001241_support case_001241_rank.val hlt case_001241_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001241_firstLine, FixedRow]
  have case_001241_rowSecond :
      EqEqPosRow (SecondLineAt case_001241_support case_001241_rank.val hlt case_001241_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001241_secondLine, EqEqPosRow]
  exact ⟨case_001241_fixedFirst, case_001241_rowSecond⟩

private theorem case_001241_existsRows :
    ExistsEqEqPosVarSecondRows case_001241_rank.val case_001241_mask :=
  ⟨case_001241_support, case_001241_sourceAgrees, case_001241_rows⟩

private theorem case_001241_covered :
    RowPropertyParametricCovered case_001241_rank.val case_001241_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001241_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001242_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001242_mask : SignMask := ⟨9, by decide⟩
private def case_001242_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001242_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001242_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001242_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_001242_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001242_secondLine : StrictLin2 := { a := (-9/110), b := (-9/110), c := (-4/11) }

private theorem case_001242_rankWord :
    rankPairWord? case_001242_word = some case_001242_rank := by
  decide

private theorem case_001242_unrank :
    unrankPairWord case_001242_rank = case_001242_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001242_word case_001242_rank).1
    case_001242_rankWord |>.symm

private theorem case_001242_seqChoice :
    translationChoiceSeq case_001242_word case_001242_mask = case_001242_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001242_seqAtRank :
    translationSeqAtRankMask case_001242_rank case_001242_mask = case_001242_seq := by
  rw [translationSeqAtRankMask, case_001242_unrank]
  exact case_001242_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001242_bAtRank :
    translationBAtRankMask case_001242_rank case_001242_mask = case_001242_b := by
  rw [translationBAtRankMask, case_001242_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001242_b, case_001242_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001242_firstLine_eq :
    case_001242_support.firstLine case_001242_seq case_001242_b = case_001242_firstLine := by
  norm_num [case_001242_firstLine, case_001242_support, case_001242_seq, case_001242_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001242_secondLine_eq :
    case_001242_support.secondLine case_001242_seq case_001242_b = case_001242_secondLine := by
  norm_num [case_001242_secondLine, case_001242_support, case_001242_seq, case_001242_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001242_sourceAgrees :
    SourceAgrees case_001242_support case_001242_rank.val case_001242_mask := by
  intro hlt
  have hrank : (⟨case_001242_rank.val, hlt⟩ : Fin numPairWords) = case_001242_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001242_rank.val, hlt⟩ case_001242_mask =
        case_001242_seq := by
    simpa [hrank] using case_001242_seqAtRank
  simp [SourceChecks, hseq, case_001242_support,
    checkTranslationConstraintSource, case_001242_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001242_rows :
    EqEqPosVarSecondRows case_001242_support case_001242_rank.val case_001242_mask := by
  intro hlt
  have hrank : (⟨case_001242_rank.val, hlt⟩ : Fin numPairWords) = case_001242_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001242_rank.val, hlt⟩ case_001242_mask =
        case_001242_seq := by
    simpa [hrank] using case_001242_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001242_rank.val, hlt⟩ case_001242_mask =
        case_001242_b := by
    simpa [hrank] using case_001242_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001242_support case_001242_rank.val hlt
          case_001242_mask = case_001242_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001242_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001242_support case_001242_rank.val hlt
          case_001242_mask = case_001242_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001242_secondLine_eq]
  have case_001242_fixedFirst :
      FixedRow (FirstLineAt case_001242_support case_001242_rank.val hlt case_001242_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001242_firstLine, FixedRow]
  have case_001242_rowSecond :
      EqEqPosRow (SecondLineAt case_001242_support case_001242_rank.val hlt case_001242_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001242_secondLine, EqEqPosRow]
  exact ⟨case_001242_fixedFirst, case_001242_rowSecond⟩

private theorem case_001242_existsRows :
    ExistsEqEqPosVarSecondRows case_001242_rank.val case_001242_mask :=
  ⟨case_001242_support, case_001242_sourceAgrees, case_001242_rows⟩

private theorem case_001242_covered :
    RowPropertyParametricCovered case_001242_rank.val case_001242_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001242_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001243_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001243_mask : SignMask := ⟨13, by decide⟩
private def case_001243_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001243_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001243_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001243_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_001243_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001243_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_001243_rankWord :
    rankPairWord? case_001243_word = some case_001243_rank := by
  decide

private theorem case_001243_unrank :
    unrankPairWord case_001243_rank = case_001243_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001243_word case_001243_rank).1
    case_001243_rankWord |>.symm

private theorem case_001243_seqChoice :
    translationChoiceSeq case_001243_word case_001243_mask = case_001243_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001243_seqAtRank :
    translationSeqAtRankMask case_001243_rank case_001243_mask = case_001243_seq := by
  rw [translationSeqAtRankMask, case_001243_unrank]
  exact case_001243_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001243_bAtRank :
    translationBAtRankMask case_001243_rank case_001243_mask = case_001243_b := by
  rw [translationBAtRankMask, case_001243_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001243_b, case_001243_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001243_firstLine_eq :
    case_001243_support.firstLine case_001243_seq case_001243_b = case_001243_firstLine := by
  norm_num [case_001243_firstLine, case_001243_support, case_001243_seq, case_001243_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001243_secondLine_eq :
    case_001243_support.secondLine case_001243_seq case_001243_b = case_001243_secondLine := by
  norm_num [case_001243_secondLine, case_001243_support, case_001243_seq, case_001243_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001243_sourceAgrees :
    SourceAgrees case_001243_support case_001243_rank.val case_001243_mask := by
  intro hlt
  have hrank : (⟨case_001243_rank.val, hlt⟩ : Fin numPairWords) = case_001243_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001243_rank.val, hlt⟩ case_001243_mask =
        case_001243_seq := by
    simpa [hrank] using case_001243_seqAtRank
  simp [SourceChecks, hseq, case_001243_support,
    checkTranslationConstraintSource, case_001243_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001243_rows :
    EqEqPosVarSecondRows case_001243_support case_001243_rank.val case_001243_mask := by
  intro hlt
  have hrank : (⟨case_001243_rank.val, hlt⟩ : Fin numPairWords) = case_001243_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001243_rank.val, hlt⟩ case_001243_mask =
        case_001243_seq := by
    simpa [hrank] using case_001243_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001243_rank.val, hlt⟩ case_001243_mask =
        case_001243_b := by
    simpa [hrank] using case_001243_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001243_support case_001243_rank.val hlt
          case_001243_mask = case_001243_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001243_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001243_support case_001243_rank.val hlt
          case_001243_mask = case_001243_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001243_secondLine_eq]
  have case_001243_fixedFirst :
      FixedRow (FirstLineAt case_001243_support case_001243_rank.val hlt case_001243_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001243_firstLine, FixedRow]
  have case_001243_rowSecond :
      EqEqPosRow (SecondLineAt case_001243_support case_001243_rank.val hlt case_001243_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001243_secondLine, EqEqPosRow]
  exact ⟨case_001243_fixedFirst, case_001243_rowSecond⟩

private theorem case_001243_existsRows :
    ExistsEqEqPosVarSecondRows case_001243_rank.val case_001243_mask :=
  ⟨case_001243_support, case_001243_sourceAgrees, case_001243_rows⟩

private theorem case_001243_covered :
    RowPropertyParametricCovered case_001243_rank.val case_001243_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001243_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001244_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001244_mask : SignMask := ⟨16, by decide⟩
private def case_001244_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001244_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001244_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001244_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_001244_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001244_secondLine : StrictLin2 := { a := (-9/374), b := (-9/374), c := (-1/11) }

private theorem case_001244_rankWord :
    rankPairWord? case_001244_word = some case_001244_rank := by
  decide

private theorem case_001244_unrank :
    unrankPairWord case_001244_rank = case_001244_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001244_word case_001244_rank).1
    case_001244_rankWord |>.symm

private theorem case_001244_seqChoice :
    translationChoiceSeq case_001244_word case_001244_mask = case_001244_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001244_seqAtRank :
    translationSeqAtRankMask case_001244_rank case_001244_mask = case_001244_seq := by
  rw [translationSeqAtRankMask, case_001244_unrank]
  exact case_001244_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001244_bAtRank :
    translationBAtRankMask case_001244_rank case_001244_mask = case_001244_b := by
  rw [translationBAtRankMask, case_001244_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001244_b, case_001244_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001244_firstLine_eq :
    case_001244_support.firstLine case_001244_seq case_001244_b = case_001244_firstLine := by
  norm_num [case_001244_firstLine, case_001244_support, case_001244_seq, case_001244_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001244_secondLine_eq :
    case_001244_support.secondLine case_001244_seq case_001244_b = case_001244_secondLine := by
  norm_num [case_001244_secondLine, case_001244_support, case_001244_seq, case_001244_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001244_sourceAgrees :
    SourceAgrees case_001244_support case_001244_rank.val case_001244_mask := by
  intro hlt
  have hrank : (⟨case_001244_rank.val, hlt⟩ : Fin numPairWords) = case_001244_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001244_rank.val, hlt⟩ case_001244_mask =
        case_001244_seq := by
    simpa [hrank] using case_001244_seqAtRank
  simp [SourceChecks, hseq, case_001244_support,
    checkTranslationConstraintSource, case_001244_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001244_rows :
    EqEqPosVarSecondRows case_001244_support case_001244_rank.val case_001244_mask := by
  intro hlt
  have hrank : (⟨case_001244_rank.val, hlt⟩ : Fin numPairWords) = case_001244_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001244_rank.val, hlt⟩ case_001244_mask =
        case_001244_seq := by
    simpa [hrank] using case_001244_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001244_rank.val, hlt⟩ case_001244_mask =
        case_001244_b := by
    simpa [hrank] using case_001244_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001244_support case_001244_rank.val hlt
          case_001244_mask = case_001244_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001244_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001244_support case_001244_rank.val hlt
          case_001244_mask = case_001244_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001244_secondLine_eq]
  have case_001244_fixedFirst :
      FixedRow (FirstLineAt case_001244_support case_001244_rank.val hlt case_001244_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001244_firstLine, FixedRow]
  have case_001244_rowSecond :
      EqEqPosRow (SecondLineAt case_001244_support case_001244_rank.val hlt case_001244_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001244_secondLine, EqEqPosRow]
  exact ⟨case_001244_fixedFirst, case_001244_rowSecond⟩

private theorem case_001244_existsRows :
    ExistsEqEqPosVarSecondRows case_001244_rank.val case_001244_mask :=
  ⟨case_001244_support, case_001244_sourceAgrees, case_001244_rows⟩

private theorem case_001244_covered :
    RowPropertyParametricCovered case_001244_rank.val case_001244_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001244_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001245_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001245_mask : SignMask := ⟨18, by decide⟩
private def case_001245_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001245_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001245_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001245_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_001245_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001245_secondLine : StrictLin2 := { a := (-9/110), b := (-9/110), c := (-4/11) }

private theorem case_001245_rankWord :
    rankPairWord? case_001245_word = some case_001245_rank := by
  decide

private theorem case_001245_unrank :
    unrankPairWord case_001245_rank = case_001245_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001245_word case_001245_rank).1
    case_001245_rankWord |>.symm

private theorem case_001245_seqChoice :
    translationChoiceSeq case_001245_word case_001245_mask = case_001245_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001245_seqAtRank :
    translationSeqAtRankMask case_001245_rank case_001245_mask = case_001245_seq := by
  rw [translationSeqAtRankMask, case_001245_unrank]
  exact case_001245_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001245_bAtRank :
    translationBAtRankMask case_001245_rank case_001245_mask = case_001245_b := by
  rw [translationBAtRankMask, case_001245_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001245_b, case_001245_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001245_firstLine_eq :
    case_001245_support.firstLine case_001245_seq case_001245_b = case_001245_firstLine := by
  norm_num [case_001245_firstLine, case_001245_support, case_001245_seq, case_001245_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001245_secondLine_eq :
    case_001245_support.secondLine case_001245_seq case_001245_b = case_001245_secondLine := by
  norm_num [case_001245_secondLine, case_001245_support, case_001245_seq, case_001245_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001245_sourceAgrees :
    SourceAgrees case_001245_support case_001245_rank.val case_001245_mask := by
  intro hlt
  have hrank : (⟨case_001245_rank.val, hlt⟩ : Fin numPairWords) = case_001245_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001245_rank.val, hlt⟩ case_001245_mask =
        case_001245_seq := by
    simpa [hrank] using case_001245_seqAtRank
  simp [SourceChecks, hseq, case_001245_support,
    checkTranslationConstraintSource, case_001245_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001245_rows :
    EqEqPosVarSecondRows case_001245_support case_001245_rank.val case_001245_mask := by
  intro hlt
  have hrank : (⟨case_001245_rank.val, hlt⟩ : Fin numPairWords) = case_001245_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001245_rank.val, hlt⟩ case_001245_mask =
        case_001245_seq := by
    simpa [hrank] using case_001245_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001245_rank.val, hlt⟩ case_001245_mask =
        case_001245_b := by
    simpa [hrank] using case_001245_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001245_support case_001245_rank.val hlt
          case_001245_mask = case_001245_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001245_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001245_support case_001245_rank.val hlt
          case_001245_mask = case_001245_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001245_secondLine_eq]
  have case_001245_fixedFirst :
      FixedRow (FirstLineAt case_001245_support case_001245_rank.val hlt case_001245_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001245_firstLine, FixedRow]
  have case_001245_rowSecond :
      EqEqPosRow (SecondLineAt case_001245_support case_001245_rank.val hlt case_001245_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001245_secondLine, EqEqPosRow]
  exact ⟨case_001245_fixedFirst, case_001245_rowSecond⟩

private theorem case_001245_existsRows :
    ExistsEqEqPosVarSecondRows case_001245_rank.val case_001245_mask :=
  ⟨case_001245_support, case_001245_sourceAgrees, case_001245_rows⟩

private theorem case_001245_covered :
    RowPropertyParametricCovered case_001245_rank.val case_001245_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001245_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001246_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001246_mask : SignMask := ⟨22, by decide⟩
private def case_001246_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001246_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001246_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tppp
  | ⟨13, _⟩ => Face.tmmm
private def case_001246_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_001246_firstLine : StrictLin2 := { a := -1, b := 1, c := -3 }
private def case_001246_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001246_rankWord :
    rankPairWord? case_001246_word = some case_001246_rank := by
  decide

private theorem case_001246_unrank :
    unrankPairWord case_001246_rank = case_001246_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001246_word case_001246_rank).1
    case_001246_rankWord |>.symm

private theorem case_001246_seqChoice :
    translationChoiceSeq case_001246_word case_001246_mask = case_001246_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001246_seqAtRank :
    translationSeqAtRankMask case_001246_rank case_001246_mask = case_001246_seq := by
  rw [translationSeqAtRankMask, case_001246_unrank]
  exact case_001246_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001246_bAtRank :
    translationBAtRankMask case_001246_rank case_001246_mask = case_001246_b := by
  rw [translationBAtRankMask, case_001246_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001246_b, case_001246_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001246_firstLine_eq :
    case_001246_support.firstLine case_001246_seq case_001246_b = case_001246_firstLine := by
  norm_num [case_001246_firstLine, case_001246_support, case_001246_seq, case_001246_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001246_secondLine_eq :
    case_001246_support.secondLine case_001246_seq case_001246_b = case_001246_secondLine := by
  norm_num [case_001246_secondLine, case_001246_support, case_001246_seq, case_001246_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001246_sourceAgrees :
    SourceAgrees case_001246_support case_001246_rank.val case_001246_mask := by
  intro hlt
  have hrank : (⟨case_001246_rank.val, hlt⟩ : Fin numPairWords) = case_001246_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001246_rank.val, hlt⟩ case_001246_mask =
        case_001246_seq := by
    simpa [hrank] using case_001246_seqAtRank
  simp [SourceChecks, hseq, case_001246_support,
    checkTranslationConstraintSource, case_001246_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001246_rows :
    OppOneMinusVarFirstRows case_001246_support case_001246_rank.val case_001246_mask := by
  intro hlt
  have hrank : (⟨case_001246_rank.val, hlt⟩ : Fin numPairWords) = case_001246_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001246_rank.val, hlt⟩ case_001246_mask =
        case_001246_seq := by
    simpa [hrank] using case_001246_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001246_rank.val, hlt⟩ case_001246_mask =
        case_001246_b := by
    simpa [hrank] using case_001246_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001246_support case_001246_rank.val hlt
          case_001246_mask = case_001246_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001246_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001246_support case_001246_rank.val hlt
          case_001246_mask = case_001246_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001246_secondLine_eq]
  have case_001246_rowFirst :
      OppPosRow (FirstLineAt case_001246_support case_001246_rank.val hlt case_001246_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001246_firstLine, OppPosRow]
  have case_001246_fixedSecond :
      FixedRow (SecondLineAt case_001246_support case_001246_rank.val hlt case_001246_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001246_secondLine, FixedRow]
  exact ⟨case_001246_rowFirst, case_001246_fixedSecond⟩

private theorem case_001246_existsRows :
    ExistsOppOneMinusVarFirstRows case_001246_rank.val case_001246_mask :=
  ⟨case_001246_support, case_001246_sourceAgrees, case_001246_rows⟩

private theorem case_001246_covered :
    RowPropertyParametricCovered case_001246_rank.val case_001246_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001246_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001247_rank : Fin numPairWords := ⟨857, by decide⟩
private def case_001247_mask : SignMask := ⟨24, by decide⟩
private def case_001247_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d111], by decide⟩
private def case_001247_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_001247_seq : Step14 -> Face
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
  | ⟨12, _⟩ => Face.tmmm
  | ⟨13, _⟩ => Face.tppp
private def case_001247_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_001247_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001247_secondLine : StrictLin2 := { a := (-1/14), b := (-1/14), c := (-1/3) }

private theorem case_001247_rankWord :
    rankPairWord? case_001247_word = some case_001247_rank := by
  decide

private theorem case_001247_unrank :
    unrankPairWord case_001247_rank = case_001247_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001247_word case_001247_rank).1
    case_001247_rankWord |>.symm

private theorem case_001247_seqChoice :
    translationChoiceSeq case_001247_word case_001247_mask = case_001247_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001247_seqAtRank :
    translationSeqAtRankMask case_001247_rank case_001247_mask = case_001247_seq := by
  rw [translationSeqAtRankMask, case_001247_unrank]
  exact case_001247_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001247_bAtRank :
    translationBAtRankMask case_001247_rank case_001247_mask = case_001247_b := by
  rw [translationBAtRankMask, case_001247_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001247_b, case_001247_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001247_firstLine_eq :
    case_001247_support.firstLine case_001247_seq case_001247_b = case_001247_firstLine := by
  norm_num [case_001247_firstLine, case_001247_support, case_001247_seq, case_001247_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001247_secondLine_eq :
    case_001247_support.secondLine case_001247_seq case_001247_b = case_001247_secondLine := by
  norm_num [case_001247_secondLine, case_001247_support, case_001247_seq, case_001247_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001247_sourceAgrees :
    SourceAgrees case_001247_support case_001247_rank.val case_001247_mask := by
  intro hlt
  have hrank : (⟨case_001247_rank.val, hlt⟩ : Fin numPairWords) = case_001247_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001247_rank.val, hlt⟩ case_001247_mask =
        case_001247_seq := by
    simpa [hrank] using case_001247_seqAtRank
  simp [SourceChecks, hseq, case_001247_support,
    checkTranslationConstraintSource, case_001247_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001247_rows :
    EqEqPosVarSecondRows case_001247_support case_001247_rank.val case_001247_mask := by
  intro hlt
  have hrank : (⟨case_001247_rank.val, hlt⟩ : Fin numPairWords) = case_001247_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001247_rank.val, hlt⟩ case_001247_mask =
        case_001247_seq := by
    simpa [hrank] using case_001247_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001247_rank.val, hlt⟩ case_001247_mask =
        case_001247_b := by
    simpa [hrank] using case_001247_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001247_support case_001247_rank.val hlt
          case_001247_mask = case_001247_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001247_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001247_support case_001247_rank.val hlt
          case_001247_mask = case_001247_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001247_secondLine_eq]
  have case_001247_fixedFirst :
      FixedRow (FirstLineAt case_001247_support case_001247_rank.val hlt case_001247_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001247_firstLine, FixedRow]
  have case_001247_rowSecond :
      EqEqPosRow (SecondLineAt case_001247_support case_001247_rank.val hlt case_001247_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001247_secondLine, EqEqPosRow]
  exact ⟨case_001247_fixedFirst, case_001247_rowSecond⟩

private theorem case_001247_existsRows :
    ExistsEqEqPosVarSecondRows case_001247_rank.val case_001247_mask :=
  ⟨case_001247_support, case_001247_sourceAgrees, case_001247_rows⟩

private theorem case_001247_covered :
    RowPropertyParametricCovered case_001247_rank.val case_001247_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001247_existsRows

inductive Group038Covered : Nat -> SignMask -> Prop
  | case_001216 : Group038Covered case_001216_rank.val case_001216_mask
  | case_001217 : Group038Covered case_001217_rank.val case_001217_mask
  | case_001218 : Group038Covered case_001218_rank.val case_001218_mask
  | case_001219 : Group038Covered case_001219_rank.val case_001219_mask
  | case_001220 : Group038Covered case_001220_rank.val case_001220_mask
  | case_001221 : Group038Covered case_001221_rank.val case_001221_mask
  | case_001222 : Group038Covered case_001222_rank.val case_001222_mask
  | case_001223 : Group038Covered case_001223_rank.val case_001223_mask
  | case_001224 : Group038Covered case_001224_rank.val case_001224_mask
  | case_001225 : Group038Covered case_001225_rank.val case_001225_mask
  | case_001226 : Group038Covered case_001226_rank.val case_001226_mask
  | case_001227 : Group038Covered case_001227_rank.val case_001227_mask
  | case_001228 : Group038Covered case_001228_rank.val case_001228_mask
  | case_001229 : Group038Covered case_001229_rank.val case_001229_mask
  | case_001230 : Group038Covered case_001230_rank.val case_001230_mask
  | case_001231 : Group038Covered case_001231_rank.val case_001231_mask
  | case_001232 : Group038Covered case_001232_rank.val case_001232_mask
  | case_001233 : Group038Covered case_001233_rank.val case_001233_mask
  | case_001234 : Group038Covered case_001234_rank.val case_001234_mask
  | case_001235 : Group038Covered case_001235_rank.val case_001235_mask
  | case_001236 : Group038Covered case_001236_rank.val case_001236_mask
  | case_001237 : Group038Covered case_001237_rank.val case_001237_mask
  | case_001238 : Group038Covered case_001238_rank.val case_001238_mask
  | case_001239 : Group038Covered case_001239_rank.val case_001239_mask
  | case_001240 : Group038Covered case_001240_rank.val case_001240_mask
  | case_001241 : Group038Covered case_001241_rank.val case_001241_mask
  | case_001242 : Group038Covered case_001242_rank.val case_001242_mask
  | case_001243 : Group038Covered case_001243_rank.val case_001243_mask
  | case_001244 : Group038Covered case_001244_rank.val case_001244_mask
  | case_001245 : Group038Covered case_001245_rank.val case_001245_mask
  | case_001246 : Group038Covered case_001246_rank.val case_001246_mask
  | case_001247 : Group038Covered case_001247_rank.val case_001247_mask

theorem Group038GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group038Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001216 =>
      exact RowPropertyParametricCovered.kills case_001216_covered
  | case_001217 =>
      exact RowPropertyParametricCovered.kills case_001217_covered
  | case_001218 =>
      exact RowPropertyParametricCovered.kills case_001218_covered
  | case_001219 =>
      exact RowPropertyParametricCovered.kills case_001219_covered
  | case_001220 =>
      exact RowPropertyParametricCovered.kills case_001220_covered
  | case_001221 =>
      exact RowPropertyParametricCovered.kills case_001221_covered
  | case_001222 =>
      exact RowPropertyParametricCovered.kills case_001222_covered
  | case_001223 =>
      exact RowPropertyParametricCovered.kills case_001223_covered
  | case_001224 =>
      exact RowPropertyParametricCovered.kills case_001224_covered
  | case_001225 =>
      exact RowPropertyParametricCovered.kills case_001225_covered
  | case_001226 =>
      exact RowPropertyParametricCovered.kills case_001226_covered
  | case_001227 =>
      exact RowPropertyParametricCovered.kills case_001227_covered
  | case_001228 =>
      exact RowPropertyParametricCovered.kills case_001228_covered
  | case_001229 =>
      exact RowPropertyParametricCovered.kills case_001229_covered
  | case_001230 =>
      exact RowPropertyParametricCovered.kills case_001230_covered
  | case_001231 =>
      exact RowPropertyParametricCovered.kills case_001231_covered
  | case_001232 =>
      exact RowPropertyParametricCovered.kills case_001232_covered
  | case_001233 =>
      exact RowPropertyParametricCovered.kills case_001233_covered
  | case_001234 =>
      exact RowPropertyParametricCovered.kills case_001234_covered
  | case_001235 =>
      exact RowPropertyParametricCovered.kills case_001235_covered
  | case_001236 =>
      exact RowPropertyParametricCovered.kills case_001236_covered
  | case_001237 =>
      exact RowPropertyParametricCovered.kills case_001237_covered
  | case_001238 =>
      exact RowPropertyParametricCovered.kills case_001238_covered
  | case_001239 =>
      exact RowPropertyParametricCovered.kills case_001239_covered
  | case_001240 =>
      exact RowPropertyParametricCovered.kills case_001240_covered
  | case_001241 =>
      exact RowPropertyParametricCovered.kills case_001241_covered
  | case_001242 =>
      exact RowPropertyParametricCovered.kills case_001242_covered
  | case_001243 =>
      exact RowPropertyParametricCovered.kills case_001243_covered
  | case_001244 =>
      exact RowPropertyParametricCovered.kills case_001244_covered
  | case_001245 =>
      exact RowPropertyParametricCovered.kills case_001245_covered
  | case_001246 =>
      exact RowPropertyParametricCovered.kills case_001246_covered
  | case_001247 =>
      exact RowPropertyParametricCovered.kills case_001247_covered

theorem Group038_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group038
