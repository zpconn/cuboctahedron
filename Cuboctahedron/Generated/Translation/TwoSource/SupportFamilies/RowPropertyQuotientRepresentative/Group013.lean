import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group013

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
private def case_000416_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000416_mask : SignMask := ⟨15, by decide⟩
private def case_000416_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000416_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000416_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000416_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (4/9) }
private def case_000416_firstLine : StrictLin2 := { a := (-25/51), b := (-25/51), c := (-121/51) }
private def case_000416_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000416_rankWord :
    rankPairWord? case_000416_word = some case_000416_rank := by
  decide

private theorem case_000416_unrank :
    unrankPairWord case_000416_rank = case_000416_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000416_word case_000416_rank).1
    case_000416_rankWord |>.symm

private theorem case_000416_seqChoice :
    translationChoiceSeq case_000416_word case_000416_mask = case_000416_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000416_seqAtRank :
    translationSeqAtRankMask case_000416_rank case_000416_mask = case_000416_seq := by
  rw [translationSeqAtRankMask, case_000416_unrank]
  exact case_000416_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000416_bAtRank :
    translationBAtRankMask case_000416_rank case_000416_mask = case_000416_b := by
  rw [translationBAtRankMask, case_000416_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000416_b, case_000416_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000416_firstLine_eq :
    case_000416_support.firstLine case_000416_seq case_000416_b = case_000416_firstLine := by
  norm_num [case_000416_firstLine, case_000416_support, case_000416_seq, case_000416_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000416_secondLine_eq :
    case_000416_support.secondLine case_000416_seq case_000416_b = case_000416_secondLine := by
  norm_num [case_000416_secondLine, case_000416_support, case_000416_seq, case_000416_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000416_sourceAgrees :
    SourceAgrees case_000416_support case_000416_rank.val case_000416_mask := by
  intro hlt
  have hrank : (⟨case_000416_rank.val, hlt⟩ : Fin numPairWords) = case_000416_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000416_rank.val, hlt⟩ case_000416_mask =
        case_000416_seq := by
    simpa [hrank] using case_000416_seqAtRank
  simp [SourceChecks, hseq, case_000416_support,
    checkTranslationConstraintSource, case_000416_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000416_rows :
    EqEqPosVarFirstRows case_000416_support case_000416_rank.val case_000416_mask := by
  intro hlt
  have hrank : (⟨case_000416_rank.val, hlt⟩ : Fin numPairWords) = case_000416_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000416_rank.val, hlt⟩ case_000416_mask =
        case_000416_seq := by
    simpa [hrank] using case_000416_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000416_rank.val, hlt⟩ case_000416_mask =
        case_000416_b := by
    simpa [hrank] using case_000416_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000416_support case_000416_rank.val hlt
          case_000416_mask = case_000416_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000416_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000416_support case_000416_rank.val hlt
          case_000416_mask = case_000416_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000416_secondLine_eq]
  have case_000416_rowFirst :
      EqEqPosRow (FirstLineAt case_000416_support case_000416_rank.val hlt case_000416_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000416_firstLine, EqEqPosRow]
  have case_000416_fixedSecond :
      FixedRow (SecondLineAt case_000416_support case_000416_rank.val hlt case_000416_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000416_secondLine, FixedRow]
  exact ⟨case_000416_rowFirst, case_000416_fixedSecond⟩

private theorem case_000416_existsRows :
    ExistsEqEqPosVarFirstRows case_000416_rank.val case_000416_mask :=
  ⟨case_000416_support, case_000416_sourceAgrees, case_000416_rows⟩

private theorem case_000416_covered :
    RowPropertyParametricCovered case_000416_rank.val case_000416_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000416_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000417_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000417_mask : SignMask := ⟨18, by decide⟩
private def case_000417_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000417_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000417_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000417_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_000417_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_000417_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000417_rankWord :
    rankPairWord? case_000417_word = some case_000417_rank := by
  decide

private theorem case_000417_unrank :
    unrankPairWord case_000417_rank = case_000417_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000417_word case_000417_rank).1
    case_000417_rankWord |>.symm

private theorem case_000417_seqChoice :
    translationChoiceSeq case_000417_word case_000417_mask = case_000417_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000417_seqAtRank :
    translationSeqAtRankMask case_000417_rank case_000417_mask = case_000417_seq := by
  rw [translationSeqAtRankMask, case_000417_unrank]
  exact case_000417_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000417_bAtRank :
    translationBAtRankMask case_000417_rank case_000417_mask = case_000417_b := by
  rw [translationBAtRankMask, case_000417_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000417_b, case_000417_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000417_firstLine_eq :
    case_000417_support.firstLine case_000417_seq case_000417_b = case_000417_firstLine := by
  norm_num [case_000417_firstLine, case_000417_support, case_000417_seq, case_000417_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000417_secondLine_eq :
    case_000417_support.secondLine case_000417_seq case_000417_b = case_000417_secondLine := by
  norm_num [case_000417_secondLine, case_000417_support, case_000417_seq, case_000417_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000417_sourceAgrees :
    SourceAgrees case_000417_support case_000417_rank.val case_000417_mask := by
  intro hlt
  have hrank : (⟨case_000417_rank.val, hlt⟩ : Fin numPairWords) = case_000417_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000417_rank.val, hlt⟩ case_000417_mask =
        case_000417_seq := by
    simpa [hrank] using case_000417_seqAtRank
  simp [SourceChecks, hseq, case_000417_support,
    checkTranslationConstraintSource, case_000417_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000417_rows :
    EqEqPosVarFirstRows case_000417_support case_000417_rank.val case_000417_mask := by
  intro hlt
  have hrank : (⟨case_000417_rank.val, hlt⟩ : Fin numPairWords) = case_000417_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000417_rank.val, hlt⟩ case_000417_mask =
        case_000417_seq := by
    simpa [hrank] using case_000417_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000417_rank.val, hlt⟩ case_000417_mask =
        case_000417_b := by
    simpa [hrank] using case_000417_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000417_support case_000417_rank.val hlt
          case_000417_mask = case_000417_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000417_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000417_support case_000417_rank.val hlt
          case_000417_mask = case_000417_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000417_secondLine_eq]
  have case_000417_rowFirst :
      EqEqPosRow (FirstLineAt case_000417_support case_000417_rank.val hlt case_000417_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000417_firstLine, EqEqPosRow]
  have case_000417_fixedSecond :
      FixedRow (SecondLineAt case_000417_support case_000417_rank.val hlt case_000417_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000417_secondLine, FixedRow]
  exact ⟨case_000417_rowFirst, case_000417_fixedSecond⟩

private theorem case_000417_existsRows :
    ExistsEqEqPosVarFirstRows case_000417_rank.val case_000417_mask :=
  ⟨case_000417_support, case_000417_sourceAgrees, case_000417_rows⟩

private theorem case_000417_covered :
    RowPropertyParametricCovered case_000417_rank.val case_000417_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000417_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000418_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000418_mask : SignMask := ⟨22, by decide⟩
private def case_000418_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000418_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000418_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000418_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_000418_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_000418_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000418_rankWord :
    rankPairWord? case_000418_word = some case_000418_rank := by
  decide

private theorem case_000418_unrank :
    unrankPairWord case_000418_rank = case_000418_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000418_word case_000418_rank).1
    case_000418_rankWord |>.symm

private theorem case_000418_seqChoice :
    translationChoiceSeq case_000418_word case_000418_mask = case_000418_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000418_seqAtRank :
    translationSeqAtRankMask case_000418_rank case_000418_mask = case_000418_seq := by
  rw [translationSeqAtRankMask, case_000418_unrank]
  exact case_000418_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000418_bAtRank :
    translationBAtRankMask case_000418_rank case_000418_mask = case_000418_b := by
  rw [translationBAtRankMask, case_000418_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000418_b, case_000418_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000418_firstLine_eq :
    case_000418_support.firstLine case_000418_seq case_000418_b = case_000418_firstLine := by
  norm_num [case_000418_firstLine, case_000418_support, case_000418_seq, case_000418_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000418_secondLine_eq :
    case_000418_support.secondLine case_000418_seq case_000418_b = case_000418_secondLine := by
  norm_num [case_000418_secondLine, case_000418_support, case_000418_seq, case_000418_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000418_sourceAgrees :
    SourceAgrees case_000418_support case_000418_rank.val case_000418_mask := by
  intro hlt
  have hrank : (⟨case_000418_rank.val, hlt⟩ : Fin numPairWords) = case_000418_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000418_rank.val, hlt⟩ case_000418_mask =
        case_000418_seq := by
    simpa [hrank] using case_000418_seqAtRank
  simp [SourceChecks, hseq, case_000418_support,
    checkTranslationConstraintSource, case_000418_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000418_rows :
    OppOneMinusVarFirstRows case_000418_support case_000418_rank.val case_000418_mask := by
  intro hlt
  have hrank : (⟨case_000418_rank.val, hlt⟩ : Fin numPairWords) = case_000418_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000418_rank.val, hlt⟩ case_000418_mask =
        case_000418_seq := by
    simpa [hrank] using case_000418_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000418_rank.val, hlt⟩ case_000418_mask =
        case_000418_b := by
    simpa [hrank] using case_000418_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000418_support case_000418_rank.val hlt
          case_000418_mask = case_000418_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000418_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000418_support case_000418_rank.val hlt
          case_000418_mask = case_000418_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000418_secondLine_eq]
  have case_000418_rowFirst :
      OppPosRow (FirstLineAt case_000418_support case_000418_rank.val hlt case_000418_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000418_firstLine, OppPosRow]
  have case_000418_fixedSecond :
      FixedRow (SecondLineAt case_000418_support case_000418_rank.val hlt case_000418_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000418_secondLine, FixedRow]
  exact ⟨case_000418_rowFirst, case_000418_fixedSecond⟩

private theorem case_000418_existsRows :
    ExistsOppOneMinusVarFirstRows case_000418_rank.val case_000418_mask :=
  ⟨case_000418_support, case_000418_sourceAgrees, case_000418_rows⟩

private theorem case_000418_covered :
    RowPropertyParametricCovered case_000418_rank.val case_000418_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000418_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000419_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000419_mask : SignMask := ⟨23, by decide⟩
private def case_000419_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000419_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000419_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000419_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (100/9) }
private def case_000419_firstLine : StrictLin2 := { a := (-25/51), b := (-25/51), c := (-121/51) }
private def case_000419_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000419_rankWord :
    rankPairWord? case_000419_word = some case_000419_rank := by
  decide

private theorem case_000419_unrank :
    unrankPairWord case_000419_rank = case_000419_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000419_word case_000419_rank).1
    case_000419_rankWord |>.symm

private theorem case_000419_seqChoice :
    translationChoiceSeq case_000419_word case_000419_mask = case_000419_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000419_seqAtRank :
    translationSeqAtRankMask case_000419_rank case_000419_mask = case_000419_seq := by
  rw [translationSeqAtRankMask, case_000419_unrank]
  exact case_000419_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000419_bAtRank :
    translationBAtRankMask case_000419_rank case_000419_mask = case_000419_b := by
  rw [translationBAtRankMask, case_000419_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000419_b, case_000419_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000419_firstLine_eq :
    case_000419_support.firstLine case_000419_seq case_000419_b = case_000419_firstLine := by
  norm_num [case_000419_firstLine, case_000419_support, case_000419_seq, case_000419_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000419_secondLine_eq :
    case_000419_support.secondLine case_000419_seq case_000419_b = case_000419_secondLine := by
  norm_num [case_000419_secondLine, case_000419_support, case_000419_seq, case_000419_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000419_sourceAgrees :
    SourceAgrees case_000419_support case_000419_rank.val case_000419_mask := by
  intro hlt
  have hrank : (⟨case_000419_rank.val, hlt⟩ : Fin numPairWords) = case_000419_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000419_rank.val, hlt⟩ case_000419_mask =
        case_000419_seq := by
    simpa [hrank] using case_000419_seqAtRank
  simp [SourceChecks, hseq, case_000419_support,
    checkTranslationConstraintSource, case_000419_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000419_rows :
    EqEqPosVarFirstRows case_000419_support case_000419_rank.val case_000419_mask := by
  intro hlt
  have hrank : (⟨case_000419_rank.val, hlt⟩ : Fin numPairWords) = case_000419_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000419_rank.val, hlt⟩ case_000419_mask =
        case_000419_seq := by
    simpa [hrank] using case_000419_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000419_rank.val, hlt⟩ case_000419_mask =
        case_000419_b := by
    simpa [hrank] using case_000419_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000419_support case_000419_rank.val hlt
          case_000419_mask = case_000419_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000419_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000419_support case_000419_rank.val hlt
          case_000419_mask = case_000419_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000419_secondLine_eq]
  have case_000419_rowFirst :
      EqEqPosRow (FirstLineAt case_000419_support case_000419_rank.val hlt case_000419_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000419_firstLine, EqEqPosRow]
  have case_000419_fixedSecond :
      FixedRow (SecondLineAt case_000419_support case_000419_rank.val hlt case_000419_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000419_secondLine, FixedRow]
  exact ⟨case_000419_rowFirst, case_000419_fixedSecond⟩

private theorem case_000419_existsRows :
    ExistsEqEqPosVarFirstRows case_000419_rank.val case_000419_mask :=
  ⟨case_000419_support, case_000419_sourceAgrees, case_000419_rows⟩

private theorem case_000419_covered :
    RowPropertyParametricCovered case_000419_rank.val case_000419_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000419_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000420_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000420_mask : SignMask := ⟨24, by decide⟩
private def case_000420_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000420_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000420_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000420_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000420_firstLine : StrictLin2 := { a := -1, b := -1, c := (-83/17) }
private def case_000420_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000420_rankWord :
    rankPairWord? case_000420_word = some case_000420_rank := by
  decide

private theorem case_000420_unrank :
    unrankPairWord case_000420_rank = case_000420_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000420_word case_000420_rank).1
    case_000420_rankWord |>.symm

private theorem case_000420_seqChoice :
    translationChoiceSeq case_000420_word case_000420_mask = case_000420_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000420_seqAtRank :
    translationSeqAtRankMask case_000420_rank case_000420_mask = case_000420_seq := by
  rw [translationSeqAtRankMask, case_000420_unrank]
  exact case_000420_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000420_bAtRank :
    translationBAtRankMask case_000420_rank case_000420_mask = case_000420_b := by
  rw [translationBAtRankMask, case_000420_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000420_b, case_000420_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000420_firstLine_eq :
    case_000420_support.firstLine case_000420_seq case_000420_b = case_000420_firstLine := by
  norm_num [case_000420_firstLine, case_000420_support, case_000420_seq, case_000420_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000420_secondLine_eq :
    case_000420_support.secondLine case_000420_seq case_000420_b = case_000420_secondLine := by
  norm_num [case_000420_secondLine, case_000420_support, case_000420_seq, case_000420_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000420_sourceAgrees :
    SourceAgrees case_000420_support case_000420_rank.val case_000420_mask := by
  intro hlt
  have hrank : (⟨case_000420_rank.val, hlt⟩ : Fin numPairWords) = case_000420_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000420_rank.val, hlt⟩ case_000420_mask =
        case_000420_seq := by
    simpa [hrank] using case_000420_seqAtRank
  simp [SourceChecks, hseq, case_000420_support,
    checkTranslationConstraintSource, case_000420_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000420_rows :
    EqEqPosVarFirstRows case_000420_support case_000420_rank.val case_000420_mask := by
  intro hlt
  have hrank : (⟨case_000420_rank.val, hlt⟩ : Fin numPairWords) = case_000420_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000420_rank.val, hlt⟩ case_000420_mask =
        case_000420_seq := by
    simpa [hrank] using case_000420_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000420_rank.val, hlt⟩ case_000420_mask =
        case_000420_b := by
    simpa [hrank] using case_000420_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000420_support case_000420_rank.val hlt
          case_000420_mask = case_000420_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000420_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000420_support case_000420_rank.val hlt
          case_000420_mask = case_000420_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000420_secondLine_eq]
  have case_000420_rowFirst :
      EqEqPosRow (FirstLineAt case_000420_support case_000420_rank.val hlt case_000420_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000420_firstLine, EqEqPosRow]
  have case_000420_fixedSecond :
      FixedRow (SecondLineAt case_000420_support case_000420_rank.val hlt case_000420_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000420_secondLine, FixedRow]
  exact ⟨case_000420_rowFirst, case_000420_fixedSecond⟩

private theorem case_000420_existsRows :
    ExistsEqEqPosVarFirstRows case_000420_rank.val case_000420_mask :=
  ⟨case_000420_support, case_000420_sourceAgrees, case_000420_rows⟩

private theorem case_000420_covered :
    RowPropertyParametricCovered case_000420_rank.val case_000420_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000420_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_000421_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000421_mask : SignMask := ⟨28, by decide⟩
private def case_000421_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000421_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000421_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000421_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000421_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000421_secondLine : StrictLin2 := { a := (-1/6), b := (1/6), c := (-5/9) }

private theorem case_000421_rankWord :
    rankPairWord? case_000421_word = some case_000421_rank := by
  decide

private theorem case_000421_unrank :
    unrankPairWord case_000421_rank = case_000421_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000421_word case_000421_rank).1
    case_000421_rankWord |>.symm

private theorem case_000421_seqChoice :
    translationChoiceSeq case_000421_word case_000421_mask = case_000421_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000421_seqAtRank :
    translationSeqAtRankMask case_000421_rank case_000421_mask = case_000421_seq := by
  rw [translationSeqAtRankMask, case_000421_unrank]
  exact case_000421_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000421_bAtRank :
    translationBAtRankMask case_000421_rank case_000421_mask = case_000421_b := by
  rw [translationBAtRankMask, case_000421_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000421_b, case_000421_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000421_firstLine_eq :
    case_000421_support.firstLine case_000421_seq case_000421_b = case_000421_firstLine := by
  norm_num [case_000421_firstLine, case_000421_support, case_000421_seq, case_000421_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000421_secondLine_eq :
    case_000421_support.secondLine case_000421_seq case_000421_b = case_000421_secondLine := by
  norm_num [case_000421_secondLine, case_000421_support, case_000421_seq, case_000421_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000421_sourceAgrees :
    SourceAgrees case_000421_support case_000421_rank.val case_000421_mask := by
  intro hlt
  have hrank : (⟨case_000421_rank.val, hlt⟩ : Fin numPairWords) = case_000421_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000421_rank.val, hlt⟩ case_000421_mask =
        case_000421_seq := by
    simpa [hrank] using case_000421_seqAtRank
  simp [SourceChecks, hseq, case_000421_support,
    checkTranslationConstraintSource, case_000421_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000421_rows :
    OppOneMinusVarSecondRows case_000421_support case_000421_rank.val case_000421_mask := by
  intro hlt
  have hrank : (⟨case_000421_rank.val, hlt⟩ : Fin numPairWords) = case_000421_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000421_rank.val, hlt⟩ case_000421_mask =
        case_000421_seq := by
    simpa [hrank] using case_000421_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000421_rank.val, hlt⟩ case_000421_mask =
        case_000421_b := by
    simpa [hrank] using case_000421_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000421_support case_000421_rank.val hlt
          case_000421_mask = case_000421_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000421_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000421_support case_000421_rank.val hlt
          case_000421_mask = case_000421_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000421_secondLine_eq]
  have case_000421_fixedFirst :
      FixedRow (FirstLineAt case_000421_support case_000421_rank.val hlt case_000421_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000421_firstLine, FixedRow]
  have case_000421_rowSecond :
      OppPosRow (SecondLineAt case_000421_support case_000421_rank.val hlt case_000421_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000421_secondLine, OppPosRow]
  exact ⟨case_000421_fixedFirst, case_000421_rowSecond⟩

private theorem case_000421_existsRows :
    ExistsOppOneMinusVarSecondRows case_000421_rank.val case_000421_mask :=
  ⟨case_000421_support, case_000421_sourceAgrees, case_000421_rows⟩

private theorem case_000421_covered :
    RowPropertyParametricCovered case_000421_rank.val case_000421_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_000421_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000422_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000422_mask : SignMask := ⟨31, by decide⟩
private def case_000422_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000422_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000422_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000422_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000422_firstLine : StrictLin2 := { a := (-29/39), b := (-29/39), c := (-17/3) }
private def case_000422_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000422_rankWord :
    rankPairWord? case_000422_word = some case_000422_rank := by
  decide

private theorem case_000422_unrank :
    unrankPairWord case_000422_rank = case_000422_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000422_word case_000422_rank).1
    case_000422_rankWord |>.symm

private theorem case_000422_seqChoice :
    translationChoiceSeq case_000422_word case_000422_mask = case_000422_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000422_seqAtRank :
    translationSeqAtRankMask case_000422_rank case_000422_mask = case_000422_seq := by
  rw [translationSeqAtRankMask, case_000422_unrank]
  exact case_000422_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000422_bAtRank :
    translationBAtRankMask case_000422_rank case_000422_mask = case_000422_b := by
  rw [translationBAtRankMask, case_000422_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000422_b, case_000422_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000422_firstLine_eq :
    case_000422_support.firstLine case_000422_seq case_000422_b = case_000422_firstLine := by
  norm_num [case_000422_firstLine, case_000422_support, case_000422_seq, case_000422_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000422_secondLine_eq :
    case_000422_support.secondLine case_000422_seq case_000422_b = case_000422_secondLine := by
  norm_num [case_000422_secondLine, case_000422_support, case_000422_seq, case_000422_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000422_sourceAgrees :
    SourceAgrees case_000422_support case_000422_rank.val case_000422_mask := by
  intro hlt
  have hrank : (⟨case_000422_rank.val, hlt⟩ : Fin numPairWords) = case_000422_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000422_rank.val, hlt⟩ case_000422_mask =
        case_000422_seq := by
    simpa [hrank] using case_000422_seqAtRank
  simp [SourceChecks, hseq, case_000422_support,
    checkTranslationConstraintSource, case_000422_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000422_rows :
    EqEqPosVarFirstRows case_000422_support case_000422_rank.val case_000422_mask := by
  intro hlt
  have hrank : (⟨case_000422_rank.val, hlt⟩ : Fin numPairWords) = case_000422_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000422_rank.val, hlt⟩ case_000422_mask =
        case_000422_seq := by
    simpa [hrank] using case_000422_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000422_rank.val, hlt⟩ case_000422_mask =
        case_000422_b := by
    simpa [hrank] using case_000422_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000422_support case_000422_rank.val hlt
          case_000422_mask = case_000422_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000422_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000422_support case_000422_rank.val hlt
          case_000422_mask = case_000422_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000422_secondLine_eq]
  have case_000422_rowFirst :
      EqEqPosRow (FirstLineAt case_000422_support case_000422_rank.val hlt case_000422_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000422_firstLine, EqEqPosRow]
  have case_000422_fixedSecond :
      FixedRow (SecondLineAt case_000422_support case_000422_rank.val hlt case_000422_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000422_secondLine, FixedRow]
  exact ⟨case_000422_rowFirst, case_000422_fixedSecond⟩

private theorem case_000422_existsRows :
    ExistsEqEqPosVarFirstRows case_000422_rank.val case_000422_mask :=
  ⟨case_000422_support, case_000422_sourceAgrees, case_000422_rows⟩

private theorem case_000422_covered :
    RowPropertyParametricCovered case_000422_rank.val case_000422_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000422_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000423_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000423_mask : SignMask := ⟨39, by decide⟩
private def case_000423_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000423_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000423_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000423_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (100/9) }
private def case_000423_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000423_secondLine : StrictLin2 := { a := (-1/170), b := (-1/170), c := (-24/85) }

private theorem case_000423_rankWord :
    rankPairWord? case_000423_word = some case_000423_rank := by
  decide

private theorem case_000423_unrank :
    unrankPairWord case_000423_rank = case_000423_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000423_word case_000423_rank).1
    case_000423_rankWord |>.symm

private theorem case_000423_seqChoice :
    translationChoiceSeq case_000423_word case_000423_mask = case_000423_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000423_seqAtRank :
    translationSeqAtRankMask case_000423_rank case_000423_mask = case_000423_seq := by
  rw [translationSeqAtRankMask, case_000423_unrank]
  exact case_000423_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000423_bAtRank :
    translationBAtRankMask case_000423_rank case_000423_mask = case_000423_b := by
  rw [translationBAtRankMask, case_000423_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000423_b, case_000423_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000423_firstLine_eq :
    case_000423_support.firstLine case_000423_seq case_000423_b = case_000423_firstLine := by
  norm_num [case_000423_firstLine, case_000423_support, case_000423_seq, case_000423_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000423_secondLine_eq :
    case_000423_support.secondLine case_000423_seq case_000423_b = case_000423_secondLine := by
  norm_num [case_000423_secondLine, case_000423_support, case_000423_seq, case_000423_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000423_sourceAgrees :
    SourceAgrees case_000423_support case_000423_rank.val case_000423_mask := by
  intro hlt
  have hrank : (⟨case_000423_rank.val, hlt⟩ : Fin numPairWords) = case_000423_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000423_rank.val, hlt⟩ case_000423_mask =
        case_000423_seq := by
    simpa [hrank] using case_000423_seqAtRank
  simp [SourceChecks, hseq, case_000423_support,
    checkTranslationConstraintSource, case_000423_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000423_rows :
    EqEqPosVarSecondRows case_000423_support case_000423_rank.val case_000423_mask := by
  intro hlt
  have hrank : (⟨case_000423_rank.val, hlt⟩ : Fin numPairWords) = case_000423_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000423_rank.val, hlt⟩ case_000423_mask =
        case_000423_seq := by
    simpa [hrank] using case_000423_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000423_rank.val, hlt⟩ case_000423_mask =
        case_000423_b := by
    simpa [hrank] using case_000423_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000423_support case_000423_rank.val hlt
          case_000423_mask = case_000423_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000423_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000423_support case_000423_rank.val hlt
          case_000423_mask = case_000423_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000423_secondLine_eq]
  have case_000423_fixedFirst :
      FixedRow (FirstLineAt case_000423_support case_000423_rank.val hlt case_000423_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000423_firstLine, FixedRow]
  have case_000423_rowSecond :
      EqEqPosRow (SecondLineAt case_000423_support case_000423_rank.val hlt case_000423_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000423_secondLine, EqEqPosRow]
  exact ⟨case_000423_fixedFirst, case_000423_rowSecond⟩

private theorem case_000423_existsRows :
    ExistsEqEqPosVarSecondRows case_000423_rank.val case_000423_mask :=
  ⟨case_000423_support, case_000423_sourceAgrees, case_000423_rows⟩

private theorem case_000423_covered :
    RowPropertyParametricCovered case_000423_rank.val case_000423_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000423_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000424_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000424_mask : SignMask := ⟨47, by decide⟩
private def case_000424_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000424_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000424_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000424_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (20/9) }
private def case_000424_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000424_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_000424_rankWord :
    rankPairWord? case_000424_word = some case_000424_rank := by
  decide

private theorem case_000424_unrank :
    unrankPairWord case_000424_rank = case_000424_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000424_word case_000424_rank).1
    case_000424_rankWord |>.symm

private theorem case_000424_seqChoice :
    translationChoiceSeq case_000424_word case_000424_mask = case_000424_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000424_seqAtRank :
    translationSeqAtRankMask case_000424_rank case_000424_mask = case_000424_seq := by
  rw [translationSeqAtRankMask, case_000424_unrank]
  exact case_000424_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000424_bAtRank :
    translationBAtRankMask case_000424_rank case_000424_mask = case_000424_b := by
  rw [translationBAtRankMask, case_000424_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000424_b, case_000424_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000424_firstLine_eq :
    case_000424_support.firstLine case_000424_seq case_000424_b = case_000424_firstLine := by
  norm_num [case_000424_firstLine, case_000424_support, case_000424_seq, case_000424_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000424_secondLine_eq :
    case_000424_support.secondLine case_000424_seq case_000424_b = case_000424_secondLine := by
  norm_num [case_000424_secondLine, case_000424_support, case_000424_seq, case_000424_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000424_sourceAgrees :
    SourceAgrees case_000424_support case_000424_rank.val case_000424_mask := by
  intro hlt
  have hrank : (⟨case_000424_rank.val, hlt⟩ : Fin numPairWords) = case_000424_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000424_rank.val, hlt⟩ case_000424_mask =
        case_000424_seq := by
    simpa [hrank] using case_000424_seqAtRank
  simp [SourceChecks, hseq, case_000424_support,
    checkTranslationConstraintSource, case_000424_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000424_rows :
    EqEqPosVarSecondRows case_000424_support case_000424_rank.val case_000424_mask := by
  intro hlt
  have hrank : (⟨case_000424_rank.val, hlt⟩ : Fin numPairWords) = case_000424_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000424_rank.val, hlt⟩ case_000424_mask =
        case_000424_seq := by
    simpa [hrank] using case_000424_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000424_rank.val, hlt⟩ case_000424_mask =
        case_000424_b := by
    simpa [hrank] using case_000424_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000424_support case_000424_rank.val hlt
          case_000424_mask = case_000424_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000424_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000424_support case_000424_rank.val hlt
          case_000424_mask = case_000424_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000424_secondLine_eq]
  have case_000424_fixedFirst :
      FixedRow (FirstLineAt case_000424_support case_000424_rank.val hlt case_000424_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000424_firstLine, FixedRow]
  have case_000424_rowSecond :
      EqEqPosRow (SecondLineAt case_000424_support case_000424_rank.val hlt case_000424_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000424_secondLine, EqEqPosRow]
  exact ⟨case_000424_fixedFirst, case_000424_rowSecond⟩

private theorem case_000424_existsRows :
    ExistsEqEqPosVarSecondRows case_000424_rank.val case_000424_mask :=
  ⟨case_000424_support, case_000424_sourceAgrees, case_000424_rows⟩

private theorem case_000424_covered :
    RowPropertyParametricCovered case_000424_rank.val case_000424_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000424_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000425_rank : Fin numPairWords := ⟨131, by decide⟩
private def case_000425_mask : SignMask := ⟨55, by decide⟩
private def case_000425_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_000425_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000425_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000425_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000425_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000425_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-12/13) }

private theorem case_000425_rankWord :
    rankPairWord? case_000425_word = some case_000425_rank := by
  decide

private theorem case_000425_unrank :
    unrankPairWord case_000425_rank = case_000425_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000425_word case_000425_rank).1
    case_000425_rankWord |>.symm

private theorem case_000425_seqChoice :
    translationChoiceSeq case_000425_word case_000425_mask = case_000425_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000425_seqAtRank :
    translationSeqAtRankMask case_000425_rank case_000425_mask = case_000425_seq := by
  rw [translationSeqAtRankMask, case_000425_unrank]
  exact case_000425_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000425_bAtRank :
    translationBAtRankMask case_000425_rank case_000425_mask = case_000425_b := by
  rw [translationBAtRankMask, case_000425_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000425_b, case_000425_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000425_firstLine_eq :
    case_000425_support.firstLine case_000425_seq case_000425_b = case_000425_firstLine := by
  norm_num [case_000425_firstLine, case_000425_support, case_000425_seq, case_000425_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000425_secondLine_eq :
    case_000425_support.secondLine case_000425_seq case_000425_b = case_000425_secondLine := by
  norm_num [case_000425_secondLine, case_000425_support, case_000425_seq, case_000425_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000425_sourceAgrees :
    SourceAgrees case_000425_support case_000425_rank.val case_000425_mask := by
  intro hlt
  have hrank : (⟨case_000425_rank.val, hlt⟩ : Fin numPairWords) = case_000425_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000425_rank.val, hlt⟩ case_000425_mask =
        case_000425_seq := by
    simpa [hrank] using case_000425_seqAtRank
  simp [SourceChecks, hseq, case_000425_support,
    checkTranslationConstraintSource, case_000425_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000425_rows :
    EqEqPosVarSecondRows case_000425_support case_000425_rank.val case_000425_mask := by
  intro hlt
  have hrank : (⟨case_000425_rank.val, hlt⟩ : Fin numPairWords) = case_000425_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000425_rank.val, hlt⟩ case_000425_mask =
        case_000425_seq := by
    simpa [hrank] using case_000425_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000425_rank.val, hlt⟩ case_000425_mask =
        case_000425_b := by
    simpa [hrank] using case_000425_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000425_support case_000425_rank.val hlt
          case_000425_mask = case_000425_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000425_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000425_support case_000425_rank.val hlt
          case_000425_mask = case_000425_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000425_secondLine_eq]
  have case_000425_fixedFirst :
      FixedRow (FirstLineAt case_000425_support case_000425_rank.val hlt case_000425_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000425_firstLine, FixedRow]
  have case_000425_rowSecond :
      EqEqPosRow (SecondLineAt case_000425_support case_000425_rank.val hlt case_000425_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000425_secondLine, EqEqPosRow]
  exact ⟨case_000425_fixedFirst, case_000425_rowSecond⟩

private theorem case_000425_existsRows :
    ExistsEqEqPosVarSecondRows case_000425_rank.val case_000425_mask :=
  ⟨case_000425_support, case_000425_sourceAgrees, case_000425_rows⟩

private theorem case_000425_covered :
    RowPropertyParametricCovered case_000425_rank.val case_000425_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000425_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000426_rank : Fin numPairWords := ⟨137, by decide⟩
private def case_000426_mask : SignMask := ⟨7, by decide⟩
private def case_000426_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000426_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000426_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000426_b : Vec3 Rat := { x := (-236/27), y := (332/27), z := (236/27) }
private def case_000426_firstLine : StrictLin2 := { a := 1, b := 1, c := (-225/59) }
private def case_000426_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000426_rankWord :
    rankPairWord? case_000426_word = some case_000426_rank := by
  decide

private theorem case_000426_unrank :
    unrankPairWord case_000426_rank = case_000426_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000426_word case_000426_rank).1
    case_000426_rankWord |>.symm

private theorem case_000426_seqChoice :
    translationChoiceSeq case_000426_word case_000426_mask = case_000426_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000426_seqAtRank :
    translationSeqAtRankMask case_000426_rank case_000426_mask = case_000426_seq := by
  rw [translationSeqAtRankMask, case_000426_unrank]
  exact case_000426_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000426_bAtRank :
    translationBAtRankMask case_000426_rank case_000426_mask = case_000426_b := by
  rw [translationBAtRankMask, case_000426_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000426_b, case_000426_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000426_firstLine_eq :
    case_000426_support.firstLine case_000426_seq case_000426_b = case_000426_firstLine := by
  norm_num [case_000426_firstLine, case_000426_support, case_000426_seq, case_000426_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000426_secondLine_eq :
    case_000426_support.secondLine case_000426_seq case_000426_b = case_000426_secondLine := by
  norm_num [case_000426_secondLine, case_000426_support, case_000426_seq, case_000426_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000426_sourceAgrees :
    SourceAgrees case_000426_support case_000426_rank.val case_000426_mask := by
  intro hlt
  have hrank : (⟨case_000426_rank.val, hlt⟩ : Fin numPairWords) = case_000426_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000426_rank.val, hlt⟩ case_000426_mask =
        case_000426_seq := by
    simpa [hrank] using case_000426_seqAtRank
  simp [SourceChecks, hseq, case_000426_support,
    checkTranslationConstraintSource, case_000426_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000426_rows :
    EqEqNegVarFirstRows case_000426_support case_000426_rank.val case_000426_mask := by
  intro hlt
  have hrank : (⟨case_000426_rank.val, hlt⟩ : Fin numPairWords) = case_000426_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000426_rank.val, hlt⟩ case_000426_mask =
        case_000426_seq := by
    simpa [hrank] using case_000426_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000426_rank.val, hlt⟩ case_000426_mask =
        case_000426_b := by
    simpa [hrank] using case_000426_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000426_support case_000426_rank.val hlt
          case_000426_mask = case_000426_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000426_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000426_support case_000426_rank.val hlt
          case_000426_mask = case_000426_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000426_secondLine_eq]
  have case_000426_rowFirst :
      EqEqNegRow (FirstLineAt case_000426_support case_000426_rank.val hlt case_000426_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000426_firstLine, EqEqNegRow]
  have case_000426_fixedSecond :
      FixedRow (SecondLineAt case_000426_support case_000426_rank.val hlt case_000426_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000426_secondLine, FixedRow]
  exact ⟨case_000426_rowFirst, case_000426_fixedSecond⟩

private theorem case_000426_existsRows :
    ExistsEqEqNegVarFirstRows case_000426_rank.val case_000426_mask :=
  ⟨case_000426_support, case_000426_sourceAgrees, case_000426_rows⟩

private theorem case_000426_covered :
    RowPropertyParametricCovered case_000426_rank.val case_000426_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000426_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000427_rank : Fin numPairWords := ⟨137, by decide⟩
private def case_000427_mask : SignMask := ⟨13, by decide⟩
private def case_000427_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000427_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000427_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000427_b : Vec3 Rat := { x := (-284/27), y := (380/27), z := (-220/27) }
private def case_000427_firstLine : StrictLin2 := { a := 1, b := -1, c := (-229/71) }
private def case_000427_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000427_rankWord :
    rankPairWord? case_000427_word = some case_000427_rank := by
  decide

private theorem case_000427_unrank :
    unrankPairWord case_000427_rank = case_000427_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000427_word case_000427_rank).1
    case_000427_rankWord |>.symm

private theorem case_000427_seqChoice :
    translationChoiceSeq case_000427_word case_000427_mask = case_000427_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000427_seqAtRank :
    translationSeqAtRankMask case_000427_rank case_000427_mask = case_000427_seq := by
  rw [translationSeqAtRankMask, case_000427_unrank]
  exact case_000427_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000427_bAtRank :
    translationBAtRankMask case_000427_rank case_000427_mask = case_000427_b := by
  rw [translationBAtRankMask, case_000427_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000427_b, case_000427_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000427_firstLine_eq :
    case_000427_support.firstLine case_000427_seq case_000427_b = case_000427_firstLine := by
  norm_num [case_000427_firstLine, case_000427_support, case_000427_seq, case_000427_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000427_secondLine_eq :
    case_000427_support.secondLine case_000427_seq case_000427_b = case_000427_secondLine := by
  norm_num [case_000427_secondLine, case_000427_support, case_000427_seq, case_000427_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000427_sourceAgrees :
    SourceAgrees case_000427_support case_000427_rank.val case_000427_mask := by
  intro hlt
  have hrank : (⟨case_000427_rank.val, hlt⟩ : Fin numPairWords) = case_000427_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000427_rank.val, hlt⟩ case_000427_mask =
        case_000427_seq := by
    simpa [hrank] using case_000427_seqAtRank
  simp [SourceChecks, hseq, case_000427_support,
    checkTranslationConstraintSource, case_000427_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000427_rows :
    OppMinusOneVarFirstRows case_000427_support case_000427_rank.val case_000427_mask := by
  intro hlt
  have hrank : (⟨case_000427_rank.val, hlt⟩ : Fin numPairWords) = case_000427_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000427_rank.val, hlt⟩ case_000427_mask =
        case_000427_seq := by
    simpa [hrank] using case_000427_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000427_rank.val, hlt⟩ case_000427_mask =
        case_000427_b := by
    simpa [hrank] using case_000427_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000427_support case_000427_rank.val hlt
          case_000427_mask = case_000427_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000427_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000427_support case_000427_rank.val hlt
          case_000427_mask = case_000427_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000427_secondLine_eq]
  have case_000427_rowFirst :
      OppNegRow (FirstLineAt case_000427_support case_000427_rank.val hlt case_000427_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000427_firstLine, OppNegRow]
  have case_000427_fixedSecond :
      FixedRow (SecondLineAt case_000427_support case_000427_rank.val hlt case_000427_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000427_secondLine, FixedRow]
  exact ⟨case_000427_rowFirst, case_000427_fixedSecond⟩

private theorem case_000427_existsRows :
    ExistsOppMinusOneVarFirstRows case_000427_rank.val case_000427_mask :=
  ⟨case_000427_support, case_000427_sourceAgrees, case_000427_rows⟩

private theorem case_000427_covered :
    RowPropertyParametricCovered case_000427_rank.val case_000427_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000427_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000428_rank : Fin numPairWords := ⟨137, by decide⟩
private def case_000428_mask : SignMask := ⟨22, by decide⟩
private def case_000428_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000428_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000428_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000428_b : Vec3 Rat := { x := (-284/27), y := (-124/27), z := (284/27) }
private def case_000428_firstLine : StrictLin2 := { a := -1, b := 1, c := (-133/71) }
private def case_000428_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000428_rankWord :
    rankPairWord? case_000428_word = some case_000428_rank := by
  decide

private theorem case_000428_unrank :
    unrankPairWord case_000428_rank = case_000428_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000428_word case_000428_rank).1
    case_000428_rankWord |>.symm

private theorem case_000428_seqChoice :
    translationChoiceSeq case_000428_word case_000428_mask = case_000428_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000428_seqAtRank :
    translationSeqAtRankMask case_000428_rank case_000428_mask = case_000428_seq := by
  rw [translationSeqAtRankMask, case_000428_unrank]
  exact case_000428_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000428_bAtRank :
    translationBAtRankMask case_000428_rank case_000428_mask = case_000428_b := by
  rw [translationBAtRankMask, case_000428_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000428_b, case_000428_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000428_firstLine_eq :
    case_000428_support.firstLine case_000428_seq case_000428_b = case_000428_firstLine := by
  norm_num [case_000428_firstLine, case_000428_support, case_000428_seq, case_000428_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000428_secondLine_eq :
    case_000428_support.secondLine case_000428_seq case_000428_b = case_000428_secondLine := by
  norm_num [case_000428_secondLine, case_000428_support, case_000428_seq, case_000428_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000428_sourceAgrees :
    SourceAgrees case_000428_support case_000428_rank.val case_000428_mask := by
  intro hlt
  have hrank : (⟨case_000428_rank.val, hlt⟩ : Fin numPairWords) = case_000428_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000428_rank.val, hlt⟩ case_000428_mask =
        case_000428_seq := by
    simpa [hrank] using case_000428_seqAtRank
  simp [SourceChecks, hseq, case_000428_support,
    checkTranslationConstraintSource, case_000428_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000428_rows :
    OppOneMinusVarFirstRows case_000428_support case_000428_rank.val case_000428_mask := by
  intro hlt
  have hrank : (⟨case_000428_rank.val, hlt⟩ : Fin numPairWords) = case_000428_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000428_rank.val, hlt⟩ case_000428_mask =
        case_000428_seq := by
    simpa [hrank] using case_000428_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000428_rank.val, hlt⟩ case_000428_mask =
        case_000428_b := by
    simpa [hrank] using case_000428_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000428_support case_000428_rank.val hlt
          case_000428_mask = case_000428_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000428_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000428_support case_000428_rank.val hlt
          case_000428_mask = case_000428_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000428_secondLine_eq]
  have case_000428_rowFirst :
      OppPosRow (FirstLineAt case_000428_support case_000428_rank.val hlt case_000428_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000428_firstLine, OppPosRow]
  have case_000428_fixedSecond :
      FixedRow (SecondLineAt case_000428_support case_000428_rank.val hlt case_000428_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000428_secondLine, FixedRow]
  exact ⟨case_000428_rowFirst, case_000428_fixedSecond⟩

private theorem case_000428_existsRows :
    ExistsOppOneMinusVarFirstRows case_000428_rank.val case_000428_mask :=
  ⟨case_000428_support, case_000428_sourceAgrees, case_000428_rows⟩

private theorem case_000428_covered :
    RowPropertyParametricCovered case_000428_rank.val case_000428_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000428_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000429_rank : Fin numPairWords := ⟨137, by decide⟩
private def case_000429_mask : SignMask := ⟨23, by decide⟩
private def case_000429_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000429_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000429_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000429_b : Vec3 Rat := { x := (-284/27), y := (92/27), z := (284/27) }
private def case_000429_firstLine : StrictLin2 := { a := (-71/165), b := (-71/165), c := (-263/165) }
private def case_000429_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000429_rankWord :
    rankPairWord? case_000429_word = some case_000429_rank := by
  decide

private theorem case_000429_unrank :
    unrankPairWord case_000429_rank = case_000429_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000429_word case_000429_rank).1
    case_000429_rankWord |>.symm

private theorem case_000429_seqChoice :
    translationChoiceSeq case_000429_word case_000429_mask = case_000429_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000429_seqAtRank :
    translationSeqAtRankMask case_000429_rank case_000429_mask = case_000429_seq := by
  rw [translationSeqAtRankMask, case_000429_unrank]
  exact case_000429_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000429_bAtRank :
    translationBAtRankMask case_000429_rank case_000429_mask = case_000429_b := by
  rw [translationBAtRankMask, case_000429_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000429_b, case_000429_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000429_firstLine_eq :
    case_000429_support.firstLine case_000429_seq case_000429_b = case_000429_firstLine := by
  norm_num [case_000429_firstLine, case_000429_support, case_000429_seq, case_000429_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000429_secondLine_eq :
    case_000429_support.secondLine case_000429_seq case_000429_b = case_000429_secondLine := by
  norm_num [case_000429_secondLine, case_000429_support, case_000429_seq, case_000429_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000429_sourceAgrees :
    SourceAgrees case_000429_support case_000429_rank.val case_000429_mask := by
  intro hlt
  have hrank : (⟨case_000429_rank.val, hlt⟩ : Fin numPairWords) = case_000429_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000429_rank.val, hlt⟩ case_000429_mask =
        case_000429_seq := by
    simpa [hrank] using case_000429_seqAtRank
  simp [SourceChecks, hseq, case_000429_support,
    checkTranslationConstraintSource, case_000429_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000429_rows :
    EqEqPosVarFirstRows case_000429_support case_000429_rank.val case_000429_mask := by
  intro hlt
  have hrank : (⟨case_000429_rank.val, hlt⟩ : Fin numPairWords) = case_000429_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000429_rank.val, hlt⟩ case_000429_mask =
        case_000429_seq := by
    simpa [hrank] using case_000429_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000429_rank.val, hlt⟩ case_000429_mask =
        case_000429_b := by
    simpa [hrank] using case_000429_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000429_support case_000429_rank.val hlt
          case_000429_mask = case_000429_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000429_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000429_support case_000429_rank.val hlt
          case_000429_mask = case_000429_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000429_secondLine_eq]
  have case_000429_rowFirst :
      EqEqPosRow (FirstLineAt case_000429_support case_000429_rank.val hlt case_000429_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000429_firstLine, EqEqPosRow]
  have case_000429_fixedSecond :
      FixedRow (SecondLineAt case_000429_support case_000429_rank.val hlt case_000429_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000429_secondLine, FixedRow]
  exact ⟨case_000429_rowFirst, case_000429_fixedSecond⟩

private theorem case_000429_existsRows :
    ExistsEqEqPosVarFirstRows case_000429_rank.val case_000429_mask :=
  ⟨case_000429_support, case_000429_sourceAgrees, case_000429_rows⟩

private theorem case_000429_covered :
    RowPropertyParametricCovered case_000429_rank.val case_000429_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000429_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000430_rank : Fin numPairWords := ⟨137, by decide⟩
private def case_000430_mask : SignMask := ⟨24, by decide⟩
private def case_000430_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000430_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000430_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000430_b : Vec3 Rat := { x := (-188/27), y := (-220/27), z := (-316/27) }
private def case_000430_firstLine : StrictLin2 := { a := -1, b := -1, c := (-221/47) }
private def case_000430_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000430_rankWord :
    rankPairWord? case_000430_word = some case_000430_rank := by
  decide

private theorem case_000430_unrank :
    unrankPairWord case_000430_rank = case_000430_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000430_word case_000430_rank).1
    case_000430_rankWord |>.symm

private theorem case_000430_seqChoice :
    translationChoiceSeq case_000430_word case_000430_mask = case_000430_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000430_seqAtRank :
    translationSeqAtRankMask case_000430_rank case_000430_mask = case_000430_seq := by
  rw [translationSeqAtRankMask, case_000430_unrank]
  exact case_000430_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000430_bAtRank :
    translationBAtRankMask case_000430_rank case_000430_mask = case_000430_b := by
  rw [translationBAtRankMask, case_000430_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000430_b, case_000430_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000430_firstLine_eq :
    case_000430_support.firstLine case_000430_seq case_000430_b = case_000430_firstLine := by
  norm_num [case_000430_firstLine, case_000430_support, case_000430_seq, case_000430_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000430_secondLine_eq :
    case_000430_support.secondLine case_000430_seq case_000430_b = case_000430_secondLine := by
  norm_num [case_000430_secondLine, case_000430_support, case_000430_seq, case_000430_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000430_sourceAgrees :
    SourceAgrees case_000430_support case_000430_rank.val case_000430_mask := by
  intro hlt
  have hrank : (⟨case_000430_rank.val, hlt⟩ : Fin numPairWords) = case_000430_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000430_rank.val, hlt⟩ case_000430_mask =
        case_000430_seq := by
    simpa [hrank] using case_000430_seqAtRank
  simp [SourceChecks, hseq, case_000430_support,
    checkTranslationConstraintSource, case_000430_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000430_rows :
    EqEqPosVarFirstRows case_000430_support case_000430_rank.val case_000430_mask := by
  intro hlt
  have hrank : (⟨case_000430_rank.val, hlt⟩ : Fin numPairWords) = case_000430_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000430_rank.val, hlt⟩ case_000430_mask =
        case_000430_seq := by
    simpa [hrank] using case_000430_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000430_rank.val, hlt⟩ case_000430_mask =
        case_000430_b := by
    simpa [hrank] using case_000430_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000430_support case_000430_rank.val hlt
          case_000430_mask = case_000430_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000430_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000430_support case_000430_rank.val hlt
          case_000430_mask = case_000430_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000430_secondLine_eq]
  have case_000430_rowFirst :
      EqEqPosRow (FirstLineAt case_000430_support case_000430_rank.val hlt case_000430_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000430_firstLine, EqEqPosRow]
  have case_000430_fixedSecond :
      FixedRow (SecondLineAt case_000430_support case_000430_rank.val hlt case_000430_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000430_secondLine, FixedRow]
  exact ⟨case_000430_rowFirst, case_000430_fixedSecond⟩

private theorem case_000430_existsRows :
    ExistsEqEqPosVarFirstRows case_000430_rank.val case_000430_mask :=
  ⟨case_000430_support, case_000430_sourceAgrees, case_000430_rows⟩

private theorem case_000430_covered :
    RowPropertyParametricCovered case_000430_rank.val case_000430_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000430_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_000431_rank : Fin numPairWords := ⟨137, by decide⟩
private def case_000431_mask : SignMask := ⟨28, by decide⟩
private def case_000431_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000431_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000431_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000431_b : Vec3 Rat := { x := (-332/27), y := (-76/27), z := (-172/27) }
private def case_000431_firstLine : StrictLin2 := { a := (83/21), b := (83/21), c := (-97/7) }
private def case_000431_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_000431_rankWord :
    rankPairWord? case_000431_word = some case_000431_rank := by
  decide

private theorem case_000431_unrank :
    unrankPairWord case_000431_rank = case_000431_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000431_word case_000431_rank).1
    case_000431_rankWord |>.symm

private theorem case_000431_seqChoice :
    translationChoiceSeq case_000431_word case_000431_mask = case_000431_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000431_seqAtRank :
    translationSeqAtRankMask case_000431_rank case_000431_mask = case_000431_seq := by
  rw [translationSeqAtRankMask, case_000431_unrank]
  exact case_000431_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000431_bAtRank :
    translationBAtRankMask case_000431_rank case_000431_mask = case_000431_b := by
  rw [translationBAtRankMask, case_000431_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000431_b, case_000431_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000431_firstLine_eq :
    case_000431_support.firstLine case_000431_seq case_000431_b = case_000431_firstLine := by
  norm_num [case_000431_firstLine, case_000431_support, case_000431_seq, case_000431_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000431_secondLine_eq :
    case_000431_support.secondLine case_000431_seq case_000431_b = case_000431_secondLine := by
  norm_num [case_000431_secondLine, case_000431_support, case_000431_seq, case_000431_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000431_sourceAgrees :
    SourceAgrees case_000431_support case_000431_rank.val case_000431_mask := by
  intro hlt
  have hrank : (⟨case_000431_rank.val, hlt⟩ : Fin numPairWords) = case_000431_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000431_rank.val, hlt⟩ case_000431_mask =
        case_000431_seq := by
    simpa [hrank] using case_000431_seqAtRank
  simp [SourceChecks, hseq, case_000431_support,
    checkTranslationConstraintSource, case_000431_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000431_rows :
    EqEqNegVarFirstRows case_000431_support case_000431_rank.val case_000431_mask := by
  intro hlt
  have hrank : (⟨case_000431_rank.val, hlt⟩ : Fin numPairWords) = case_000431_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000431_rank.val, hlt⟩ case_000431_mask =
        case_000431_seq := by
    simpa [hrank] using case_000431_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000431_rank.val, hlt⟩ case_000431_mask =
        case_000431_b := by
    simpa [hrank] using case_000431_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000431_support case_000431_rank.val hlt
          case_000431_mask = case_000431_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000431_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000431_support case_000431_rank.val hlt
          case_000431_mask = case_000431_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000431_secondLine_eq]
  have case_000431_rowFirst :
      EqEqNegRow (FirstLineAt case_000431_support case_000431_rank.val hlt case_000431_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000431_firstLine, EqEqNegRow]
  have case_000431_fixedSecond :
      FixedRow (SecondLineAt case_000431_support case_000431_rank.val hlt case_000431_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000431_secondLine, FixedRow]
  exact ⟨case_000431_rowFirst, case_000431_fixedSecond⟩

private theorem case_000431_existsRows :
    ExistsEqEqNegVarFirstRows case_000431_rank.val case_000431_mask :=
  ⟨case_000431_support, case_000431_sourceAgrees, case_000431_rows⟩

private theorem case_000431_covered :
    RowPropertyParametricCovered case_000431_rank.val case_000431_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_000431_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000432_rank : Fin numPairWords := ⟨137, by decide⟩
private def case_000432_mask : SignMask := ⟨30, by decide⟩
private def case_000432_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000432_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000432_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000432_b : Vec3 Rat := { x := (-332/27), y := (-76/27), z := (44/27) }
private def case_000432_firstLine : StrictLin2 := { a := (-83/75), b := (-83/75), c := (-23/15) }
private def case_000432_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000432_rankWord :
    rankPairWord? case_000432_word = some case_000432_rank := by
  decide

private theorem case_000432_unrank :
    unrankPairWord case_000432_rank = case_000432_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000432_word case_000432_rank).1
    case_000432_rankWord |>.symm

private theorem case_000432_seqChoice :
    translationChoiceSeq case_000432_word case_000432_mask = case_000432_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000432_seqAtRank :
    translationSeqAtRankMask case_000432_rank case_000432_mask = case_000432_seq := by
  rw [translationSeqAtRankMask, case_000432_unrank]
  exact case_000432_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000432_bAtRank :
    translationBAtRankMask case_000432_rank case_000432_mask = case_000432_b := by
  rw [translationBAtRankMask, case_000432_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000432_b, case_000432_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000432_firstLine_eq :
    case_000432_support.firstLine case_000432_seq case_000432_b = case_000432_firstLine := by
  norm_num [case_000432_firstLine, case_000432_support, case_000432_seq, case_000432_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000432_secondLine_eq :
    case_000432_support.secondLine case_000432_seq case_000432_b = case_000432_secondLine := by
  norm_num [case_000432_secondLine, case_000432_support, case_000432_seq, case_000432_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000432_sourceAgrees :
    SourceAgrees case_000432_support case_000432_rank.val case_000432_mask := by
  intro hlt
  have hrank : (⟨case_000432_rank.val, hlt⟩ : Fin numPairWords) = case_000432_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000432_rank.val, hlt⟩ case_000432_mask =
        case_000432_seq := by
    simpa [hrank] using case_000432_seqAtRank
  simp [SourceChecks, hseq, case_000432_support,
    checkTranslationConstraintSource, case_000432_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000432_rows :
    EqEqPosVarFirstRows case_000432_support case_000432_rank.val case_000432_mask := by
  intro hlt
  have hrank : (⟨case_000432_rank.val, hlt⟩ : Fin numPairWords) = case_000432_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000432_rank.val, hlt⟩ case_000432_mask =
        case_000432_seq := by
    simpa [hrank] using case_000432_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000432_rank.val, hlt⟩ case_000432_mask =
        case_000432_b := by
    simpa [hrank] using case_000432_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000432_support case_000432_rank.val hlt
          case_000432_mask = case_000432_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000432_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000432_support case_000432_rank.val hlt
          case_000432_mask = case_000432_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000432_secondLine_eq]
  have case_000432_rowFirst :
      EqEqPosRow (FirstLineAt case_000432_support case_000432_rank.val hlt case_000432_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000432_firstLine, EqEqPosRow]
  have case_000432_fixedSecond :
      FixedRow (SecondLineAt case_000432_support case_000432_rank.val hlt case_000432_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000432_secondLine, FixedRow]
  exact ⟨case_000432_rowFirst, case_000432_fixedSecond⟩

private theorem case_000432_existsRows :
    ExistsEqEqPosVarFirstRows case_000432_rank.val case_000432_mask :=
  ⟨case_000432_support, case_000432_sourceAgrees, case_000432_rows⟩

private theorem case_000432_covered :
    RowPropertyParametricCovered case_000432_rank.val case_000432_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000432_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_000433_rank : Fin numPairWords := ⟨137, by decide⟩
private def case_000433_mask : SignMask := ⟨54, by decide⟩
private def case_000433_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_000433_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000433_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000433_b : Vec3 Rat := { x := (-76/27), y := (-236/27), z := (364/27) }
private def case_000433_firstLine : StrictLin2 := { a := -1, b := 1, c := (-281/19) }
private def case_000433_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000433_rankWord :
    rankPairWord? case_000433_word = some case_000433_rank := by
  decide

private theorem case_000433_unrank :
    unrankPairWord case_000433_rank = case_000433_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000433_word case_000433_rank).1
    case_000433_rankWord |>.symm

private theorem case_000433_seqChoice :
    translationChoiceSeq case_000433_word case_000433_mask = case_000433_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000433_seqAtRank :
    translationSeqAtRankMask case_000433_rank case_000433_mask = case_000433_seq := by
  rw [translationSeqAtRankMask, case_000433_unrank]
  exact case_000433_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000433_bAtRank :
    translationBAtRankMask case_000433_rank case_000433_mask = case_000433_b := by
  rw [translationBAtRankMask, case_000433_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000433_b, case_000433_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000433_firstLine_eq :
    case_000433_support.firstLine case_000433_seq case_000433_b = case_000433_firstLine := by
  norm_num [case_000433_firstLine, case_000433_support, case_000433_seq, case_000433_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000433_secondLine_eq :
    case_000433_support.secondLine case_000433_seq case_000433_b = case_000433_secondLine := by
  norm_num [case_000433_secondLine, case_000433_support, case_000433_seq, case_000433_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000433_sourceAgrees :
    SourceAgrees case_000433_support case_000433_rank.val case_000433_mask := by
  intro hlt
  have hrank : (⟨case_000433_rank.val, hlt⟩ : Fin numPairWords) = case_000433_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000433_rank.val, hlt⟩ case_000433_mask =
        case_000433_seq := by
    simpa [hrank] using case_000433_seqAtRank
  simp [SourceChecks, hseq, case_000433_support,
    checkTranslationConstraintSource, case_000433_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000433_rows :
    OppOneMinusVarFirstRows case_000433_support case_000433_rank.val case_000433_mask := by
  intro hlt
  have hrank : (⟨case_000433_rank.val, hlt⟩ : Fin numPairWords) = case_000433_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000433_rank.val, hlt⟩ case_000433_mask =
        case_000433_seq := by
    simpa [hrank] using case_000433_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000433_rank.val, hlt⟩ case_000433_mask =
        case_000433_b := by
    simpa [hrank] using case_000433_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000433_support case_000433_rank.val hlt
          case_000433_mask = case_000433_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000433_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000433_support case_000433_rank.val hlt
          case_000433_mask = case_000433_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000433_secondLine_eq]
  have case_000433_rowFirst :
      OppPosRow (FirstLineAt case_000433_support case_000433_rank.val hlt case_000433_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000433_firstLine, OppPosRow]
  have case_000433_fixedSecond :
      FixedRow (SecondLineAt case_000433_support case_000433_rank.val hlt case_000433_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000433_secondLine, FixedRow]
  exact ⟨case_000433_rowFirst, case_000433_fixedSecond⟩

private theorem case_000433_existsRows :
    ExistsOppOneMinusVarFirstRows case_000433_rank.val case_000433_mask :=
  ⟨case_000433_support, case_000433_sourceAgrees, case_000433_rows⟩

private theorem case_000433_covered :
    RowPropertyParametricCovered case_000433_rank.val case_000433_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_000433_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000434_rank : Fin numPairWords := ⟨144, by decide⟩
private def case_000434_mask : SignMask := ⟨7, by decide⟩
private def case_000434_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000434_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000434_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000434_b : Vec3 Rat := { x := (-332/27), y := (236/27), z := (236/27) }
private def case_000434_firstLine : StrictLin2 := { a := (-83/201), b := (-83/201), c := (-275/201) }
private def case_000434_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000434_rankWord :
    rankPairWord? case_000434_word = some case_000434_rank := by
  decide

private theorem case_000434_unrank :
    unrankPairWord case_000434_rank = case_000434_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000434_word case_000434_rank).1
    case_000434_rankWord |>.symm

private theorem case_000434_seqChoice :
    translationChoiceSeq case_000434_word case_000434_mask = case_000434_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000434_seqAtRank :
    translationSeqAtRankMask case_000434_rank case_000434_mask = case_000434_seq := by
  rw [translationSeqAtRankMask, case_000434_unrank]
  exact case_000434_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000434_bAtRank :
    translationBAtRankMask case_000434_rank case_000434_mask = case_000434_b := by
  rw [translationBAtRankMask, case_000434_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000434_b, case_000434_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000434_firstLine_eq :
    case_000434_support.firstLine case_000434_seq case_000434_b = case_000434_firstLine := by
  norm_num [case_000434_firstLine, case_000434_support, case_000434_seq, case_000434_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000434_secondLine_eq :
    case_000434_support.secondLine case_000434_seq case_000434_b = case_000434_secondLine := by
  norm_num [case_000434_secondLine, case_000434_support, case_000434_seq, case_000434_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000434_sourceAgrees :
    SourceAgrees case_000434_support case_000434_rank.val case_000434_mask := by
  intro hlt
  have hrank : (⟨case_000434_rank.val, hlt⟩ : Fin numPairWords) = case_000434_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000434_rank.val, hlt⟩ case_000434_mask =
        case_000434_seq := by
    simpa [hrank] using case_000434_seqAtRank
  simp [SourceChecks, hseq, case_000434_support,
    checkTranslationConstraintSource, case_000434_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000434_rows :
    EqEqPosVarFirstRows case_000434_support case_000434_rank.val case_000434_mask := by
  intro hlt
  have hrank : (⟨case_000434_rank.val, hlt⟩ : Fin numPairWords) = case_000434_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000434_rank.val, hlt⟩ case_000434_mask =
        case_000434_seq := by
    simpa [hrank] using case_000434_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000434_rank.val, hlt⟩ case_000434_mask =
        case_000434_b := by
    simpa [hrank] using case_000434_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000434_support case_000434_rank.val hlt
          case_000434_mask = case_000434_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000434_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000434_support case_000434_rank.val hlt
          case_000434_mask = case_000434_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000434_secondLine_eq]
  have case_000434_rowFirst :
      EqEqPosRow (FirstLineAt case_000434_support case_000434_rank.val hlt case_000434_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000434_firstLine, EqEqPosRow]
  have case_000434_fixedSecond :
      FixedRow (SecondLineAt case_000434_support case_000434_rank.val hlt case_000434_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000434_secondLine, FixedRow]
  exact ⟨case_000434_rowFirst, case_000434_fixedSecond⟩

private theorem case_000434_existsRows :
    ExistsEqEqPosVarFirstRows case_000434_rank.val case_000434_mask :=
  ⟨case_000434_support, case_000434_sourceAgrees, case_000434_rows⟩

private theorem case_000434_covered :
    RowPropertyParametricCovered case_000434_rank.val case_000434_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000434_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000435_rank : Fin numPairWords := ⟨144, by decide⟩
private def case_000435_mask : SignMask := ⟨8, by decide⟩
private def case_000435_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000435_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000435_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000435_b : Vec3 Rat := { x := (-236/27), y := (-76/27), z := (-364/27) }
private def case_000435_firstLine : StrictLin2 := { a := -1, b := -1, c := (-161/59) }
private def case_000435_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000435_rankWord :
    rankPairWord? case_000435_word = some case_000435_rank := by
  decide

private theorem case_000435_unrank :
    unrankPairWord case_000435_rank = case_000435_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000435_word case_000435_rank).1
    case_000435_rankWord |>.symm

private theorem case_000435_seqChoice :
    translationChoiceSeq case_000435_word case_000435_mask = case_000435_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000435_seqAtRank :
    translationSeqAtRankMask case_000435_rank case_000435_mask = case_000435_seq := by
  rw [translationSeqAtRankMask, case_000435_unrank]
  exact case_000435_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000435_bAtRank :
    translationBAtRankMask case_000435_rank case_000435_mask = case_000435_b := by
  rw [translationBAtRankMask, case_000435_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000435_b, case_000435_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000435_firstLine_eq :
    case_000435_support.firstLine case_000435_seq case_000435_b = case_000435_firstLine := by
  norm_num [case_000435_firstLine, case_000435_support, case_000435_seq, case_000435_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000435_secondLine_eq :
    case_000435_support.secondLine case_000435_seq case_000435_b = case_000435_secondLine := by
  norm_num [case_000435_secondLine, case_000435_support, case_000435_seq, case_000435_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000435_sourceAgrees :
    SourceAgrees case_000435_support case_000435_rank.val case_000435_mask := by
  intro hlt
  have hrank : (⟨case_000435_rank.val, hlt⟩ : Fin numPairWords) = case_000435_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000435_rank.val, hlt⟩ case_000435_mask =
        case_000435_seq := by
    simpa [hrank] using case_000435_seqAtRank
  simp [SourceChecks, hseq, case_000435_support,
    checkTranslationConstraintSource, case_000435_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000435_rows :
    EqEqPosVarFirstRows case_000435_support case_000435_rank.val case_000435_mask := by
  intro hlt
  have hrank : (⟨case_000435_rank.val, hlt⟩ : Fin numPairWords) = case_000435_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000435_rank.val, hlt⟩ case_000435_mask =
        case_000435_seq := by
    simpa [hrank] using case_000435_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000435_rank.val, hlt⟩ case_000435_mask =
        case_000435_b := by
    simpa [hrank] using case_000435_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000435_support case_000435_rank.val hlt
          case_000435_mask = case_000435_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000435_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000435_support case_000435_rank.val hlt
          case_000435_mask = case_000435_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000435_secondLine_eq]
  have case_000435_rowFirst :
      EqEqPosRow (FirstLineAt case_000435_support case_000435_rank.val hlt case_000435_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000435_firstLine, EqEqPosRow]
  have case_000435_fixedSecond :
      FixedRow (SecondLineAt case_000435_support case_000435_rank.val hlt case_000435_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000435_secondLine, FixedRow]
  exact ⟨case_000435_rowFirst, case_000435_fixedSecond⟩

private theorem case_000435_existsRows :
    ExistsEqEqPosVarFirstRows case_000435_rank.val case_000435_mask :=
  ⟨case_000435_support, case_000435_sourceAgrees, case_000435_rows⟩

private theorem case_000435_covered :
    RowPropertyParametricCovered case_000435_rank.val case_000435_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000435_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_000436_rank : Fin numPairWords := ⟨144, by decide⟩
private def case_000436_mask : SignMask := ⟨13, by decide⟩
private def case_000436_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000436_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000436_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000436_b : Vec3 Rat := { x := (-380/27), y := (284/27), z := (-220/27) }
private def case_000436_firstLine : StrictLin2 := { a := 1, b := -1, c := (-157/95) }
private def case_000436_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000436_rankWord :
    rankPairWord? case_000436_word = some case_000436_rank := by
  decide

private theorem case_000436_unrank :
    unrankPairWord case_000436_rank = case_000436_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000436_word case_000436_rank).1
    case_000436_rankWord |>.symm

private theorem case_000436_seqChoice :
    translationChoiceSeq case_000436_word case_000436_mask = case_000436_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000436_seqAtRank :
    translationSeqAtRankMask case_000436_rank case_000436_mask = case_000436_seq := by
  rw [translationSeqAtRankMask, case_000436_unrank]
  exact case_000436_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000436_bAtRank :
    translationBAtRankMask case_000436_rank case_000436_mask = case_000436_b := by
  rw [translationBAtRankMask, case_000436_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000436_b, case_000436_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000436_firstLine_eq :
    case_000436_support.firstLine case_000436_seq case_000436_b = case_000436_firstLine := by
  norm_num [case_000436_firstLine, case_000436_support, case_000436_seq, case_000436_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000436_secondLine_eq :
    case_000436_support.secondLine case_000436_seq case_000436_b = case_000436_secondLine := by
  norm_num [case_000436_secondLine, case_000436_support, case_000436_seq, case_000436_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000436_sourceAgrees :
    SourceAgrees case_000436_support case_000436_rank.val case_000436_mask := by
  intro hlt
  have hrank : (⟨case_000436_rank.val, hlt⟩ : Fin numPairWords) = case_000436_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000436_rank.val, hlt⟩ case_000436_mask =
        case_000436_seq := by
    simpa [hrank] using case_000436_seqAtRank
  simp [SourceChecks, hseq, case_000436_support,
    checkTranslationConstraintSource, case_000436_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000436_rows :
    OppMinusOneVarFirstRows case_000436_support case_000436_rank.val case_000436_mask := by
  intro hlt
  have hrank : (⟨case_000436_rank.val, hlt⟩ : Fin numPairWords) = case_000436_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000436_rank.val, hlt⟩ case_000436_mask =
        case_000436_seq := by
    simpa [hrank] using case_000436_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000436_rank.val, hlt⟩ case_000436_mask =
        case_000436_b := by
    simpa [hrank] using case_000436_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000436_support case_000436_rank.val hlt
          case_000436_mask = case_000436_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000436_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000436_support case_000436_rank.val hlt
          case_000436_mask = case_000436_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000436_secondLine_eq]
  have case_000436_rowFirst :
      OppNegRow (FirstLineAt case_000436_support case_000436_rank.val hlt case_000436_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000436_firstLine, OppNegRow]
  have case_000436_fixedSecond :
      FixedRow (SecondLineAt case_000436_support case_000436_rank.val hlt case_000436_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000436_secondLine, FixedRow]
  exact ⟨case_000436_rowFirst, case_000436_fixedSecond⟩

private theorem case_000436_existsRows :
    ExistsOppMinusOneVarFirstRows case_000436_rank.val case_000436_mask :=
  ⟨case_000436_support, case_000436_sourceAgrees, case_000436_rows⟩

private theorem case_000436_covered :
    RowPropertyParametricCovered case_000436_rank.val case_000436_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_000436_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000437_rank : Fin numPairWords := ⟨144, by decide⟩
private def case_000437_mask : SignMask := ⟨16, by decide⟩
private def case_000437_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000437_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000437_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000437_b : Vec3 Rat := { x := (-76/27), y := (-332/27), z := (-44/27) }
private def case_000437_firstLine : StrictLin2 := { a := -1, b := -1, c := (-169/19) }
private def case_000437_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000437_rankWord :
    rankPairWord? case_000437_word = some case_000437_rank := by
  decide

private theorem case_000437_unrank :
    unrankPairWord case_000437_rank = case_000437_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000437_word case_000437_rank).1
    case_000437_rankWord |>.symm

private theorem case_000437_seqChoice :
    translationChoiceSeq case_000437_word case_000437_mask = case_000437_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000437_seqAtRank :
    translationSeqAtRankMask case_000437_rank case_000437_mask = case_000437_seq := by
  rw [translationSeqAtRankMask, case_000437_unrank]
  exact case_000437_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000437_bAtRank :
    translationBAtRankMask case_000437_rank case_000437_mask = case_000437_b := by
  rw [translationBAtRankMask, case_000437_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000437_b, case_000437_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000437_firstLine_eq :
    case_000437_support.firstLine case_000437_seq case_000437_b = case_000437_firstLine := by
  norm_num [case_000437_firstLine, case_000437_support, case_000437_seq, case_000437_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000437_secondLine_eq :
    case_000437_support.secondLine case_000437_seq case_000437_b = case_000437_secondLine := by
  norm_num [case_000437_secondLine, case_000437_support, case_000437_seq, case_000437_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000437_sourceAgrees :
    SourceAgrees case_000437_support case_000437_rank.val case_000437_mask := by
  intro hlt
  have hrank : (⟨case_000437_rank.val, hlt⟩ : Fin numPairWords) = case_000437_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000437_rank.val, hlt⟩ case_000437_mask =
        case_000437_seq := by
    simpa [hrank] using case_000437_seqAtRank
  simp [SourceChecks, hseq, case_000437_support,
    checkTranslationConstraintSource, case_000437_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000437_rows :
    EqEqPosVarFirstRows case_000437_support case_000437_rank.val case_000437_mask := by
  intro hlt
  have hrank : (⟨case_000437_rank.val, hlt⟩ : Fin numPairWords) = case_000437_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000437_rank.val, hlt⟩ case_000437_mask =
        case_000437_seq := by
    simpa [hrank] using case_000437_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000437_rank.val, hlt⟩ case_000437_mask =
        case_000437_b := by
    simpa [hrank] using case_000437_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000437_support case_000437_rank.val hlt
          case_000437_mask = case_000437_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000437_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000437_support case_000437_rank.val hlt
          case_000437_mask = case_000437_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000437_secondLine_eq]
  have case_000437_rowFirst :
      EqEqPosRow (FirstLineAt case_000437_support case_000437_rank.val hlt case_000437_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000437_firstLine, EqEqPosRow]
  have case_000437_fixedSecond :
      FixedRow (SecondLineAt case_000437_support case_000437_rank.val hlt case_000437_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000437_secondLine, FixedRow]
  exact ⟨case_000437_rowFirst, case_000437_fixedSecond⟩

private theorem case_000437_existsRows :
    ExistsEqEqPosVarFirstRows case_000437_rank.val case_000437_mask :=
  ⟨case_000437_support, case_000437_sourceAgrees, case_000437_rows⟩

private theorem case_000437_covered :
    RowPropertyParametricCovered case_000437_rank.val case_000437_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000437_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000438_rank : Fin numPairWords := ⟨144, by decide⟩
private def case_000438_mask : SignMask := ⟨18, by decide⟩
private def case_000438_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000438_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000438_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000438_b : Vec3 Rat := { x := (-76/27), y := (-332/27), z := (172/27) }
private def case_000438_firstLine : StrictLin2 := { a := -1, b := -1, c := (-61/19) }
private def case_000438_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000438_rankWord :
    rankPairWord? case_000438_word = some case_000438_rank := by
  decide

private theorem case_000438_unrank :
    unrankPairWord case_000438_rank = case_000438_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000438_word case_000438_rank).1
    case_000438_rankWord |>.symm

private theorem case_000438_seqChoice :
    translationChoiceSeq case_000438_word case_000438_mask = case_000438_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000438_seqAtRank :
    translationSeqAtRankMask case_000438_rank case_000438_mask = case_000438_seq := by
  rw [translationSeqAtRankMask, case_000438_unrank]
  exact case_000438_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000438_bAtRank :
    translationBAtRankMask case_000438_rank case_000438_mask = case_000438_b := by
  rw [translationBAtRankMask, case_000438_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000438_b, case_000438_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000438_firstLine_eq :
    case_000438_support.firstLine case_000438_seq case_000438_b = case_000438_firstLine := by
  norm_num [case_000438_firstLine, case_000438_support, case_000438_seq, case_000438_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000438_secondLine_eq :
    case_000438_support.secondLine case_000438_seq case_000438_b = case_000438_secondLine := by
  norm_num [case_000438_secondLine, case_000438_support, case_000438_seq, case_000438_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000438_sourceAgrees :
    SourceAgrees case_000438_support case_000438_rank.val case_000438_mask := by
  intro hlt
  have hrank : (⟨case_000438_rank.val, hlt⟩ : Fin numPairWords) = case_000438_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000438_rank.val, hlt⟩ case_000438_mask =
        case_000438_seq := by
    simpa [hrank] using case_000438_seqAtRank
  simp [SourceChecks, hseq, case_000438_support,
    checkTranslationConstraintSource, case_000438_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000438_rows :
    EqEqPosVarFirstRows case_000438_support case_000438_rank.val case_000438_mask := by
  intro hlt
  have hrank : (⟨case_000438_rank.val, hlt⟩ : Fin numPairWords) = case_000438_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000438_rank.val, hlt⟩ case_000438_mask =
        case_000438_seq := by
    simpa [hrank] using case_000438_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000438_rank.val, hlt⟩ case_000438_mask =
        case_000438_b := by
    simpa [hrank] using case_000438_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000438_support case_000438_rank.val hlt
          case_000438_mask = case_000438_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000438_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000438_support case_000438_rank.val hlt
          case_000438_mask = case_000438_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000438_secondLine_eq]
  have case_000438_rowFirst :
      EqEqPosRow (FirstLineAt case_000438_support case_000438_rank.val hlt case_000438_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000438_firstLine, EqEqPosRow]
  have case_000438_fixedSecond :
      FixedRow (SecondLineAt case_000438_support case_000438_rank.val hlt case_000438_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000438_secondLine, FixedRow]
  exact ⟨case_000438_rowFirst, case_000438_fixedSecond⟩

private theorem case_000438_existsRows :
    ExistsEqEqPosVarFirstRows case_000438_rank.val case_000438_mask :=
  ⟨case_000438_support, case_000438_sourceAgrees, case_000438_rows⟩

private theorem case_000438_covered :
    RowPropertyParametricCovered case_000438_rank.val case_000438_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000438_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000439_rank : Fin numPairWords := ⟨144, by decide⟩
private def case_000439_mask : SignMask := ⟨22, by decide⟩
private def case_000439_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000439_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000439_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_000439_b : Vec3 Rat := { x := (-220/27), y := (-188/27), z := (316/27) }
private def case_000439_firstLine : StrictLin2 := { a := (-55/81), b := (-55/81), c := (-145/81) }
private def case_000439_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000439_rankWord :
    rankPairWord? case_000439_word = some case_000439_rank := by
  decide

private theorem case_000439_unrank :
    unrankPairWord case_000439_rank = case_000439_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000439_word case_000439_rank).1
    case_000439_rankWord |>.symm

private theorem case_000439_seqChoice :
    translationChoiceSeq case_000439_word case_000439_mask = case_000439_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000439_seqAtRank :
    translationSeqAtRankMask case_000439_rank case_000439_mask = case_000439_seq := by
  rw [translationSeqAtRankMask, case_000439_unrank]
  exact case_000439_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000439_bAtRank :
    translationBAtRankMask case_000439_rank case_000439_mask = case_000439_b := by
  rw [translationBAtRankMask, case_000439_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000439_b, case_000439_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000439_firstLine_eq :
    case_000439_support.firstLine case_000439_seq case_000439_b = case_000439_firstLine := by
  norm_num [case_000439_firstLine, case_000439_support, case_000439_seq, case_000439_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000439_secondLine_eq :
    case_000439_support.secondLine case_000439_seq case_000439_b = case_000439_secondLine := by
  norm_num [case_000439_secondLine, case_000439_support, case_000439_seq, case_000439_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000439_sourceAgrees :
    SourceAgrees case_000439_support case_000439_rank.val case_000439_mask := by
  intro hlt
  have hrank : (⟨case_000439_rank.val, hlt⟩ : Fin numPairWords) = case_000439_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000439_rank.val, hlt⟩ case_000439_mask =
        case_000439_seq := by
    simpa [hrank] using case_000439_seqAtRank
  simp [SourceChecks, hseq, case_000439_support,
    checkTranslationConstraintSource, case_000439_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000439_rows :
    EqEqPosVarFirstRows case_000439_support case_000439_rank.val case_000439_mask := by
  intro hlt
  have hrank : (⟨case_000439_rank.val, hlt⟩ : Fin numPairWords) = case_000439_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000439_rank.val, hlt⟩ case_000439_mask =
        case_000439_seq := by
    simpa [hrank] using case_000439_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000439_rank.val, hlt⟩ case_000439_mask =
        case_000439_b := by
    simpa [hrank] using case_000439_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000439_support case_000439_rank.val hlt
          case_000439_mask = case_000439_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000439_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000439_support case_000439_rank.val hlt
          case_000439_mask = case_000439_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000439_secondLine_eq]
  have case_000439_rowFirst :
      EqEqPosRow (FirstLineAt case_000439_support case_000439_rank.val hlt case_000439_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000439_firstLine, EqEqPosRow]
  have case_000439_fixedSecond :
      FixedRow (SecondLineAt case_000439_support case_000439_rank.val hlt case_000439_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000439_secondLine, FixedRow]
  exact ⟨case_000439_rowFirst, case_000439_fixedSecond⟩

private theorem case_000439_existsRows :
    ExistsEqEqPosVarFirstRows case_000439_rank.val case_000439_mask :=
  ⟨case_000439_support, case_000439_sourceAgrees, case_000439_rows⟩

private theorem case_000439_covered :
    RowPropertyParametricCovered case_000439_rank.val case_000439_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000439_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000440_rank : Fin numPairWords := ⟨144, by decide⟩
private def case_000440_mask : SignMask := ⟨24, by decide⟩
private def case_000440_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000440_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000440_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_000440_b : Vec3 Rat := { x := (-124/27), y := (-284/27), z := (-284/27) }
private def case_000440_firstLine : StrictLin2 := { a := -1, b := -1, c := (-253/31) }
private def case_000440_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000440_rankWord :
    rankPairWord? case_000440_word = some case_000440_rank := by
  decide

private theorem case_000440_unrank :
    unrankPairWord case_000440_rank = case_000440_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000440_word case_000440_rank).1
    case_000440_rankWord |>.symm

private theorem case_000440_seqChoice :
    translationChoiceSeq case_000440_word case_000440_mask = case_000440_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000440_seqAtRank :
    translationSeqAtRankMask case_000440_rank case_000440_mask = case_000440_seq := by
  rw [translationSeqAtRankMask, case_000440_unrank]
  exact case_000440_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000440_bAtRank :
    translationBAtRankMask case_000440_rank case_000440_mask = case_000440_b := by
  rw [translationBAtRankMask, case_000440_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000440_b, case_000440_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000440_firstLine_eq :
    case_000440_support.firstLine case_000440_seq case_000440_b = case_000440_firstLine := by
  norm_num [case_000440_firstLine, case_000440_support, case_000440_seq, case_000440_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000440_secondLine_eq :
    case_000440_support.secondLine case_000440_seq case_000440_b = case_000440_secondLine := by
  norm_num [case_000440_secondLine, case_000440_support, case_000440_seq, case_000440_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000440_sourceAgrees :
    SourceAgrees case_000440_support case_000440_rank.val case_000440_mask := by
  intro hlt
  have hrank : (⟨case_000440_rank.val, hlt⟩ : Fin numPairWords) = case_000440_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000440_rank.val, hlt⟩ case_000440_mask =
        case_000440_seq := by
    simpa [hrank] using case_000440_seqAtRank
  simp [SourceChecks, hseq, case_000440_support,
    checkTranslationConstraintSource, case_000440_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000440_rows :
    EqEqPosVarFirstRows case_000440_support case_000440_rank.val case_000440_mask := by
  intro hlt
  have hrank : (⟨case_000440_rank.val, hlt⟩ : Fin numPairWords) = case_000440_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000440_rank.val, hlt⟩ case_000440_mask =
        case_000440_seq := by
    simpa [hrank] using case_000440_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000440_rank.val, hlt⟩ case_000440_mask =
        case_000440_b := by
    simpa [hrank] using case_000440_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000440_support case_000440_rank.val hlt
          case_000440_mask = case_000440_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000440_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000440_support case_000440_rank.val hlt
          case_000440_mask = case_000440_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000440_secondLine_eq]
  have case_000440_rowFirst :
      EqEqPosRow (FirstLineAt case_000440_support case_000440_rank.val hlt case_000440_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000440_firstLine, EqEqPosRow]
  have case_000440_fixedSecond :
      FixedRow (SecondLineAt case_000440_support case_000440_rank.val hlt case_000440_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000440_secondLine, FixedRow]
  exact ⟨case_000440_rowFirst, case_000440_fixedSecond⟩

private theorem case_000440_existsRows :
    ExistsEqEqPosVarFirstRows case_000440_rank.val case_000440_mask :=
  ⟨case_000440_support, case_000440_sourceAgrees, case_000440_rows⟩

private theorem case_000440_covered :
    RowPropertyParametricCovered case_000440_rank.val case_000440_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000440_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000441_rank : Fin numPairWords := ⟨144, by decide⟩
private def case_000441_mask : SignMask := ⟨39, by decide⟩
private def case_000441_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_000441_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_000441_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_000441_b : Vec3 Rat := { x := (-92/27), y := (284/27), z := (284/27) }
private def case_000441_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000441_secondLine : StrictLin2 := { a := (-23/110), b := (-23/110), c := (-48/55) }

private theorem case_000441_rankWord :
    rankPairWord? case_000441_word = some case_000441_rank := by
  decide

private theorem case_000441_unrank :
    unrankPairWord case_000441_rank = case_000441_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000441_word case_000441_rank).1
    case_000441_rankWord |>.symm

private theorem case_000441_seqChoice :
    translationChoiceSeq case_000441_word case_000441_mask = case_000441_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000441_seqAtRank :
    translationSeqAtRankMask case_000441_rank case_000441_mask = case_000441_seq := by
  rw [translationSeqAtRankMask, case_000441_unrank]
  exact case_000441_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000441_bAtRank :
    translationBAtRankMask case_000441_rank case_000441_mask = case_000441_b := by
  rw [translationBAtRankMask, case_000441_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000441_b, case_000441_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000441_firstLine_eq :
    case_000441_support.firstLine case_000441_seq case_000441_b = case_000441_firstLine := by
  norm_num [case_000441_firstLine, case_000441_support, case_000441_seq, case_000441_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000441_secondLine_eq :
    case_000441_support.secondLine case_000441_seq case_000441_b = case_000441_secondLine := by
  norm_num [case_000441_secondLine, case_000441_support, case_000441_seq, case_000441_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000441_sourceAgrees :
    SourceAgrees case_000441_support case_000441_rank.val case_000441_mask := by
  intro hlt
  have hrank : (⟨case_000441_rank.val, hlt⟩ : Fin numPairWords) = case_000441_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000441_rank.val, hlt⟩ case_000441_mask =
        case_000441_seq := by
    simpa [hrank] using case_000441_seqAtRank
  simp [SourceChecks, hseq, case_000441_support,
    checkTranslationConstraintSource, case_000441_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000441_rows :
    EqEqPosVarSecondRows case_000441_support case_000441_rank.val case_000441_mask := by
  intro hlt
  have hrank : (⟨case_000441_rank.val, hlt⟩ : Fin numPairWords) = case_000441_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000441_rank.val, hlt⟩ case_000441_mask =
        case_000441_seq := by
    simpa [hrank] using case_000441_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000441_rank.val, hlt⟩ case_000441_mask =
        case_000441_b := by
    simpa [hrank] using case_000441_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000441_support case_000441_rank.val hlt
          case_000441_mask = case_000441_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000441_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000441_support case_000441_rank.val hlt
          case_000441_mask = case_000441_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000441_secondLine_eq]
  have case_000441_fixedFirst :
      FixedRow (FirstLineAt case_000441_support case_000441_rank.val hlt case_000441_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000441_firstLine, FixedRow]
  have case_000441_rowSecond :
      EqEqPosRow (SecondLineAt case_000441_support case_000441_rank.val hlt case_000441_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000441_secondLine, EqEqPosRow]
  exact ⟨case_000441_fixedFirst, case_000441_rowSecond⟩

private theorem case_000441_existsRows :
    ExistsEqEqPosVarSecondRows case_000441_rank.val case_000441_mask :=
  ⟨case_000441_support, case_000441_sourceAgrees, case_000441_rows⟩

private theorem case_000441_covered :
    RowPropertyParametricCovered case_000441_rank.val case_000441_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000441_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000442_rank : Fin numPairWords := ⟨147, by decide⟩
private def case_000442_mask : SignMask := ⟨8, by decide⟩
private def case_000442_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000442_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000442_seq : Step14 -> Face
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
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000442_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000442_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000442_secondLine : StrictLin2 := { a := (-27/638), b := (-27/638), c := (-12/29) }

private theorem case_000442_rankWord :
    rankPairWord? case_000442_word = some case_000442_rank := by
  decide

private theorem case_000442_unrank :
    unrankPairWord case_000442_rank = case_000442_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000442_word case_000442_rank).1
    case_000442_rankWord |>.symm

private theorem case_000442_seqChoice :
    translationChoiceSeq case_000442_word case_000442_mask = case_000442_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000442_seqAtRank :
    translationSeqAtRankMask case_000442_rank case_000442_mask = case_000442_seq := by
  rw [translationSeqAtRankMask, case_000442_unrank]
  exact case_000442_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000442_bAtRank :
    translationBAtRankMask case_000442_rank case_000442_mask = case_000442_b := by
  rw [translationBAtRankMask, case_000442_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000442_b, case_000442_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000442_firstLine_eq :
    case_000442_support.firstLine case_000442_seq case_000442_b = case_000442_firstLine := by
  norm_num [case_000442_firstLine, case_000442_support, case_000442_seq, case_000442_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000442_secondLine_eq :
    case_000442_support.secondLine case_000442_seq case_000442_b = case_000442_secondLine := by
  norm_num [case_000442_secondLine, case_000442_support, case_000442_seq, case_000442_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000442_sourceAgrees :
    SourceAgrees case_000442_support case_000442_rank.val case_000442_mask := by
  intro hlt
  have hrank : (⟨case_000442_rank.val, hlt⟩ : Fin numPairWords) = case_000442_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000442_rank.val, hlt⟩ case_000442_mask =
        case_000442_seq := by
    simpa [hrank] using case_000442_seqAtRank
  simp [SourceChecks, hseq, case_000442_support,
    checkTranslationConstraintSource, case_000442_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000442_rows :
    EqEqPosVarSecondRows case_000442_support case_000442_rank.val case_000442_mask := by
  intro hlt
  have hrank : (⟨case_000442_rank.val, hlt⟩ : Fin numPairWords) = case_000442_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000442_rank.val, hlt⟩ case_000442_mask =
        case_000442_seq := by
    simpa [hrank] using case_000442_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000442_rank.val, hlt⟩ case_000442_mask =
        case_000442_b := by
    simpa [hrank] using case_000442_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000442_support case_000442_rank.val hlt
          case_000442_mask = case_000442_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000442_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000442_support case_000442_rank.val hlt
          case_000442_mask = case_000442_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000442_secondLine_eq]
  have case_000442_fixedFirst :
      FixedRow (FirstLineAt case_000442_support case_000442_rank.val hlt case_000442_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000442_firstLine, FixedRow]
  have case_000442_rowSecond :
      EqEqPosRow (SecondLineAt case_000442_support case_000442_rank.val hlt case_000442_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000442_secondLine, EqEqPosRow]
  exact ⟨case_000442_fixedFirst, case_000442_rowSecond⟩

private theorem case_000442_existsRows :
    ExistsEqEqPosVarSecondRows case_000442_rank.val case_000442_mask :=
  ⟨case_000442_support, case_000442_sourceAgrees, case_000442_rows⟩

private theorem case_000442_covered :
    RowPropertyParametricCovered case_000442_rank.val case_000442_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000442_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000443_rank : Fin numPairWords := ⟨147, by decide⟩
private def case_000443_mask : SignMask := ⟨9, by decide⟩
private def case_000443_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000443_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000443_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000443_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000443_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000443_secondLine : StrictLin2 := { a := (-27/230), b := (-27/230), c := (-87/115) }

private theorem case_000443_rankWord :
    rankPairWord? case_000443_word = some case_000443_rank := by
  decide

private theorem case_000443_unrank :
    unrankPairWord case_000443_rank = case_000443_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000443_word case_000443_rank).1
    case_000443_rankWord |>.symm

private theorem case_000443_seqChoice :
    translationChoiceSeq case_000443_word case_000443_mask = case_000443_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000443_seqAtRank :
    translationSeqAtRankMask case_000443_rank case_000443_mask = case_000443_seq := by
  rw [translationSeqAtRankMask, case_000443_unrank]
  exact case_000443_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000443_bAtRank :
    translationBAtRankMask case_000443_rank case_000443_mask = case_000443_b := by
  rw [translationBAtRankMask, case_000443_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000443_b, case_000443_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000443_firstLine_eq :
    case_000443_support.firstLine case_000443_seq case_000443_b = case_000443_firstLine := by
  norm_num [case_000443_firstLine, case_000443_support, case_000443_seq, case_000443_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000443_secondLine_eq :
    case_000443_support.secondLine case_000443_seq case_000443_b = case_000443_secondLine := by
  norm_num [case_000443_secondLine, case_000443_support, case_000443_seq, case_000443_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000443_sourceAgrees :
    SourceAgrees case_000443_support case_000443_rank.val case_000443_mask := by
  intro hlt
  have hrank : (⟨case_000443_rank.val, hlt⟩ : Fin numPairWords) = case_000443_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000443_rank.val, hlt⟩ case_000443_mask =
        case_000443_seq := by
    simpa [hrank] using case_000443_seqAtRank
  simp [SourceChecks, hseq, case_000443_support,
    checkTranslationConstraintSource, case_000443_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000443_rows :
    EqEqPosVarSecondRows case_000443_support case_000443_rank.val case_000443_mask := by
  intro hlt
  have hrank : (⟨case_000443_rank.val, hlt⟩ : Fin numPairWords) = case_000443_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000443_rank.val, hlt⟩ case_000443_mask =
        case_000443_seq := by
    simpa [hrank] using case_000443_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000443_rank.val, hlt⟩ case_000443_mask =
        case_000443_b := by
    simpa [hrank] using case_000443_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000443_support case_000443_rank.val hlt
          case_000443_mask = case_000443_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000443_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000443_support case_000443_rank.val hlt
          case_000443_mask = case_000443_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000443_secondLine_eq]
  have case_000443_fixedFirst :
      FixedRow (FirstLineAt case_000443_support case_000443_rank.val hlt case_000443_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000443_firstLine, FixedRow]
  have case_000443_rowSecond :
      EqEqPosRow (SecondLineAt case_000443_support case_000443_rank.val hlt case_000443_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000443_secondLine, EqEqPosRow]
  exact ⟨case_000443_fixedFirst, case_000443_rowSecond⟩

private theorem case_000443_existsRows :
    ExistsEqEqPosVarSecondRows case_000443_rank.val case_000443_mask :=
  ⟨case_000443_support, case_000443_sourceAgrees, case_000443_rows⟩

private theorem case_000443_covered :
    RowPropertyParametricCovered case_000443_rank.val case_000443_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000443_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_000444_rank : Fin numPairWords := ⟨147, by decide⟩
private def case_000444_mask : SignMask := ⟨13, by decide⟩
private def case_000444_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000444_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000444_seq : Step14 -> Face
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
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000444_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000444_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000444_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000444_rankWord :
    rankPairWord? case_000444_word = some case_000444_rank := by
  decide

private theorem case_000444_unrank :
    unrankPairWord case_000444_rank = case_000444_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000444_word case_000444_rank).1
    case_000444_rankWord |>.symm

private theorem case_000444_seqChoice :
    translationChoiceSeq case_000444_word case_000444_mask = case_000444_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000444_seqAtRank :
    translationSeqAtRankMask case_000444_rank case_000444_mask = case_000444_seq := by
  rw [translationSeqAtRankMask, case_000444_unrank]
  exact case_000444_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000444_bAtRank :
    translationBAtRankMask case_000444_rank case_000444_mask = case_000444_b := by
  rw [translationBAtRankMask, case_000444_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000444_b, case_000444_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000444_firstLine_eq :
    case_000444_support.firstLine case_000444_seq case_000444_b = case_000444_firstLine := by
  norm_num [case_000444_firstLine, case_000444_support, case_000444_seq, case_000444_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000444_secondLine_eq :
    case_000444_support.secondLine case_000444_seq case_000444_b = case_000444_secondLine := by
  norm_num [case_000444_secondLine, case_000444_support, case_000444_seq, case_000444_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000444_sourceAgrees :
    SourceAgrees case_000444_support case_000444_rank.val case_000444_mask := by
  intro hlt
  have hrank : (⟨case_000444_rank.val, hlt⟩ : Fin numPairWords) = case_000444_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000444_rank.val, hlt⟩ case_000444_mask =
        case_000444_seq := by
    simpa [hrank] using case_000444_seqAtRank
  simp [SourceChecks, hseq, case_000444_support,
    checkTranslationConstraintSource, case_000444_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000444_rows :
    EqEqPosVarSecondRows case_000444_support case_000444_rank.val case_000444_mask := by
  intro hlt
  have hrank : (⟨case_000444_rank.val, hlt⟩ : Fin numPairWords) = case_000444_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000444_rank.val, hlt⟩ case_000444_mask =
        case_000444_seq := by
    simpa [hrank] using case_000444_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000444_rank.val, hlt⟩ case_000444_mask =
        case_000444_b := by
    simpa [hrank] using case_000444_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000444_support case_000444_rank.val hlt
          case_000444_mask = case_000444_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000444_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000444_support case_000444_rank.val hlt
          case_000444_mask = case_000444_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000444_secondLine_eq]
  have case_000444_fixedFirst :
      FixedRow (FirstLineAt case_000444_support case_000444_rank.val hlt case_000444_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000444_firstLine, FixedRow]
  have case_000444_rowSecond :
      EqEqPosRow (SecondLineAt case_000444_support case_000444_rank.val hlt case_000444_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000444_secondLine, EqEqPosRow]
  exact ⟨case_000444_fixedFirst, case_000444_rowSecond⟩

private theorem case_000444_existsRows :
    ExistsEqEqPosVarSecondRows case_000444_rank.val case_000444_mask :=
  ⟨case_000444_support, case_000444_sourceAgrees, case_000444_rows⟩

private theorem case_000444_covered :
    RowPropertyParametricCovered case_000444_rank.val case_000444_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_000444_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000445_rank : Fin numPairWords := ⟨147, by decide⟩
private def case_000445_mask : SignMask := ⟨16, by decide⟩
private def case_000445_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000445_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000445_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000445_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-4/9) }
private def case_000445_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/17) }
private def case_000445_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000445_rankWord :
    rankPairWord? case_000445_word = some case_000445_rank := by
  decide

private theorem case_000445_unrank :
    unrankPairWord case_000445_rank = case_000445_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000445_word case_000445_rank).1
    case_000445_rankWord |>.symm

private theorem case_000445_seqChoice :
    translationChoiceSeq case_000445_word case_000445_mask = case_000445_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000445_seqAtRank :
    translationSeqAtRankMask case_000445_rank case_000445_mask = case_000445_seq := by
  rw [translationSeqAtRankMask, case_000445_unrank]
  exact case_000445_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000445_bAtRank :
    translationBAtRankMask case_000445_rank case_000445_mask = case_000445_b := by
  rw [translationBAtRankMask, case_000445_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000445_b, case_000445_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000445_firstLine_eq :
    case_000445_support.firstLine case_000445_seq case_000445_b = case_000445_firstLine := by
  norm_num [case_000445_firstLine, case_000445_support, case_000445_seq, case_000445_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000445_secondLine_eq :
    case_000445_support.secondLine case_000445_seq case_000445_b = case_000445_secondLine := by
  norm_num [case_000445_secondLine, case_000445_support, case_000445_seq, case_000445_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000445_sourceAgrees :
    SourceAgrees case_000445_support case_000445_rank.val case_000445_mask := by
  intro hlt
  have hrank : (⟨case_000445_rank.val, hlt⟩ : Fin numPairWords) = case_000445_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000445_rank.val, hlt⟩ case_000445_mask =
        case_000445_seq := by
    simpa [hrank] using case_000445_seqAtRank
  simp [SourceChecks, hseq, case_000445_support,
    checkTranslationConstraintSource, case_000445_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000445_rows :
    EqEqPosVarFirstRows case_000445_support case_000445_rank.val case_000445_mask := by
  intro hlt
  have hrank : (⟨case_000445_rank.val, hlt⟩ : Fin numPairWords) = case_000445_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000445_rank.val, hlt⟩ case_000445_mask =
        case_000445_seq := by
    simpa [hrank] using case_000445_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000445_rank.val, hlt⟩ case_000445_mask =
        case_000445_b := by
    simpa [hrank] using case_000445_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000445_support case_000445_rank.val hlt
          case_000445_mask = case_000445_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000445_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000445_support case_000445_rank.val hlt
          case_000445_mask = case_000445_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000445_secondLine_eq]
  have case_000445_rowFirst :
      EqEqPosRow (FirstLineAt case_000445_support case_000445_rank.val hlt case_000445_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000445_firstLine, EqEqPosRow]
  have case_000445_fixedSecond :
      FixedRow (SecondLineAt case_000445_support case_000445_rank.val hlt case_000445_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000445_secondLine, FixedRow]
  exact ⟨case_000445_rowFirst, case_000445_fixedSecond⟩

private theorem case_000445_existsRows :
    ExistsEqEqPosVarFirstRows case_000445_rank.val case_000445_mask :=
  ⟨case_000445_support, case_000445_sourceAgrees, case_000445_rows⟩

private theorem case_000445_covered :
    RowPropertyParametricCovered case_000445_rank.val case_000445_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000445_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000446_rank : Fin numPairWords := ⟨147, by decide⟩
private def case_000446_mask : SignMask := ⟨22, by decide⟩
private def case_000446_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000446_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000446_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000446_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (116/9) }
private def case_000446_firstLine : StrictLin2 := { a := (-29/43), b := (-29/43), c := (-241/129) }
private def case_000446_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000446_rankWord :
    rankPairWord? case_000446_word = some case_000446_rank := by
  decide

private theorem case_000446_unrank :
    unrankPairWord case_000446_rank = case_000446_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000446_word case_000446_rank).1
    case_000446_rankWord |>.symm

private theorem case_000446_seqChoice :
    translationChoiceSeq case_000446_word case_000446_mask = case_000446_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000446_seqAtRank :
    translationSeqAtRankMask case_000446_rank case_000446_mask = case_000446_seq := by
  rw [translationSeqAtRankMask, case_000446_unrank]
  exact case_000446_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000446_bAtRank :
    translationBAtRankMask case_000446_rank case_000446_mask = case_000446_b := by
  rw [translationBAtRankMask, case_000446_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000446_b, case_000446_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000446_firstLine_eq :
    case_000446_support.firstLine case_000446_seq case_000446_b = case_000446_firstLine := by
  norm_num [case_000446_firstLine, case_000446_support, case_000446_seq, case_000446_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000446_secondLine_eq :
    case_000446_support.secondLine case_000446_seq case_000446_b = case_000446_secondLine := by
  norm_num [case_000446_secondLine, case_000446_support, case_000446_seq, case_000446_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000446_sourceAgrees :
    SourceAgrees case_000446_support case_000446_rank.val case_000446_mask := by
  intro hlt
  have hrank : (⟨case_000446_rank.val, hlt⟩ : Fin numPairWords) = case_000446_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000446_rank.val, hlt⟩ case_000446_mask =
        case_000446_seq := by
    simpa [hrank] using case_000446_seqAtRank
  simp [SourceChecks, hseq, case_000446_support,
    checkTranslationConstraintSource, case_000446_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000446_rows :
    EqEqPosVarFirstRows case_000446_support case_000446_rank.val case_000446_mask := by
  intro hlt
  have hrank : (⟨case_000446_rank.val, hlt⟩ : Fin numPairWords) = case_000446_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000446_rank.val, hlt⟩ case_000446_mask =
        case_000446_seq := by
    simpa [hrank] using case_000446_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000446_rank.val, hlt⟩ case_000446_mask =
        case_000446_b := by
    simpa [hrank] using case_000446_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000446_support case_000446_rank.val hlt
          case_000446_mask = case_000446_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000446_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000446_support case_000446_rank.val hlt
          case_000446_mask = case_000446_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000446_secondLine_eq]
  have case_000446_rowFirst :
      EqEqPosRow (FirstLineAt case_000446_support case_000446_rank.val hlt case_000446_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000446_firstLine, EqEqPosRow]
  have case_000446_fixedSecond :
      FixedRow (SecondLineAt case_000446_support case_000446_rank.val hlt case_000446_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000446_secondLine, FixedRow]
  exact ⟨case_000446_rowFirst, case_000446_fixedSecond⟩

private theorem case_000446_existsRows :
    ExistsEqEqPosVarFirstRows case_000446_rank.val case_000446_mask :=
  ⟨case_000446_support, case_000446_sourceAgrees, case_000446_rows⟩

private theorem case_000446_covered :
    RowPropertyParametricCovered case_000446_rank.val case_000446_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000446_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_000447_rank : Fin numPairWords := ⟨147, by decide⟩
private def case_000447_mask : SignMask := ⟨23, by decide⟩
private def case_000447_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000447_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000447_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000447_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (116/9) }
private def case_000447_firstLine : StrictLin2 := { a := (-29/63), b := (-29/63), c := (-125/63) }
private def case_000447_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000447_rankWord :
    rankPairWord? case_000447_word = some case_000447_rank := by
  decide

private theorem case_000447_unrank :
    unrankPairWord case_000447_rank = case_000447_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000447_word case_000447_rank).1
    case_000447_rankWord |>.symm

private theorem case_000447_seqChoice :
    translationChoiceSeq case_000447_word case_000447_mask = case_000447_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000447_seqAtRank :
    translationSeqAtRankMask case_000447_rank case_000447_mask = case_000447_seq := by
  rw [translationSeqAtRankMask, case_000447_unrank]
  exact case_000447_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000447_bAtRank :
    translationBAtRankMask case_000447_rank case_000447_mask = case_000447_b := by
  rw [translationBAtRankMask, case_000447_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000447_b, case_000447_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000447_firstLine_eq :
    case_000447_support.firstLine case_000447_seq case_000447_b = case_000447_firstLine := by
  norm_num [case_000447_firstLine, case_000447_support, case_000447_seq, case_000447_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000447_secondLine_eq :
    case_000447_support.secondLine case_000447_seq case_000447_b = case_000447_secondLine := by
  norm_num [case_000447_secondLine, case_000447_support, case_000447_seq, case_000447_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000447_sourceAgrees :
    SourceAgrees case_000447_support case_000447_rank.val case_000447_mask := by
  intro hlt
  have hrank : (⟨case_000447_rank.val, hlt⟩ : Fin numPairWords) = case_000447_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000447_rank.val, hlt⟩ case_000447_mask =
        case_000447_seq := by
    simpa [hrank] using case_000447_seqAtRank
  simp [SourceChecks, hseq, case_000447_support,
    checkTranslationConstraintSource, case_000447_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_000447_rows :
    EqEqPosVarFirstRows case_000447_support case_000447_rank.val case_000447_mask := by
  intro hlt
  have hrank : (⟨case_000447_rank.val, hlt⟩ : Fin numPairWords) = case_000447_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000447_rank.val, hlt⟩ case_000447_mask =
        case_000447_seq := by
    simpa [hrank] using case_000447_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000447_rank.val, hlt⟩ case_000447_mask =
        case_000447_b := by
    simpa [hrank] using case_000447_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000447_support case_000447_rank.val hlt
          case_000447_mask = case_000447_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000447_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000447_support case_000447_rank.val hlt
          case_000447_mask = case_000447_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000447_secondLine_eq]
  have case_000447_rowFirst :
      EqEqPosRow (FirstLineAt case_000447_support case_000447_rank.val hlt case_000447_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000447_firstLine, EqEqPosRow]
  have case_000447_fixedSecond :
      FixedRow (SecondLineAt case_000447_support case_000447_rank.val hlt case_000447_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000447_secondLine, FixedRow]
  exact ⟨case_000447_rowFirst, case_000447_fixedSecond⟩

private theorem case_000447_existsRows :
    ExistsEqEqPosVarFirstRows case_000447_rank.val case_000447_mask :=
  ⟨case_000447_support, case_000447_sourceAgrees, case_000447_rows⟩

private theorem case_000447_covered :
    RowPropertyParametricCovered case_000447_rank.val case_000447_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_000447_existsRows

inductive Group013Covered : Nat -> SignMask -> Prop
  | case_000416 : Group013Covered case_000416_rank.val case_000416_mask
  | case_000417 : Group013Covered case_000417_rank.val case_000417_mask
  | case_000418 : Group013Covered case_000418_rank.val case_000418_mask
  | case_000419 : Group013Covered case_000419_rank.val case_000419_mask
  | case_000420 : Group013Covered case_000420_rank.val case_000420_mask
  | case_000421 : Group013Covered case_000421_rank.val case_000421_mask
  | case_000422 : Group013Covered case_000422_rank.val case_000422_mask
  | case_000423 : Group013Covered case_000423_rank.val case_000423_mask
  | case_000424 : Group013Covered case_000424_rank.val case_000424_mask
  | case_000425 : Group013Covered case_000425_rank.val case_000425_mask
  | case_000426 : Group013Covered case_000426_rank.val case_000426_mask
  | case_000427 : Group013Covered case_000427_rank.val case_000427_mask
  | case_000428 : Group013Covered case_000428_rank.val case_000428_mask
  | case_000429 : Group013Covered case_000429_rank.val case_000429_mask
  | case_000430 : Group013Covered case_000430_rank.val case_000430_mask
  | case_000431 : Group013Covered case_000431_rank.val case_000431_mask
  | case_000432 : Group013Covered case_000432_rank.val case_000432_mask
  | case_000433 : Group013Covered case_000433_rank.val case_000433_mask
  | case_000434 : Group013Covered case_000434_rank.val case_000434_mask
  | case_000435 : Group013Covered case_000435_rank.val case_000435_mask
  | case_000436 : Group013Covered case_000436_rank.val case_000436_mask
  | case_000437 : Group013Covered case_000437_rank.val case_000437_mask
  | case_000438 : Group013Covered case_000438_rank.val case_000438_mask
  | case_000439 : Group013Covered case_000439_rank.val case_000439_mask
  | case_000440 : Group013Covered case_000440_rank.val case_000440_mask
  | case_000441 : Group013Covered case_000441_rank.val case_000441_mask
  | case_000442 : Group013Covered case_000442_rank.val case_000442_mask
  | case_000443 : Group013Covered case_000443_rank.val case_000443_mask
  | case_000444 : Group013Covered case_000444_rank.val case_000444_mask
  | case_000445 : Group013Covered case_000445_rank.val case_000445_mask
  | case_000446 : Group013Covered case_000446_rank.val case_000446_mask
  | case_000447 : Group013Covered case_000447_rank.val case_000447_mask

theorem Group013GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group013Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_000416 =>
      exact RowPropertyParametricCovered.kills case_000416_covered
  | case_000417 =>
      exact RowPropertyParametricCovered.kills case_000417_covered
  | case_000418 =>
      exact RowPropertyParametricCovered.kills case_000418_covered
  | case_000419 =>
      exact RowPropertyParametricCovered.kills case_000419_covered
  | case_000420 =>
      exact RowPropertyParametricCovered.kills case_000420_covered
  | case_000421 =>
      exact RowPropertyParametricCovered.kills case_000421_covered
  | case_000422 =>
      exact RowPropertyParametricCovered.kills case_000422_covered
  | case_000423 =>
      exact RowPropertyParametricCovered.kills case_000423_covered
  | case_000424 =>
      exact RowPropertyParametricCovered.kills case_000424_covered
  | case_000425 =>
      exact RowPropertyParametricCovered.kills case_000425_covered
  | case_000426 =>
      exact RowPropertyParametricCovered.kills case_000426_covered
  | case_000427 =>
      exact RowPropertyParametricCovered.kills case_000427_covered
  | case_000428 =>
      exact RowPropertyParametricCovered.kills case_000428_covered
  | case_000429 =>
      exact RowPropertyParametricCovered.kills case_000429_covered
  | case_000430 =>
      exact RowPropertyParametricCovered.kills case_000430_covered
  | case_000431 =>
      exact RowPropertyParametricCovered.kills case_000431_covered
  | case_000432 =>
      exact RowPropertyParametricCovered.kills case_000432_covered
  | case_000433 =>
      exact RowPropertyParametricCovered.kills case_000433_covered
  | case_000434 =>
      exact RowPropertyParametricCovered.kills case_000434_covered
  | case_000435 =>
      exact RowPropertyParametricCovered.kills case_000435_covered
  | case_000436 =>
      exact RowPropertyParametricCovered.kills case_000436_covered
  | case_000437 =>
      exact RowPropertyParametricCovered.kills case_000437_covered
  | case_000438 =>
      exact RowPropertyParametricCovered.kills case_000438_covered
  | case_000439 =>
      exact RowPropertyParametricCovered.kills case_000439_covered
  | case_000440 =>
      exact RowPropertyParametricCovered.kills case_000440_covered
  | case_000441 =>
      exact RowPropertyParametricCovered.kills case_000441_covered
  | case_000442 =>
      exact RowPropertyParametricCovered.kills case_000442_covered
  | case_000443 =>
      exact RowPropertyParametricCovered.kills case_000443_covered
  | case_000444 =>
      exact RowPropertyParametricCovered.kills case_000444_covered
  | case_000445 =>
      exact RowPropertyParametricCovered.kills case_000445_covered
  | case_000446 =>
      exact RowPropertyParametricCovered.kills case_000446_covered
  | case_000447 =>
      exact RowPropertyParametricCovered.kills case_000447_covered

theorem Group013_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group013
