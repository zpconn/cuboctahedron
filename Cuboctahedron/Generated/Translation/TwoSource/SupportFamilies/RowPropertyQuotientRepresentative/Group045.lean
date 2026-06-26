import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Generated bounded row-property quotient group for Phase 6Z.6K.6.

This module keeps source agreement local to each bounded proof case and
exports only semantic row-property quotient coverage.

Memory note: validate this file through the external memory-bounded
checker, not through a broad generated-root `lake build`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group045

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_001440_rank : Fin numPairWords := ⟨955, by decide⟩
private def case_001440_mask : SignMask := ⟨63, by decide⟩
private def case_001440_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩
private def case_001440_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_001440_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmp
private def case_001440_b : Vec3 Rat := { x := (-1012/81), y := (820/81), z := (404/81) }
private def case_001440_firstLine : StrictLin2 := { a := 1, b := 1, c := (-359/253) }
private def case_001440_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_001440_rankWord :
    rankPairWord? case_001440_word = some case_001440_rank := by
  decide

private theorem case_001440_unrank :
    unrankPairWord case_001440_rank = case_001440_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001440_word case_001440_rank).1
    case_001440_rankWord |>.symm

private theorem case_001440_seqChoice :
    translationChoiceSeq case_001440_word case_001440_mask = case_001440_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001440_seqAtRank :
    translationSeqAtRankMask case_001440_rank case_001440_mask = case_001440_seq := by
  rw [translationSeqAtRankMask, case_001440_unrank]
  exact case_001440_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001440_bAtRank :
    translationBAtRankMask case_001440_rank case_001440_mask = case_001440_b := by
  rw [translationBAtRankMask, case_001440_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001440_b, case_001440_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001440_firstLine_eq :
    case_001440_support.firstLine case_001440_seq case_001440_b = case_001440_firstLine := by
  norm_num [case_001440_firstLine, case_001440_support, case_001440_seq, case_001440_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001440_secondLine_eq :
    case_001440_support.secondLine case_001440_seq case_001440_b = case_001440_secondLine := by
  norm_num [case_001440_secondLine, case_001440_support, case_001440_seq, case_001440_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001440_sourceAgrees :
    SourceAgrees case_001440_support case_001440_rank.val case_001440_mask := by
  intro hlt
  have hrank : (⟨case_001440_rank.val, hlt⟩ : Fin numPairWords) = case_001440_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001440_rank.val, hlt⟩ case_001440_mask =
        case_001440_seq := by
    simpa [hrank] using case_001440_seqAtRank
  simp [SourceChecks, hseq, case_001440_support,
    checkTranslationConstraintSource, case_001440_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001440_rows :
    EqEqNegVarFirstRows case_001440_support case_001440_rank.val case_001440_mask := by
  intro hlt
  have hrank : (⟨case_001440_rank.val, hlt⟩ : Fin numPairWords) = case_001440_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001440_rank.val, hlt⟩ case_001440_mask =
        case_001440_seq := by
    simpa [hrank] using case_001440_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001440_rank.val, hlt⟩ case_001440_mask =
        case_001440_b := by
    simpa [hrank] using case_001440_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001440_support case_001440_rank.val hlt
          case_001440_mask = case_001440_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001440_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001440_support case_001440_rank.val hlt
          case_001440_mask = case_001440_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001440_secondLine_eq]
  have case_001440_rowFirst :
      EqEqNegRow (FirstLineAt case_001440_support case_001440_rank.val hlt case_001440_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001440_firstLine, EqEqNegRow]
  have case_001440_fixedSecond :
      FixedRow (SecondLineAt case_001440_support case_001440_rank.val hlt case_001440_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001440_secondLine, FixedRow]
  exact ⟨case_001440_rowFirst, case_001440_fixedSecond⟩

private theorem case_001440_existsRows :
    ExistsEqEqNegVarFirstRows case_001440_rank.val case_001440_mask :=
  ⟨case_001440_support, case_001440_sourceAgrees, case_001440_rows⟩

private theorem case_001440_covered :
    RowPropertyParametricCovered case_001440_rank.val case_001440_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_001440_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001441_rank : Fin numPairWords := ⟨990, by decide⟩
private def case_001441_mask : SignMask := ⟨18, by decide⟩
private def case_001441_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001441_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001441_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001441_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (4/9) }
private def case_001441_firstLine : StrictLin2 := { a := -1, b := -1, c := (-31/17) }
private def case_001441_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001441_rankWord :
    rankPairWord? case_001441_word = some case_001441_rank := by
  decide

private theorem case_001441_unrank :
    unrankPairWord case_001441_rank = case_001441_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001441_word case_001441_rank).1
    case_001441_rankWord |>.symm

private theorem case_001441_seqChoice :
    translationChoiceSeq case_001441_word case_001441_mask = case_001441_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001441_seqAtRank :
    translationSeqAtRankMask case_001441_rank case_001441_mask = case_001441_seq := by
  rw [translationSeqAtRankMask, case_001441_unrank]
  exact case_001441_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001441_bAtRank :
    translationBAtRankMask case_001441_rank case_001441_mask = case_001441_b := by
  rw [translationBAtRankMask, case_001441_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001441_b, case_001441_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001441_firstLine_eq :
    case_001441_support.firstLine case_001441_seq case_001441_b = case_001441_firstLine := by
  norm_num [case_001441_firstLine, case_001441_support, case_001441_seq, case_001441_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001441_secondLine_eq :
    case_001441_support.secondLine case_001441_seq case_001441_b = case_001441_secondLine := by
  norm_num [case_001441_secondLine, case_001441_support, case_001441_seq, case_001441_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001441_sourceAgrees :
    SourceAgrees case_001441_support case_001441_rank.val case_001441_mask := by
  intro hlt
  have hrank : (⟨case_001441_rank.val, hlt⟩ : Fin numPairWords) = case_001441_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001441_rank.val, hlt⟩ case_001441_mask =
        case_001441_seq := by
    simpa [hrank] using case_001441_seqAtRank
  simp [SourceChecks, hseq, case_001441_support,
    checkTranslationConstraintSource, case_001441_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001441_rows :
    EqEqPosVarFirstRows case_001441_support case_001441_rank.val case_001441_mask := by
  intro hlt
  have hrank : (⟨case_001441_rank.val, hlt⟩ : Fin numPairWords) = case_001441_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001441_rank.val, hlt⟩ case_001441_mask =
        case_001441_seq := by
    simpa [hrank] using case_001441_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001441_rank.val, hlt⟩ case_001441_mask =
        case_001441_b := by
    simpa [hrank] using case_001441_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001441_support case_001441_rank.val hlt
          case_001441_mask = case_001441_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001441_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001441_support case_001441_rank.val hlt
          case_001441_mask = case_001441_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001441_secondLine_eq]
  have case_001441_rowFirst :
      EqEqPosRow (FirstLineAt case_001441_support case_001441_rank.val hlt case_001441_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001441_firstLine, EqEqPosRow]
  have case_001441_fixedSecond :
      FixedRow (SecondLineAt case_001441_support case_001441_rank.val hlt case_001441_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001441_secondLine, FixedRow]
  exact ⟨case_001441_rowFirst, case_001441_fixedSecond⟩

private theorem case_001441_existsRows :
    ExistsEqEqPosVarFirstRows case_001441_rank.val case_001441_mask :=
  ⟨case_001441_support, case_001441_sourceAgrees, case_001441_rows⟩

private theorem case_001441_covered :
    RowPropertyParametricCovered case_001441_rank.val case_001441_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001441_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001442_rank : Fin numPairWords := ⟨990, by decide⟩
private def case_001442_mask : SignMask := ⟨22, by decide⟩
private def case_001442_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001442_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001442_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001442_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_001442_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001442_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001442_rankWord :
    rankPairWord? case_001442_word = some case_001442_rank := by
  decide

private theorem case_001442_unrank :
    unrankPairWord case_001442_rank = case_001442_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001442_word case_001442_rank).1
    case_001442_rankWord |>.symm

private theorem case_001442_seqChoice :
    translationChoiceSeq case_001442_word case_001442_mask = case_001442_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001442_seqAtRank :
    translationSeqAtRankMask case_001442_rank case_001442_mask = case_001442_seq := by
  rw [translationSeqAtRankMask, case_001442_unrank]
  exact case_001442_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001442_bAtRank :
    translationBAtRankMask case_001442_rank case_001442_mask = case_001442_b := by
  rw [translationBAtRankMask, case_001442_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001442_b, case_001442_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001442_firstLine_eq :
    case_001442_support.firstLine case_001442_seq case_001442_b = case_001442_firstLine := by
  norm_num [case_001442_firstLine, case_001442_support, case_001442_seq, case_001442_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001442_secondLine_eq :
    case_001442_support.secondLine case_001442_seq case_001442_b = case_001442_secondLine := by
  norm_num [case_001442_secondLine, case_001442_support, case_001442_seq, case_001442_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001442_sourceAgrees :
    SourceAgrees case_001442_support case_001442_rank.val case_001442_mask := by
  intro hlt
  have hrank : (⟨case_001442_rank.val, hlt⟩ : Fin numPairWords) = case_001442_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001442_rank.val, hlt⟩ case_001442_mask =
        case_001442_seq := by
    simpa [hrank] using case_001442_seqAtRank
  simp [SourceChecks, hseq, case_001442_support,
    checkTranslationConstraintSource, case_001442_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001442_rows :
    EqEqPosVarFirstRows case_001442_support case_001442_rank.val case_001442_mask := by
  intro hlt
  have hrank : (⟨case_001442_rank.val, hlt⟩ : Fin numPairWords) = case_001442_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001442_rank.val, hlt⟩ case_001442_mask =
        case_001442_seq := by
    simpa [hrank] using case_001442_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001442_rank.val, hlt⟩ case_001442_mask =
        case_001442_b := by
    simpa [hrank] using case_001442_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001442_support case_001442_rank.val hlt
          case_001442_mask = case_001442_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001442_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001442_support case_001442_rank.val hlt
          case_001442_mask = case_001442_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001442_secondLine_eq]
  have case_001442_rowFirst :
      EqEqPosRow (FirstLineAt case_001442_support case_001442_rank.val hlt case_001442_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001442_firstLine, EqEqPosRow]
  have case_001442_fixedSecond :
      FixedRow (SecondLineAt case_001442_support case_001442_rank.val hlt case_001442_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001442_secondLine, FixedRow]
  exact ⟨case_001442_rowFirst, case_001442_fixedSecond⟩

private theorem case_001442_existsRows :
    ExistsEqEqPosVarFirstRows case_001442_rank.val case_001442_mask :=
  ⟨case_001442_support, case_001442_sourceAgrees, case_001442_rows⟩

private theorem case_001442_covered :
    RowPropertyParametricCovered case_001442_rank.val case_001442_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001442_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001443_rank : Fin numPairWords := ⟨990, by decide⟩
private def case_001443_mask : SignMask := ⟨24, by decide⟩
private def case_001443_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001443_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001443_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001443_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-116/9) }
private def case_001443_firstLine : StrictLin2 := { a := -1, b := -1, c := (-55/29) }
private def case_001443_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001443_rankWord :
    rankPairWord? case_001443_word = some case_001443_rank := by
  decide

private theorem case_001443_unrank :
    unrankPairWord case_001443_rank = case_001443_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001443_word case_001443_rank).1
    case_001443_rankWord |>.symm

private theorem case_001443_seqChoice :
    translationChoiceSeq case_001443_word case_001443_mask = case_001443_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001443_seqAtRank :
    translationSeqAtRankMask case_001443_rank case_001443_mask = case_001443_seq := by
  rw [translationSeqAtRankMask, case_001443_unrank]
  exact case_001443_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001443_bAtRank :
    translationBAtRankMask case_001443_rank case_001443_mask = case_001443_b := by
  rw [translationBAtRankMask, case_001443_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001443_b, case_001443_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001443_firstLine_eq :
    case_001443_support.firstLine case_001443_seq case_001443_b = case_001443_firstLine := by
  norm_num [case_001443_firstLine, case_001443_support, case_001443_seq, case_001443_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001443_secondLine_eq :
    case_001443_support.secondLine case_001443_seq case_001443_b = case_001443_secondLine := by
  norm_num [case_001443_secondLine, case_001443_support, case_001443_seq, case_001443_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001443_sourceAgrees :
    SourceAgrees case_001443_support case_001443_rank.val case_001443_mask := by
  intro hlt
  have hrank : (⟨case_001443_rank.val, hlt⟩ : Fin numPairWords) = case_001443_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001443_rank.val, hlt⟩ case_001443_mask =
        case_001443_seq := by
    simpa [hrank] using case_001443_seqAtRank
  simp [SourceChecks, hseq, case_001443_support,
    checkTranslationConstraintSource, case_001443_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001443_rows :
    EqEqPosVarFirstRows case_001443_support case_001443_rank.val case_001443_mask := by
  intro hlt
  have hrank : (⟨case_001443_rank.val, hlt⟩ : Fin numPairWords) = case_001443_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001443_rank.val, hlt⟩ case_001443_mask =
        case_001443_seq := by
    simpa [hrank] using case_001443_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001443_rank.val, hlt⟩ case_001443_mask =
        case_001443_b := by
    simpa [hrank] using case_001443_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001443_support case_001443_rank.val hlt
          case_001443_mask = case_001443_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001443_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001443_support case_001443_rank.val hlt
          case_001443_mask = case_001443_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001443_secondLine_eq]
  have case_001443_rowFirst :
      EqEqPosRow (FirstLineAt case_001443_support case_001443_rank.val hlt case_001443_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001443_firstLine, EqEqPosRow]
  have case_001443_fixedSecond :
      FixedRow (SecondLineAt case_001443_support case_001443_rank.val hlt case_001443_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001443_secondLine, FixedRow]
  exact ⟨case_001443_rowFirst, case_001443_fixedSecond⟩

private theorem case_001443_existsRows :
    ExistsEqEqPosVarFirstRows case_001443_rank.val case_001443_mask :=
  ⟨case_001443_support, case_001443_sourceAgrees, case_001443_rows⟩

private theorem case_001443_covered :
    RowPropertyParametricCovered case_001443_rank.val case_001443_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001443_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001444_rank : Fin numPairWords := ⟨990, by decide⟩
private def case_001444_mask : SignMask := ⟨25, by decide⟩
private def case_001444_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001444_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_001444_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001444_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-116/9) }
private def case_001444_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001444_secondLine : StrictLin2 := { a := (-29/518), b := (29/518), c := (-31/259) }

private theorem case_001444_rankWord :
    rankPairWord? case_001444_word = some case_001444_rank := by
  decide

private theorem case_001444_unrank :
    unrankPairWord case_001444_rank = case_001444_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001444_word case_001444_rank).1
    case_001444_rankWord |>.symm

private theorem case_001444_seqChoice :
    translationChoiceSeq case_001444_word case_001444_mask = case_001444_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001444_seqAtRank :
    translationSeqAtRankMask case_001444_rank case_001444_mask = case_001444_seq := by
  rw [translationSeqAtRankMask, case_001444_unrank]
  exact case_001444_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001444_bAtRank :
    translationBAtRankMask case_001444_rank case_001444_mask = case_001444_b := by
  rw [translationBAtRankMask, case_001444_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001444_b, case_001444_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001444_firstLine_eq :
    case_001444_support.firstLine case_001444_seq case_001444_b = case_001444_firstLine := by
  norm_num [case_001444_firstLine, case_001444_support, case_001444_seq, case_001444_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001444_secondLine_eq :
    case_001444_support.secondLine case_001444_seq case_001444_b = case_001444_secondLine := by
  norm_num [case_001444_secondLine, case_001444_support, case_001444_seq, case_001444_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001444_sourceAgrees :
    SourceAgrees case_001444_support case_001444_rank.val case_001444_mask := by
  intro hlt
  have hrank : (⟨case_001444_rank.val, hlt⟩ : Fin numPairWords) = case_001444_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001444_rank.val, hlt⟩ case_001444_mask =
        case_001444_seq := by
    simpa [hrank] using case_001444_seqAtRank
  simp [SourceChecks, hseq, case_001444_support,
    checkTranslationConstraintSource, case_001444_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001444_rows :
    OppOneMinusVarSecondRows case_001444_support case_001444_rank.val case_001444_mask := by
  intro hlt
  have hrank : (⟨case_001444_rank.val, hlt⟩ : Fin numPairWords) = case_001444_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001444_rank.val, hlt⟩ case_001444_mask =
        case_001444_seq := by
    simpa [hrank] using case_001444_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001444_rank.val, hlt⟩ case_001444_mask =
        case_001444_b := by
    simpa [hrank] using case_001444_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001444_support case_001444_rank.val hlt
          case_001444_mask = case_001444_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001444_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001444_support case_001444_rank.val hlt
          case_001444_mask = case_001444_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001444_secondLine_eq]
  have case_001444_fixedFirst :
      FixedRow (FirstLineAt case_001444_support case_001444_rank.val hlt case_001444_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001444_firstLine, FixedRow]
  have case_001444_rowSecond :
      OppPosRow (SecondLineAt case_001444_support case_001444_rank.val hlt case_001444_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001444_secondLine, OppPosRow]
  exact ⟨case_001444_fixedFirst, case_001444_rowSecond⟩

private theorem case_001444_existsRows :
    ExistsOppOneMinusVarSecondRows case_001444_rank.val case_001444_mask :=
  ⟨case_001444_support, case_001444_sourceAgrees, case_001444_rows⟩

private theorem case_001444_covered :
    RowPropertyParametricCovered case_001444_rank.val case_001444_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001444_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001445_rank : Fin numPairWords := ⟨990, by decide⟩
private def case_001445_mask : SignMask := ⟨30, by decide⟩
private def case_001445_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001445_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001445_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001445_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_001445_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_001445_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001445_rankWord :
    rankPairWord? case_001445_word = some case_001445_rank := by
  decide

private theorem case_001445_unrank :
    unrankPairWord case_001445_rank = case_001445_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001445_word case_001445_rank).1
    case_001445_rankWord |>.symm

private theorem case_001445_seqChoice :
    translationChoiceSeq case_001445_word case_001445_mask = case_001445_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001445_seqAtRank :
    translationSeqAtRankMask case_001445_rank case_001445_mask = case_001445_seq := by
  rw [translationSeqAtRankMask, case_001445_unrank]
  exact case_001445_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001445_bAtRank :
    translationBAtRankMask case_001445_rank case_001445_mask = case_001445_b := by
  rw [translationBAtRankMask, case_001445_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001445_b, case_001445_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001445_firstLine_eq :
    case_001445_support.firstLine case_001445_seq case_001445_b = case_001445_firstLine := by
  norm_num [case_001445_firstLine, case_001445_support, case_001445_seq, case_001445_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001445_secondLine_eq :
    case_001445_support.secondLine case_001445_seq case_001445_b = case_001445_secondLine := by
  norm_num [case_001445_secondLine, case_001445_support, case_001445_seq, case_001445_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001445_sourceAgrees :
    SourceAgrees case_001445_support case_001445_rank.val case_001445_mask := by
  intro hlt
  have hrank : (⟨case_001445_rank.val, hlt⟩ : Fin numPairWords) = case_001445_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001445_rank.val, hlt⟩ case_001445_mask =
        case_001445_seq := by
    simpa [hrank] using case_001445_seqAtRank
  simp [SourceChecks, hseq, case_001445_support,
    checkTranslationConstraintSource, case_001445_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001445_rows :
    EqEqPosVarFirstRows case_001445_support case_001445_rank.val case_001445_mask := by
  intro hlt
  have hrank : (⟨case_001445_rank.val, hlt⟩ : Fin numPairWords) = case_001445_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001445_rank.val, hlt⟩ case_001445_mask =
        case_001445_seq := by
    simpa [hrank] using case_001445_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001445_rank.val, hlt⟩ case_001445_mask =
        case_001445_b := by
    simpa [hrank] using case_001445_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001445_support case_001445_rank.val hlt
          case_001445_mask = case_001445_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001445_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001445_support case_001445_rank.val hlt
          case_001445_mask = case_001445_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001445_secondLine_eq]
  have case_001445_rowFirst :
      EqEqPosRow (FirstLineAt case_001445_support case_001445_rank.val hlt case_001445_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001445_firstLine, EqEqPosRow]
  have case_001445_fixedSecond :
      FixedRow (SecondLineAt case_001445_support case_001445_rank.val hlt case_001445_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001445_secondLine, FixedRow]
  exact ⟨case_001445_rowFirst, case_001445_fixedSecond⟩

private theorem case_001445_existsRows :
    ExistsEqEqPosVarFirstRows case_001445_rank.val case_001445_mask :=
  ⟨case_001445_support, case_001445_sourceAgrees, case_001445_rows⟩

private theorem case_001445_covered :
    RowPropertyParametricCovered case_001445_rank.val case_001445_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001445_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001446_rank : Fin numPairWords := ⟨990, by decide⟩
private def case_001446_mask : SignMask := ⟨31, by decide⟩
private def case_001446_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001446_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001446_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_001446_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_001446_firstLine : StrictLin2 := { a := (-11/5), b := (-11/5), c := (-161/15) }
private def case_001446_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001446_rankWord :
    rankPairWord? case_001446_word = some case_001446_rank := by
  decide

private theorem case_001446_unrank :
    unrankPairWord case_001446_rank = case_001446_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001446_word case_001446_rank).1
    case_001446_rankWord |>.symm

private theorem case_001446_seqChoice :
    translationChoiceSeq case_001446_word case_001446_mask = case_001446_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001446_seqAtRank :
    translationSeqAtRankMask case_001446_rank case_001446_mask = case_001446_seq := by
  rw [translationSeqAtRankMask, case_001446_unrank]
  exact case_001446_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001446_bAtRank :
    translationBAtRankMask case_001446_rank case_001446_mask = case_001446_b := by
  rw [translationBAtRankMask, case_001446_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001446_b, case_001446_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001446_firstLine_eq :
    case_001446_support.firstLine case_001446_seq case_001446_b = case_001446_firstLine := by
  norm_num [case_001446_firstLine, case_001446_support, case_001446_seq, case_001446_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001446_secondLine_eq :
    case_001446_support.secondLine case_001446_seq case_001446_b = case_001446_secondLine := by
  norm_num [case_001446_secondLine, case_001446_support, case_001446_seq, case_001446_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001446_sourceAgrees :
    SourceAgrees case_001446_support case_001446_rank.val case_001446_mask := by
  intro hlt
  have hrank : (⟨case_001446_rank.val, hlt⟩ : Fin numPairWords) = case_001446_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001446_rank.val, hlt⟩ case_001446_mask =
        case_001446_seq := by
    simpa [hrank] using case_001446_seqAtRank
  simp [SourceChecks, hseq, case_001446_support,
    checkTranslationConstraintSource, case_001446_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001446_rows :
    EqEqPosVarFirstRows case_001446_support case_001446_rank.val case_001446_mask := by
  intro hlt
  have hrank : (⟨case_001446_rank.val, hlt⟩ : Fin numPairWords) = case_001446_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001446_rank.val, hlt⟩ case_001446_mask =
        case_001446_seq := by
    simpa [hrank] using case_001446_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001446_rank.val, hlt⟩ case_001446_mask =
        case_001446_b := by
    simpa [hrank] using case_001446_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001446_support case_001446_rank.val hlt
          case_001446_mask = case_001446_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001446_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001446_support case_001446_rank.val hlt
          case_001446_mask = case_001446_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001446_secondLine_eq]
  have case_001446_rowFirst :
      EqEqPosRow (FirstLineAt case_001446_support case_001446_rank.val hlt case_001446_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001446_firstLine, EqEqPosRow]
  have case_001446_fixedSecond :
      FixedRow (SecondLineAt case_001446_support case_001446_rank.val hlt case_001446_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001446_secondLine, FixedRow]
  exact ⟨case_001446_rowFirst, case_001446_fixedSecond⟩

private theorem case_001446_existsRows :
    ExistsEqEqPosVarFirstRows case_001446_rank.val case_001446_mask :=
  ⟨case_001446_support, case_001446_sourceAgrees, case_001446_rows⟩

private theorem case_001446_covered :
    RowPropertyParametricCovered case_001446_rank.val case_001446_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001446_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_001447_rank : Fin numPairWords := ⟨990, by decide⟩
private def case_001447_mask : SignMask := ⟨45, by decide⟩
private def case_001447_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001447_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_001447_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001447_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (-4/9) }
private def case_001447_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_001447_secondLine : StrictLin2 := { a := (1/42), b := (-1/42), c := (-34/21) }

private theorem case_001447_rankWord :
    rankPairWord? case_001447_word = some case_001447_rank := by
  decide

private theorem case_001447_unrank :
    unrankPairWord case_001447_rank = case_001447_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001447_word case_001447_rank).1
    case_001447_rankWord |>.symm

private theorem case_001447_seqChoice :
    translationChoiceSeq case_001447_word case_001447_mask = case_001447_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001447_seqAtRank :
    translationSeqAtRankMask case_001447_rank case_001447_mask = case_001447_seq := by
  rw [translationSeqAtRankMask, case_001447_unrank]
  exact case_001447_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001447_bAtRank :
    translationBAtRankMask case_001447_rank case_001447_mask = case_001447_b := by
  rw [translationBAtRankMask, case_001447_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001447_b, case_001447_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001447_firstLine_eq :
    case_001447_support.firstLine case_001447_seq case_001447_b = case_001447_firstLine := by
  norm_num [case_001447_firstLine, case_001447_support, case_001447_seq, case_001447_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001447_secondLine_eq :
    case_001447_support.secondLine case_001447_seq case_001447_b = case_001447_secondLine := by
  norm_num [case_001447_secondLine, case_001447_support, case_001447_seq, case_001447_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001447_sourceAgrees :
    SourceAgrees case_001447_support case_001447_rank.val case_001447_mask := by
  intro hlt
  have hrank : (⟨case_001447_rank.val, hlt⟩ : Fin numPairWords) = case_001447_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001447_rank.val, hlt⟩ case_001447_mask =
        case_001447_seq := by
    simpa [hrank] using case_001447_seqAtRank
  simp [SourceChecks, hseq, case_001447_support,
    checkTranslationConstraintSource, case_001447_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001447_rows :
    OppMinusOneVarSecondRows case_001447_support case_001447_rank.val case_001447_mask := by
  intro hlt
  have hrank : (⟨case_001447_rank.val, hlt⟩ : Fin numPairWords) = case_001447_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001447_rank.val, hlt⟩ case_001447_mask =
        case_001447_seq := by
    simpa [hrank] using case_001447_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001447_rank.val, hlt⟩ case_001447_mask =
        case_001447_b := by
    simpa [hrank] using case_001447_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001447_support case_001447_rank.val hlt
          case_001447_mask = case_001447_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001447_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001447_support case_001447_rank.val hlt
          case_001447_mask = case_001447_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001447_secondLine_eq]
  have case_001447_fixedFirst :
      FixedRow (FirstLineAt case_001447_support case_001447_rank.val hlt case_001447_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001447_firstLine, FixedRow]
  have case_001447_rowSecond :
      OppNegRow (SecondLineAt case_001447_support case_001447_rank.val hlt case_001447_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001447_secondLine, OppNegRow]
  exact ⟨case_001447_fixedFirst, case_001447_rowSecond⟩

private theorem case_001447_existsRows :
    ExistsOppMinusOneVarSecondRows case_001447_rank.val case_001447_mask :=
  ⟨case_001447_support, case_001447_sourceAgrees, case_001447_rows⟩

private theorem case_001447_covered :
    RowPropertyParametricCovered case_001447_rank.val case_001447_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_001447_existsRows

/-- Bounded row-property quotient case `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`. -/
private def case_001448_rank : Fin numPairWords := ⟨990, by decide⟩
private def case_001448_mask : SignMask := ⟨47, by decide⟩
private def case_001448_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001448_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_001448_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001448_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (68/9) }
private def case_001448_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_001448_secondLine : StrictLin2 := { a := (1/2), b := (-1/2), c := -11 }

private theorem case_001448_rankWord :
    rankPairWord? case_001448_word = some case_001448_rank := by
  decide

private theorem case_001448_unrank :
    unrankPairWord case_001448_rank = case_001448_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001448_word case_001448_rank).1
    case_001448_rankWord |>.symm

private theorem case_001448_seqChoice :
    translationChoiceSeq case_001448_word case_001448_mask = case_001448_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001448_seqAtRank :
    translationSeqAtRankMask case_001448_rank case_001448_mask = case_001448_seq := by
  rw [translationSeqAtRankMask, case_001448_unrank]
  exact case_001448_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001448_bAtRank :
    translationBAtRankMask case_001448_rank case_001448_mask = case_001448_b := by
  rw [translationBAtRankMask, case_001448_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001448_b, case_001448_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001448_firstLine_eq :
    case_001448_support.firstLine case_001448_seq case_001448_b = case_001448_firstLine := by
  norm_num [case_001448_firstLine, case_001448_support, case_001448_seq, case_001448_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001448_secondLine_eq :
    case_001448_support.secondLine case_001448_seq case_001448_b = case_001448_secondLine := by
  norm_num [case_001448_secondLine, case_001448_support, case_001448_seq, case_001448_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001448_sourceAgrees :
    SourceAgrees case_001448_support case_001448_rank.val case_001448_mask := by
  intro hlt
  have hrank : (⟨case_001448_rank.val, hlt⟩ : Fin numPairWords) = case_001448_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001448_rank.val, hlt⟩ case_001448_mask =
        case_001448_seq := by
    simpa [hrank] using case_001448_seqAtRank
  simp [SourceChecks, hseq, case_001448_support,
    checkTranslationConstraintSource, case_001448_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001448_rows :
    OppMinusOneVarSecondRows case_001448_support case_001448_rank.val case_001448_mask := by
  intro hlt
  have hrank : (⟨case_001448_rank.val, hlt⟩ : Fin numPairWords) = case_001448_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001448_rank.val, hlt⟩ case_001448_mask =
        case_001448_seq := by
    simpa [hrank] using case_001448_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001448_rank.val, hlt⟩ case_001448_mask =
        case_001448_b := by
    simpa [hrank] using case_001448_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001448_support case_001448_rank.val hlt
          case_001448_mask = case_001448_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001448_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001448_support case_001448_rank.val hlt
          case_001448_mask = case_001448_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001448_secondLine_eq]
  have case_001448_fixedFirst :
      FixedRow (FirstLineAt case_001448_support case_001448_rank.val hlt case_001448_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001448_firstLine, FixedRow]
  have case_001448_rowSecond :
      OppNegRow (SecondLineAt case_001448_support case_001448_rank.val hlt case_001448_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001448_secondLine, OppNegRow]
  exact ⟨case_001448_fixedFirst, case_001448_rowSecond⟩

private theorem case_001448_existsRows :
    ExistsOppMinusOneVarSecondRows case_001448_rank.val case_001448_mask :=
  ⟨case_001448_support, case_001448_sourceAgrees, case_001448_rows⟩

private theorem case_001448_covered :
    RowPropertyParametricCovered case_001448_rank.val case_001448_mask :=
  RowPropertyParametricCovered.oppMinusOneVarSecond case_001448_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001449_rank : Fin numPairWords := ⟨990, by decide⟩
private def case_001449_mask : SignMask := ⟨54, by decide⟩
private def case_001449_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001449_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001449_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001449_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_001449_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_001449_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001449_rankWord :
    rankPairWord? case_001449_word = some case_001449_rank := by
  decide

private theorem case_001449_unrank :
    unrankPairWord case_001449_rank = case_001449_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001449_word case_001449_rank).1
    case_001449_rankWord |>.symm

private theorem case_001449_seqChoice :
    translationChoiceSeq case_001449_word case_001449_mask = case_001449_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001449_seqAtRank :
    translationSeqAtRankMask case_001449_rank case_001449_mask = case_001449_seq := by
  rw [translationSeqAtRankMask, case_001449_unrank]
  exact case_001449_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001449_bAtRank :
    translationBAtRankMask case_001449_rank case_001449_mask = case_001449_b := by
  rw [translationBAtRankMask, case_001449_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001449_b, case_001449_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001449_firstLine_eq :
    case_001449_support.firstLine case_001449_seq case_001449_b = case_001449_firstLine := by
  norm_num [case_001449_firstLine, case_001449_support, case_001449_seq, case_001449_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001449_secondLine_eq :
    case_001449_support.secondLine case_001449_seq case_001449_b = case_001449_secondLine := by
  norm_num [case_001449_secondLine, case_001449_support, case_001449_seq, case_001449_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001449_sourceAgrees :
    SourceAgrees case_001449_support case_001449_rank.val case_001449_mask := by
  intro hlt
  have hrank : (⟨case_001449_rank.val, hlt⟩ : Fin numPairWords) = case_001449_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001449_rank.val, hlt⟩ case_001449_mask =
        case_001449_seq := by
    simpa [hrank] using case_001449_seqAtRank
  simp [SourceChecks, hseq, case_001449_support,
    checkTranslationConstraintSource, case_001449_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001449_rows :
    OppOneMinusVarFirstRows case_001449_support case_001449_rank.val case_001449_mask := by
  intro hlt
  have hrank : (⟨case_001449_rank.val, hlt⟩ : Fin numPairWords) = case_001449_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001449_rank.val, hlt⟩ case_001449_mask =
        case_001449_seq := by
    simpa [hrank] using case_001449_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001449_rank.val, hlt⟩ case_001449_mask =
        case_001449_b := by
    simpa [hrank] using case_001449_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001449_support case_001449_rank.val hlt
          case_001449_mask = case_001449_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001449_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001449_support case_001449_rank.val hlt
          case_001449_mask = case_001449_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001449_secondLine_eq]
  have case_001449_rowFirst :
      OppPosRow (FirstLineAt case_001449_support case_001449_rank.val hlt case_001449_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001449_firstLine, OppPosRow]
  have case_001449_fixedSecond :
      FixedRow (SecondLineAt case_001449_support case_001449_rank.val hlt case_001449_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001449_secondLine, FixedRow]
  exact ⟨case_001449_rowFirst, case_001449_fixedSecond⟩

private theorem case_001449_existsRows :
    ExistsOppOneMinusVarFirstRows case_001449_rank.val case_001449_mask :=
  ⟨case_001449_support, case_001449_sourceAgrees, case_001449_rows⟩

private theorem case_001449_covered :
    RowPropertyParametricCovered case_001449_rank.val case_001449_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001449_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001450_rank : Fin numPairWords := ⟨990, by decide⟩
private def case_001450_mask : SignMask := ⟨55, by decide⟩
private def case_001450_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001450_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001450_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001450_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_001450_firstLine : StrictLin2 := { a := -1, b := 1, c := (-13/3) }
private def case_001450_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001450_rankWord :
    rankPairWord? case_001450_word = some case_001450_rank := by
  decide

private theorem case_001450_unrank :
    unrankPairWord case_001450_rank = case_001450_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001450_word case_001450_rank).1
    case_001450_rankWord |>.symm

private theorem case_001450_seqChoice :
    translationChoiceSeq case_001450_word case_001450_mask = case_001450_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001450_seqAtRank :
    translationSeqAtRankMask case_001450_rank case_001450_mask = case_001450_seq := by
  rw [translationSeqAtRankMask, case_001450_unrank]
  exact case_001450_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001450_bAtRank :
    translationBAtRankMask case_001450_rank case_001450_mask = case_001450_b := by
  rw [translationBAtRankMask, case_001450_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001450_b, case_001450_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001450_firstLine_eq :
    case_001450_support.firstLine case_001450_seq case_001450_b = case_001450_firstLine := by
  norm_num [case_001450_firstLine, case_001450_support, case_001450_seq, case_001450_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001450_secondLine_eq :
    case_001450_support.secondLine case_001450_seq case_001450_b = case_001450_secondLine := by
  norm_num [case_001450_secondLine, case_001450_support, case_001450_seq, case_001450_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001450_sourceAgrees :
    SourceAgrees case_001450_support case_001450_rank.val case_001450_mask := by
  intro hlt
  have hrank : (⟨case_001450_rank.val, hlt⟩ : Fin numPairWords) = case_001450_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001450_rank.val, hlt⟩ case_001450_mask =
        case_001450_seq := by
    simpa [hrank] using case_001450_seqAtRank
  simp [SourceChecks, hseq, case_001450_support,
    checkTranslationConstraintSource, case_001450_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001450_rows :
    OppOneMinusVarFirstRows case_001450_support case_001450_rank.val case_001450_mask := by
  intro hlt
  have hrank : (⟨case_001450_rank.val, hlt⟩ : Fin numPairWords) = case_001450_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001450_rank.val, hlt⟩ case_001450_mask =
        case_001450_seq := by
    simpa [hrank] using case_001450_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001450_rank.val, hlt⟩ case_001450_mask =
        case_001450_b := by
    simpa [hrank] using case_001450_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001450_support case_001450_rank.val hlt
          case_001450_mask = case_001450_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001450_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001450_support case_001450_rank.val hlt
          case_001450_mask = case_001450_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001450_secondLine_eq]
  have case_001450_rowFirst :
      OppPosRow (FirstLineAt case_001450_support case_001450_rank.val hlt case_001450_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001450_firstLine, OppPosRow]
  have case_001450_fixedSecond :
      FixedRow (SecondLineAt case_001450_support case_001450_rank.val hlt case_001450_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001450_secondLine, FixedRow]
  exact ⟨case_001450_rowFirst, case_001450_fixedSecond⟩

private theorem case_001450_existsRows :
    ExistsOppOneMinusVarFirstRows case_001450_rank.val case_001450_mask :=
  ⟨case_001450_support, case_001450_sourceAgrees, case_001450_rows⟩

private theorem case_001450_covered :
    RowPropertyParametricCovered case_001450_rank.val case_001450_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001450_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001451_rank : Fin numPairWords := ⟨990, by decide⟩
private def case_001451_mask : SignMask := ⟨63, by decide⟩
private def case_001451_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_001451_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001451_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_001451_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_001451_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001451_secondLine : StrictLin2 := { a := (-3/28), b := (3/28), c := (-3/14) }

private theorem case_001451_rankWord :
    rankPairWord? case_001451_word = some case_001451_rank := by
  decide

private theorem case_001451_unrank :
    unrankPairWord case_001451_rank = case_001451_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001451_word case_001451_rank).1
    case_001451_rankWord |>.symm

private theorem case_001451_seqChoice :
    translationChoiceSeq case_001451_word case_001451_mask = case_001451_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001451_seqAtRank :
    translationSeqAtRankMask case_001451_rank case_001451_mask = case_001451_seq := by
  rw [translationSeqAtRankMask, case_001451_unrank]
  exact case_001451_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001451_bAtRank :
    translationBAtRankMask case_001451_rank case_001451_mask = case_001451_b := by
  rw [translationBAtRankMask, case_001451_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001451_b, case_001451_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001451_firstLine_eq :
    case_001451_support.firstLine case_001451_seq case_001451_b = case_001451_firstLine := by
  norm_num [case_001451_firstLine, case_001451_support, case_001451_seq, case_001451_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001451_secondLine_eq :
    case_001451_support.secondLine case_001451_seq case_001451_b = case_001451_secondLine := by
  norm_num [case_001451_secondLine, case_001451_support, case_001451_seq, case_001451_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001451_sourceAgrees :
    SourceAgrees case_001451_support case_001451_rank.val case_001451_mask := by
  intro hlt
  have hrank : (⟨case_001451_rank.val, hlt⟩ : Fin numPairWords) = case_001451_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001451_rank.val, hlt⟩ case_001451_mask =
        case_001451_seq := by
    simpa [hrank] using case_001451_seqAtRank
  simp [SourceChecks, hseq, case_001451_support,
    checkTranslationConstraintSource, case_001451_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001451_rows :
    OppOneMinusVarSecondRows case_001451_support case_001451_rank.val case_001451_mask := by
  intro hlt
  have hrank : (⟨case_001451_rank.val, hlt⟩ : Fin numPairWords) = case_001451_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001451_rank.val, hlt⟩ case_001451_mask =
        case_001451_seq := by
    simpa [hrank] using case_001451_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001451_rank.val, hlt⟩ case_001451_mask =
        case_001451_b := by
    simpa [hrank] using case_001451_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001451_support case_001451_rank.val hlt
          case_001451_mask = case_001451_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001451_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001451_support case_001451_rank.val hlt
          case_001451_mask = case_001451_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001451_secondLine_eq]
  have case_001451_fixedFirst :
      FixedRow (FirstLineAt case_001451_support case_001451_rank.val hlt case_001451_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001451_firstLine, FixedRow]
  have case_001451_rowSecond :
      OppPosRow (SecondLineAt case_001451_support case_001451_rank.val hlt case_001451_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001451_secondLine, OppPosRow]
  exact ⟨case_001451_fixedFirst, case_001451_rowSecond⟩

private theorem case_001451_existsRows :
    ExistsOppOneMinusVarSecondRows case_001451_rank.val case_001451_mask :=
  ⟨case_001451_support, case_001451_sourceAgrees, case_001451_rows⟩

private theorem case_001451_covered :
    RowPropertyParametricCovered case_001451_rank.val case_001451_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001451_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001452_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001452_mask : SignMask := ⟨9, by decide⟩
private def case_001452_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001452_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001452_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_001452_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-116/9) }
private def case_001452_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_001452_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001452_rankWord :
    rankPairWord? case_001452_word = some case_001452_rank := by
  decide

private theorem case_001452_unrank :
    unrankPairWord case_001452_rank = case_001452_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001452_word case_001452_rank).1
    case_001452_rankWord |>.symm

private theorem case_001452_seqChoice :
    translationChoiceSeq case_001452_word case_001452_mask = case_001452_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001452_seqAtRank :
    translationSeqAtRankMask case_001452_rank case_001452_mask = case_001452_seq := by
  rw [translationSeqAtRankMask, case_001452_unrank]
  exact case_001452_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001452_bAtRank :
    translationBAtRankMask case_001452_rank case_001452_mask = case_001452_b := by
  rw [translationBAtRankMask, case_001452_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001452_b, case_001452_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001452_firstLine_eq :
    case_001452_support.firstLine case_001452_seq case_001452_b = case_001452_firstLine := by
  norm_num [case_001452_firstLine, case_001452_support, case_001452_seq, case_001452_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001452_secondLine_eq :
    case_001452_support.secondLine case_001452_seq case_001452_b = case_001452_secondLine := by
  norm_num [case_001452_secondLine, case_001452_support, case_001452_seq, case_001452_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001452_sourceAgrees :
    SourceAgrees case_001452_support case_001452_rank.val case_001452_mask := by
  intro hlt
  have hrank : (⟨case_001452_rank.val, hlt⟩ : Fin numPairWords) = case_001452_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001452_rank.val, hlt⟩ case_001452_mask =
        case_001452_seq := by
    simpa [hrank] using case_001452_seqAtRank
  simp [SourceChecks, hseq, case_001452_support,
    checkTranslationConstraintSource, case_001452_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001452_rows :
    EqEqPosVarFirstRows case_001452_support case_001452_rank.val case_001452_mask := by
  intro hlt
  have hrank : (⟨case_001452_rank.val, hlt⟩ : Fin numPairWords) = case_001452_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001452_rank.val, hlt⟩ case_001452_mask =
        case_001452_seq := by
    simpa [hrank] using case_001452_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001452_rank.val, hlt⟩ case_001452_mask =
        case_001452_b := by
    simpa [hrank] using case_001452_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001452_support case_001452_rank.val hlt
          case_001452_mask = case_001452_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001452_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001452_support case_001452_rank.val hlt
          case_001452_mask = case_001452_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001452_secondLine_eq]
  have case_001452_rowFirst :
      EqEqPosRow (FirstLineAt case_001452_support case_001452_rank.val hlt case_001452_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001452_firstLine, EqEqPosRow]
  have case_001452_fixedSecond :
      FixedRow (SecondLineAt case_001452_support case_001452_rank.val hlt case_001452_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001452_secondLine, FixedRow]
  exact ⟨case_001452_rowFirst, case_001452_fixedSecond⟩

private theorem case_001452_existsRows :
    ExistsEqEqPosVarFirstRows case_001452_rank.val case_001452_mask :=
  ⟨case_001452_support, case_001452_sourceAgrees, case_001452_rows⟩

private theorem case_001452_covered :
    RowPropertyParametricCovered case_001452_rank.val case_001452_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001452_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001453_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001453_mask : SignMask := ⟨16, by decide⟩
private def case_001453_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001453_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001453_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_001453_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-52/9) }
private def case_001453_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_001453_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001453_rankWord :
    rankPairWord? case_001453_word = some case_001453_rank := by
  decide

private theorem case_001453_unrank :
    unrankPairWord case_001453_rank = case_001453_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001453_word case_001453_rank).1
    case_001453_rankWord |>.symm

private theorem case_001453_seqChoice :
    translationChoiceSeq case_001453_word case_001453_mask = case_001453_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001453_seqAtRank :
    translationSeqAtRankMask case_001453_rank case_001453_mask = case_001453_seq := by
  rw [translationSeqAtRankMask, case_001453_unrank]
  exact case_001453_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001453_bAtRank :
    translationBAtRankMask case_001453_rank case_001453_mask = case_001453_b := by
  rw [translationBAtRankMask, case_001453_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001453_b, case_001453_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001453_firstLine_eq :
    case_001453_support.firstLine case_001453_seq case_001453_b = case_001453_firstLine := by
  norm_num [case_001453_firstLine, case_001453_support, case_001453_seq, case_001453_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001453_secondLine_eq :
    case_001453_support.secondLine case_001453_seq case_001453_b = case_001453_secondLine := by
  norm_num [case_001453_secondLine, case_001453_support, case_001453_seq, case_001453_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001453_sourceAgrees :
    SourceAgrees case_001453_support case_001453_rank.val case_001453_mask := by
  intro hlt
  have hrank : (⟨case_001453_rank.val, hlt⟩ : Fin numPairWords) = case_001453_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001453_rank.val, hlt⟩ case_001453_mask =
        case_001453_seq := by
    simpa [hrank] using case_001453_seqAtRank
  simp [SourceChecks, hseq, case_001453_support,
    checkTranslationConstraintSource, case_001453_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001453_rows :
    EqEqPosVarFirstRows case_001453_support case_001453_rank.val case_001453_mask := by
  intro hlt
  have hrank : (⟨case_001453_rank.val, hlt⟩ : Fin numPairWords) = case_001453_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001453_rank.val, hlt⟩ case_001453_mask =
        case_001453_seq := by
    simpa [hrank] using case_001453_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001453_rank.val, hlt⟩ case_001453_mask =
        case_001453_b := by
    simpa [hrank] using case_001453_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001453_support case_001453_rank.val hlt
          case_001453_mask = case_001453_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001453_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001453_support case_001453_rank.val hlt
          case_001453_mask = case_001453_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001453_secondLine_eq]
  have case_001453_rowFirst :
      EqEqPosRow (FirstLineAt case_001453_support case_001453_rank.val hlt case_001453_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001453_firstLine, EqEqPosRow]
  have case_001453_fixedSecond :
      FixedRow (SecondLineAt case_001453_support case_001453_rank.val hlt case_001453_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001453_secondLine, FixedRow]
  exact ⟨case_001453_rowFirst, case_001453_fixedSecond⟩

private theorem case_001453_existsRows :
    ExistsEqEqPosVarFirstRows case_001453_rank.val case_001453_mask :=
  ⟨case_001453_support, case_001453_sourceAgrees, case_001453_rows⟩

private theorem case_001453_covered :
    RowPropertyParametricCovered case_001453_rank.val case_001453_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001453_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001454_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001454_mask : SignMask := ⟨22, by decide⟩
private def case_001454_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001454_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001454_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_001454_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (100/9) }
private def case_001454_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001454_secondLine : StrictLin2 := { a := (-3/26), b := (-3/26), c := (-5/13) }

private theorem case_001454_rankWord :
    rankPairWord? case_001454_word = some case_001454_rank := by
  decide

private theorem case_001454_unrank :
    unrankPairWord case_001454_rank = case_001454_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001454_word case_001454_rank).1
    case_001454_rankWord |>.symm

private theorem case_001454_seqChoice :
    translationChoiceSeq case_001454_word case_001454_mask = case_001454_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001454_seqAtRank :
    translationSeqAtRankMask case_001454_rank case_001454_mask = case_001454_seq := by
  rw [translationSeqAtRankMask, case_001454_unrank]
  exact case_001454_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001454_bAtRank :
    translationBAtRankMask case_001454_rank case_001454_mask = case_001454_b := by
  rw [translationBAtRankMask, case_001454_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001454_b, case_001454_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001454_firstLine_eq :
    case_001454_support.firstLine case_001454_seq case_001454_b = case_001454_firstLine := by
  norm_num [case_001454_firstLine, case_001454_support, case_001454_seq, case_001454_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001454_secondLine_eq :
    case_001454_support.secondLine case_001454_seq case_001454_b = case_001454_secondLine := by
  norm_num [case_001454_secondLine, case_001454_support, case_001454_seq, case_001454_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001454_sourceAgrees :
    SourceAgrees case_001454_support case_001454_rank.val case_001454_mask := by
  intro hlt
  have hrank : (⟨case_001454_rank.val, hlt⟩ : Fin numPairWords) = case_001454_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001454_rank.val, hlt⟩ case_001454_mask =
        case_001454_seq := by
    simpa [hrank] using case_001454_seqAtRank
  simp [SourceChecks, hseq, case_001454_support,
    checkTranslationConstraintSource, case_001454_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001454_rows :
    EqEqPosVarSecondRows case_001454_support case_001454_rank.val case_001454_mask := by
  intro hlt
  have hrank : (⟨case_001454_rank.val, hlt⟩ : Fin numPairWords) = case_001454_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001454_rank.val, hlt⟩ case_001454_mask =
        case_001454_seq := by
    simpa [hrank] using case_001454_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001454_rank.val, hlt⟩ case_001454_mask =
        case_001454_b := by
    simpa [hrank] using case_001454_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001454_support case_001454_rank.val hlt
          case_001454_mask = case_001454_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001454_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001454_support case_001454_rank.val hlt
          case_001454_mask = case_001454_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001454_secondLine_eq]
  have case_001454_fixedFirst :
      FixedRow (FirstLineAt case_001454_support case_001454_rank.val hlt case_001454_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001454_firstLine, FixedRow]
  have case_001454_rowSecond :
      EqEqPosRow (SecondLineAt case_001454_support case_001454_rank.val hlt case_001454_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001454_secondLine, EqEqPosRow]
  exact ⟨case_001454_fixedFirst, case_001454_rowSecond⟩

private theorem case_001454_existsRows :
    ExistsEqEqPosVarSecondRows case_001454_rank.val case_001454_mask :=
  ⟨case_001454_support, case_001454_sourceAgrees, case_001454_rows⟩

private theorem case_001454_covered :
    RowPropertyParametricCovered case_001454_rank.val case_001454_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001454_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`. -/
private def case_001455_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001455_mask : SignMask := ⟨24, by decide⟩
private def case_001455_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001455_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_001455_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_001455_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-100/9) }
private def case_001455_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_001455_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_001455_rankWord :
    rankPairWord? case_001455_word = some case_001455_rank := by
  decide

private theorem case_001455_unrank :
    unrankPairWord case_001455_rank = case_001455_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001455_word case_001455_rank).1
    case_001455_rankWord |>.symm

private theorem case_001455_seqChoice :
    translationChoiceSeq case_001455_word case_001455_mask = case_001455_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001455_seqAtRank :
    translationSeqAtRankMask case_001455_rank case_001455_mask = case_001455_seq := by
  rw [translationSeqAtRankMask, case_001455_unrank]
  exact case_001455_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001455_bAtRank :
    translationBAtRankMask case_001455_rank case_001455_mask = case_001455_b := by
  rw [translationBAtRankMask, case_001455_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001455_b, case_001455_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001455_firstLine_eq :
    case_001455_support.firstLine case_001455_seq case_001455_b = case_001455_firstLine := by
  norm_num [case_001455_firstLine, case_001455_support, case_001455_seq, case_001455_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001455_secondLine_eq :
    case_001455_support.secondLine case_001455_seq case_001455_b = case_001455_secondLine := by
  norm_num [case_001455_secondLine, case_001455_support, case_001455_seq, case_001455_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001455_sourceAgrees :
    SourceAgrees case_001455_support case_001455_rank.val case_001455_mask := by
  intro hlt
  have hrank : (⟨case_001455_rank.val, hlt⟩ : Fin numPairWords) = case_001455_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001455_rank.val, hlt⟩ case_001455_mask =
        case_001455_seq := by
    simpa [hrank] using case_001455_seqAtRank
  simp [SourceChecks, hseq, case_001455_support,
    checkTranslationConstraintSource, case_001455_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001455_rows :
    EqEqPosVarFirstRows case_001455_support case_001455_rank.val case_001455_mask := by
  intro hlt
  have hrank : (⟨case_001455_rank.val, hlt⟩ : Fin numPairWords) = case_001455_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001455_rank.val, hlt⟩ case_001455_mask =
        case_001455_seq := by
    simpa [hrank] using case_001455_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001455_rank.val, hlt⟩ case_001455_mask =
        case_001455_b := by
    simpa [hrank] using case_001455_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001455_support case_001455_rank.val hlt
          case_001455_mask = case_001455_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001455_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001455_support case_001455_rank.val hlt
          case_001455_mask = case_001455_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001455_secondLine_eq]
  have case_001455_rowFirst :
      EqEqPosRow (FirstLineAt case_001455_support case_001455_rank.val hlt case_001455_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001455_firstLine, EqEqPosRow]
  have case_001455_fixedSecond :
      FixedRow (SecondLineAt case_001455_support case_001455_rank.val hlt case_001455_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001455_secondLine, FixedRow]
  exact ⟨case_001455_rowFirst, case_001455_fixedSecond⟩

private theorem case_001455_existsRows :
    ExistsEqEqPosVarFirstRows case_001455_rank.val case_001455_mask :=
  ⟨case_001455_support, case_001455_sourceAgrees, case_001455_rows⟩

private theorem case_001455_covered :
    RowPropertyParametricCovered case_001455_rank.val case_001455_mask :=
  RowPropertyParametricCovered.eqEqPosVarFirst case_001455_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001456_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001456_mask : SignMask := ⟨25, by decide⟩
private def case_001456_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001456_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_001456_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_001456_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (-100/9) }
private def case_001456_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001456_secondLine : StrictLin2 := { a := (-25/374), b := (25/374), c := (-35/187) }

private theorem case_001456_rankWord :
    rankPairWord? case_001456_word = some case_001456_rank := by
  decide

private theorem case_001456_unrank :
    unrankPairWord case_001456_rank = case_001456_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001456_word case_001456_rank).1
    case_001456_rankWord |>.symm

private theorem case_001456_seqChoice :
    translationChoiceSeq case_001456_word case_001456_mask = case_001456_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001456_seqAtRank :
    translationSeqAtRankMask case_001456_rank case_001456_mask = case_001456_seq := by
  rw [translationSeqAtRankMask, case_001456_unrank]
  exact case_001456_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001456_bAtRank :
    translationBAtRankMask case_001456_rank case_001456_mask = case_001456_b := by
  rw [translationBAtRankMask, case_001456_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001456_b, case_001456_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001456_firstLine_eq :
    case_001456_support.firstLine case_001456_seq case_001456_b = case_001456_firstLine := by
  norm_num [case_001456_firstLine, case_001456_support, case_001456_seq, case_001456_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001456_secondLine_eq :
    case_001456_support.secondLine case_001456_seq case_001456_b = case_001456_secondLine := by
  norm_num [case_001456_secondLine, case_001456_support, case_001456_seq, case_001456_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001456_sourceAgrees :
    SourceAgrees case_001456_support case_001456_rank.val case_001456_mask := by
  intro hlt
  have hrank : (⟨case_001456_rank.val, hlt⟩ : Fin numPairWords) = case_001456_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001456_rank.val, hlt⟩ case_001456_mask =
        case_001456_seq := by
    simpa [hrank] using case_001456_seqAtRank
  simp [SourceChecks, hseq, case_001456_support,
    checkTranslationConstraintSource, case_001456_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001456_rows :
    OppOneMinusVarSecondRows case_001456_support case_001456_rank.val case_001456_mask := by
  intro hlt
  have hrank : (⟨case_001456_rank.val, hlt⟩ : Fin numPairWords) = case_001456_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001456_rank.val, hlt⟩ case_001456_mask =
        case_001456_seq := by
    simpa [hrank] using case_001456_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001456_rank.val, hlt⟩ case_001456_mask =
        case_001456_b := by
    simpa [hrank] using case_001456_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001456_support case_001456_rank.val hlt
          case_001456_mask = case_001456_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001456_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001456_support case_001456_rank.val hlt
          case_001456_mask = case_001456_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001456_secondLine_eq]
  have case_001456_fixedFirst :
      FixedRow (FirstLineAt case_001456_support case_001456_rank.val hlt case_001456_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001456_firstLine, FixedRow]
  have case_001456_rowSecond :
      OppPosRow (SecondLineAt case_001456_support case_001456_rank.val hlt case_001456_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001456_secondLine, OppPosRow]
  exact ⟨case_001456_fixedFirst, case_001456_rowSecond⟩

private theorem case_001456_existsRows :
    ExistsOppOneMinusVarSecondRows case_001456_rank.val case_001456_mask :=
  ⟨case_001456_support, case_001456_sourceAgrees, case_001456_rows⟩

private theorem case_001456_covered :
    RowPropertyParametricCovered case_001456_rank.val case_001456_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001456_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001457_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001457_mask : SignMask := ⟨29, by decide⟩
private def case_001457_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001457_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001457_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_001457_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-20/9) }
private def case_001457_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001457_secondLine : StrictLin2 := { a := (-9/20), b := (-9/20), c := (-9/10) }

private theorem case_001457_rankWord :
    rankPairWord? case_001457_word = some case_001457_rank := by
  decide

private theorem case_001457_unrank :
    unrankPairWord case_001457_rank = case_001457_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001457_word case_001457_rank).1
    case_001457_rankWord |>.symm

private theorem case_001457_seqChoice :
    translationChoiceSeq case_001457_word case_001457_mask = case_001457_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001457_seqAtRank :
    translationSeqAtRankMask case_001457_rank case_001457_mask = case_001457_seq := by
  rw [translationSeqAtRankMask, case_001457_unrank]
  exact case_001457_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001457_bAtRank :
    translationBAtRankMask case_001457_rank case_001457_mask = case_001457_b := by
  rw [translationBAtRankMask, case_001457_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001457_b, case_001457_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001457_firstLine_eq :
    case_001457_support.firstLine case_001457_seq case_001457_b = case_001457_firstLine := by
  norm_num [case_001457_firstLine, case_001457_support, case_001457_seq, case_001457_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001457_secondLine_eq :
    case_001457_support.secondLine case_001457_seq case_001457_b = case_001457_secondLine := by
  norm_num [case_001457_secondLine, case_001457_support, case_001457_seq, case_001457_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001457_sourceAgrees :
    SourceAgrees case_001457_support case_001457_rank.val case_001457_mask := by
  intro hlt
  have hrank : (⟨case_001457_rank.val, hlt⟩ : Fin numPairWords) = case_001457_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001457_rank.val, hlt⟩ case_001457_mask =
        case_001457_seq := by
    simpa [hrank] using case_001457_seqAtRank
  simp [SourceChecks, hseq, case_001457_support,
    checkTranslationConstraintSource, case_001457_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001457_rows :
    EqEqPosVarSecondRows case_001457_support case_001457_rank.val case_001457_mask := by
  intro hlt
  have hrank : (⟨case_001457_rank.val, hlt⟩ : Fin numPairWords) = case_001457_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001457_rank.val, hlt⟩ case_001457_mask =
        case_001457_seq := by
    simpa [hrank] using case_001457_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001457_rank.val, hlt⟩ case_001457_mask =
        case_001457_b := by
    simpa [hrank] using case_001457_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001457_support case_001457_rank.val hlt
          case_001457_mask = case_001457_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001457_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001457_support case_001457_rank.val hlt
          case_001457_mask = case_001457_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001457_secondLine_eq]
  have case_001457_fixedFirst :
      FixedRow (FirstLineAt case_001457_support case_001457_rank.val hlt case_001457_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001457_firstLine, FixedRow]
  have case_001457_rowSecond :
      EqEqPosRow (SecondLineAt case_001457_support case_001457_rank.val hlt case_001457_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001457_secondLine, EqEqPosRow]
  exact ⟨case_001457_fixedFirst, case_001457_rowSecond⟩

private theorem case_001457_existsRows :
    ExistsEqEqPosVarSecondRows case_001457_rank.val case_001457_mask :=
  ⟨case_001457_support, case_001457_sourceAgrees, case_001457_rows⟩

private theorem case_001457_covered :
    RowPropertyParametricCovered case_001457_rank.val case_001457_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001457_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001458_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001458_mask : SignMask := ⟨30, by decide⟩
private def case_001458_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001458_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_001458_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_001458_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (52/9) }
private def case_001458_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001458_secondLine : StrictLin2 := { a := (-1/6), b := (-1/6), c := (-5/9) }

private theorem case_001458_rankWord :
    rankPairWord? case_001458_word = some case_001458_rank := by
  decide

private theorem case_001458_unrank :
    unrankPairWord case_001458_rank = case_001458_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001458_word case_001458_rank).1
    case_001458_rankWord |>.symm

private theorem case_001458_seqChoice :
    translationChoiceSeq case_001458_word case_001458_mask = case_001458_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001458_seqAtRank :
    translationSeqAtRankMask case_001458_rank case_001458_mask = case_001458_seq := by
  rw [translationSeqAtRankMask, case_001458_unrank]
  exact case_001458_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001458_bAtRank :
    translationBAtRankMask case_001458_rank case_001458_mask = case_001458_b := by
  rw [translationBAtRankMask, case_001458_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001458_b, case_001458_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001458_firstLine_eq :
    case_001458_support.firstLine case_001458_seq case_001458_b = case_001458_firstLine := by
  norm_num [case_001458_firstLine, case_001458_support, case_001458_seq, case_001458_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001458_secondLine_eq :
    case_001458_support.secondLine case_001458_seq case_001458_b = case_001458_secondLine := by
  norm_num [case_001458_secondLine, case_001458_support, case_001458_seq, case_001458_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001458_sourceAgrees :
    SourceAgrees case_001458_support case_001458_rank.val case_001458_mask := by
  intro hlt
  have hrank : (⟨case_001458_rank.val, hlt⟩ : Fin numPairWords) = case_001458_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001458_rank.val, hlt⟩ case_001458_mask =
        case_001458_seq := by
    simpa [hrank] using case_001458_seqAtRank
  simp [SourceChecks, hseq, case_001458_support,
    checkTranslationConstraintSource, case_001458_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001458_rows :
    EqEqPosVarSecondRows case_001458_support case_001458_rank.val case_001458_mask := by
  intro hlt
  have hrank : (⟨case_001458_rank.val, hlt⟩ : Fin numPairWords) = case_001458_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001458_rank.val, hlt⟩ case_001458_mask =
        case_001458_seq := by
    simpa [hrank] using case_001458_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001458_rank.val, hlt⟩ case_001458_mask =
        case_001458_b := by
    simpa [hrank] using case_001458_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001458_support case_001458_rank.val hlt
          case_001458_mask = case_001458_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001458_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001458_support case_001458_rank.val hlt
          case_001458_mask = case_001458_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001458_secondLine_eq]
  have case_001458_fixedFirst :
      FixedRow (FirstLineAt case_001458_support case_001458_rank.val hlt case_001458_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001458_firstLine, FixedRow]
  have case_001458_rowSecond :
      EqEqPosRow (SecondLineAt case_001458_support case_001458_rank.val hlt case_001458_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001458_secondLine, EqEqPosRow]
  exact ⟨case_001458_fixedFirst, case_001458_rowSecond⟩

private theorem case_001458_existsRows :
    ExistsEqEqPosVarSecondRows case_001458_rank.val case_001458_mask :=
  ⟨case_001458_support, case_001458_sourceAgrees, case_001458_rows⟩

private theorem case_001458_covered :
    RowPropertyParametricCovered case_001458_rank.val case_001458_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001458_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001459_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001459_mask : SignMask := ⟨41, by decide⟩
private def case_001459_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001459_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001459_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001459_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (-100/9) }
private def case_001459_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001459_secondLine : StrictLin2 := { a := (-9/100), b := (-9/100), c := (-9/50) }

private theorem case_001459_rankWord :
    rankPairWord? case_001459_word = some case_001459_rank := by
  decide

private theorem case_001459_unrank :
    unrankPairWord case_001459_rank = case_001459_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001459_word case_001459_rank).1
    case_001459_rankWord |>.symm

private theorem case_001459_seqChoice :
    translationChoiceSeq case_001459_word case_001459_mask = case_001459_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001459_seqAtRank :
    translationSeqAtRankMask case_001459_rank case_001459_mask = case_001459_seq := by
  rw [translationSeqAtRankMask, case_001459_unrank]
  exact case_001459_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001459_bAtRank :
    translationBAtRankMask case_001459_rank case_001459_mask = case_001459_b := by
  rw [translationBAtRankMask, case_001459_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001459_b, case_001459_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001459_firstLine_eq :
    case_001459_support.firstLine case_001459_seq case_001459_b = case_001459_firstLine := by
  norm_num [case_001459_firstLine, case_001459_support, case_001459_seq, case_001459_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001459_secondLine_eq :
    case_001459_support.secondLine case_001459_seq case_001459_b = case_001459_secondLine := by
  norm_num [case_001459_secondLine, case_001459_support, case_001459_seq, case_001459_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001459_sourceAgrees :
    SourceAgrees case_001459_support case_001459_rank.val case_001459_mask := by
  intro hlt
  have hrank : (⟨case_001459_rank.val, hlt⟩ : Fin numPairWords) = case_001459_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001459_rank.val, hlt⟩ case_001459_mask =
        case_001459_seq := by
    simpa [hrank] using case_001459_seqAtRank
  simp [SourceChecks, hseq, case_001459_support,
    checkTranslationConstraintSource, case_001459_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001459_rows :
    EqEqPosVarSecondRows case_001459_support case_001459_rank.val case_001459_mask := by
  intro hlt
  have hrank : (⟨case_001459_rank.val, hlt⟩ : Fin numPairWords) = case_001459_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001459_rank.val, hlt⟩ case_001459_mask =
        case_001459_seq := by
    simpa [hrank] using case_001459_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001459_rank.val, hlt⟩ case_001459_mask =
        case_001459_b := by
    simpa [hrank] using case_001459_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001459_support case_001459_rank.val hlt
          case_001459_mask = case_001459_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001459_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001459_support case_001459_rank.val hlt
          case_001459_mask = case_001459_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001459_secondLine_eq]
  have case_001459_fixedFirst :
      FixedRow (FirstLineAt case_001459_support case_001459_rank.val hlt case_001459_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001459_firstLine, FixedRow]
  have case_001459_rowSecond :
      EqEqPosRow (SecondLineAt case_001459_support case_001459_rank.val hlt case_001459_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001459_secondLine, EqEqPosRow]
  exact ⟨case_001459_fixedFirst, case_001459_rowSecond⟩

private theorem case_001459_existsRows :
    ExistsEqEqPosVarSecondRows case_001459_rank.val case_001459_mask :=
  ⟨case_001459_support, case_001459_sourceAgrees, case_001459_rows⟩

private theorem case_001459_covered :
    RowPropertyParametricCovered case_001459_rank.val case_001459_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001459_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001460_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001460_mask : SignMask := ⟨45, by decide⟩
private def case_001460_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001460_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001460_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmpm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001460_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-20/9) }
private def case_001460_firstLine : StrictLin2 := { a := (-5/3), b := (5/3), c := -7 }
private def case_001460_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001460_rankWord :
    rankPairWord? case_001460_word = some case_001460_rank := by
  decide

private theorem case_001460_unrank :
    unrankPairWord case_001460_rank = case_001460_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001460_word case_001460_rank).1
    case_001460_rankWord |>.symm

private theorem case_001460_seqChoice :
    translationChoiceSeq case_001460_word case_001460_mask = case_001460_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001460_seqAtRank :
    translationSeqAtRankMask case_001460_rank case_001460_mask = case_001460_seq := by
  rw [translationSeqAtRankMask, case_001460_unrank]
  exact case_001460_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001460_bAtRank :
    translationBAtRankMask case_001460_rank case_001460_mask = case_001460_b := by
  rw [translationBAtRankMask, case_001460_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001460_b, case_001460_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001460_firstLine_eq :
    case_001460_support.firstLine case_001460_seq case_001460_b = case_001460_firstLine := by
  norm_num [case_001460_firstLine, case_001460_support, case_001460_seq, case_001460_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001460_secondLine_eq :
    case_001460_support.secondLine case_001460_seq case_001460_b = case_001460_secondLine := by
  norm_num [case_001460_secondLine, case_001460_support, case_001460_seq, case_001460_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001460_sourceAgrees :
    SourceAgrees case_001460_support case_001460_rank.val case_001460_mask := by
  intro hlt
  have hrank : (⟨case_001460_rank.val, hlt⟩ : Fin numPairWords) = case_001460_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001460_rank.val, hlt⟩ case_001460_mask =
        case_001460_seq := by
    simpa [hrank] using case_001460_seqAtRank
  simp [SourceChecks, hseq, case_001460_support,
    checkTranslationConstraintSource, case_001460_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001460_rows :
    OppOneMinusVarFirstRows case_001460_support case_001460_rank.val case_001460_mask := by
  intro hlt
  have hrank : (⟨case_001460_rank.val, hlt⟩ : Fin numPairWords) = case_001460_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001460_rank.val, hlt⟩ case_001460_mask =
        case_001460_seq := by
    simpa [hrank] using case_001460_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001460_rank.val, hlt⟩ case_001460_mask =
        case_001460_b := by
    simpa [hrank] using case_001460_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001460_support case_001460_rank.val hlt
          case_001460_mask = case_001460_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001460_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001460_support case_001460_rank.val hlt
          case_001460_mask = case_001460_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001460_secondLine_eq]
  have case_001460_rowFirst :
      OppPosRow (FirstLineAt case_001460_support case_001460_rank.val hlt case_001460_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001460_firstLine, OppPosRow]
  have case_001460_fixedSecond :
      FixedRow (SecondLineAt case_001460_support case_001460_rank.val hlt case_001460_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001460_secondLine, FixedRow]
  exact ⟨case_001460_rowFirst, case_001460_fixedSecond⟩

private theorem case_001460_existsRows :
    ExistsOppOneMinusVarFirstRows case_001460_rank.val case_001460_mask :=
  ⟨case_001460_support, case_001460_sourceAgrees, case_001460_rows⟩

private theorem case_001460_covered :
    RowPropertyParametricCovered case_001460_rank.val case_001460_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001460_existsRows

/-- Bounded row-property quotient case `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`. -/
private def case_001461_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001461_mask : SignMask := ⟨55, by decide⟩
private def case_001461_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001461_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_001461_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def case_001461_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (116/9) }
private def case_001461_firstLine : StrictLin2 := { a := -1, b := 1, c := (-19/13) }
private def case_001461_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_001461_rankWord :
    rankPairWord? case_001461_word = some case_001461_rank := by
  decide

private theorem case_001461_unrank :
    unrankPairWord case_001461_rank = case_001461_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001461_word case_001461_rank).1
    case_001461_rankWord |>.symm

private theorem case_001461_seqChoice :
    translationChoiceSeq case_001461_word case_001461_mask = case_001461_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001461_seqAtRank :
    translationSeqAtRankMask case_001461_rank case_001461_mask = case_001461_seq := by
  rw [translationSeqAtRankMask, case_001461_unrank]
  exact case_001461_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001461_bAtRank :
    translationBAtRankMask case_001461_rank case_001461_mask = case_001461_b := by
  rw [translationBAtRankMask, case_001461_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001461_b, case_001461_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001461_firstLine_eq :
    case_001461_support.firstLine case_001461_seq case_001461_b = case_001461_firstLine := by
  norm_num [case_001461_firstLine, case_001461_support, case_001461_seq, case_001461_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001461_secondLine_eq :
    case_001461_support.secondLine case_001461_seq case_001461_b = case_001461_secondLine := by
  norm_num [case_001461_secondLine, case_001461_support, case_001461_seq, case_001461_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001461_sourceAgrees :
    SourceAgrees case_001461_support case_001461_rank.val case_001461_mask := by
  intro hlt
  have hrank : (⟨case_001461_rank.val, hlt⟩ : Fin numPairWords) = case_001461_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001461_rank.val, hlt⟩ case_001461_mask =
        case_001461_seq := by
    simpa [hrank] using case_001461_seqAtRank
  simp [SourceChecks, hseq, case_001461_support,
    checkTranslationConstraintSource, case_001461_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001461_rows :
    OppOneMinusVarFirstRows case_001461_support case_001461_rank.val case_001461_mask := by
  intro hlt
  have hrank : (⟨case_001461_rank.val, hlt⟩ : Fin numPairWords) = case_001461_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001461_rank.val, hlt⟩ case_001461_mask =
        case_001461_seq := by
    simpa [hrank] using case_001461_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001461_rank.val, hlt⟩ case_001461_mask =
        case_001461_b := by
    simpa [hrank] using case_001461_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001461_support case_001461_rank.val hlt
          case_001461_mask = case_001461_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001461_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001461_support case_001461_rank.val hlt
          case_001461_mask = case_001461_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001461_secondLine_eq]
  have case_001461_rowFirst :
      OppPosRow (FirstLineAt case_001461_support case_001461_rank.val hlt case_001461_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001461_firstLine, OppPosRow]
  have case_001461_fixedSecond :
      FixedRow (SecondLineAt case_001461_support case_001461_rank.val hlt case_001461_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001461_secondLine, FixedRow]
  exact ⟨case_001461_rowFirst, case_001461_fixedSecond⟩

private theorem case_001461_existsRows :
    ExistsOppOneMinusVarFirstRows case_001461_rank.val case_001461_mask :=
  ⟨case_001461_support, case_001461_sourceAgrees, case_001461_rows⟩

private theorem case_001461_covered :
    RowPropertyParametricCovered case_001461_rank.val case_001461_mask :=
  RowPropertyParametricCovered.oppOneMinusVarFirst case_001461_existsRows

/-- Bounded row-property quotient case `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`. -/
private def case_001462_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001462_mask : SignMask := ⟨57, by decide⟩
private def case_001462_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001462_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_001462_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001462_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_001462_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_001462_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_001462_rankWord :
    rankPairWord? case_001462_word = some case_001462_rank := by
  decide

private theorem case_001462_unrank :
    unrankPairWord case_001462_rank = case_001462_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001462_word case_001462_rank).1
    case_001462_rankWord |>.symm

private theorem case_001462_seqChoice :
    translationChoiceSeq case_001462_word case_001462_mask = case_001462_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001462_seqAtRank :
    translationSeqAtRankMask case_001462_rank case_001462_mask = case_001462_seq := by
  rw [translationSeqAtRankMask, case_001462_unrank]
  exact case_001462_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001462_bAtRank :
    translationBAtRankMask case_001462_rank case_001462_mask = case_001462_b := by
  rw [translationBAtRankMask, case_001462_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001462_b, case_001462_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001462_firstLine_eq :
    case_001462_support.firstLine case_001462_seq case_001462_b = case_001462_firstLine := by
  norm_num [case_001462_firstLine, case_001462_support, case_001462_seq, case_001462_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001462_secondLine_eq :
    case_001462_support.secondLine case_001462_seq case_001462_b = case_001462_secondLine := by
  norm_num [case_001462_secondLine, case_001462_support, case_001462_seq, case_001462_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001462_sourceAgrees :
    SourceAgrees case_001462_support case_001462_rank.val case_001462_mask := by
  intro hlt
  have hrank : (⟨case_001462_rank.val, hlt⟩ : Fin numPairWords) = case_001462_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001462_rank.val, hlt⟩ case_001462_mask =
        case_001462_seq := by
    simpa [hrank] using case_001462_seqAtRank
  simp [SourceChecks, hseq, case_001462_support,
    checkTranslationConstraintSource, case_001462_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001462_rows :
    EqEqPosVarSecondRows case_001462_support case_001462_rank.val case_001462_mask := by
  intro hlt
  have hrank : (⟨case_001462_rank.val, hlt⟩ : Fin numPairWords) = case_001462_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001462_rank.val, hlt⟩ case_001462_mask =
        case_001462_seq := by
    simpa [hrank] using case_001462_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001462_rank.val, hlt⟩ case_001462_mask =
        case_001462_b := by
    simpa [hrank] using case_001462_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001462_support case_001462_rank.val hlt
          case_001462_mask = case_001462_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001462_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001462_support case_001462_rank.val hlt
          case_001462_mask = case_001462_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001462_secondLine_eq]
  have case_001462_fixedFirst :
      FixedRow (FirstLineAt case_001462_support case_001462_rank.val hlt case_001462_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001462_firstLine, FixedRow]
  have case_001462_rowSecond :
      EqEqPosRow (SecondLineAt case_001462_support case_001462_rank.val hlt case_001462_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001462_secondLine, EqEqPosRow]
  exact ⟨case_001462_fixedFirst, case_001462_rowSecond⟩

private theorem case_001462_existsRows :
    ExistsEqEqPosVarSecondRows case_001462_rank.val case_001462_mask :=
  ⟨case_001462_support, case_001462_sourceAgrees, case_001462_rows⟩

private theorem case_001462_covered :
    RowPropertyParametricCovered case_001462_rank.val case_001462_mask :=
  RowPropertyParametricCovered.eqEqPosVarSecond case_001462_existsRows

/-- Bounded row-property quotient case `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`. -/
private def case_001463_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001463_mask : SignMask := ⟨61, by decide⟩
private def case_001463_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001463_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_001463_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001463_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-4/9) }
private def case_001463_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_001463_secondLine : StrictLin2 := { a := (-25/374), b := (25/374), c := (-35/187) }

private theorem case_001463_rankWord :
    rankPairWord? case_001463_word = some case_001463_rank := by
  decide

private theorem case_001463_unrank :
    unrankPairWord case_001463_rank = case_001463_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001463_word case_001463_rank).1
    case_001463_rankWord |>.symm

private theorem case_001463_seqChoice :
    translationChoiceSeq case_001463_word case_001463_mask = case_001463_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001463_seqAtRank :
    translationSeqAtRankMask case_001463_rank case_001463_mask = case_001463_seq := by
  rw [translationSeqAtRankMask, case_001463_unrank]
  exact case_001463_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001463_bAtRank :
    translationBAtRankMask case_001463_rank case_001463_mask = case_001463_b := by
  rw [translationBAtRankMask, case_001463_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001463_b, case_001463_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001463_firstLine_eq :
    case_001463_support.firstLine case_001463_seq case_001463_b = case_001463_firstLine := by
  norm_num [case_001463_firstLine, case_001463_support, case_001463_seq, case_001463_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001463_secondLine_eq :
    case_001463_support.secondLine case_001463_seq case_001463_b = case_001463_secondLine := by
  norm_num [case_001463_secondLine, case_001463_support, case_001463_seq, case_001463_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001463_sourceAgrees :
    SourceAgrees case_001463_support case_001463_rank.val case_001463_mask := by
  intro hlt
  have hrank : (⟨case_001463_rank.val, hlt⟩ : Fin numPairWords) = case_001463_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001463_rank.val, hlt⟩ case_001463_mask =
        case_001463_seq := by
    simpa [hrank] using case_001463_seqAtRank
  simp [SourceChecks, hseq, case_001463_support,
    checkTranslationConstraintSource, case_001463_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001463_rows :
    OppOneMinusVarSecondRows case_001463_support case_001463_rank.val case_001463_mask := by
  intro hlt
  have hrank : (⟨case_001463_rank.val, hlt⟩ : Fin numPairWords) = case_001463_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001463_rank.val, hlt⟩ case_001463_mask =
        case_001463_seq := by
    simpa [hrank] using case_001463_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001463_rank.val, hlt⟩ case_001463_mask =
        case_001463_b := by
    simpa [hrank] using case_001463_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001463_support case_001463_rank.val hlt
          case_001463_mask = case_001463_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001463_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001463_support case_001463_rank.val hlt
          case_001463_mask = case_001463_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001463_secondLine_eq]
  have case_001463_fixedFirst :
      FixedRow (FirstLineAt case_001463_support case_001463_rank.val hlt case_001463_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001463_firstLine, FixedRow]
  have case_001463_rowSecond :
      OppPosRow (SecondLineAt case_001463_support case_001463_rank.val hlt case_001463_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001463_secondLine, OppPosRow]
  exact ⟨case_001463_fixedFirst, case_001463_rowSecond⟩

private theorem case_001463_existsRows :
    ExistsOppOneMinusVarSecondRows case_001463_rank.val case_001463_mask :=
  ⟨case_001463_support, case_001463_sourceAgrees, case_001463_rows⟩

private theorem case_001463_covered :
    RowPropertyParametricCovered case_001463_rank.val case_001463_mask :=
  RowPropertyParametricCovered.oppOneMinusVarSecond case_001463_existsRows

/-- Bounded row-property quotient case `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`. -/
private def case_001464_rank : Fin numPairWords := ⟨992, by decide⟩
private def case_001464_mask : SignMask := ⟨63, by decide⟩
private def case_001464_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_001464_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_001464_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_001464_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (68/9) }
private def case_001464_firstLine : StrictLin2 := { a := 1, b := 1, c := (-59/25) }
private def case_001464_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

private theorem case_001464_rankWord :
    rankPairWord? case_001464_word = some case_001464_rank := by
  decide

private theorem case_001464_unrank :
    unrankPairWord case_001464_rank = case_001464_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_001464_word case_001464_rank).1
    case_001464_rankWord |>.symm

private theorem case_001464_seqChoice :
    translationChoiceSeq case_001464_word case_001464_mask = case_001464_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_001464_seqAtRank :
    translationSeqAtRankMask case_001464_rank case_001464_mask = case_001464_seq := by
  rw [translationSeqAtRankMask, case_001464_unrank]
  exact case_001464_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_001464_bAtRank :
    translationBAtRankMask case_001464_rank case_001464_mask = case_001464_b := by
  rw [translationBAtRankMask, case_001464_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_001464_b, case_001464_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001464_firstLine_eq :
    case_001464_support.firstLine case_001464_seq case_001464_b = case_001464_firstLine := by
  norm_num [case_001464_firstLine, case_001464_support, case_001464_seq, case_001464_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001464_secondLine_eq :
    case_001464_support.secondLine case_001464_seq case_001464_b = case_001464_secondLine := by
  norm_num [case_001464_secondLine, case_001464_support, case_001464_seq, case_001464_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_001464_sourceAgrees :
    SourceAgrees case_001464_support case_001464_rank.val case_001464_mask := by
  intro hlt
  have hrank : (⟨case_001464_rank.val, hlt⟩ : Fin numPairWords) = case_001464_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001464_rank.val, hlt⟩ case_001464_mask =
        case_001464_seq := by
    simpa [hrank] using case_001464_seqAtRank
  simp [SourceChecks, hseq, case_001464_support,
    checkTranslationConstraintSource, case_001464_seq, impactFace]

set_option maxHeartbeats 1200000 in
private theorem case_001464_rows :
    EqEqNegVarFirstRows case_001464_support case_001464_rank.val case_001464_mask := by
  intro hlt
  have hrank : (⟨case_001464_rank.val, hlt⟩ : Fin numPairWords) = case_001464_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_001464_rank.val, hlt⟩ case_001464_mask =
        case_001464_seq := by
    simpa [hrank] using case_001464_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_001464_rank.val, hlt⟩ case_001464_mask =
        case_001464_b := by
    simpa [hrank] using case_001464_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_001464_support case_001464_rank.val hlt
          case_001464_mask = case_001464_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_001464_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_001464_support case_001464_rank.val hlt
          case_001464_mask = case_001464_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_001464_secondLine_eq]
  have case_001464_rowFirst :
      EqEqNegRow (FirstLineAt case_001464_support case_001464_rank.val hlt case_001464_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_001464_firstLine, EqEqNegRow]
  have case_001464_fixedSecond :
      FixedRow (SecondLineAt case_001464_support case_001464_rank.val hlt case_001464_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_001464_secondLine, FixedRow]
  exact ⟨case_001464_rowFirst, case_001464_fixedSecond⟩

private theorem case_001464_existsRows :
    ExistsEqEqNegVarFirstRows case_001464_rank.val case_001464_mask :=
  ⟨case_001464_support, case_001464_sourceAgrees, case_001464_rows⟩

private theorem case_001464_covered :
    RowPropertyParametricCovered case_001464_rank.val case_001464_mask :=
  RowPropertyParametricCovered.eqEqNegVarFirst case_001464_existsRows

inductive Group045Covered : Nat -> SignMask -> Prop
  | case_001440 : Group045Covered case_001440_rank.val case_001440_mask
  | case_001441 : Group045Covered case_001441_rank.val case_001441_mask
  | case_001442 : Group045Covered case_001442_rank.val case_001442_mask
  | case_001443 : Group045Covered case_001443_rank.val case_001443_mask
  | case_001444 : Group045Covered case_001444_rank.val case_001444_mask
  | case_001445 : Group045Covered case_001445_rank.val case_001445_mask
  | case_001446 : Group045Covered case_001446_rank.val case_001446_mask
  | case_001447 : Group045Covered case_001447_rank.val case_001447_mask
  | case_001448 : Group045Covered case_001448_rank.val case_001448_mask
  | case_001449 : Group045Covered case_001449_rank.val case_001449_mask
  | case_001450 : Group045Covered case_001450_rank.val case_001450_mask
  | case_001451 : Group045Covered case_001451_rank.val case_001451_mask
  | case_001452 : Group045Covered case_001452_rank.val case_001452_mask
  | case_001453 : Group045Covered case_001453_rank.val case_001453_mask
  | case_001454 : Group045Covered case_001454_rank.val case_001454_mask
  | case_001455 : Group045Covered case_001455_rank.val case_001455_mask
  | case_001456 : Group045Covered case_001456_rank.val case_001456_mask
  | case_001457 : Group045Covered case_001457_rank.val case_001457_mask
  | case_001458 : Group045Covered case_001458_rank.val case_001458_mask
  | case_001459 : Group045Covered case_001459_rank.val case_001459_mask
  | case_001460 : Group045Covered case_001460_rank.val case_001460_mask
  | case_001461 : Group045Covered case_001461_rank.val case_001461_mask
  | case_001462 : Group045Covered case_001462_rank.val case_001462_mask
  | case_001463 : Group045Covered case_001463_rank.val case_001463_mask
  | case_001464 : Group045Covered case_001464_rank.val case_001464_mask

theorem Group045GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group045Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | case_001440 =>
      exact RowPropertyParametricCovered.kills case_001440_covered
  | case_001441 =>
      exact RowPropertyParametricCovered.kills case_001441_covered
  | case_001442 =>
      exact RowPropertyParametricCovered.kills case_001442_covered
  | case_001443 =>
      exact RowPropertyParametricCovered.kills case_001443_covered
  | case_001444 =>
      exact RowPropertyParametricCovered.kills case_001444_covered
  | case_001445 =>
      exact RowPropertyParametricCovered.kills case_001445_covered
  | case_001446 =>
      exact RowPropertyParametricCovered.kills case_001446_covered
  | case_001447 =>
      exact RowPropertyParametricCovered.kills case_001447_covered
  | case_001448 =>
      exact RowPropertyParametricCovered.kills case_001448_covered
  | case_001449 =>
      exact RowPropertyParametricCovered.kills case_001449_covered
  | case_001450 =>
      exact RowPropertyParametricCovered.kills case_001450_covered
  | case_001451 =>
      exact RowPropertyParametricCovered.kills case_001451_covered
  | case_001452 =>
      exact RowPropertyParametricCovered.kills case_001452_covered
  | case_001453 =>
      exact RowPropertyParametricCovered.kills case_001453_covered
  | case_001454 =>
      exact RowPropertyParametricCovered.kills case_001454_covered
  | case_001455 =>
      exact RowPropertyParametricCovered.kills case_001455_covered
  | case_001456 =>
      exact RowPropertyParametricCovered.kills case_001456_covered
  | case_001457 =>
      exact RowPropertyParametricCovered.kills case_001457_covered
  | case_001458 =>
      exact RowPropertyParametricCovered.kills case_001458_covered
  | case_001459 =>
      exact RowPropertyParametricCovered.kills case_001459_covered
  | case_001460 =>
      exact RowPropertyParametricCovered.kills case_001460_covered
  | case_001461 =>
      exact RowPropertyParametricCovered.kills case_001461_covered
  | case_001462 =>
      exact RowPropertyParametricCovered.kills case_001462_covered
  | case_001463 =>
      exact RowPropertyParametricCovered.kills case_001463_covered
  | case_001464 =>
      exact RowPropertyParametricCovered.kills case_001464_covered

theorem Group045_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotientRepresentative.Group045
