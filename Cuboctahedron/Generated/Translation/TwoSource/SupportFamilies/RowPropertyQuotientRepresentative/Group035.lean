import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group035

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
private def case_001120_rank : Fin numPairWords := ⟨821, by decide⟩
private def case_001120_mask : SignMask := ⟨13, by decide⟩
private def case_001120_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001120_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001120_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001120_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (-52/9) }
private def case_001120_firstLine : StrictLin2 := { a := (-29/43), b := (-29/43), c := (-113/129) }
private def case_001120_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001120_rankWord :
    rankPairWord? case_001120_word = some case_001120_rank := by
  decide

private theorem case_001120_unrank :
    unrankPairWord case_001120_rank = case_001120_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001120_word case_001120_rank).1
    case_001120_rankWord |>.symm

private theorem case_001120_seqChoice :
    translationChoiceSeq case_001120_word case_001120_mask = case_001120_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001120_seqAtRank :
    translationSeqAtRankMask case_001120_rank case_001120_mask = case_001120_seq := by
  rw [translationSeqAtRankMask, case_001120_unrank]
  exact case_001120_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001120_bAtRank :
    translationBAtRankMask case_001120_rank case_001120_mask = case_001120_b := by
  rw [translationBAtRankMask, case_001120_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001120_b, case_001120_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001120_firstLine_eq :
    case_001120_support.firstLine case_001120_seq case_001120_b = case_001120_firstLine := by
  norm_num [case_001120_firstLine, case_001120_support, case_001120_seq, case_001120_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001120_secondLine_eq :
    case_001120_support.secondLine case_001120_seq case_001120_b = case_001120_secondLine := by
  norm_num [case_001120_secondLine, case_001120_support, case_001120_seq, case_001120_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001120_sourceAgrees :
    SourceAgrees case_001120_support case_001120_rank.val case_001120_mask := by
  intro hlt
  have hrank : (⟨case_001120_rank.val, hlt⟩ : Fin numPairWords) = case_001120_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001120_rank.val, hlt⟩ case_001120_mask =
        case_001120_seq := by
    simpa [hrank] using case_001120_seqAtRank
  simp [SourceChecks, hseq, case_001120_support,
    checkTranslationConstraintSource, case_001120_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001120_rows :
    EqEqPosVarFirstRows case_001120_support case_001120_rank.val case_001120_mask := by
  intro hlt
  have hrank : (⟨case_001120_rank.val, hlt⟩ : Fin numPairWords) = case_001120_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001120_rank.val, hlt⟩ case_001120_mask =
        case_001120_seq := by
    simpa [hrank] using case_001120_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001120_rank.val, hlt⟩ case_001120_mask =
        case_001120_b := by
    simpa [hrank] using case_001120_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001120_support case_001120_rank.val hlt
          case_001120_mask = case_001120_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001120_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001120_support case_001120_rank.val hlt
          case_001120_mask = case_001120_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001120_secondLine_eq]
  have case_001120_rowFirst :
      EqEqPosRow (FirstLineAt case_001120_support case_001120_rank.val hlt case_001120_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001120_firstLine, EqEqPosRow]
  have case_001120_fixedSecond :
      FixedRow (SecondLineAt case_001120_support case_001120_rank.val hlt case_001120_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001120_secondLine, FixedRow]
  exact ⟨case_001120_rowFirst, case_001120_fixedSecond⟩

private theorem case_001120_existsRows :
    ExistsEqEqPosVarFirstRows case_001120_rank.val case_001120_mask :=
  ⟨case_001120_support, case_001120_sourceAgrees, case_001120_rows⟩

private theorem case_001120_covered :
    RowPropertyParametricCovered case_001120_rank.val case_001120_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001120_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001121_rank : Fin numPairWords := ⟨821, by decide⟩
private def case_001121_mask : SignMask := ⟨15, by decide⟩
private def case_001121_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001121_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001121_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001121_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (20/9) }
private def case_001121_firstLine : StrictLin2 := { a := (-29/63), b := (-29/63), c := (-103/189) }
private def case_001121_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001121_rankWord :
    rankPairWord? case_001121_word = some case_001121_rank := by
  decide

private theorem case_001121_unrank :
    unrankPairWord case_001121_rank = case_001121_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001121_word case_001121_rank).1
    case_001121_rankWord |>.symm

private theorem case_001121_seqChoice :
    translationChoiceSeq case_001121_word case_001121_mask = case_001121_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001121_seqAtRank :
    translationSeqAtRankMask case_001121_rank case_001121_mask = case_001121_seq := by
  rw [translationSeqAtRankMask, case_001121_unrank]
  exact case_001121_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001121_bAtRank :
    translationBAtRankMask case_001121_rank case_001121_mask = case_001121_b := by
  rw [translationBAtRankMask, case_001121_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001121_b, case_001121_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001121_firstLine_eq :
    case_001121_support.firstLine case_001121_seq case_001121_b = case_001121_firstLine := by
  norm_num [case_001121_firstLine, case_001121_support, case_001121_seq, case_001121_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001121_secondLine_eq :
    case_001121_support.secondLine case_001121_seq case_001121_b = case_001121_secondLine := by
  norm_num [case_001121_secondLine, case_001121_support, case_001121_seq, case_001121_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001121_sourceAgrees :
    SourceAgrees case_001121_support case_001121_rank.val case_001121_mask := by
  intro hlt
  have hrank : (⟨case_001121_rank.val, hlt⟩ : Fin numPairWords) = case_001121_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001121_rank.val, hlt⟩ case_001121_mask =
        case_001121_seq := by
    simpa [hrank] using case_001121_seqAtRank
  simp [SourceChecks, hseq, case_001121_support,
    checkTranslationConstraintSource, case_001121_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001121_rows :
    EqEqPosVarFirstRows case_001121_support case_001121_rank.val case_001121_mask := by
  intro hlt
  have hrank : (⟨case_001121_rank.val, hlt⟩ : Fin numPairWords) = case_001121_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001121_rank.val, hlt⟩ case_001121_mask =
        case_001121_seq := by
    simpa [hrank] using case_001121_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001121_rank.val, hlt⟩ case_001121_mask =
        case_001121_b := by
    simpa [hrank] using case_001121_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001121_support case_001121_rank.val hlt
          case_001121_mask = case_001121_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001121_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001121_support case_001121_rank.val hlt
          case_001121_mask = case_001121_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001121_secondLine_eq]
  have case_001121_rowFirst :
      EqEqPosRow (FirstLineAt case_001121_support case_001121_rank.val hlt case_001121_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001121_firstLine, EqEqPosRow]
  have case_001121_fixedSecond :
      FixedRow (SecondLineAt case_001121_support case_001121_rank.val hlt case_001121_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001121_secondLine, FixedRow]
  exact ⟨case_001121_rowFirst, case_001121_fixedSecond⟩

private theorem case_001121_existsRows :
    ExistsEqEqPosVarFirstRows case_001121_rank.val case_001121_mask :=
  ⟨case_001121_support, case_001121_sourceAgrees, case_001121_rows⟩

private theorem case_001121_covered :
    RowPropertyParametricCovered case_001121_rank.val case_001121_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001121_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001122_rank : Fin numPairWords := ⟨821, by decide⟩
private def case_001122_mask : SignMask := ⟨16, by decide⟩
private def case_001122_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001122_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001122_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001122_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_001122_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_001122_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001122_rankWord :
    rankPairWord? case_001122_word = some case_001122_rank := by
  decide

private theorem case_001122_unrank :
    unrankPairWord case_001122_rank = case_001122_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001122_word case_001122_rank).1
    case_001122_rankWord |>.symm

private theorem case_001122_seqChoice :
    translationChoiceSeq case_001122_word case_001122_mask = case_001122_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001122_seqAtRank :
    translationSeqAtRankMask case_001122_rank case_001122_mask = case_001122_seq := by
  rw [translationSeqAtRankMask, case_001122_unrank]
  exact case_001122_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001122_bAtRank :
    translationBAtRankMask case_001122_rank case_001122_mask = case_001122_b := by
  rw [translationBAtRankMask, case_001122_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001122_b, case_001122_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001122_firstLine_eq :
    case_001122_support.firstLine case_001122_seq case_001122_b = case_001122_firstLine := by
  norm_num [case_001122_firstLine, case_001122_support, case_001122_seq, case_001122_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001122_secondLine_eq :
    case_001122_support.secondLine case_001122_seq case_001122_b = case_001122_secondLine := by
  norm_num [case_001122_secondLine, case_001122_support, case_001122_seq, case_001122_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001122_sourceAgrees :
    SourceAgrees case_001122_support case_001122_rank.val case_001122_mask := by
  intro hlt
  have hrank : (⟨case_001122_rank.val, hlt⟩ : Fin numPairWords) = case_001122_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001122_rank.val, hlt⟩ case_001122_mask =
        case_001122_seq := by
    simpa [hrank] using case_001122_seqAtRank
  simp [SourceChecks, hseq, case_001122_support,
    checkTranslationConstraintSource, case_001122_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001122_rows :
    EqEqPosVarFirstRows case_001122_support case_001122_rank.val case_001122_mask := by
  intro hlt
  have hrank : (⟨case_001122_rank.val, hlt⟩ : Fin numPairWords) = case_001122_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001122_rank.val, hlt⟩ case_001122_mask =
        case_001122_seq := by
    simpa [hrank] using case_001122_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001122_rank.val, hlt⟩ case_001122_mask =
        case_001122_b := by
    simpa [hrank] using case_001122_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001122_support case_001122_rank.val hlt
          case_001122_mask = case_001122_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001122_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001122_support case_001122_rank.val hlt
          case_001122_mask = case_001122_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001122_secondLine_eq]
  have case_001122_rowFirst :
      EqEqPosRow (FirstLineAt case_001122_support case_001122_rank.val hlt case_001122_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001122_firstLine, EqEqPosRow]
  have case_001122_fixedSecond :
      FixedRow (SecondLineAt case_001122_support case_001122_rank.val hlt case_001122_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001122_secondLine, FixedRow]
  exact ⟨case_001122_rowFirst, case_001122_fixedSecond⟩

private theorem case_001122_existsRows :
    ExistsEqEqPosVarFirstRows case_001122_rank.val case_001122_mask :=
  ⟨case_001122_support, case_001122_sourceAgrees, case_001122_rows⟩

private theorem case_001122_covered :
    RowPropertyParametricCovered case_001122_rank.val case_001122_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001122_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001123_rank : Fin numPairWords := ⟨821, by decide⟩
private def case_001123_mask : SignMask := ⟨18, by decide⟩
private def case_001123_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001123_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001123_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001123_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_001123_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_001123_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001123_rankWord :
    rankPairWord? case_001123_word = some case_001123_rank := by
  decide

private theorem case_001123_unrank :
    unrankPairWord case_001123_rank = case_001123_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001123_word case_001123_rank).1
    case_001123_rankWord |>.symm

private theorem case_001123_seqChoice :
    translationChoiceSeq case_001123_word case_001123_mask = case_001123_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001123_seqAtRank :
    translationSeqAtRankMask case_001123_rank case_001123_mask = case_001123_seq := by
  rw [translationSeqAtRankMask, case_001123_unrank]
  exact case_001123_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001123_bAtRank :
    translationBAtRankMask case_001123_rank case_001123_mask = case_001123_b := by
  rw [translationBAtRankMask, case_001123_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001123_b, case_001123_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001123_firstLine_eq :
    case_001123_support.firstLine case_001123_seq case_001123_b = case_001123_firstLine := by
  norm_num [case_001123_firstLine, case_001123_support, case_001123_seq, case_001123_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001123_secondLine_eq :
    case_001123_support.secondLine case_001123_seq case_001123_b = case_001123_secondLine := by
  norm_num [case_001123_secondLine, case_001123_support, case_001123_seq, case_001123_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001123_sourceAgrees :
    SourceAgrees case_001123_support case_001123_rank.val case_001123_mask := by
  intro hlt
  have hrank : (⟨case_001123_rank.val, hlt⟩ : Fin numPairWords) = case_001123_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001123_rank.val, hlt⟩ case_001123_mask =
        case_001123_seq := by
    simpa [hrank] using case_001123_seqAtRank
  simp [SourceChecks, hseq, case_001123_support,
    checkTranslationConstraintSource, case_001123_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001123_rows :
    EqEqPosVarFirstRows case_001123_support case_001123_rank.val case_001123_mask := by
  intro hlt
  have hrank : (⟨case_001123_rank.val, hlt⟩ : Fin numPairWords) = case_001123_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001123_rank.val, hlt⟩ case_001123_mask =
        case_001123_seq := by
    simpa [hrank] using case_001123_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001123_rank.val, hlt⟩ case_001123_mask =
        case_001123_b := by
    simpa [hrank] using case_001123_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001123_support case_001123_rank.val hlt
          case_001123_mask = case_001123_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001123_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001123_support case_001123_rank.val hlt
          case_001123_mask = case_001123_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001123_secondLine_eq]
  have case_001123_rowFirst :
      EqEqPosRow (FirstLineAt case_001123_support case_001123_rank.val hlt case_001123_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001123_firstLine, EqEqPosRow]
  have case_001123_fixedSecond :
      FixedRow (SecondLineAt case_001123_support case_001123_rank.val hlt case_001123_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001123_secondLine, FixedRow]
  exact ⟨case_001123_rowFirst, case_001123_fixedSecond⟩

private theorem case_001123_existsRows :
    ExistsEqEqPosVarFirstRows case_001123_rank.val case_001123_mask :=
  ⟨case_001123_support, case_001123_sourceAgrees, case_001123_rows⟩

private theorem case_001123_covered :
    RowPropertyParametricCovered case_001123_rank.val case_001123_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001123_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001124_rank : Fin numPairWords := ⟨821, by decide⟩
private def case_001124_mask : SignMask := ⟨22, by decide⟩
private def case_001124_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001124_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001124_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001124_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_001124_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001124_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001124_rankWord :
    rankPairWord? case_001124_word = some case_001124_rank := by
  decide

private theorem case_001124_unrank :
    unrankPairWord case_001124_rank = case_001124_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001124_word case_001124_rank).1
    case_001124_rankWord |>.symm

private theorem case_001124_seqChoice :
    translationChoiceSeq case_001124_word case_001124_mask = case_001124_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001124_seqAtRank :
    translationSeqAtRankMask case_001124_rank case_001124_mask = case_001124_seq := by
  rw [translationSeqAtRankMask, case_001124_unrank]
  exact case_001124_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001124_bAtRank :
    translationBAtRankMask case_001124_rank case_001124_mask = case_001124_b := by
  rw [translationBAtRankMask, case_001124_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001124_b, case_001124_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001124_firstLine_eq :
    case_001124_support.firstLine case_001124_seq case_001124_b = case_001124_firstLine := by
  norm_num [case_001124_firstLine, case_001124_support, case_001124_seq, case_001124_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001124_secondLine_eq :
    case_001124_support.secondLine case_001124_seq case_001124_b = case_001124_secondLine := by
  norm_num [case_001124_secondLine, case_001124_support, case_001124_seq, case_001124_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001124_sourceAgrees :
    SourceAgrees case_001124_support case_001124_rank.val case_001124_mask := by
  intro hlt
  have hrank : (⟨case_001124_rank.val, hlt⟩ : Fin numPairWords) = case_001124_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001124_rank.val, hlt⟩ case_001124_mask =
        case_001124_seq := by
    simpa [hrank] using case_001124_seqAtRank
  simp [SourceChecks, hseq, case_001124_support,
    checkTranslationConstraintSource, case_001124_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001124_rows :
    EqEqPosVarFirstRows case_001124_support case_001124_rank.val case_001124_mask := by
  intro hlt
  have hrank : (⟨case_001124_rank.val, hlt⟩ : Fin numPairWords) = case_001124_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001124_rank.val, hlt⟩ case_001124_mask =
        case_001124_seq := by
    simpa [hrank] using case_001124_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001124_rank.val, hlt⟩ case_001124_mask =
        case_001124_b := by
    simpa [hrank] using case_001124_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001124_support case_001124_rank.val hlt
          case_001124_mask = case_001124_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001124_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001124_support case_001124_rank.val hlt
          case_001124_mask = case_001124_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001124_secondLine_eq]
  have case_001124_rowFirst :
      EqEqPosRow (FirstLineAt case_001124_support case_001124_rank.val hlt case_001124_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001124_firstLine, EqEqPosRow]
  have case_001124_fixedSecond :
      FixedRow (SecondLineAt case_001124_support case_001124_rank.val hlt case_001124_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001124_secondLine, FixedRow]
  exact ⟨case_001124_rowFirst, case_001124_fixedSecond⟩

private theorem case_001124_existsRows :
    ExistsEqEqPosVarFirstRows case_001124_rank.val case_001124_mask :=
  ⟨case_001124_support, case_001124_sourceAgrees, case_001124_rows⟩

private theorem case_001124_covered :
    RowPropertyParametricCovered case_001124_rank.val case_001124_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001124_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001125_rank : Fin numPairWords := ⟨821, by decide⟩
private def case_001125_mask : SignMask := ⟨24, by decide⟩
private def case_001125_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001125_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001125_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001125_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_001125_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_001125_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001125_rankWord :
    rankPairWord? case_001125_word = some case_001125_rank := by
  decide

private theorem case_001125_unrank :
    unrankPairWord case_001125_rank = case_001125_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001125_word case_001125_rank).1
    case_001125_rankWord |>.symm

private theorem case_001125_seqChoice :
    translationChoiceSeq case_001125_word case_001125_mask = case_001125_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001125_seqAtRank :
    translationSeqAtRankMask case_001125_rank case_001125_mask = case_001125_seq := by
  rw [translationSeqAtRankMask, case_001125_unrank]
  exact case_001125_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001125_bAtRank :
    translationBAtRankMask case_001125_rank case_001125_mask = case_001125_b := by
  rw [translationBAtRankMask, case_001125_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001125_b, case_001125_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001125_firstLine_eq :
    case_001125_support.firstLine case_001125_seq case_001125_b = case_001125_firstLine := by
  norm_num [case_001125_firstLine, case_001125_support, case_001125_seq, case_001125_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001125_secondLine_eq :
    case_001125_support.secondLine case_001125_seq case_001125_b = case_001125_secondLine := by
  norm_num [case_001125_secondLine, case_001125_support, case_001125_seq, case_001125_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001125_sourceAgrees :
    SourceAgrees case_001125_support case_001125_rank.val case_001125_mask := by
  intro hlt
  have hrank : (⟨case_001125_rank.val, hlt⟩ : Fin numPairWords) = case_001125_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001125_rank.val, hlt⟩ case_001125_mask =
        case_001125_seq := by
    simpa [hrank] using case_001125_seqAtRank
  simp [SourceChecks, hseq, case_001125_support,
    checkTranslationConstraintSource, case_001125_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001125_rows :
    EqEqPosVarFirstRows case_001125_support case_001125_rank.val case_001125_mask := by
  intro hlt
  have hrank : (⟨case_001125_rank.val, hlt⟩ : Fin numPairWords) = case_001125_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001125_rank.val, hlt⟩ case_001125_mask =
        case_001125_seq := by
    simpa [hrank] using case_001125_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001125_rank.val, hlt⟩ case_001125_mask =
        case_001125_b := by
    simpa [hrank] using case_001125_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001125_support case_001125_rank.val hlt
          case_001125_mask = case_001125_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001125_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001125_support case_001125_rank.val hlt
          case_001125_mask = case_001125_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001125_secondLine_eq]
  have case_001125_rowFirst :
      EqEqPosRow (FirstLineAt case_001125_support case_001125_rank.val hlt case_001125_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001125_firstLine, EqEqPosRow]
  have case_001125_fixedSecond :
      FixedRow (SecondLineAt case_001125_support case_001125_rank.val hlt case_001125_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001125_secondLine, FixedRow]
  exact ⟨case_001125_rowFirst, case_001125_fixedSecond⟩

private theorem case_001125_existsRows :
    ExistsEqEqPosVarFirstRows case_001125_rank.val case_001125_mask :=
  ⟨case_001125_support, case_001125_sourceAgrees, case_001125_rows⟩

private theorem case_001125_covered :
    RowPropertyParametricCovered case_001125_rank.val case_001125_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001125_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001126_rank : Fin numPairWords := ⟨821, by decide⟩
private def case_001126_mask : SignMask := ⟨28, by decide⟩
private def case_001126_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001126_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001126_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001126_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_001126_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_001126_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001126_rankWord :
    rankPairWord? case_001126_word = some case_001126_rank := by
  decide

private theorem case_001126_unrank :
    unrankPairWord case_001126_rank = case_001126_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001126_word case_001126_rank).1
    case_001126_rankWord |>.symm

private theorem case_001126_seqChoice :
    translationChoiceSeq case_001126_word case_001126_mask = case_001126_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001126_seqAtRank :
    translationSeqAtRankMask case_001126_rank case_001126_mask = case_001126_seq := by
  rw [translationSeqAtRankMask, case_001126_unrank]
  exact case_001126_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001126_bAtRank :
    translationBAtRankMask case_001126_rank case_001126_mask = case_001126_b := by
  rw [translationBAtRankMask, case_001126_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001126_b, case_001126_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001126_firstLine_eq :
    case_001126_support.firstLine case_001126_seq case_001126_b = case_001126_firstLine := by
  norm_num [case_001126_firstLine, case_001126_support, case_001126_seq, case_001126_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001126_secondLine_eq :
    case_001126_support.secondLine case_001126_seq case_001126_b = case_001126_secondLine := by
  norm_num [case_001126_secondLine, case_001126_support, case_001126_seq, case_001126_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001126_sourceAgrees :
    SourceAgrees case_001126_support case_001126_rank.val case_001126_mask := by
  intro hlt
  have hrank : (⟨case_001126_rank.val, hlt⟩ : Fin numPairWords) = case_001126_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001126_rank.val, hlt⟩ case_001126_mask =
        case_001126_seq := by
    simpa [hrank] using case_001126_seqAtRank
  simp [SourceChecks, hseq, case_001126_support,
    checkTranslationConstraintSource, case_001126_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001126_rows :
    OppOneMinusVarFirstRows case_001126_support case_001126_rank.val case_001126_mask := by
  intro hlt
  have hrank : (⟨case_001126_rank.val, hlt⟩ : Fin numPairWords) = case_001126_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001126_rank.val, hlt⟩ case_001126_mask =
        case_001126_seq := by
    simpa [hrank] using case_001126_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001126_rank.val, hlt⟩ case_001126_mask =
        case_001126_b := by
    simpa [hrank] using case_001126_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001126_support case_001126_rank.val hlt
          case_001126_mask = case_001126_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001126_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001126_support case_001126_rank.val hlt
          case_001126_mask = case_001126_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001126_secondLine_eq]
  have case_001126_rowFirst :
      OppPosRow (FirstLineAt case_001126_support case_001126_rank.val hlt case_001126_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001126_firstLine, OppPosRow]
  have case_001126_fixedSecond :
      FixedRow (SecondLineAt case_001126_support case_001126_rank.val hlt case_001126_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001126_secondLine, FixedRow]
  exact ⟨case_001126_rowFirst, case_001126_fixedSecond⟩

private theorem case_001126_existsRows :
    ExistsOppOneMinusVarFirstRows case_001126_rank.val case_001126_mask :=
  ⟨case_001126_support, case_001126_sourceAgrees, case_001126_rows⟩

private theorem case_001126_covered :
    RowPropertyParametricCovered case_001126_rank.val case_001126_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001126_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001127_rank : Fin numPairWords := ⟨821, by decide⟩
private def case_001127_mask : SignMask := ⟨30, by decide⟩
private def case_001127_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001127_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001127_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001127_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_001127_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001127_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001127_rankWord :
    rankPairWord? case_001127_word = some case_001127_rank := by
  decide

private theorem case_001127_unrank :
    unrankPairWord case_001127_rank = case_001127_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001127_word case_001127_rank).1
    case_001127_rankWord |>.symm

private theorem case_001127_seqChoice :
    translationChoiceSeq case_001127_word case_001127_mask = case_001127_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001127_seqAtRank :
    translationSeqAtRankMask case_001127_rank case_001127_mask = case_001127_seq := by
  rw [translationSeqAtRankMask, case_001127_unrank]
  exact case_001127_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001127_bAtRank :
    translationBAtRankMask case_001127_rank case_001127_mask = case_001127_b := by
  rw [translationBAtRankMask, case_001127_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001127_b, case_001127_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001127_firstLine_eq :
    case_001127_support.firstLine case_001127_seq case_001127_b = case_001127_firstLine := by
  norm_num [case_001127_firstLine, case_001127_support, case_001127_seq, case_001127_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001127_secondLine_eq :
    case_001127_support.secondLine case_001127_seq case_001127_b = case_001127_secondLine := by
  norm_num [case_001127_secondLine, case_001127_support, case_001127_seq, case_001127_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001127_sourceAgrees :
    SourceAgrees case_001127_support case_001127_rank.val case_001127_mask := by
  intro hlt
  have hrank : (⟨case_001127_rank.val, hlt⟩ : Fin numPairWords) = case_001127_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001127_rank.val, hlt⟩ case_001127_mask =
        case_001127_seq := by
    simpa [hrank] using case_001127_seqAtRank
  simp [SourceChecks, hseq, case_001127_support,
    checkTranslationConstraintSource, case_001127_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001127_rows :
    EqEqPosVarFirstRows case_001127_support case_001127_rank.val case_001127_mask := by
  intro hlt
  have hrank : (⟨case_001127_rank.val, hlt⟩ : Fin numPairWords) = case_001127_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001127_rank.val, hlt⟩ case_001127_mask =
        case_001127_seq := by
    simpa [hrank] using case_001127_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001127_rank.val, hlt⟩ case_001127_mask =
        case_001127_b := by
    simpa [hrank] using case_001127_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001127_support case_001127_rank.val hlt
          case_001127_mask = case_001127_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001127_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001127_support case_001127_rank.val hlt
          case_001127_mask = case_001127_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001127_secondLine_eq]
  have case_001127_rowFirst :
      EqEqPosRow (FirstLineAt case_001127_support case_001127_rank.val hlt case_001127_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001127_firstLine, EqEqPosRow]
  have case_001127_fixedSecond :
      FixedRow (SecondLineAt case_001127_support case_001127_rank.val hlt case_001127_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001127_secondLine, FixedRow]
  exact ⟨case_001127_rowFirst, case_001127_fixedSecond⟩

private theorem case_001127_existsRows :
    ExistsEqEqPosVarFirstRows case_001127_rank.val case_001127_mask :=
  ⟨case_001127_support, case_001127_sourceAgrees, case_001127_rows⟩

private theorem case_001127_covered :
    RowPropertyParametricCovered case_001127_rank.val case_001127_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001127_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001128_rank : Fin numPairWords := ⟨821, by decide⟩
private def case_001128_mask : SignMask := ⟨54, by decide⟩
private def case_001128_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001128_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_001128_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_001128_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (100/9) }
private def case_001128_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001128_secondLine : StrictLin2 := { a := (-1/2), b := (-1/2), c := -3 }

private theorem case_001128_rankWord :
    rankPairWord? case_001128_word = some case_001128_rank := by
  decide

private theorem case_001128_unrank :
    unrankPairWord case_001128_rank = case_001128_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001128_word case_001128_rank).1
    case_001128_rankWord |>.symm

private theorem case_001128_seqChoice :
    translationChoiceSeq case_001128_word case_001128_mask = case_001128_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001128_seqAtRank :
    translationSeqAtRankMask case_001128_rank case_001128_mask = case_001128_seq := by
  rw [translationSeqAtRankMask, case_001128_unrank]
  exact case_001128_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001128_bAtRank :
    translationBAtRankMask case_001128_rank case_001128_mask = case_001128_b := by
  rw [translationBAtRankMask, case_001128_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001128_b, case_001128_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001128_firstLine_eq :
    case_001128_support.firstLine case_001128_seq case_001128_b = case_001128_firstLine := by
  norm_num [case_001128_firstLine, case_001128_support, case_001128_seq, case_001128_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001128_secondLine_eq :
    case_001128_support.secondLine case_001128_seq case_001128_b = case_001128_secondLine := by
  norm_num [case_001128_secondLine, case_001128_support, case_001128_seq, case_001128_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001128_sourceAgrees :
    SourceAgrees case_001128_support case_001128_rank.val case_001128_mask := by
  intro hlt
  have hrank : (⟨case_001128_rank.val, hlt⟩ : Fin numPairWords) = case_001128_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001128_rank.val, hlt⟩ case_001128_mask =
        case_001128_seq := by
    simpa [hrank] using case_001128_seqAtRank
  simp [SourceChecks, hseq, case_001128_support,
    checkTranslationConstraintSource, case_001128_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001128_rows :
    EqEqPosVarSecondRows case_001128_support case_001128_rank.val case_001128_mask := by
  intro hlt
  have hrank : (⟨case_001128_rank.val, hlt⟩ : Fin numPairWords) = case_001128_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001128_rank.val, hlt⟩ case_001128_mask =
        case_001128_seq := by
    simpa [hrank] using case_001128_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001128_rank.val, hlt⟩ case_001128_mask =
        case_001128_b := by
    simpa [hrank] using case_001128_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001128_support case_001128_rank.val hlt
          case_001128_mask = case_001128_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001128_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001128_support case_001128_rank.val hlt
          case_001128_mask = case_001128_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001128_secondLine_eq]
  have case_001128_fixedFirst :
      FixedRow (FirstLineAt case_001128_support case_001128_rank.val hlt case_001128_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001128_firstLine, FixedRow]
  have case_001128_rowSecond :
      EqEqPosRow (SecondLineAt case_001128_support case_001128_rank.val hlt case_001128_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001128_secondLine, EqEqPosRow]
  exact ⟨case_001128_fixedFirst, case_001128_rowSecond⟩

private theorem case_001128_existsRows :
    ExistsEqEqPosVarSecondRows case_001128_rank.val case_001128_mask :=
  ⟨case_001128_support, case_001128_sourceAgrees, case_001128_rows⟩

private theorem case_001128_covered :
    RowPropertyParametricCovered case_001128_rank.val case_001128_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001128_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001129_rank : Fin numPairWords := ⟨821, by decide⟩
private def case_001129_mask : SignMask := ⟨55, by decide⟩
private def case_001129_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩
private def case_001129_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def case_001129_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmm
private def case_001129_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (100/9) }
private def case_001129_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001129_secondLine : StrictLin2 := { a := (-1/42), b := (-1/42), c := (-4/7) }

private theorem case_001129_rankWord :
    rankPairWord? case_001129_word = some case_001129_rank := by
  decide

private theorem case_001129_unrank :
    unrankPairWord case_001129_rank = case_001129_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001129_word case_001129_rank).1
    case_001129_rankWord |>.symm

private theorem case_001129_seqChoice :
    translationChoiceSeq case_001129_word case_001129_mask = case_001129_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001129_seqAtRank :
    translationSeqAtRankMask case_001129_rank case_001129_mask = case_001129_seq := by
  rw [translationSeqAtRankMask, case_001129_unrank]
  exact case_001129_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001129_bAtRank :
    translationBAtRankMask case_001129_rank case_001129_mask = case_001129_b := by
  rw [translationBAtRankMask, case_001129_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001129_b, case_001129_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001129_firstLine_eq :
    case_001129_support.firstLine case_001129_seq case_001129_b = case_001129_firstLine := by
  norm_num [case_001129_firstLine, case_001129_support, case_001129_seq, case_001129_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001129_secondLine_eq :
    case_001129_support.secondLine case_001129_seq case_001129_b = case_001129_secondLine := by
  norm_num [case_001129_secondLine, case_001129_support, case_001129_seq, case_001129_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001129_sourceAgrees :
    SourceAgrees case_001129_support case_001129_rank.val case_001129_mask := by
  intro hlt
  have hrank : (⟨case_001129_rank.val, hlt⟩ : Fin numPairWords) = case_001129_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001129_rank.val, hlt⟩ case_001129_mask =
        case_001129_seq := by
    simpa [hrank] using case_001129_seqAtRank
  simp [SourceChecks, hseq, case_001129_support,
    checkTranslationConstraintSource, case_001129_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001129_rows :
    EqEqPosVarSecondRows case_001129_support case_001129_rank.val case_001129_mask := by
  intro hlt
  have hrank : (⟨case_001129_rank.val, hlt⟩ : Fin numPairWords) = case_001129_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001129_rank.val, hlt⟩ case_001129_mask =
        case_001129_seq := by
    simpa [hrank] using case_001129_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001129_rank.val, hlt⟩ case_001129_mask =
        case_001129_b := by
    simpa [hrank] using case_001129_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001129_support case_001129_rank.val hlt
          case_001129_mask = case_001129_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001129_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001129_support case_001129_rank.val hlt
          case_001129_mask = case_001129_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001129_secondLine_eq]
  have case_001129_fixedFirst :
      FixedRow (FirstLineAt case_001129_support case_001129_rank.val hlt case_001129_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001129_firstLine, FixedRow]
  have case_001129_rowSecond :
      EqEqPosRow (SecondLineAt case_001129_support case_001129_rank.val hlt case_001129_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001129_secondLine, EqEqPosRow]
  exact ⟨case_001129_fixedFirst, case_001129_rowSecond⟩

private theorem case_001129_existsRows :
    ExistsEqEqPosVarSecondRows case_001129_rank.val case_001129_mask :=
  ⟨case_001129_support, case_001129_sourceAgrees, case_001129_rows⟩

private theorem case_001129_covered :
    RowPropertyParametricCovered case_001129_rank.val case_001129_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001129_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001130_rank : Fin numPairWords := ⟨827, by decide⟩
private def case_001130_mask : SignMask := ⟨13, by decide⟩
private def case_001130_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_001130_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001130_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_001130_b : Vec3 Rat := { x := (-332/27), y := (428/27), z := (-172/27) }
private def case_001130_firstLine : StrictLin2 := { a := (-83/233), b := (83/233), c := (-147/233) }
private def case_001130_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001130_rankWord :
    rankPairWord? case_001130_word = some case_001130_rank := by
  decide

private theorem case_001130_unrank :
    unrankPairWord case_001130_rank = case_001130_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001130_word case_001130_rank).1
    case_001130_rankWord |>.symm

private theorem case_001130_seqChoice :
    translationChoiceSeq case_001130_word case_001130_mask = case_001130_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001130_seqAtRank :
    translationSeqAtRankMask case_001130_rank case_001130_mask = case_001130_seq := by
  rw [translationSeqAtRankMask, case_001130_unrank]
  exact case_001130_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001130_bAtRank :
    translationBAtRankMask case_001130_rank case_001130_mask = case_001130_b := by
  rw [translationBAtRankMask, case_001130_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001130_b, case_001130_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001130_firstLine_eq :
    case_001130_support.firstLine case_001130_seq case_001130_b = case_001130_firstLine := by
  norm_num [case_001130_firstLine, case_001130_support, case_001130_seq, case_001130_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001130_secondLine_eq :
    case_001130_support.secondLine case_001130_seq case_001130_b = case_001130_secondLine := by
  norm_num [case_001130_secondLine, case_001130_support, case_001130_seq, case_001130_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001130_sourceAgrees :
    SourceAgrees case_001130_support case_001130_rank.val case_001130_mask := by
  intro hlt
  have hrank : (⟨case_001130_rank.val, hlt⟩ : Fin numPairWords) = case_001130_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001130_rank.val, hlt⟩ case_001130_mask =
        case_001130_seq := by
    simpa [hrank] using case_001130_seqAtRank
  simp [SourceChecks, hseq, case_001130_support,
    checkTranslationConstraintSource, case_001130_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001130_rows :
    OppOneMinusVarFirstRows case_001130_support case_001130_rank.val case_001130_mask := by
  intro hlt
  have hrank : (⟨case_001130_rank.val, hlt⟩ : Fin numPairWords) = case_001130_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001130_rank.val, hlt⟩ case_001130_mask =
        case_001130_seq := by
    simpa [hrank] using case_001130_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001130_rank.val, hlt⟩ case_001130_mask =
        case_001130_b := by
    simpa [hrank] using case_001130_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001130_support case_001130_rank.val hlt
          case_001130_mask = case_001130_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001130_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001130_support case_001130_rank.val hlt
          case_001130_mask = case_001130_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001130_secondLine_eq]
  have case_001130_rowFirst :
      OppPosRow (FirstLineAt case_001130_support case_001130_rank.val hlt case_001130_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001130_firstLine, OppPosRow]
  have case_001130_fixedSecond :
      FixedRow (SecondLineAt case_001130_support case_001130_rank.val hlt case_001130_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001130_secondLine, FixedRow]
  exact ⟨case_001130_rowFirst, case_001130_fixedSecond⟩

private theorem case_001130_existsRows :
    ExistsOppOneMinusVarFirstRows case_001130_rank.val case_001130_mask :=
  ⟨case_001130_support, case_001130_sourceAgrees, case_001130_rows⟩

private theorem case_001130_covered :
    RowPropertyParametricCovered case_001130_rank.val case_001130_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001130_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001131_rank : Fin numPairWords := ⟨827, by decide⟩
private def case_001131_mask : SignMask := ⟨15, by decide⟩
private def case_001131_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_001131_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001131_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_001131_b : Vec3 Rat := { x := (-332/27), y := (428/27), z := (44/27) }
private def case_001131_firstLine : StrictLin2 := { a := 1, b := -1, c := (-109/83) }
private def case_001131_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001131_rankWord :
    rankPairWord? case_001131_word = some case_001131_rank := by
  decide

private theorem case_001131_unrank :
    unrankPairWord case_001131_rank = case_001131_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001131_word case_001131_rank).1
    case_001131_rankWord |>.symm

private theorem case_001131_seqChoice :
    translationChoiceSeq case_001131_word case_001131_mask = case_001131_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001131_seqAtRank :
    translationSeqAtRankMask case_001131_rank case_001131_mask = case_001131_seq := by
  rw [translationSeqAtRankMask, case_001131_unrank]
  exact case_001131_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001131_bAtRank :
    translationBAtRankMask case_001131_rank case_001131_mask = case_001131_b := by
  rw [translationBAtRankMask, case_001131_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001131_b, case_001131_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001131_firstLine_eq :
    case_001131_support.firstLine case_001131_seq case_001131_b = case_001131_firstLine := by
  norm_num [case_001131_firstLine, case_001131_support, case_001131_seq, case_001131_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001131_secondLine_eq :
    case_001131_support.secondLine case_001131_seq case_001131_b = case_001131_secondLine := by
  norm_num [case_001131_secondLine, case_001131_support, case_001131_seq, case_001131_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001131_sourceAgrees :
    SourceAgrees case_001131_support case_001131_rank.val case_001131_mask := by
  intro hlt
  have hrank : (⟨case_001131_rank.val, hlt⟩ : Fin numPairWords) = case_001131_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001131_rank.val, hlt⟩ case_001131_mask =
        case_001131_seq := by
    simpa [hrank] using case_001131_seqAtRank
  simp [SourceChecks, hseq, case_001131_support,
    checkTranslationConstraintSource, case_001131_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001131_rows :
    OppMinusOneVarFirstRows case_001131_support case_001131_rank.val case_001131_mask := by
  intro hlt
  have hrank : (⟨case_001131_rank.val, hlt⟩ : Fin numPairWords) = case_001131_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001131_rank.val, hlt⟩ case_001131_mask =
        case_001131_seq := by
    simpa [hrank] using case_001131_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001131_rank.val, hlt⟩ case_001131_mask =
        case_001131_b := by
    simpa [hrank] using case_001131_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001131_support case_001131_rank.val hlt
          case_001131_mask = case_001131_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001131_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001131_support case_001131_rank.val hlt
          case_001131_mask = case_001131_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001131_secondLine_eq]
  have case_001131_rowFirst :
      OppNegRow (FirstLineAt case_001131_support case_001131_rank.val hlt case_001131_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001131_firstLine, OppNegRow]
  have case_001131_fixedSecond :
      FixedRow (SecondLineAt case_001131_support case_001131_rank.val hlt case_001131_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001131_secondLine, FixedRow]
  exact ⟨case_001131_rowFirst, case_001131_fixedSecond⟩

private theorem case_001131_existsRows :
    ExistsOppMinusOneVarFirstRows case_001131_rank.val case_001131_mask :=
  ⟨case_001131_support, case_001131_sourceAgrees, case_001131_rows⟩

private theorem case_001131_covered :
    RowPropertyParametricCovered case_001131_rank.val case_001131_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001131_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001132_rank : Fin numPairWords := ⟨827, by decide⟩
private def case_001132_mask : SignMask := ⟨22, by decide⟩
private def case_001132_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_001132_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001132_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001132_b : Vec3 Rat := { x := (-236/27), y := (-172/27), z := (236/27) }
private def case_001132_firstLine : StrictLin2 := { a := -1, b := 1, c := (-145/59) }
private def case_001132_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001132_rankWord :
    rankPairWord? case_001132_word = some case_001132_rank := by
  decide

private theorem case_001132_unrank :
    unrankPairWord case_001132_rank = case_001132_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001132_word case_001132_rank).1
    case_001132_rankWord |>.symm

private theorem case_001132_seqChoice :
    translationChoiceSeq case_001132_word case_001132_mask = case_001132_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001132_seqAtRank :
    translationSeqAtRankMask case_001132_rank case_001132_mask = case_001132_seq := by
  rw [translationSeqAtRankMask, case_001132_unrank]
  exact case_001132_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001132_bAtRank :
    translationBAtRankMask case_001132_rank case_001132_mask = case_001132_b := by
  rw [translationBAtRankMask, case_001132_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001132_b, case_001132_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001132_firstLine_eq :
    case_001132_support.firstLine case_001132_seq case_001132_b = case_001132_firstLine := by
  norm_num [case_001132_firstLine, case_001132_support, case_001132_seq, case_001132_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001132_secondLine_eq :
    case_001132_support.secondLine case_001132_seq case_001132_b = case_001132_secondLine := by
  norm_num [case_001132_secondLine, case_001132_support, case_001132_seq, case_001132_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001132_sourceAgrees :
    SourceAgrees case_001132_support case_001132_rank.val case_001132_mask := by
  intro hlt
  have hrank : (⟨case_001132_rank.val, hlt⟩ : Fin numPairWords) = case_001132_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001132_rank.val, hlt⟩ case_001132_mask =
        case_001132_seq := by
    simpa [hrank] using case_001132_seqAtRank
  simp [SourceChecks, hseq, case_001132_support,
    checkTranslationConstraintSource, case_001132_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001132_rows :
    OppOneMinusVarFirstRows case_001132_support case_001132_rank.val case_001132_mask := by
  intro hlt
  have hrank : (⟨case_001132_rank.val, hlt⟩ : Fin numPairWords) = case_001132_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001132_rank.val, hlt⟩ case_001132_mask =
        case_001132_seq := by
    simpa [hrank] using case_001132_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001132_rank.val, hlt⟩ case_001132_mask =
        case_001132_b := by
    simpa [hrank] using case_001132_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001132_support case_001132_rank.val hlt
          case_001132_mask = case_001132_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001132_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001132_support case_001132_rank.val hlt
          case_001132_mask = case_001132_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001132_secondLine_eq]
  have case_001132_rowFirst :
      OppPosRow (FirstLineAt case_001132_support case_001132_rank.val hlt case_001132_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001132_firstLine, OppPosRow]
  have case_001132_fixedSecond :
      FixedRow (SecondLineAt case_001132_support case_001132_rank.val hlt case_001132_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001132_secondLine, FixedRow]
  exact ⟨case_001132_rowFirst, case_001132_fixedSecond⟩

private theorem case_001132_existsRows :
    ExistsOppOneMinusVarFirstRows case_001132_rank.val case_001132_mask :=
  ⟨case_001132_support, case_001132_sourceAgrees, case_001132_rows⟩

private theorem case_001132_covered :
    RowPropertyParametricCovered case_001132_rank.val case_001132_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001132_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001133_rank : Fin numPairWords := ⟨827, by decide⟩
private def case_001133_mask : SignMask := ⟨24, by decide⟩
private def case_001133_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_001133_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001133_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_001133_b : Vec3 Rat := { x := (-236/27), y := (-172/27), z := (-268/27) }
private def case_001133_firstLine : StrictLin2 := { a := -1, b := -1, c := (-161/59) }
private def case_001133_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001133_rankWord :
    rankPairWord? case_001133_word = some case_001133_rank := by
  decide

private theorem case_001133_unrank :
    unrankPairWord case_001133_rank = case_001133_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001133_word case_001133_rank).1
    case_001133_rankWord |>.symm

private theorem case_001133_seqChoice :
    translationChoiceSeq case_001133_word case_001133_mask = case_001133_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001133_seqAtRank :
    translationSeqAtRankMask case_001133_rank case_001133_mask = case_001133_seq := by
  rw [translationSeqAtRankMask, case_001133_unrank]
  exact case_001133_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001133_bAtRank :
    translationBAtRankMask case_001133_rank case_001133_mask = case_001133_b := by
  rw [translationBAtRankMask, case_001133_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001133_b, case_001133_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001133_firstLine_eq :
    case_001133_support.firstLine case_001133_seq case_001133_b = case_001133_firstLine := by
  norm_num [case_001133_firstLine, case_001133_support, case_001133_seq, case_001133_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001133_secondLine_eq :
    case_001133_support.secondLine case_001133_seq case_001133_b = case_001133_secondLine := by
  norm_num [case_001133_secondLine, case_001133_support, case_001133_seq, case_001133_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001133_sourceAgrees :
    SourceAgrees case_001133_support case_001133_rank.val case_001133_mask := by
  intro hlt
  have hrank : (⟨case_001133_rank.val, hlt⟩ : Fin numPairWords) = case_001133_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001133_rank.val, hlt⟩ case_001133_mask =
        case_001133_seq := by
    simpa [hrank] using case_001133_seqAtRank
  simp [SourceChecks, hseq, case_001133_support,
    checkTranslationConstraintSource, case_001133_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001133_rows :
    EqEqPosVarFirstRows case_001133_support case_001133_rank.val case_001133_mask := by
  intro hlt
  have hrank : (⟨case_001133_rank.val, hlt⟩ : Fin numPairWords) = case_001133_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001133_rank.val, hlt⟩ case_001133_mask =
        case_001133_seq := by
    simpa [hrank] using case_001133_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001133_rank.val, hlt⟩ case_001133_mask =
        case_001133_b := by
    simpa [hrank] using case_001133_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001133_support case_001133_rank.val hlt
          case_001133_mask = case_001133_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001133_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001133_support case_001133_rank.val hlt
          case_001133_mask = case_001133_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001133_secondLine_eq]
  have case_001133_rowFirst :
      EqEqPosRow (FirstLineAt case_001133_support case_001133_rank.val hlt case_001133_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001133_firstLine, EqEqPosRow]
  have case_001133_fixedSecond :
      FixedRow (SecondLineAt case_001133_support case_001133_rank.val hlt case_001133_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001133_secondLine, FixedRow]
  exact ⟨case_001133_rowFirst, case_001133_fixedSecond⟩

private theorem case_001133_existsRows :
    ExistsEqEqPosVarFirstRows case_001133_rank.val case_001133_mask :=
  ⟨case_001133_support, case_001133_sourceAgrees, case_001133_rows⟩

private theorem case_001133_covered :
    RowPropertyParametricCovered case_001133_rank.val case_001133_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001133_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001134_rank : Fin numPairWords := ⟨827, by decide⟩
private def case_001134_mask : SignMask := ⟨28, by decide⟩
private def case_001134_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_001134_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001134_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001134_b : Vec3 Rat := { x := (-380/27), y := (-28/27), z := (-124/27) }
private def case_001134_firstLine : StrictLin2 := { a := (-190/119), b := (190/119), c := (-1084/357) }
private def case_001134_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001134_rankWord :
    rankPairWord? case_001134_word = some case_001134_rank := by
  decide

private theorem case_001134_unrank :
    unrankPairWord case_001134_rank = case_001134_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001134_word case_001134_rank).1
    case_001134_rankWord |>.symm

private theorem case_001134_seqChoice :
    translationChoiceSeq case_001134_word case_001134_mask = case_001134_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001134_seqAtRank :
    translationSeqAtRankMask case_001134_rank case_001134_mask = case_001134_seq := by
  rw [translationSeqAtRankMask, case_001134_unrank]
  exact case_001134_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001134_bAtRank :
    translationBAtRankMask case_001134_rank case_001134_mask = case_001134_b := by
  rw [translationBAtRankMask, case_001134_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001134_b, case_001134_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001134_firstLine_eq :
    case_001134_support.firstLine case_001134_seq case_001134_b = case_001134_firstLine := by
  norm_num [case_001134_firstLine, case_001134_support, case_001134_seq, case_001134_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001134_secondLine_eq :
    case_001134_support.secondLine case_001134_seq case_001134_b = case_001134_secondLine := by
  norm_num [case_001134_secondLine, case_001134_support, case_001134_seq, case_001134_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001134_sourceAgrees :
    SourceAgrees case_001134_support case_001134_rank.val case_001134_mask := by
  intro hlt
  have hrank : (⟨case_001134_rank.val, hlt⟩ : Fin numPairWords) = case_001134_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001134_rank.val, hlt⟩ case_001134_mask =
        case_001134_seq := by
    simpa [hrank] using case_001134_seqAtRank
  simp [SourceChecks, hseq, case_001134_support,
    checkTranslationConstraintSource, case_001134_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001134_rows :
    OppOneMinusVarFirstRows case_001134_support case_001134_rank.val case_001134_mask := by
  intro hlt
  have hrank : (⟨case_001134_rank.val, hlt⟩ : Fin numPairWords) = case_001134_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001134_rank.val, hlt⟩ case_001134_mask =
        case_001134_seq := by
    simpa [hrank] using case_001134_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001134_rank.val, hlt⟩ case_001134_mask =
        case_001134_b := by
    simpa [hrank] using case_001134_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001134_support case_001134_rank.val hlt
          case_001134_mask = case_001134_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001134_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001134_support case_001134_rank.val hlt
          case_001134_mask = case_001134_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001134_secondLine_eq]
  have case_001134_rowFirst :
      OppPosRow (FirstLineAt case_001134_support case_001134_rank.val hlt case_001134_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001134_firstLine, OppPosRow]
  have case_001134_fixedSecond :
      FixedRow (SecondLineAt case_001134_support case_001134_rank.val hlt case_001134_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001134_secondLine, FixedRow]
  exact ⟨case_001134_rowFirst, case_001134_fixedSecond⟩

private theorem case_001134_existsRows :
    ExistsOppOneMinusVarFirstRows case_001134_rank.val case_001134_mask :=
  ⟨case_001134_support, case_001134_sourceAgrees, case_001134_rows⟩

private theorem case_001134_covered :
    RowPropertyParametricCovered case_001134_rank.val case_001134_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001134_existsRows

/-- Bounded row-property quotient case `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`. -/
private def case_001135_rank : Fin numPairWords := ⟨827, by decide⟩
private def case_001135_mask : SignMask := ⟨30, by decide⟩
private def case_001135_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_001135_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_001135_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001135_b : Vec3 Rat := { x := (-380/27), y := (-28/27), z := (92/27) }
private def case_001135_firstLine : StrictLin2 := { a := (19/13), b := (-19/13), c := (-83/13) }
private def case_001135_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_001135_rankWord :
    rankPairWord? case_001135_word = some case_001135_rank := by
  decide

private theorem case_001135_unrank :
    unrankPairWord case_001135_rank = case_001135_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001135_word case_001135_rank).1
    case_001135_rankWord |>.symm

private theorem case_001135_seqChoice :
    translationChoiceSeq case_001135_word case_001135_mask = case_001135_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001135_seqAtRank :
    translationSeqAtRankMask case_001135_rank case_001135_mask = case_001135_seq := by
  rw [translationSeqAtRankMask, case_001135_unrank]
  exact case_001135_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001135_bAtRank :
    translationBAtRankMask case_001135_rank case_001135_mask = case_001135_b := by
  rw [translationBAtRankMask, case_001135_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001135_b, case_001135_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001135_firstLine_eq :
    case_001135_support.firstLine case_001135_seq case_001135_b = case_001135_firstLine := by
  norm_num [case_001135_firstLine, case_001135_support, case_001135_seq, case_001135_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001135_secondLine_eq :
    case_001135_support.secondLine case_001135_seq case_001135_b = case_001135_secondLine := by
  norm_num [case_001135_secondLine, case_001135_support, case_001135_seq, case_001135_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001135_sourceAgrees :
    SourceAgrees case_001135_support case_001135_rank.val case_001135_mask := by
  intro hlt
  have hrank : (⟨case_001135_rank.val, hlt⟩ : Fin numPairWords) = case_001135_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001135_rank.val, hlt⟩ case_001135_mask =
        case_001135_seq := by
    simpa [hrank] using case_001135_seqAtRank
  simp [SourceChecks, hseq, case_001135_support,
    checkTranslationConstraintSource, case_001135_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001135_rows :
    OppMinusOneVarFirstRows case_001135_support case_001135_rank.val case_001135_mask := by
  intro hlt
  have hrank : (⟨case_001135_rank.val, hlt⟩ : Fin numPairWords) = case_001135_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001135_rank.val, hlt⟩ case_001135_mask =
        case_001135_seq := by
    simpa [hrank] using case_001135_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001135_rank.val, hlt⟩ case_001135_mask =
        case_001135_b := by
    simpa [hrank] using case_001135_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001135_support case_001135_rank.val hlt
          case_001135_mask = case_001135_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001135_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001135_support case_001135_rank.val hlt
          case_001135_mask = case_001135_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001135_secondLine_eq]
  have case_001135_rowFirst :
      OppNegRow (FirstLineAt case_001135_support case_001135_rank.val hlt case_001135_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001135_firstLine, OppNegRow]
  have case_001135_fixedSecond :
      FixedRow (SecondLineAt case_001135_support case_001135_rank.val hlt case_001135_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001135_secondLine, FixedRow]
  exact ⟨case_001135_rowFirst, case_001135_fixedSecond⟩

private theorem case_001135_existsRows :
    ExistsOppMinusOneVarFirstRows case_001135_rank.val case_001135_mask :=
  ⟨case_001135_support, case_001135_sourceAgrees, case_001135_rows⟩

private theorem case_001135_covered :
    RowPropertyParametricCovered case_001135_rank.val case_001135_mask :=
  RowPropertyParametricCovered.oppMinusOneVarFirst case_001135_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001136_rank : Fin numPairWords := ⟨827, by decide⟩
private def case_001136_mask : SignMask := ⟨54, by decide⟩
private def case_001136_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111], by decide⟩
private def case_001136_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001136_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_001136_b : Vec3 Rat := { x := (-28/27), y := (-284/27), z := (316/27) }
private def case_001136_firstLine : StrictLin2 := { a := -1, b := 1, c := (-293/7) }
private def case_001136_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001136_rankWord :
    rankPairWord? case_001136_word = some case_001136_rank := by
  decide

private theorem case_001136_unrank :
    unrankPairWord case_001136_rank = case_001136_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001136_word case_001136_rank).1
    case_001136_rankWord |>.symm

private theorem case_001136_seqChoice :
    translationChoiceSeq case_001136_word case_001136_mask = case_001136_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001136_seqAtRank :
    translationSeqAtRankMask case_001136_rank case_001136_mask = case_001136_seq := by
  rw [translationSeqAtRankMask, case_001136_unrank]
  exact case_001136_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001136_bAtRank :
    translationBAtRankMask case_001136_rank case_001136_mask = case_001136_b := by
  rw [translationBAtRankMask, case_001136_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001136_b, case_001136_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001136_firstLine_eq :
    case_001136_support.firstLine case_001136_seq case_001136_b = case_001136_firstLine := by
  norm_num [case_001136_firstLine, case_001136_support, case_001136_seq, case_001136_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001136_secondLine_eq :
    case_001136_support.secondLine case_001136_seq case_001136_b = case_001136_secondLine := by
  norm_num [case_001136_secondLine, case_001136_support, case_001136_seq, case_001136_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001136_sourceAgrees :
    SourceAgrees case_001136_support case_001136_rank.val case_001136_mask := by
  intro hlt
  have hrank : (⟨case_001136_rank.val, hlt⟩ : Fin numPairWords) = case_001136_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001136_rank.val, hlt⟩ case_001136_mask =
        case_001136_seq := by
    simpa [hrank] using case_001136_seqAtRank
  simp [SourceChecks, hseq, case_001136_support,
    checkTranslationConstraintSource, case_001136_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001136_rows :
    OppOneMinusVarFirstRows case_001136_support case_001136_rank.val case_001136_mask := by
  intro hlt
  have hrank : (⟨case_001136_rank.val, hlt⟩ : Fin numPairWords) = case_001136_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001136_rank.val, hlt⟩ case_001136_mask =
        case_001136_seq := by
    simpa [hrank] using case_001136_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001136_rank.val, hlt⟩ case_001136_mask =
        case_001136_b := by
    simpa [hrank] using case_001136_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001136_support case_001136_rank.val hlt
          case_001136_mask = case_001136_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001136_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001136_support case_001136_rank.val hlt
          case_001136_mask = case_001136_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001136_secondLine_eq]
  have case_001136_rowFirst :
      OppPosRow (FirstLineAt case_001136_support case_001136_rank.val hlt case_001136_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001136_firstLine, OppPosRow]
  have case_001136_fixedSecond :
      FixedRow (SecondLineAt case_001136_support case_001136_rank.val hlt case_001136_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001136_secondLine, FixedRow]
  exact ⟨case_001136_rowFirst, case_001136_fixedSecond⟩

private theorem case_001136_existsRows :
    ExistsOppOneMinusVarFirstRows case_001136_rank.val case_001136_mask :=
  ⟨case_001136_support, case_001136_sourceAgrees, case_001136_rows⟩

private theorem case_001136_covered :
    RowPropertyParametricCovered case_001136_rank.val case_001136_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001136_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001137_rank : Fin numPairWords := ⟨834, by decide⟩
private def case_001137_mask : SignMask := ⟨8, by decide⟩
private def case_001137_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_001137_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001137_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001137_b : Vec3 Rat := { x := (-284/27), y := (-28/27), z := (-316/27) }
private def case_001137_firstLine : StrictLin2 := { a := -1, b := -1, c := (-101/71) }
private def case_001137_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001137_rankWord :
    rankPairWord? case_001137_word = some case_001137_rank := by
  decide

private theorem case_001137_unrank :
    unrankPairWord case_001137_rank = case_001137_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001137_word case_001137_rank).1
    case_001137_rankWord |>.symm

private theorem case_001137_seqChoice :
    translationChoiceSeq case_001137_word case_001137_mask = case_001137_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001137_seqAtRank :
    translationSeqAtRankMask case_001137_rank case_001137_mask = case_001137_seq := by
  rw [translationSeqAtRankMask, case_001137_unrank]
  exact case_001137_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001137_bAtRank :
    translationBAtRankMask case_001137_rank case_001137_mask = case_001137_b := by
  rw [translationBAtRankMask, case_001137_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001137_b, case_001137_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001137_firstLine_eq :
    case_001137_support.firstLine case_001137_seq case_001137_b = case_001137_firstLine := by
  norm_num [case_001137_firstLine, case_001137_support, case_001137_seq, case_001137_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001137_secondLine_eq :
    case_001137_support.secondLine case_001137_seq case_001137_b = case_001137_secondLine := by
  norm_num [case_001137_secondLine, case_001137_support, case_001137_seq, case_001137_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001137_sourceAgrees :
    SourceAgrees case_001137_support case_001137_rank.val case_001137_mask := by
  intro hlt
  have hrank : (⟨case_001137_rank.val, hlt⟩ : Fin numPairWords) = case_001137_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001137_rank.val, hlt⟩ case_001137_mask =
        case_001137_seq := by
    simpa [hrank] using case_001137_seqAtRank
  simp [SourceChecks, hseq, case_001137_support,
    checkTranslationConstraintSource, case_001137_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001137_rows :
    EqEqPosVarFirstRows case_001137_support case_001137_rank.val case_001137_mask := by
  intro hlt
  have hrank : (⟨case_001137_rank.val, hlt⟩ : Fin numPairWords) = case_001137_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001137_rank.val, hlt⟩ case_001137_mask =
        case_001137_seq := by
    simpa [hrank] using case_001137_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001137_rank.val, hlt⟩ case_001137_mask =
        case_001137_b := by
    simpa [hrank] using case_001137_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001137_support case_001137_rank.val hlt
          case_001137_mask = case_001137_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001137_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001137_support case_001137_rank.val hlt
          case_001137_mask = case_001137_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001137_secondLine_eq]
  have case_001137_rowFirst :
      EqEqPosRow (FirstLineAt case_001137_support case_001137_rank.val hlt case_001137_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001137_firstLine, EqEqPosRow]
  have case_001137_fixedSecond :
      FixedRow (SecondLineAt case_001137_support case_001137_rank.val hlt case_001137_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001137_secondLine, FixedRow]
  exact ⟨case_001137_rowFirst, case_001137_fixedSecond⟩

private theorem case_001137_existsRows :
    ExistsEqEqPosVarFirstRows case_001137_rank.val case_001137_mask :=
  ⟨case_001137_support, case_001137_sourceAgrees, case_001137_rows⟩

private theorem case_001137_covered :
    RowPropertyParametricCovered case_001137_rank.val case_001137_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001137_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001138_rank : Fin numPairWords := ⟨834, by decide⟩
private def case_001138_mask : SignMask := ⟨13, by decide⟩
private def case_001138_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_001138_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001138_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001138_b : Vec3 Rat := { x := (-428/27), y := (332/27), z := (-172/27) }
private def case_001138_firstLine : StrictLin2 := { a := (-107/233), b := (107/233), c := (-459/233) }
private def case_001138_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001138_rankWord :
    rankPairWord? case_001138_word = some case_001138_rank := by
  decide

private theorem case_001138_unrank :
    unrankPairWord case_001138_rank = case_001138_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001138_word case_001138_rank).1
    case_001138_rankWord |>.symm

private theorem case_001138_seqChoice :
    translationChoiceSeq case_001138_word case_001138_mask = case_001138_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001138_seqAtRank :
    translationSeqAtRankMask case_001138_rank case_001138_mask = case_001138_seq := by
  rw [translationSeqAtRankMask, case_001138_unrank]
  exact case_001138_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001138_bAtRank :
    translationBAtRankMask case_001138_rank case_001138_mask = case_001138_b := by
  rw [translationBAtRankMask, case_001138_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001138_b, case_001138_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001138_firstLine_eq :
    case_001138_support.firstLine case_001138_seq case_001138_b = case_001138_firstLine := by
  norm_num [case_001138_firstLine, case_001138_support, case_001138_seq, case_001138_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001138_secondLine_eq :
    case_001138_support.secondLine case_001138_seq case_001138_b = case_001138_secondLine := by
  norm_num [case_001138_secondLine, case_001138_support, case_001138_seq, case_001138_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001138_sourceAgrees :
    SourceAgrees case_001138_support case_001138_rank.val case_001138_mask := by
  intro hlt
  have hrank : (⟨case_001138_rank.val, hlt⟩ : Fin numPairWords) = case_001138_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001138_rank.val, hlt⟩ case_001138_mask =
        case_001138_seq := by
    simpa [hrank] using case_001138_seqAtRank
  simp [SourceChecks, hseq, case_001138_support,
    checkTranslationConstraintSource, case_001138_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001138_rows :
    OppOneMinusVarFirstRows case_001138_support case_001138_rank.val case_001138_mask := by
  intro hlt
  have hrank : (⟨case_001138_rank.val, hlt⟩ : Fin numPairWords) = case_001138_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001138_rank.val, hlt⟩ case_001138_mask =
        case_001138_seq := by
    simpa [hrank] using case_001138_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001138_rank.val, hlt⟩ case_001138_mask =
        case_001138_b := by
    simpa [hrank] using case_001138_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001138_support case_001138_rank.val hlt
          case_001138_mask = case_001138_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001138_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001138_support case_001138_rank.val hlt
          case_001138_mask = case_001138_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001138_secondLine_eq]
  have case_001138_rowFirst :
      OppPosRow (FirstLineAt case_001138_support case_001138_rank.val hlt case_001138_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001138_firstLine, OppPosRow]
  have case_001138_fixedSecond :
      FixedRow (SecondLineAt case_001138_support case_001138_rank.val hlt case_001138_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001138_secondLine, FixedRow]
  exact ⟨case_001138_rowFirst, case_001138_fixedSecond⟩

private theorem case_001138_existsRows :
    ExistsOppOneMinusVarFirstRows case_001138_rank.val case_001138_mask :=
  ⟨case_001138_support, case_001138_sourceAgrees, case_001138_rows⟩

private theorem case_001138_covered :
    RowPropertyParametricCovered case_001138_rank.val case_001138_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001138_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001139_rank : Fin numPairWords := ⟨834, by decide⟩
private def case_001139_mask : SignMask := ⟨15, by decide⟩
private def case_001139_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_001139_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_001139_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001139_b : Vec3 Rat := { x := (-428/27), y := (332/27), z := (44/27) }
private def case_001139_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001139_secondLine : StrictLin2 := { a := (-321/6566), b := (-321/6566), c := (-29/469) }

private theorem case_001139_rankWord :
    rankPairWord? case_001139_word = some case_001139_rank := by
  decide

private theorem case_001139_unrank :
    unrankPairWord case_001139_rank = case_001139_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001139_word case_001139_rank).1
    case_001139_rankWord |>.symm

private theorem case_001139_seqChoice :
    translationChoiceSeq case_001139_word case_001139_mask = case_001139_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001139_seqAtRank :
    translationSeqAtRankMask case_001139_rank case_001139_mask = case_001139_seq := by
  rw [translationSeqAtRankMask, case_001139_unrank]
  exact case_001139_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001139_bAtRank :
    translationBAtRankMask case_001139_rank case_001139_mask = case_001139_b := by
  rw [translationBAtRankMask, case_001139_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001139_b, case_001139_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001139_firstLine_eq :
    case_001139_support.firstLine case_001139_seq case_001139_b = case_001139_firstLine := by
  norm_num [case_001139_firstLine, case_001139_support, case_001139_seq, case_001139_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001139_secondLine_eq :
    case_001139_support.secondLine case_001139_seq case_001139_b = case_001139_secondLine := by
  norm_num [case_001139_secondLine, case_001139_support, case_001139_seq, case_001139_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001139_sourceAgrees :
    SourceAgrees case_001139_support case_001139_rank.val case_001139_mask := by
  intro hlt
  have hrank : (⟨case_001139_rank.val, hlt⟩ : Fin numPairWords) = case_001139_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001139_rank.val, hlt⟩ case_001139_mask =
        case_001139_seq := by
    simpa [hrank] using case_001139_seqAtRank
  simp [SourceChecks, hseq, case_001139_support,
    checkTranslationConstraintSource, case_001139_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001139_rows :
    EqEqPosVarSecondRows case_001139_support case_001139_rank.val case_001139_mask := by
  intro hlt
  have hrank : (⟨case_001139_rank.val, hlt⟩ : Fin numPairWords) = case_001139_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001139_rank.val, hlt⟩ case_001139_mask =
        case_001139_seq := by
    simpa [hrank] using case_001139_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001139_rank.val, hlt⟩ case_001139_mask =
        case_001139_b := by
    simpa [hrank] using case_001139_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001139_support case_001139_rank.val hlt
          case_001139_mask = case_001139_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001139_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001139_support case_001139_rank.val hlt
          case_001139_mask = case_001139_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001139_secondLine_eq]
  have case_001139_fixedFirst :
      FixedRow (FirstLineAt case_001139_support case_001139_rank.val hlt case_001139_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001139_firstLine, FixedRow]
  have case_001139_rowSecond :
      EqEqPosRow (SecondLineAt case_001139_support case_001139_rank.val hlt case_001139_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001139_secondLine, EqEqPosRow]
  exact ⟨case_001139_fixedFirst, case_001139_rowSecond⟩

private theorem case_001139_existsRows :
    ExistsEqEqPosVarSecondRows case_001139_rank.val case_001139_mask :=
  ⟨case_001139_support, case_001139_sourceAgrees, case_001139_rows⟩

private theorem case_001139_covered :
    RowPropertyParametricCovered case_001139_rank.val case_001139_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001139_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001140_rank : Fin numPairWords := ⟨834, by decide⟩
private def case_001140_mask : SignMask := ⟨16, by decide⟩
private def case_001140_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_001140_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001140_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001140_b : Vec3 Rat := { x := (-28/27), y := (-380/27), z := (-92/27) }
private def case_001140_firstLine : StrictLin2 := { a := -1, b := -1, c := (-229/7) }
private def case_001140_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001140_rankWord :
    rankPairWord? case_001140_word = some case_001140_rank := by
  decide

private theorem case_001140_unrank :
    unrankPairWord case_001140_rank = case_001140_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001140_word case_001140_rank).1
    case_001140_rankWord |>.symm

private theorem case_001140_seqChoice :
    translationChoiceSeq case_001140_word case_001140_mask = case_001140_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001140_seqAtRank :
    translationSeqAtRankMask case_001140_rank case_001140_mask = case_001140_seq := by
  rw [translationSeqAtRankMask, case_001140_unrank]
  exact case_001140_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001140_bAtRank :
    translationBAtRankMask case_001140_rank case_001140_mask = case_001140_b := by
  rw [translationBAtRankMask, case_001140_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001140_b, case_001140_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001140_firstLine_eq :
    case_001140_support.firstLine case_001140_seq case_001140_b = case_001140_firstLine := by
  norm_num [case_001140_firstLine, case_001140_support, case_001140_seq, case_001140_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001140_secondLine_eq :
    case_001140_support.secondLine case_001140_seq case_001140_b = case_001140_secondLine := by
  norm_num [case_001140_secondLine, case_001140_support, case_001140_seq, case_001140_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001140_sourceAgrees :
    SourceAgrees case_001140_support case_001140_rank.val case_001140_mask := by
  intro hlt
  have hrank : (⟨case_001140_rank.val, hlt⟩ : Fin numPairWords) = case_001140_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001140_rank.val, hlt⟩ case_001140_mask =
        case_001140_seq := by
    simpa [hrank] using case_001140_seqAtRank
  simp [SourceChecks, hseq, case_001140_support,
    checkTranslationConstraintSource, case_001140_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001140_rows :
    EqEqPosVarFirstRows case_001140_support case_001140_rank.val case_001140_mask := by
  intro hlt
  have hrank : (⟨case_001140_rank.val, hlt⟩ : Fin numPairWords) = case_001140_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001140_rank.val, hlt⟩ case_001140_mask =
        case_001140_seq := by
    simpa [hrank] using case_001140_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001140_rank.val, hlt⟩ case_001140_mask =
        case_001140_b := by
    simpa [hrank] using case_001140_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001140_support case_001140_rank.val hlt
          case_001140_mask = case_001140_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001140_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001140_support case_001140_rank.val hlt
          case_001140_mask = case_001140_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001140_secondLine_eq]
  have case_001140_rowFirst :
      EqEqPosRow (FirstLineAt case_001140_support case_001140_rank.val hlt case_001140_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001140_firstLine, EqEqPosRow]
  have case_001140_fixedSecond :
      FixedRow (SecondLineAt case_001140_support case_001140_rank.val hlt case_001140_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001140_secondLine, FixedRow]
  exact ⟨case_001140_rowFirst, case_001140_fixedSecond⟩

private theorem case_001140_existsRows :
    ExistsEqEqPosVarFirstRows case_001140_rank.val case_001140_mask :=
  ⟨case_001140_support, case_001140_sourceAgrees, case_001140_rows⟩

private theorem case_001140_covered :
    RowPropertyParametricCovered case_001140_rank.val case_001140_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001140_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001141_rank : Fin numPairWords := ⟨834, by decide⟩
private def case_001141_mask : SignMask := ⟨18, by decide⟩
private def case_001141_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_001141_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001141_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001141_b : Vec3 Rat := { x := (-28/27), y := (-380/27), z := (124/27) }
private def case_001141_firstLine : StrictLin2 := { a := -1, b := -1, c := (-121/7) }
private def case_001141_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001141_rankWord :
    rankPairWord? case_001141_word = some case_001141_rank := by
  decide

private theorem case_001141_unrank :
    unrankPairWord case_001141_rank = case_001141_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001141_word case_001141_rank).1
    case_001141_rankWord |>.symm

private theorem case_001141_seqChoice :
    translationChoiceSeq case_001141_word case_001141_mask = case_001141_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001141_seqAtRank :
    translationSeqAtRankMask case_001141_rank case_001141_mask = case_001141_seq := by
  rw [translationSeqAtRankMask, case_001141_unrank]
  exact case_001141_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001141_bAtRank :
    translationBAtRankMask case_001141_rank case_001141_mask = case_001141_b := by
  rw [translationBAtRankMask, case_001141_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001141_b, case_001141_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001141_firstLine_eq :
    case_001141_support.firstLine case_001141_seq case_001141_b = case_001141_firstLine := by
  norm_num [case_001141_firstLine, case_001141_support, case_001141_seq, case_001141_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001141_secondLine_eq :
    case_001141_support.secondLine case_001141_seq case_001141_b = case_001141_secondLine := by
  norm_num [case_001141_secondLine, case_001141_support, case_001141_seq, case_001141_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001141_sourceAgrees :
    SourceAgrees case_001141_support case_001141_rank.val case_001141_mask := by
  intro hlt
  have hrank : (⟨case_001141_rank.val, hlt⟩ : Fin numPairWords) = case_001141_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001141_rank.val, hlt⟩ case_001141_mask =
        case_001141_seq := by
    simpa [hrank] using case_001141_seqAtRank
  simp [SourceChecks, hseq, case_001141_support,
    checkTranslationConstraintSource, case_001141_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001141_rows :
    EqEqPosVarFirstRows case_001141_support case_001141_rank.val case_001141_mask := by
  intro hlt
  have hrank : (⟨case_001141_rank.val, hlt⟩ : Fin numPairWords) = case_001141_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001141_rank.val, hlt⟩ case_001141_mask =
        case_001141_seq := by
    simpa [hrank] using case_001141_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001141_rank.val, hlt⟩ case_001141_mask =
        case_001141_b := by
    simpa [hrank] using case_001141_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001141_support case_001141_rank.val hlt
          case_001141_mask = case_001141_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001141_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001141_support case_001141_rank.val hlt
          case_001141_mask = case_001141_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001141_secondLine_eq]
  have case_001141_rowFirst :
      EqEqPosRow (FirstLineAt case_001141_support case_001141_rank.val hlt case_001141_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001141_firstLine, EqEqPosRow]
  have case_001141_fixedSecond :
      FixedRow (SecondLineAt case_001141_support case_001141_rank.val hlt case_001141_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001141_secondLine, FixedRow]
  exact ⟨case_001141_rowFirst, case_001141_fixedSecond⟩

private theorem case_001141_existsRows :
    ExistsEqEqPosVarFirstRows case_001141_rank.val case_001141_mask :=
  ⟨case_001141_support, case_001141_sourceAgrees, case_001141_rows⟩

private theorem case_001141_covered :
    RowPropertyParametricCovered case_001141_rank.val case_001141_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001141_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001142_rank : Fin numPairWords := ⟨834, by decide⟩
private def case_001142_mask : SignMask := ⟨22, by decide⟩
private def case_001142_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_001142_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001142_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmm
private def case_001142_b : Vec3 Rat := { x := (-172/27), y := (-236/27), z := (268/27) }
private def case_001142_firstLine : StrictLin2 := { a := (-43/69), b := (-43/69), c := (-151/207) }
private def case_001142_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001142_rankWord :
    rankPairWord? case_001142_word = some case_001142_rank := by
  decide

private theorem case_001142_unrank :
    unrankPairWord case_001142_rank = case_001142_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001142_word case_001142_rank).1
    case_001142_rankWord |>.symm

private theorem case_001142_seqChoice :
    translationChoiceSeq case_001142_word case_001142_mask = case_001142_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001142_seqAtRank :
    translationSeqAtRankMask case_001142_rank case_001142_mask = case_001142_seq := by
  rw [translationSeqAtRankMask, case_001142_unrank]
  exact case_001142_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001142_bAtRank :
    translationBAtRankMask case_001142_rank case_001142_mask = case_001142_b := by
  rw [translationBAtRankMask, case_001142_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001142_b, case_001142_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001142_firstLine_eq :
    case_001142_support.firstLine case_001142_seq case_001142_b = case_001142_firstLine := by
  norm_num [case_001142_firstLine, case_001142_support, case_001142_seq, case_001142_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001142_secondLine_eq :
    case_001142_support.secondLine case_001142_seq case_001142_b = case_001142_secondLine := by
  norm_num [case_001142_secondLine, case_001142_support, case_001142_seq, case_001142_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001142_sourceAgrees :
    SourceAgrees case_001142_support case_001142_rank.val case_001142_mask := by
  intro hlt
  have hrank : (⟨case_001142_rank.val, hlt⟩ : Fin numPairWords) = case_001142_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001142_rank.val, hlt⟩ case_001142_mask =
        case_001142_seq := by
    simpa [hrank] using case_001142_seqAtRank
  simp [SourceChecks, hseq, case_001142_support,
    checkTranslationConstraintSource, case_001142_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001142_rows :
    EqEqPosVarFirstRows case_001142_support case_001142_rank.val case_001142_mask := by
  intro hlt
  have hrank : (⟨case_001142_rank.val, hlt⟩ : Fin numPairWords) = case_001142_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001142_rank.val, hlt⟩ case_001142_mask =
        case_001142_seq := by
    simpa [hrank] using case_001142_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001142_rank.val, hlt⟩ case_001142_mask =
        case_001142_b := by
    simpa [hrank] using case_001142_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001142_support case_001142_rank.val hlt
          case_001142_mask = case_001142_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001142_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001142_support case_001142_rank.val hlt
          case_001142_mask = case_001142_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001142_secondLine_eq]
  have case_001142_rowFirst :
      EqEqPosRow (FirstLineAt case_001142_support case_001142_rank.val hlt case_001142_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001142_firstLine, EqEqPosRow]
  have case_001142_fixedSecond :
      FixedRow (SecondLineAt case_001142_support case_001142_rank.val hlt case_001142_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001142_secondLine, FixedRow]
  exact ⟨case_001142_rowFirst, case_001142_fixedSecond⟩

private theorem case_001142_existsRows :
    ExistsEqEqPosVarFirstRows case_001142_rank.val case_001142_mask :=
  ⟨case_001142_support, case_001142_sourceAgrees, case_001142_rows⟩

private theorem case_001142_covered :
    RowPropertyParametricCovered case_001142_rank.val case_001142_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001142_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001143_rank : Fin numPairWords := ⟨834, by decide⟩
private def case_001143_mask : SignMask := ⟨24, by decide⟩
private def case_001143_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111], by decide⟩
private def case_001143_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001143_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppp
private def case_001143_b : Vec3 Rat := { x := (-172/27), y := (-236/27), z := (-236/27) }
private def case_001143_firstLine : StrictLin2 := { a := -1, b := -1, c := (-193/43) }
private def case_001143_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001143_rankWord :
    rankPairWord? case_001143_word = some case_001143_rank := by
  decide

private theorem case_001143_unrank :
    unrankPairWord case_001143_rank = case_001143_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001143_word case_001143_rank).1
    case_001143_rankWord |>.symm

private theorem case_001143_seqChoice :
    translationChoiceSeq case_001143_word case_001143_mask = case_001143_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001143_seqAtRank :
    translationSeqAtRankMask case_001143_rank case_001143_mask = case_001143_seq := by
  rw [translationSeqAtRankMask, case_001143_unrank]
  exact case_001143_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001143_bAtRank :
    translationBAtRankMask case_001143_rank case_001143_mask = case_001143_b := by
  rw [translationBAtRankMask, case_001143_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001143_b, case_001143_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001143_firstLine_eq :
    case_001143_support.firstLine case_001143_seq case_001143_b = case_001143_firstLine := by
  norm_num [case_001143_firstLine, case_001143_support, case_001143_seq, case_001143_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001143_secondLine_eq :
    case_001143_support.secondLine case_001143_seq case_001143_b = case_001143_secondLine := by
  norm_num [case_001143_secondLine, case_001143_support, case_001143_seq, case_001143_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001143_sourceAgrees :
    SourceAgrees case_001143_support case_001143_rank.val case_001143_mask := by
  intro hlt
  have hrank : (⟨case_001143_rank.val, hlt⟩ : Fin numPairWords) = case_001143_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001143_rank.val, hlt⟩ case_001143_mask =
        case_001143_seq := by
    simpa [hrank] using case_001143_seqAtRank
  simp [SourceChecks, hseq, case_001143_support,
    checkTranslationConstraintSource, case_001143_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001143_rows :
    EqEqPosVarFirstRows case_001143_support case_001143_rank.val case_001143_mask := by
  intro hlt
  have hrank : (⟨case_001143_rank.val, hlt⟩ : Fin numPairWords) = case_001143_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001143_rank.val, hlt⟩ case_001143_mask =
        case_001143_seq := by
    simpa [hrank] using case_001143_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001143_rank.val, hlt⟩ case_001143_mask =
        case_001143_b := by
    simpa [hrank] using case_001143_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001143_support case_001143_rank.val hlt
          case_001143_mask = case_001143_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001143_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001143_support case_001143_rank.val hlt
          case_001143_mask = case_001143_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001143_secondLine_eq]
  have case_001143_rowFirst :
      EqEqPosRow (FirstLineAt case_001143_support case_001143_rank.val hlt case_001143_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001143_firstLine, EqEqPosRow]
  have case_001143_fixedSecond :
      FixedRow (SecondLineAt case_001143_support case_001143_rank.val hlt case_001143_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001143_secondLine, FixedRow]
  exact ⟨case_001143_rowFirst, case_001143_fixedSecond⟩

private theorem case_001143_existsRows :
    ExistsEqEqPosVarFirstRows case_001143_rank.val case_001143_mask :=
  ⟨case_001143_support, case_001143_sourceAgrees, case_001143_rows⟩

private theorem case_001143_covered :
    RowPropertyParametricCovered case_001143_rank.val case_001143_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001143_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001144_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001144_mask : SignMask := ⟨8, by decide⟩
private def case_001144_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001144_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001144_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001144_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-116/9) }
private def case_001144_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001144_secondLine : StrictLin2 := { a := (-13/154), b := (-13/154), c := (-124/231) }

private theorem case_001144_rankWord :
    rankPairWord? case_001144_word = some case_001144_rank := by
  decide

private theorem case_001144_unrank :
    unrankPairWord case_001144_rank = case_001144_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001144_word case_001144_rank).1
    case_001144_rankWord |>.symm

private theorem case_001144_seqChoice :
    translationChoiceSeq case_001144_word case_001144_mask = case_001144_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001144_seqAtRank :
    translationSeqAtRankMask case_001144_rank case_001144_mask = case_001144_seq := by
  rw [translationSeqAtRankMask, case_001144_unrank]
  exact case_001144_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001144_bAtRank :
    translationBAtRankMask case_001144_rank case_001144_mask = case_001144_b := by
  rw [translationBAtRankMask, case_001144_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001144_b, case_001144_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001144_firstLine_eq :
    case_001144_support.firstLine case_001144_seq case_001144_b = case_001144_firstLine := by
  norm_num [case_001144_firstLine, case_001144_support, case_001144_seq, case_001144_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001144_secondLine_eq :
    case_001144_support.secondLine case_001144_seq case_001144_b = case_001144_secondLine := by
  norm_num [case_001144_secondLine, case_001144_support, case_001144_seq, case_001144_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001144_sourceAgrees :
    SourceAgrees case_001144_support case_001144_rank.val case_001144_mask := by
  intro hlt
  have hrank : (⟨case_001144_rank.val, hlt⟩ : Fin numPairWords) = case_001144_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001144_rank.val, hlt⟩ case_001144_mask =
        case_001144_seq := by
    simpa [hrank] using case_001144_seqAtRank
  simp [SourceChecks, hseq, case_001144_support,
    checkTranslationConstraintSource, case_001144_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001144_rows :
    EqEqPosVarSecondRows case_001144_support case_001144_rank.val case_001144_mask := by
  intro hlt
  have hrank : (⟨case_001144_rank.val, hlt⟩ : Fin numPairWords) = case_001144_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001144_rank.val, hlt⟩ case_001144_mask =
        case_001144_seq := by
    simpa [hrank] using case_001144_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001144_rank.val, hlt⟩ case_001144_mask =
        case_001144_b := by
    simpa [hrank] using case_001144_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001144_support case_001144_rank.val hlt
          case_001144_mask = case_001144_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001144_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001144_support case_001144_rank.val hlt
          case_001144_mask = case_001144_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001144_secondLine_eq]
  have case_001144_fixedFirst :
      FixedRow (FirstLineAt case_001144_support case_001144_rank.val hlt case_001144_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001144_firstLine, FixedRow]
  have case_001144_rowSecond :
      EqEqPosRow (SecondLineAt case_001144_support case_001144_rank.val hlt case_001144_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001144_secondLine, EqEqPosRow]
  exact ⟨case_001144_fixedFirst, case_001144_rowSecond⟩

private theorem case_001144_existsRows :
    ExistsEqEqPosVarSecondRows case_001144_rank.val case_001144_mask :=
  ⟨case_001144_support, case_001144_sourceAgrees, case_001144_rows⟩

private theorem case_001144_covered :
    RowPropertyParametricCovered case_001144_rank.val case_001144_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001144_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001145_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001145_mask : SignMask := ⟨9, by decide⟩
private def case_001145_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001145_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001145_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001145_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_001145_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001145_secondLine : StrictLin2 := { a := (-13/18), b := (-13/18), c := (-79/27) }

private theorem case_001145_rankWord :
    rankPairWord? case_001145_word = some case_001145_rank := by
  decide

private theorem case_001145_unrank :
    unrankPairWord case_001145_rank = case_001145_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001145_word case_001145_rank).1
    case_001145_rankWord |>.symm

private theorem case_001145_seqChoice :
    translationChoiceSeq case_001145_word case_001145_mask = case_001145_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001145_seqAtRank :
    translationSeqAtRankMask case_001145_rank case_001145_mask = case_001145_seq := by
  rw [translationSeqAtRankMask, case_001145_unrank]
  exact case_001145_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001145_bAtRank :
    translationBAtRankMask case_001145_rank case_001145_mask = case_001145_b := by
  rw [translationBAtRankMask, case_001145_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001145_b, case_001145_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001145_firstLine_eq :
    case_001145_support.firstLine case_001145_seq case_001145_b = case_001145_firstLine := by
  norm_num [case_001145_firstLine, case_001145_support, case_001145_seq, case_001145_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001145_secondLine_eq :
    case_001145_support.secondLine case_001145_seq case_001145_b = case_001145_secondLine := by
  norm_num [case_001145_secondLine, case_001145_support, case_001145_seq, case_001145_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001145_sourceAgrees :
    SourceAgrees case_001145_support case_001145_rank.val case_001145_mask := by
  intro hlt
  have hrank : (⟨case_001145_rank.val, hlt⟩ : Fin numPairWords) = case_001145_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001145_rank.val, hlt⟩ case_001145_mask =
        case_001145_seq := by
    simpa [hrank] using case_001145_seqAtRank
  simp [SourceChecks, hseq, case_001145_support,
    checkTranslationConstraintSource, case_001145_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001145_rows :
    EqEqPosVarSecondRows case_001145_support case_001145_rank.val case_001145_mask := by
  intro hlt
  have hrank : (⟨case_001145_rank.val, hlt⟩ : Fin numPairWords) = case_001145_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001145_rank.val, hlt⟩ case_001145_mask =
        case_001145_seq := by
    simpa [hrank] using case_001145_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001145_rank.val, hlt⟩ case_001145_mask =
        case_001145_b := by
    simpa [hrank] using case_001145_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001145_support case_001145_rank.val hlt
          case_001145_mask = case_001145_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001145_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001145_support case_001145_rank.val hlt
          case_001145_mask = case_001145_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001145_secondLine_eq]
  have case_001145_fixedFirst :
      FixedRow (FirstLineAt case_001145_support case_001145_rank.val hlt case_001145_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001145_firstLine, FixedRow]
  have case_001145_rowSecond :
      EqEqPosRow (SecondLineAt case_001145_support case_001145_rank.val hlt case_001145_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001145_secondLine, EqEqPosRow]
  exact ⟨case_001145_fixedFirst, case_001145_rowSecond⟩

private theorem case_001145_existsRows :
    ExistsEqEqPosVarSecondRows case_001145_rank.val case_001145_mask :=
  ⟨case_001145_support, case_001145_sourceAgrees, case_001145_rows⟩

private theorem case_001145_covered :
    RowPropertyParametricCovered case_001145_rank.val case_001145_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001145_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001146_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001146_mask : SignMask := ⟨13, by decide⟩
private def case_001146_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001146_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001146_seq : Step14 -> Face
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
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_001146_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_001146_firstLine : StrictLin2 := { a := (-25/67), b := (25/67), c := (-57/67) }
private def case_001146_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001146_rankWord :
    rankPairWord? case_001146_word = some case_001146_rank := by
  decide

private theorem case_001146_unrank :
    unrankPairWord case_001146_rank = case_001146_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001146_word case_001146_rank).1
    case_001146_rankWord |>.symm

private theorem case_001146_seqChoice :
    translationChoiceSeq case_001146_word case_001146_mask = case_001146_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001146_seqAtRank :
    translationSeqAtRankMask case_001146_rank case_001146_mask = case_001146_seq := by
  rw [translationSeqAtRankMask, case_001146_unrank]
  exact case_001146_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001146_bAtRank :
    translationBAtRankMask case_001146_rank case_001146_mask = case_001146_b := by
  rw [translationBAtRankMask, case_001146_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001146_b, case_001146_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001146_firstLine_eq :
    case_001146_support.firstLine case_001146_seq case_001146_b = case_001146_firstLine := by
  norm_num [case_001146_firstLine, case_001146_support, case_001146_seq, case_001146_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001146_secondLine_eq :
    case_001146_support.secondLine case_001146_seq case_001146_b = case_001146_secondLine := by
  norm_num [case_001146_secondLine, case_001146_support, case_001146_seq, case_001146_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001146_sourceAgrees :
    SourceAgrees case_001146_support case_001146_rank.val case_001146_mask := by
  intro hlt
  have hrank : (⟨case_001146_rank.val, hlt⟩ : Fin numPairWords) = case_001146_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001146_rank.val, hlt⟩ case_001146_mask =
        case_001146_seq := by
    simpa [hrank] using case_001146_seqAtRank
  simp [SourceChecks, hseq, case_001146_support,
    checkTranslationConstraintSource, case_001146_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001146_rows :
    OppOneMinusVarFirstRows case_001146_support case_001146_rank.val case_001146_mask := by
  intro hlt
  have hrank : (⟨case_001146_rank.val, hlt⟩ : Fin numPairWords) = case_001146_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001146_rank.val, hlt⟩ case_001146_mask =
        case_001146_seq := by
    simpa [hrank] using case_001146_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001146_rank.val, hlt⟩ case_001146_mask =
        case_001146_b := by
    simpa [hrank] using case_001146_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001146_support case_001146_rank.val hlt
          case_001146_mask = case_001146_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001146_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001146_support case_001146_rank.val hlt
          case_001146_mask = case_001146_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001146_secondLine_eq]
  have case_001146_rowFirst :
      OppPosRow (FirstLineAt case_001146_support case_001146_rank.val hlt case_001146_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001146_firstLine, OppPosRow]
  have case_001146_fixedSecond :
      FixedRow (SecondLineAt case_001146_support case_001146_rank.val hlt case_001146_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001146_secondLine, FixedRow]
  exact ⟨case_001146_rowFirst, case_001146_fixedSecond⟩

private theorem case_001146_existsRows :
    ExistsOppOneMinusVarFirstRows case_001146_rank.val case_001146_mask :=
  ⟨case_001146_support, case_001146_sourceAgrees, case_001146_rows⟩

private theorem case_001146_covered :
    RowPropertyParametricCovered case_001146_rank.val case_001146_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001146_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001147_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001147_mask : SignMask := ⟨16, by decide⟩
private def case_001147_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001147_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001147_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001147_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-20/9) }
private def case_001147_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/13) }
private def case_001147_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001147_rankWord :
    rankPairWord? case_001147_word = some case_001147_rank := by
  decide

private theorem case_001147_unrank :
    unrankPairWord case_001147_rank = case_001147_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001147_word case_001147_rank).1
    case_001147_rankWord |>.symm

private theorem case_001147_seqChoice :
    translationChoiceSeq case_001147_word case_001147_mask = case_001147_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001147_seqAtRank :
    translationSeqAtRankMask case_001147_rank case_001147_mask = case_001147_seq := by
  rw [translationSeqAtRankMask, case_001147_unrank]
  exact case_001147_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001147_bAtRank :
    translationBAtRankMask case_001147_rank case_001147_mask = case_001147_b := by
  rw [translationBAtRankMask, case_001147_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001147_b, case_001147_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001147_firstLine_eq :
    case_001147_support.firstLine case_001147_seq case_001147_b = case_001147_firstLine := by
  norm_num [case_001147_firstLine, case_001147_support, case_001147_seq, case_001147_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001147_secondLine_eq :
    case_001147_support.secondLine case_001147_seq case_001147_b = case_001147_secondLine := by
  norm_num [case_001147_secondLine, case_001147_support, case_001147_seq, case_001147_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001147_sourceAgrees :
    SourceAgrees case_001147_support case_001147_rank.val case_001147_mask := by
  intro hlt
  have hrank : (⟨case_001147_rank.val, hlt⟩ : Fin numPairWords) = case_001147_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001147_rank.val, hlt⟩ case_001147_mask =
        case_001147_seq := by
    simpa [hrank] using case_001147_seqAtRank
  simp [SourceChecks, hseq, case_001147_support,
    checkTranslationConstraintSource, case_001147_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001147_rows :
    EqEqPosVarFirstRows case_001147_support case_001147_rank.val case_001147_mask := by
  intro hlt
  have hrank : (⟨case_001147_rank.val, hlt⟩ : Fin numPairWords) = case_001147_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001147_rank.val, hlt⟩ case_001147_mask =
        case_001147_seq := by
    simpa [hrank] using case_001147_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001147_rank.val, hlt⟩ case_001147_mask =
        case_001147_b := by
    simpa [hrank] using case_001147_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001147_support case_001147_rank.val hlt
          case_001147_mask = case_001147_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001147_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001147_support case_001147_rank.val hlt
          case_001147_mask = case_001147_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001147_secondLine_eq]
  have case_001147_rowFirst :
      EqEqPosRow (FirstLineAt case_001147_support case_001147_rank.val hlt case_001147_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001147_firstLine, EqEqPosRow]
  have case_001147_fixedSecond :
      FixedRow (SecondLineAt case_001147_support case_001147_rank.val hlt case_001147_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001147_secondLine, FixedRow]
  exact ⟨case_001147_rowFirst, case_001147_fixedSecond⟩

private theorem case_001147_existsRows :
    ExistsEqEqPosVarFirstRows case_001147_rank.val case_001147_mask :=
  ⟨case_001147_support, case_001147_sourceAgrees, case_001147_rows⟩

private theorem case_001147_covered :
    RowPropertyParametricCovered case_001147_rank.val case_001147_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001147_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001148_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001148_mask : SignMask := ⟨18, by decide⟩
private def case_001148_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001148_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001148_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001148_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (52/9) }
private def case_001148_firstLine : StrictLin2 := { a := -1, b := -1, c := (-19/13) }
private def case_001148_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001148_rankWord :
    rankPairWord? case_001148_word = some case_001148_rank := by
  decide

private theorem case_001148_unrank :
    unrankPairWord case_001148_rank = case_001148_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001148_word case_001148_rank).1
    case_001148_rankWord |>.symm

private theorem case_001148_seqChoice :
    translationChoiceSeq case_001148_word case_001148_mask = case_001148_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001148_seqAtRank :
    translationSeqAtRankMask case_001148_rank case_001148_mask = case_001148_seq := by
  rw [translationSeqAtRankMask, case_001148_unrank]
  exact case_001148_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001148_bAtRank :
    translationBAtRankMask case_001148_rank case_001148_mask = case_001148_b := by
  rw [translationBAtRankMask, case_001148_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001148_b, case_001148_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001148_firstLine_eq :
    case_001148_support.firstLine case_001148_seq case_001148_b = case_001148_firstLine := by
  norm_num [case_001148_firstLine, case_001148_support, case_001148_seq, case_001148_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001148_secondLine_eq :
    case_001148_support.secondLine case_001148_seq case_001148_b = case_001148_secondLine := by
  norm_num [case_001148_secondLine, case_001148_support, case_001148_seq, case_001148_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001148_sourceAgrees :
    SourceAgrees case_001148_support case_001148_rank.val case_001148_mask := by
  intro hlt
  have hrank : (⟨case_001148_rank.val, hlt⟩ : Fin numPairWords) = case_001148_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001148_rank.val, hlt⟩ case_001148_mask =
        case_001148_seq := by
    simpa [hrank] using case_001148_seqAtRank
  simp [SourceChecks, hseq, case_001148_support,
    checkTranslationConstraintSource, case_001148_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001148_rows :
    EqEqPosVarFirstRows case_001148_support case_001148_rank.val case_001148_mask := by
  intro hlt
  have hrank : (⟨case_001148_rank.val, hlt⟩ : Fin numPairWords) = case_001148_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001148_rank.val, hlt⟩ case_001148_mask =
        case_001148_seq := by
    simpa [hrank] using case_001148_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001148_rank.val, hlt⟩ case_001148_mask =
        case_001148_b := by
    simpa [hrank] using case_001148_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001148_support case_001148_rank.val hlt
          case_001148_mask = case_001148_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001148_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001148_support case_001148_rank.val hlt
          case_001148_mask = case_001148_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001148_secondLine_eq]
  have case_001148_rowFirst :
      EqEqPosRow (FirstLineAt case_001148_support case_001148_rank.val hlt case_001148_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001148_firstLine, EqEqPosRow]
  have case_001148_fixedSecond :
      FixedRow (SecondLineAt case_001148_support case_001148_rank.val hlt case_001148_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001148_secondLine, FixedRow]
  exact ⟨case_001148_rowFirst, case_001148_fixedSecond⟩

private theorem case_001148_existsRows :
    ExistsEqEqPosVarFirstRows case_001148_rank.val case_001148_mask :=
  ⟨case_001148_support, case_001148_sourceAgrees, case_001148_rows⟩

private theorem case_001148_covered :
    RowPropertyParametricCovered case_001148_rank.val case_001148_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001148_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001149_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001149_mask : SignMask := ⟨22, by decide⟩
private def case_001149_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001149_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001149_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001149_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (100/9) }
private def case_001149_firstLine : StrictLin2 := { a := -1, b := 1, c := (-59/25) }
private def case_001149_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001149_rankWord :
    rankPairWord? case_001149_word = some case_001149_rank := by
  decide

private theorem case_001149_unrank :
    unrankPairWord case_001149_rank = case_001149_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001149_word case_001149_rank).1
    case_001149_rankWord |>.symm

private theorem case_001149_seqChoice :
    translationChoiceSeq case_001149_word case_001149_mask = case_001149_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001149_seqAtRank :
    translationSeqAtRankMask case_001149_rank case_001149_mask = case_001149_seq := by
  rw [translationSeqAtRankMask, case_001149_unrank]
  exact case_001149_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001149_bAtRank :
    translationBAtRankMask case_001149_rank case_001149_mask = case_001149_b := by
  rw [translationBAtRankMask, case_001149_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001149_b, case_001149_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001149_firstLine_eq :
    case_001149_support.firstLine case_001149_seq case_001149_b = case_001149_firstLine := by
  norm_num [case_001149_firstLine, case_001149_support, case_001149_seq, case_001149_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001149_secondLine_eq :
    case_001149_support.secondLine case_001149_seq case_001149_b = case_001149_secondLine := by
  norm_num [case_001149_secondLine, case_001149_support, case_001149_seq, case_001149_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001149_sourceAgrees :
    SourceAgrees case_001149_support case_001149_rank.val case_001149_mask := by
  intro hlt
  have hrank : (⟨case_001149_rank.val, hlt⟩ : Fin numPairWords) = case_001149_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001149_rank.val, hlt⟩ case_001149_mask =
        case_001149_seq := by
    simpa [hrank] using case_001149_seqAtRank
  simp [SourceChecks, hseq, case_001149_support,
    checkTranslationConstraintSource, case_001149_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001149_rows :
    OppOneMinusVarFirstRows case_001149_support case_001149_rank.val case_001149_mask := by
  intro hlt
  have hrank : (⟨case_001149_rank.val, hlt⟩ : Fin numPairWords) = case_001149_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001149_rank.val, hlt⟩ case_001149_mask =
        case_001149_seq := by
    simpa [hrank] using case_001149_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001149_rank.val, hlt⟩ case_001149_mask =
        case_001149_b := by
    simpa [hrank] using case_001149_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001149_support case_001149_rank.val hlt
          case_001149_mask = case_001149_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001149_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001149_support case_001149_rank.val hlt
          case_001149_mask = case_001149_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001149_secondLine_eq]
  have case_001149_rowFirst :
      OppPosRow (FirstLineAt case_001149_support case_001149_rank.val hlt case_001149_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001149_firstLine, OppPosRow]
  have case_001149_fixedSecond :
      FixedRow (SecondLineAt case_001149_support case_001149_rank.val hlt case_001149_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001149_secondLine, FixedRow]
  exact ⟨case_001149_rowFirst, case_001149_fixedSecond⟩

private theorem case_001149_existsRows :
    ExistsOppOneMinusVarFirstRows case_001149_rank.val case_001149_mask :=
  ⟨case_001149_support, case_001149_sourceAgrees, case_001149_rows⟩

private theorem case_001149_covered :
    RowPropertyParametricCovered case_001149_rank.val case_001149_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001149_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001150_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001150_mask : SignMask := ⟨24, by decide⟩
private def case_001150_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001150_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001150_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001150_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-68/9) }
private def case_001150_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/25) }
private def case_001150_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001150_rankWord :
    rankPairWord? case_001150_word = some case_001150_rank := by
  decide

private theorem case_001150_unrank :
    unrankPairWord case_001150_rank = case_001150_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001150_word case_001150_rank).1
    case_001150_rankWord |>.symm

private theorem case_001150_seqChoice :
    translationChoiceSeq case_001150_word case_001150_mask = case_001150_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001150_seqAtRank :
    translationSeqAtRankMask case_001150_rank case_001150_mask = case_001150_seq := by
  rw [translationSeqAtRankMask, case_001150_unrank]
  exact case_001150_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001150_bAtRank :
    translationBAtRankMask case_001150_rank case_001150_mask = case_001150_b := by
  rw [translationBAtRankMask, case_001150_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001150_b, case_001150_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001150_firstLine_eq :
    case_001150_support.firstLine case_001150_seq case_001150_b = case_001150_firstLine := by
  norm_num [case_001150_firstLine, case_001150_support, case_001150_seq, case_001150_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001150_secondLine_eq :
    case_001150_support.secondLine case_001150_seq case_001150_b = case_001150_secondLine := by
  norm_num [case_001150_secondLine, case_001150_support, case_001150_seq, case_001150_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001150_sourceAgrees :
    SourceAgrees case_001150_support case_001150_rank.val case_001150_mask := by
  intro hlt
  have hrank : (⟨case_001150_rank.val, hlt⟩ : Fin numPairWords) = case_001150_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001150_rank.val, hlt⟩ case_001150_mask =
        case_001150_seq := by
    simpa [hrank] using case_001150_seqAtRank
  simp [SourceChecks, hseq, case_001150_support,
    checkTranslationConstraintSource, case_001150_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001150_rows :
    EqEqPosVarFirstRows case_001150_support case_001150_rank.val case_001150_mask := by
  intro hlt
  have hrank : (⟨case_001150_rank.val, hlt⟩ : Fin numPairWords) = case_001150_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001150_rank.val, hlt⟩ case_001150_mask =
        case_001150_seq := by
    simpa [hrank] using case_001150_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001150_rank.val, hlt⟩ case_001150_mask =
        case_001150_b := by
    simpa [hrank] using case_001150_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001150_support case_001150_rank.val hlt
          case_001150_mask = case_001150_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001150_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001150_support case_001150_rank.val hlt
          case_001150_mask = case_001150_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001150_secondLine_eq]
  have case_001150_rowFirst :
      EqEqPosRow (FirstLineAt case_001150_support case_001150_rank.val hlt case_001150_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001150_firstLine, EqEqPosRow]
  have case_001150_fixedSecond :
      FixedRow (SecondLineAt case_001150_support case_001150_rank.val hlt case_001150_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001150_secondLine, FixedRow]
  exact ⟨case_001150_rowFirst, case_001150_fixedSecond⟩

private theorem case_001150_existsRows :
    ExistsEqEqPosVarFirstRows case_001150_rank.val case_001150_mask :=
  ⟨case_001150_support, case_001150_sourceAgrees, case_001150_rows⟩

private theorem case_001150_covered :
    RowPropertyParametricCovered case_001150_rank.val case_001150_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001150_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001151_rank : Fin numPairWords := ⟨837, by decide⟩
private def case_001151_mask : SignMask := ⟨28, by decide⟩
private def case_001151_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_001151_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001151_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_001151_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (-20/9) }
private def case_001151_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_001151_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001151_rankWord :
    rankPairWord? case_001151_word = some case_001151_rank := by
  decide

private theorem case_001151_unrank :
    unrankPairWord case_001151_rank = case_001151_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001151_word case_001151_rank).1
    case_001151_rankWord |>.symm

private theorem case_001151_seqChoice :
    translationChoiceSeq case_001151_word case_001151_mask = case_001151_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001151_seqAtRank :
    translationSeqAtRankMask case_001151_rank case_001151_mask = case_001151_seq := by
  rw [translationSeqAtRankMask, case_001151_unrank]
  exact case_001151_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001151_bAtRank :
    translationBAtRankMask case_001151_rank case_001151_mask = case_001151_b := by
  rw [translationBAtRankMask, case_001151_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001151_b, case_001151_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001151_firstLine_eq :
    case_001151_support.firstLine case_001151_seq case_001151_b = case_001151_firstLine := by
  norm_num [case_001151_firstLine, case_001151_support, case_001151_seq, case_001151_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001151_secondLine_eq :
    case_001151_support.secondLine case_001151_seq case_001151_b = case_001151_secondLine := by
  norm_num [case_001151_secondLine, case_001151_support, case_001151_seq, case_001151_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001151_sourceAgrees :
    SourceAgrees case_001151_support case_001151_rank.val case_001151_mask := by
  intro hlt
  have hrank : (⟨case_001151_rank.val, hlt⟩ : Fin numPairWords) = case_001151_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001151_rank.val, hlt⟩ case_001151_mask =
        case_001151_seq := by
    simpa [hrank] using case_001151_seqAtRank
  simp [SourceChecks, hseq, case_001151_support,
    checkTranslationConstraintSource, case_001151_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001151_rows :
    OppOneMinusVarFirstRows case_001151_support case_001151_rank.val case_001151_mask := by
  intro hlt
  have hrank : (⟨case_001151_rank.val, hlt⟩ : Fin numPairWords) = case_001151_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001151_rank.val, hlt⟩ case_001151_mask =
        case_001151_seq := by
    simpa [hrank] using case_001151_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001151_rank.val, hlt⟩ case_001151_mask =
        case_001151_b := by
    simpa [hrank] using case_001151_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001151_support case_001151_rank.val hlt
          case_001151_mask = case_001151_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001151_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001151_support case_001151_rank.val hlt
          case_001151_mask = case_001151_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001151_secondLine_eq]
  have case_001151_rowFirst :
      OppPosRow (FirstLineAt case_001151_support case_001151_rank.val hlt case_001151_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001151_firstLine, OppPosRow]
  have case_001151_fixedSecond :
      FixedRow (SecondLineAt case_001151_support case_001151_rank.val hlt case_001151_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001151_secondLine, FixedRow]
  exact ⟨case_001151_rowFirst, case_001151_fixedSecond⟩

private theorem case_001151_existsRows :
    ExistsOppOneMinusVarFirstRows case_001151_rank.val case_001151_mask :=
  ⟨case_001151_support, case_001151_sourceAgrees, case_001151_rows⟩

private theorem case_001151_covered :
    RowPropertyParametricCovered case_001151_rank.val case_001151_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001151_existsRows

inductive Group035Covered : Nat -> SignMask -> Prop
  | case_001120 : Group035Covered case_001120_rank.val case_001120_mask
  | case_001121 : Group035Covered case_001121_rank.val case_001121_mask
  | case_001122 : Group035Covered case_001122_rank.val case_001122_mask
  | case_001123 : Group035Covered case_001123_rank.val case_001123_mask
  | case_001124 : Group035Covered case_001124_rank.val case_001124_mask
  | case_001125 : Group035Covered case_001125_rank.val case_001125_mask
  | case_001126 : Group035Covered case_001126_rank.val case_001126_mask
  | case_001127 : Group035Covered case_001127_rank.val case_001127_mask
  | case_001128 : Group035Covered case_001128_rank.val case_001128_mask
  | case_001129 : Group035Covered case_001129_rank.val case_001129_mask
  | case_001130 : Group035Covered case_001130_rank.val case_001130_mask
  | case_001131 : Group035Covered case_001131_rank.val case_001131_mask
  | case_001132 : Group035Covered case_001132_rank.val case_001132_mask
  | case_001133 : Group035Covered case_001133_rank.val case_001133_mask
  | case_001134 : Group035Covered case_001134_rank.val case_001134_mask
  | case_001135 : Group035Covered case_001135_rank.val case_001135_mask
  | case_001136 : Group035Covered case_001136_rank.val case_001136_mask
  | case_001137 : Group035Covered case_001137_rank.val case_001137_mask
  | case_001138 : Group035Covered case_001138_rank.val case_001138_mask
  | case_001139 : Group035Covered case_001139_rank.val case_001139_mask
  | case_001140 : Group035Covered case_001140_rank.val case_001140_mask
  | case_001141 : Group035Covered case_001141_rank.val case_001141_mask
  | case_001142 : Group035Covered case_001142_rank.val case_001142_mask
  | case_001143 : Group035Covered case_001143_rank.val case_001143_mask
  | case_001144 : Group035Covered case_001144_rank.val case_001144_mask
  | case_001145 : Group035Covered case_001145_rank.val case_001145_mask
  | case_001146 : Group035Covered case_001146_rank.val case_001146_mask
  | case_001147 : Group035Covered case_001147_rank.val case_001147_mask
  | case_001148 : Group035Covered case_001148_rank.val case_001148_mask
  | case_001149 : Group035Covered case_001149_rank.val case_001149_mask
  | case_001150 : Group035Covered case_001150_rank.val case_001150_mask
  | case_001151 : Group035Covered case_001151_rank.val case_001151_mask

theorem Group035GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group035Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001120 =>
      exact RowPropertyParametricCovered.kills case_001120_covered
  | case_001121 =>
      exact RowPropertyParametricCovered.kills case_001121_covered
  | case_001122 =>
      exact RowPropertyParametricCovered.kills case_001122_covered
  | case_001123 =>
      exact RowPropertyParametricCovered.kills case_001123_covered
  | case_001124 =>
      exact RowPropertyParametricCovered.kills case_001124_covered
  | case_001125 =>
      exact RowPropertyParametricCovered.kills case_001125_covered
  | case_001126 =>
      exact RowPropertyParametricCovered.kills case_001126_covered
  | case_001127 =>
      exact RowPropertyParametricCovered.kills case_001127_covered
  | case_001128 =>
      exact RowPropertyParametricCovered.kills case_001128_covered
  | case_001129 =>
      exact RowPropertyParametricCovered.kills case_001129_covered
  | case_001130 =>
      exact RowPropertyParametricCovered.kills case_001130_covered
  | case_001131 =>
      exact RowPropertyParametricCovered.kills case_001131_covered
  | case_001132 =>
      exact RowPropertyParametricCovered.kills case_001132_covered
  | case_001133 =>
      exact RowPropertyParametricCovered.kills case_001133_covered
  | case_001134 =>
      exact RowPropertyParametricCovered.kills case_001134_covered
  | case_001135 =>
      exact RowPropertyParametricCovered.kills case_001135_covered
  | case_001136 =>
      exact RowPropertyParametricCovered.kills case_001136_covered
  | case_001137 =>
      exact RowPropertyParametricCovered.kills case_001137_covered
  | case_001138 =>
      exact RowPropertyParametricCovered.kills case_001138_covered
  | case_001139 =>
      exact RowPropertyParametricCovered.kills case_001139_covered
  | case_001140 =>
      exact RowPropertyParametricCovered.kills case_001140_covered
  | case_001141 =>
      exact RowPropertyParametricCovered.kills case_001141_covered
  | case_001142 =>
      exact RowPropertyParametricCovered.kills case_001142_covered
  | case_001143 =>
      exact RowPropertyParametricCovered.kills case_001143_covered
  | case_001144 =>
      exact RowPropertyParametricCovered.kills case_001144_covered
  | case_001145 =>
      exact RowPropertyParametricCovered.kills case_001145_covered
  | case_001146 =>
      exact RowPropertyParametricCovered.kills case_001146_covered
  | case_001147 =>
      exact RowPropertyParametricCovered.kills case_001147_covered
  | case_001148 =>
      exact RowPropertyParametricCovered.kills case_001148_covered
  | case_001149 =>
      exact RowPropertyParametricCovered.kills case_001149_covered
  | case_001150 =>
      exact RowPropertyParametricCovered.kills case_001150_covered
  | case_001151 =>
      exact RowPropertyParametricCovered.kills case_001151_covered

theorem Group035_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group035
